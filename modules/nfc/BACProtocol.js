/**
 * BAC (Basic Access Control) Protocol Implementation
 * ICAO 9303 Part 11 - Section 4.3
 * 
 * Implements the full BAC authentication handshake:
 * 1. GET CHALLENGE
 * 2. Compute session keys
 * 3. EXTERNAL AUTHENTICATE
 * 4. Establish secure messaging
 */

import NfcManager from 'react-native-nfc-manager';
import { Buffer } from 'buffer';
import {
    buildMRZInformation,
    deriveBACKeys,
    encrypt3DES,
    decrypt3DES,
    calculateMAC,
    generateRandomBytes,
    xorBytes,
    padData,
    removePadding,
    bytesToWordArray,
    wordArrayToBytes
} from './BACCrypto';
import CryptoJS from 'crypto-js';

// APDU Commands
const APDU = {
    // GET CHALLENGE - Request 8 random bytes from chip
    GET_CHALLENGE: [0x00, 0x84, 0x00, 0x00, 0x08],

    // EXTERNAL AUTHENTICATE - Send encrypted response
    // [CLA, INS, P1, P2, Lc, ...data, Le]
    EXTERNAL_AUTHENTICATE: [0x00, 0x82, 0x00, 0x00],

    // INTERNAL AUTHENTICATE (for mutual auth)
    INTERNAL_AUTHENTICATE: [0x00, 0x88, 0x00, 0x00],
};

/**
 * BAC Session - Holds cryptographic keys and state
 */
const ZERO_IV = CryptoJS.enc.Hex.parse('0000000000000000');

class BACSession {
    constructor() {
        this.kEnc = null;        // Encryption key
        this.kMac = null;        // MAC key
        this.ksEnc = null;       // Session encryption key
        this.ksMac = null;       // Session MAC key
        this.ssc = null;         // Send Sequence Counter
        this.isEstablished = false;
        this.zeroIV = ZERO_IV;
    }

    initializeSSC(rndICPrime, rndIFDPrime) {
        if (!Array.isArray(rndICPrime) || !Array.isArray(rndIFDPrime)) {
            throw new Error('Invalid random values for SSC initialization');
        }

        const icTail = rndICPrime.slice(-4);
        const ifdTail = rndIFDPrime.slice(-4);
        this.ssc = icTail.concat(ifdTail);
        console.log('[BAC Session] SSC initialized:', Buffer.from(this.ssc).toString('hex'));
    }

    /**
     * Initialize session with MRZ-derived keys
     */
    initializeWithMRZ(mrzData) {
        console.log('[BAC Session] === INITIALIZING WITH MRZ DATA ===');
        console.log('[BAC Session] Raw MRZ input:', JSON.stringify(mrzData, null, 2));
        console.log('[BAC Session] documentNo:', mrzData.documentNo, '(type:', typeof mrzData.documentNo, ')');
        console.log('[BAC Session] birthDate:', mrzData.birthDate, '(type:', typeof mrzData.birthDate, ')');
        console.log('[BAC Session] expiryDate:', mrzData.expiryDate, '(type:', typeof mrzData.expiryDate, ')');

        const mrzInfo = buildMRZInformation(mrzData);
        console.log('[BAC Session] Final MRZ Info String:', mrzInfo);
        console.log('[BAC Session] MRZ Info length:', mrzInfo.length, '(expected: 24)');

        const keys = deriveBACKeys(mrzInfo);

        this.kEnc = keys.kEnc;
        this.kMac = keys.kMac;

        console.log('[BAC Session] Kenc (hex):', keys.kEnc.toString(CryptoJS.enc.Hex));
        console.log('[BAC Session] Kmac (hex):', keys.kMac.toString(CryptoJS.enc.Hex));
        console.log('[BAC Session] Base keys derived from MRZ ✓');
    }

    /**
     * Derive session keys from shared secret
     * ICAO 9303: Ksenc = SHA-1(Kseed || 0x00000001), Ksmac = SHA-1(Kseed || 0x00000002)
     */
    deriveSessionKeys(kSeed) {
        console.log('[BAC Session] Deriving session keys from seed');
        console.log('[BAC Session] kSeed length:', kSeed.length, 'bytes');
        console.log('[BAC Session] kSeed (hex):', Buffer.from(kSeed).toString('hex'));

        // ICAO 9303 standard key derivation
        // Ksenc = SHA-1(Kseed || 0x00000001)
        const kSeedWA = bytesToWordArray(kSeed);
        const c1 = bytesToWordArray([0x00, 0x00, 0x00, 0x01]);
        const hashEnc = CryptoJS.SHA1(kSeedWA.concat(c1));
        const hashEncBytes = wordArrayToBytes(hashEnc); // 20 bytes

        // Take first 16 bytes and adjust parity for 3DES
        const ksEncBytes = hashEncBytes.slice(0, 16);
        this.ksEnc = this.adjustKeyParity(bytesToWordArray(ksEncBytes));

        // Ksmac = SHA-1(Kseed || 0x00000002)
        const c2 = bytesToWordArray([0x00, 0x00, 0x00, 0x02]);
        const hashMac = CryptoJS.SHA1(kSeedWA.concat(c2));
        const hashMacBytes = wordArrayToBytes(hashMac); // 20 bytes

        // Take first 16 bytes and adjust parity for 3DES
        const ksMacBytes = hashMacBytes.slice(0, 16);
        this.ksMac = this.adjustKeyParity(bytesToWordArray(ksMacBytes));

        console.log('[BAC Session] Session Ksenc:', this.ksEnc.toString(CryptoJS.enc.Hex));
        console.log('[BAC Session] Session Ksmac:', this.ksMac.toString(CryptoJS.enc.Hex));

        // SSC should already be initialized from mutual auth
        if (!this.ssc) {
            console.warn('[BAC Session] SSC not initialized, using zeros');
            this.ssc = new Array(8).fill(0);
        }

        this.isEstablished = true;
        console.log('[BAC Session] ✅ Secure channel established');
    }

    /**
     * Adjust DES key parity bits (odd parity)
     */
    adjustKeyParity(key) {
        const bytes = wordArrayToBytes(key);

        for (let i = 0; i < bytes.length; i++) {
            let byte = bytes[i] & 0xFE; // Clear LSB (parity bit)
            let parity = 0;

            // Count set bits in upper 7 bits
            for (let j = 1; j < 8; j++) {
                if ((byte >> j) & 1) {
                    parity++;
                }
            }

            // Set LSB to make odd parity
            if (parity % 2 === 0) {
                byte |= 1;
            }

            bytes[i] = byte;
        }

        return bytesToWordArray(bytes);
    }

    /**
     * Encode TLV length (supports multi-byte length)
     */
    encodeTLVLength(length) {
        if (length < 0x80) {
            return [length];
        }

        // Multi-byte length: 0x80 | numBytes, then bytes
        const bytes = [];
        let temp = length;
        while (temp > 0) {
            bytes.unshift(temp & 0xFF);
            temp >>= 8;
        }

        return [0x80 | bytes.length, ...bytes];
    }

    /**
     * Parse TLV data object
     */
    parseTLV(data, offset = 0) {
        if (offset >= data.length) {
            return null;
        }

        const tag = data[offset];
        let lengthOffset = offset + 1;
        let length;
        let valueOffset;

        // Parse length (single or multi-byte)
        const firstLengthByte = data[lengthOffset];
        if (firstLengthByte < 0x80) {
            // Short form
            length = firstLengthByte;
            valueOffset = lengthOffset + 1;
        } else {
            // Long form: 0x80 | numBytes
            const numLengthBytes = firstLengthByte & 0x7F;
            length = 0;
            for (let i = 0; i < numLengthBytes; i++) {
                length = (length << 8) | data[lengthOffset + 1 + i];
            }
            valueOffset = lengthOffset + 1 + numLengthBytes;
        }

        const value = data.slice(valueOffset, valueOffset + length);
        const nextOffset = valueOffset + length;

        return { tag, length, value, nextOffset };
    }

    /**
     * Increment Send Sequence Counter
     */
    incrementSSC() {
        for (let i = this.ssc.length - 1; i >= 0; i--) {
            if (this.ssc[i] === 0xFF) {
                this.ssc[i] = 0x00;
            } else {
                this.ssc[i]++;
                break;
            }
        }
        console.log('[BAC Session] SSC incremented:', Buffer.from(this.ssc).toString('hex'));
    }

    /**
     * Wrap APDU with secure messaging
     */
    wrapAPDU(apdu) {
        const apduBytes = Array.from(apdu);
        if (!this.isEstablished) {
            throw new Error('BAC session not established');
        }

        console.log('[BAC Session] Wrapping APDU with secure messaging');
        this.incrementSSC();

        const cla = apduBytes[0] | 0x0C; // set secure messaging bits
        const ins = apduBytes[1];
        const p1 = apduBytes[2];
        const p2 = apduBytes[3];

        const lc = apduBytes.length > 4 ? apduBytes[4] : 0;
        const data = lc > 0 ? apduBytes.slice(5, 5 + lc) : [];
        const leIndex = lc > 0 ? 5 + lc : 4;
        const le = apduBytes.length > leIndex ? apduBytes[leIndex] : null;

        const doSequence = [];

        // DO87: Encrypted data (if present)
        if (data.length > 0) {
            const padded = padData(data, 8);
            const encrypted = encrypt3DES(padded, this.ksEnc, this.zeroIV);

            // DO87 = tag || length || 0x01 (padding indicator) || encrypted data
            const do87Value = [0x01, ...encrypted];
            const do87Length = this.encodeTLVLength(do87Value.length);
            const do87 = [0x87, ...do87Length, ...do87Value];
            doSequence.push(...do87);
        }

        // DO97: Expected response length (if present)
        if (le !== null && le !== undefined) {
            const do97 = [0x97, 0x01, le];
            doSequence.push(...do97);
        }

        const do8e = this.buildDO8E(cla, ins, p1, p2, doSequence);
        doSequence.push(...do8e);

        const smApdu = [cla, ins, p1, p2, doSequence.length, ...doSequence];
        console.log('[BAC Session] Wrapped APDU:', Buffer.from(smApdu).toString('hex'));

        return smApdu;
    }

    /**
     * Unwrap response APDU from secure messaging
     */
    unwrapAPDU(response) {
        if (!this.isEstablished) {
            return response;
        }

        console.log('[BAC Session] Unwrapping response APDU');
        this.incrementSSC();

        const apduBytes = Array.from(response);
        if (apduBytes.length < 10) {
            console.warn('[BAC Session] Response too short for secure messaging');
            return response;
        }

        const status = apduBytes.slice(-2);
        const body = apduBytes.slice(0, -2);

        let offset = 0;
        let plaintext = [];
        let do99 = null; // Status bytes
        let do8e = null; // MAC
        let macInput = this.ssc.slice(); // Start with SSC

        // Parse all TLV objects
        while (offset < body.length) {
            const tlv = this.parseTLV(body, offset);
            if (!tlv) break;

            console.log(`[BAC Session] Parsed TLV: tag=0x${tlv.tag.toString(16)}, length=${tlv.length}`);

            if (tlv.tag === 0x87) {
                // Encrypted data: skip first byte (0x01 padding indicator)
                const encData = tlv.value.slice(1);
                const decrypted = decrypt3DES(encData, this.ksEnc, this.zeroIV);
                const unpadded = removePadding(decrypted);
                plaintext = plaintext.concat(unpadded);

                // Add DO87 to MAC input
                macInput.push(0x87, ...this.encodeTLVLength(tlv.value.length), ...tlv.value);
            } else if (tlv.tag === 0x99) {
                // Status bytes
                do99 = tlv.value;
                macInput.push(0x99, ...this.encodeTLVLength(tlv.value.length), ...tlv.value);
            } else if (tlv.tag === 0x8E) {
                // MAC (should be last)
                do8e = tlv.value;
            }

            offset = tlv.nextOffset;
        }

        // Verify MAC if present
        if (do8e) {
            const expectedMac = calculateMAC(macInput, this.ksMac);

            // Timing-safe comparison
            let macValid = do8e.length === expectedMac.length;
            if (macValid) {
                let diff = 0;
                for (let i = 0; i < do8e.length; i++) {
                    diff |= do8e[i] ^ expectedMac[i];
                }
                macValid = (diff === 0);
            }

            if (!macValid) {
                console.error('[BAC Session] ❌ Response MAC verification failed!');
                console.error('[BAC Session] Expected:', Buffer.from(expectedMac).toString('hex'));
                console.error('[BAC Session] Received:', Buffer.from(do8e).toString('hex'));
                throw new Error('Secure messaging MAC verification failed');
            }

            console.log('[BAC Session] ✅ Response MAC verified');
        }

        // Use DO99 status if available, otherwise use original status
        const finalStatus = do99 || status;
        return [...plaintext, ...finalStatus];
    }

    buildDO8E(cla, ins, p1, p2, dataObjects) {
        const header = [cla, ins, p1, p2];
        const n = this.ssc.slice();
        const macInput = n.concat(header);
        if (dataObjects.length) {
            macInput.push(...dataObjects);
        }
        const mac = calculateMAC(macInput, this.ksMac);
        return [0x8E, mac.length, ...mac];
    }
}

/**
 * Helper function to convert WordArray to bytes
 */
function incrementSSCValue(ssc) {
    const result = ssc.slice();
    for (let i = result.length - 1; i >= 0; i--) {
        result[i] = (result[i] + 1) & 0xFF;
        if (result[i] !== 0) {
            break;
        }
    }
    return result;
}

/**
 * Perform BAC Authentication
 * 
 * @param {Object} mrzData - MRZ information
 * @param {string} mrzData.documentNo - Document number
 * @param {string} mrzData.birthDate - Birth date
 * @param {string} mrzData.expiryDate - Expiry date (optional)
 * @returns {Promise<BACSession>} - Established BAC session
 */
export async function performBACAuthentication(mrzData) {
    console.log('[BAC Protocol] === STARTING BAC AUTHENTICATION ===');
    console.log('[BAC Protocol] MRZ Data received:', JSON.stringify(mrzData, null, 2));

    const session = new BACSession();

    try {
        // Step 1: Initialize with MRZ-derived keys
        session.initializeWithMRZ(mrzData);

        // Step 2: Get Challenge from chip
        console.log('[BAC Protocol] Step 1: GET CHALLENGE');
        console.log('[BAC Protocol] GET_CHALLENGE APDU:', Buffer.from(APDU.GET_CHALLENGE).toString('hex'));

        // Use plain array to avoid "Malformed calls from JS" error
        const challengeResponse = await NfcManager.transceive(APDU.GET_CHALLENGE);

        // Check response status
        if (!isSuccessResponse(challengeResponse)) {
            throw new Error(`GET CHALLENGE failed: ${getStatusWord(challengeResponse)}`);
        }

        // Extract RND.IC (8 bytes challenge from chip)
        const rndIC = challengeResponse.slice(0, 8);
        console.log('[BAC Protocol] RND.IC (Challenge):', Buffer.from(rndIC).toString('hex'));

        // Step 3: Generate our random (RND.IFD)
        const rndIFD = generateRandomBytes(8);
        console.log('[BAC Protocol] RND.IFD (Our random):', Buffer.from(rndIFD).toString('hex'));

        // Step 4: Generate key seed (kIFD)
        const kIFD = generateRandomBytes(16);
        console.log('[BAC Protocol] kIFD (Key seed):', Buffer.from(kIFD).toString('hex'));

        // Step 5: Construct data for encryption
        // S = RND.IFD || RND.IC || kIFD (32 bytes)
        const sData = rndIFD.concat(rndIC).concat(kIFD);
        console.log('[BAC Protocol] S length:', sData.length);
        console.log('[BAC Protocol] S (to encrypt):', Buffer.from(sData).toString('hex'));

        // Step 6: Encrypt S with Kenc (using zero IV per ICAO 9303)
        const zeroIV = CryptoJS.enc.Hex.parse('0000000000000000'); // 8 zero bytes
        const eifd = encrypt3DES(sData, session.kEnc, zeroIV);
        console.log('[BAC Protocol] E(IFD) length:', eifd.length);
        console.log('[BAC Protocol] E(IFD) (Encrypted):', Buffer.from(eifd).toString('hex'));

        // Step 7: Calculate MAC over E(IFD)
        const mData = eifd;
        console.log('[BAC Protocol] MAC input length:', mData.length);
        const mifd = calculateMAC(mData, session.kMac);
        console.log('[BAC Protocol] M(IFD) length:', mifd.length);
        console.log('[BAC Protocol] M(IFD) (MAC):', Buffer.from(mifd).toString('hex'));

        // Step 8: Construct EXTERNAL AUTHENTICATE command
        // CLA INS P1 P2 Lc Data (no Le)
        const cmdData = eifd.concat(mifd); // E(IFD) || M(IFD) = 40 bytes
        console.log('[BAC Protocol] Command data length:', cmdData.length);
        console.log('[BAC Protocol] Command data:', Buffer.from(cmdData).toString('hex'));

        // EXTERNAL AUTHENTICATE: CLA INS P1 P2 Lc Data (NO Le per ICAO 9303)
        const authCommand = APDU.EXTERNAL_AUTHENTICATE.concat(
            [cmdData.length], // Lc = 40 bytes
            cmdData
            // NO Le - most chips don't expect it for EXTERNAL AUTHENTICATE
        );

        console.log('[BAC Protocol] Step 2: EXTERNAL AUTHENTICATE');
        console.log('[BAC Protocol] Command length:', authCommand.length);
        console.log('[BAC Protocol] Full command (hex):', Buffer.from(authCommand).toString('hex'));

        // Step 9: Send EXTERNAL AUTHENTICATE
        // Use plain array to avoid "Malformed calls from JS" error
        const authResponse = await NfcManager.transceive(authCommand);

        // Check response status
        if (!isSuccessResponse(authResponse)) {
            const sw = getStatusWord(authResponse);
            console.error('[BAC Protocol] Authentication failed:', sw);

            if (sw === '6300') {
                console.error('[BAC Protocol] ❌ SW=6300: MAC/Keys verification failed');
                console.error('[BAC Protocol] Check: MRZ data, check digits, key derivation');
                throw new Error('BAC authentication failed: Incorrect MRZ data or MAC verification failed');
            } else if (sw === '6982') {
                console.error('[BAC Protocol] ❌ SW=6982: Security status not satisfied');
                console.error('[BAC Protocol] 🎯 LIKELY REASON: Card requires PACE, not BAC');
                console.error('[BAC Protocol] Modern Turkish ID cards (2017+) typically use PACE');
                console.error('[BAC Protocol] Solution: Check if EF.CardAccess exists and use PACE protocol');
                throw new Error('BAC authentication failed: Security status not satisfied (Card likely requires PACE)');
            } else if (sw === '6988') {
                console.error('[BAC Protocol] ❌ SW=6988: Incorrect encryption/decryption');
                console.error('[BAC Protocol] Check: IV, padding, 3DES key expansion, parity bits');
                throw new Error('BAC authentication failed: Incorrect encryption');
            } else {
                console.error('[BAC Protocol] ❌ Unexpected SW:', sw);
                throw new Error(`EXTERNAL AUTHENTICATE failed: ${sw}`);
            }
        }

        console.log('[BAC Protocol] Authentication successful!');

        // Step 10: Parse response
        // Response = E(IC) || M(IC) (40 bytes + 2 status bytes)
        const responseData = authResponse.slice(0, -2); // Remove status word

        if (responseData.length !== 40) {
            console.warn('[BAC Protocol] Unexpected response length:', responseData.length);
        }

        const eic = responseData.slice(0, 32);  // Encrypted response from chip
        const mic = responseData.slice(32, 40); // MAC from chip

        console.log('[BAC Protocol] E(IC):', Buffer.from(eic).toString('hex'));
        console.log('[BAC Protocol] M(IC):', Buffer.from(mic).toString('hex'));

        // Step 11: Verify MAC (timing-safe comparison)
        const expectedMac = calculateMAC(eic, session.kMac);

        // Timing-safe MAC comparison
        let macValid = true;
        if (mic.length !== expectedMac.length) {
            macValid = false;
        } else {
            let diff = 0;
            for (let i = 0; i < mic.length; i++) {
                diff |= mic[i] ^ expectedMac[i];
            }
            macValid = (diff === 0);
        }

        if (!macValid) {
            console.error('[BAC Protocol] ❌ MAC verification failed!');
            console.error('[BAC Protocol] Expected:', Buffer.from(expectedMac).toString('hex'));
            console.error('[BAC Protocol] Received:', Buffer.from(mic).toString('hex'));
            throw new Error('BAC MAC verification failed');
        }

        console.log('[BAC Protocol] ✅ MAC verified');

        // Step 12: Decrypt E(IC) with zero IV
        const decryptedIC = decrypt3DES(eic, session.kEnc, zeroIV);
        console.log('[BAC Protocol] Decrypted IC data:', Buffer.from(decryptedIC).toString('hex'));

        // Extract RND.IC' and RND.IFD' and kIC
        const rndICPrime = decryptedIC.slice(0, 8);
        const rndIFDPrime = decryptedIC.slice(8, 16);
        const kIC = decryptedIC.slice(16, 32);

        console.log('[BAC Protocol] RND.IC\':', Buffer.from(rndICPrime).toString('hex'));
        console.log('[BAC Protocol] RND.IFD\':', Buffer.from(rndIFDPrime).toString('hex'));
        console.log('[BAC Protocol] kIC:', Buffer.from(kIC).toString('hex'));

        // Step 13: Verify RND.IFD matches
        const rndMatch = Buffer.from(rndIFD).equals(Buffer.from(rndIFDPrime));
        if (!rndMatch) {
            console.error('[BAC Protocol] RND.IFD verification failed!');
            throw new Error('BAC RND.IFD verification failed');
        }

        console.log('[BAC Protocol] RND.IFD verified ✓');

        // Step 14: Initialize SSC using last 4 bytes of randoms (per ICAO 9303 4.3.3.3)
        session.initializeSSC(rndICPrime, rndIFDPrime);

        // Step 15: Derive session keys
        // kSeed = kIFD XOR kIC
        const kSeed = xorBytes(kIFD, kIC);
        console.log('[BAC Protocol] kSeed:', Buffer.from(kSeed).toString('hex'));

        session.deriveSessionKeys(kSeed);

        console.log('[BAC Protocol] ✅ BAC Authentication Complete!');
        console.log('[BAC Protocol] Secure channel established');

        return session;

    } catch (error) {
        console.error('[BAC Protocol] Authentication failed:', error);
        throw error;
    }
}

/**
 * Check if APDU response is successful (SW1 SW2 = 90 00)
 */
function isSuccessResponse(response) {
    if (!response || response.length < 2) return false;
    const sw1 = response[response.length - 2];
    const sw2 = response[response.length - 1];
    return sw1 === 0x90 && sw2 === 0x00;
}

/**
 * Get status word from APDU response
 */
function getStatusWord(response) {
    if (!response || response.length < 2) return 'UNKNOWN';
    const sw1 = response[response.length - 2];
    const sw2 = response[response.length - 1];
    return sw1.toString(16).padStart(2, '0').toUpperCase() +
        sw2.toString(16).padStart(2, '0').toUpperCase();
}

// Export
export default {
    performBACAuthentication,
    BACSession
};
