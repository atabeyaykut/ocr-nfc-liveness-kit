/**
 * PACE (Password Authenticated Connection Establishment) Protocol
 * Implements ICAO 9303 Part 11 - PACE v2
 * 
 * PACE Protocol Steps:
 * 1. MSE:Set AT - Select cipher suite and domain parameters
 * 2. General Authenticate Step 1 - Get encrypted nonce from card
 * 3. General Authenticate Step 2 - Send terminal ephemeral public key
 * 4. General Authenticate Step 3 - Receive card ephemeral public key
 * 5. General Authenticate Step 4 - Mutual authentication with tokens
 */

const NfcManager = require('react-native-nfc-manager').default;
const { Buffer } = require('buffer');
const {
    derivePACEPassword,
    derivePACEPasswordFromCAN,
    derivePACEKeys,
    encryptAES,
    decryptAES,
    calculateCMAC,
    performECDH,
    generateECKeypair,
    bytesToHex,
    PACE_CURVES,
    PACE_CIPHERS
} = require('./PACECrypto');

// APDU commands for PACE
const PACE_APDU = {
    MSE_SET_AT: [0x00, 0x22, 0xC1, 0xA4], // Manage Security Environment: Set AT
    GENERAL_AUTHENTICATE: [0x00, 0x86, 0x00, 0x00] // General Authenticate
};

// OID for PACE OIDs (Object Identifiers)
const PACE_OID = {
    PACE_ECDH_GM_AES128: '0.4.0.127.0.7.2.2.4.2.2',  // Most common for modern ePassports
    PACE_ECDH_GM_AES192: '0.4.0.127.0.7.2.2.4.2.3',
    PACE_ECDH_GM_AES256: '0.4.0.127.0.7.2.2.4.2.4',
    PACE_DH_GM_AES128: '0.4.0.127.0.7.2.2.4.1.2',    // DH instead of ECDH
    PACE_ECDH_IM_AES128: '0.4.0.127.0.7.2.2.4.6.2',  // Integrated Mapping
    PACE_DH_IM_AES128: '0.4.0.127.0.7.2.2.4.5.2',    // DH Integrated Mapping
};

// OIDs to try in order (most likely to least likely for Turkish ID cards)
const PACE_OID_PRIORITY = [
    { oid: PACE_OID.PACE_ECDH_GM_AES128, name: 'ECDH-GM-AES128 (default)', curve: 'P-256' },
    { oid: PACE_OID.PACE_ECDH_IM_AES128, name: 'ECDH-IM-AES128 (Integrated)', curve: 'P-256' },
    { oid: PACE_OID.PACE_DH_GM_AES128, name: 'DH-GM-AES128 (Diffie-Hellman)', curve: 'P-256' },
    { oid: PACE_OID.PACE_ECDH_GM_AES192, name: 'ECDH-GM-AES192', curve: 'P-256' },
    { oid: PACE_OID.PACE_ECDH_GM_AES256, name: 'ECDH-GM-AES256', curve: 'P-384' },
];

// ... rest of the code remains the same ...
function encodeOID(oidString) {
    if (!oidString) {
        return [];
    }
    const parts = oidString.split('.').map(Number);
    if (parts.length < 2) {
        return [];
    }
    const bytes = [];
    bytes.push(40 * parts[0] + parts[1]);
    for (let i = 2; i < parts.length; i++) {
        let value = parts[i];
        const stack = [];
        do {
            stack.push(value & 0x7F);
            value >>= 7;
        } while (value > 0);
        for (let j = stack.length - 1; j >= 0; j--) {
            const byte = stack[j] | (j === 0 ? 0x00 : 0x80);
            bytes.push(byte);
        }
    }
    return bytes;
}

function encodeLength(length) {
    if (length < 0x80) {
        return [length];
    }
    const bytes = [];
    let value = length;
    while (value > 0) {
        bytes.unshift(value & 0xFF);
        value >>= 8;
    }
    return [0x80 | bytes.length, ...bytes];
}

function buildTLV(tag, value = []) {
    const lengthBytes = encodeLength(value.length);
    return [tag, ...lengthBytes, ...(value || [])];
}

function decodeTLV(data, offset = 0) {
    if (offset >= data.length) {
        return null;
    }
    const tag = data[offset++];
    if (offset >= data.length) {
        return null;
    }
    let length = data[offset++];
    if (length & 0x80) {
        const numBytes = length & 0x7F;
        length = 0;
        for (let i = 0; i < numBytes; i++) {
            length = (length << 8) | data[offset++];
        }
    }
    const value = data.slice(offset, offset + length);
    const nextOffset = offset + length;
    return { tag, length, value, nextOffset };
}

function findTLV(data, tag) {
    let offset = 0;
    while (offset < data.length) {
        const tlv = decodeTLV(data, offset);
        if (!tlv) {
            break;
        }
        if (tlv.tag === tag) {
            return tlv;
        }
        offset = tlv.nextOffset;
    }
    return null;
}

function timingSafeEqual(a = [], b = []) {
    if (a.length !== b.length) {
        return false;
    }
    let diff = 0;
    for (let i = 0; i < a.length; i++) {
        diff |= a[i] ^ b[i];
    }
    return diff === 0;
}

/**
 * Send APDU command to card
 * Uses plain array to avoid React Native bridge issues
 */
async function transceive(command) {
    // React Native bridge has issues with Uint8Array
    const plainArray = Array.isArray(command) ? command : Array.from(command);
    return await NfcManager.transceive(plainArray);
}

/**
 * PACE Session Class
 * Manages PACE session state and secure messaging
 */
class PACESession {
    constructor() {
        this.isEstablished = false;
        this.kEnc = null; // Encryption key
        this.kMac = null; // MAC key
        this.ssc = null; // Send Sequence Counter
        this.curve = 'P-256'; // Default curve
        this.cipher = 'AES_128_CBC'; // Default cipher
        this.oid = null; // PACE OID used
        this.variant = null; // PACE variant name
    }

    /**
     * Initialize session with derived keys
     */
    initializeKeys(kEnc, kMac) {
        this.kEnc = kEnc;
        this.kMac = kMac;
        this.ssc = new Array(16).fill(0); // Initialize SSC to 0
        this.isEstablished = true;

        console.log('[PACE Session] Session established');
        console.log('[PACE Session] kEnc:', bytesToHex(this.kEnc));
        console.log('[PACE Session] kMac:', bytesToHex(this.kMac));
    }

    /**
     * Increment SSC for secure messaging
     */
    incrementSSC() {
        for (let i = this.ssc.length - 1; i >= 0; i--) {
            if (++this.ssc[i] !== 256) break;
            this.ssc[i] = 0;
        }
    }

    /**
     * Wrap APDU with secure messaging (after PACE)
     * Similar to BAC secure messaging
     */
    wrapAPDU(apdu) {
        if (!this.isEstablished) {
            return apdu;
        }

        console.log('[PACE Session] Wrapping APDU with secure messaging...');
        this.incrementSSC();

        // TODO: Implement full secure messaging
        // For now, return unwrapped
        console.warn('[PACE Session] ⚠️ Secure messaging not yet implemented');
        return apdu;
    }

    /**
     * Unwrap secure messaging response
     */
    unwrapResponse(response) {
        if (!this.isEstablished) {
            return response;
        }

        console.log('[PACE Session] Unwrapping response...');

        // TODO: Implement full secure messaging
        console.warn('[PACE Session] ⚠️ Secure messaging not yet implemented');
        return response;
    }
}

/**
 * Check if response is successful (SW = 9000)
 */
function isSuccessResponse(response) {
    if (!response || response.length < 2) return false;
    const sw1 = response[response.length - 2];
    const sw2 = response[response.length - 1];
    return sw1 === 0x90 && sw2 === 0x00;
}

/**
 * Get status word from response
 */
function getStatusWord(response) {
    if (!response || response.length < 2) return '0000';
    const sw1 = response[response.length - 2];
    const sw2 = response[response.length - 1];
    return sw1.toString(16).padStart(2, '0') + sw2.toString(16).padStart(2, '0');
}

/**
 * Step 1: MSE:Set AT - Set Authentication Template
 * Select cipher suite and domain parameters
 * 
 * @param {string} oid - Protocol OID
 * @param {string} curve - Elliptic curve name
 * @returns {Promise<boolean>} - Success status
 */
async function mseSetAT(oid = PACE_OID.PACE_ECDH_GM_AES128, curve = 'P-256') {
    console.log('[PACE Protocol] Step 0: MSE:Set AT');
    console.log('[PACE Protocol] OID:', oid);
    console.log('[PACE Protocol] Curve:', curve);

    const oidBytes = encodeOID(oid);
    // Full DER encoding: 0x06 (OID tag) + length + value
    const oidBytesFullDER = [0x06, oidBytes.length, ...oidBytes];
    console.log('[PACE Protocol] Encoded OID bytes (value-only):', bytesToHex(oidBytes));
    console.log('[PACE Protocol] Encoded OID bytes (full DER):', bytesToHex(oidBytesFullDER));

    // Turkish ID cards: Try multiple MSE:Set AT formats
    // Based on BSI TR-03110 and field reports
    const formats = [
        // ============ FULL DER ENCODING (CRITICAL!) ============
        {
            name: '🔥 Full DER OID + CAN (PasswordID=02)',
            data: [...buildTLV(0x80, oidBytesFullDER), 0x83, 0x01, 0x02],
            cla: 0x00
        },
        {
            name: '🔥 Full DER OID + MRZ (PasswordID=01)',
            data: [...buildTLV(0x80, oidBytesFullDER), 0x83, 0x01, 0x01],
            cla: 0x00
        },
        // ============ DOMAIN PARAMETERS (0x84) ============
        {
            name: 'Full DER + CAN + Domain Params (standardId=0)',
            data: [...buildTLV(0x80, oidBytesFullDER), 0x83, 0x01, 0x02, 0x84, 0x01, 0x00],
            cla: 0x00
        },
        // ============ REVERSED TLV ORDER ============
        {
            name: 'Reversed: PasswordID before OID (CAN)',
            data: [0x83, 0x01, 0x02, ...buildTLV(0x80, oidBytesFullDER)],
            cla: 0x00
        },
        // ============ CLA BYTE VARIATIONS ============
        {
            name: 'CLA=0x0C + Full DER + CAN',
            data: [...buildTLV(0x80, oidBytesFullDER), 0x83, 0x01, 0x02],
            cla: 0x0C
        },
        // ============ ALTERNATIVE PASSWORD REF ============
        {
            name: 'Full DER + PasswordID=0x00 (vendor-specific)',
            data: [...buildTLV(0x80, oidBytesFullDER), 0x83, 0x01, 0x00],
            cla: 0x00
        },
        {
            name: 'Full DER + PasswordID=0x04 (vendor-specific)',
            data: [...buildTLV(0x80, oidBytesFullDER), 0x83, 0x01, 0x04],
            cla: 0x00
        },
        // ============ VALUE-ONLY OID (original attempts) ============
        {
            name: 'Value-only OID + CAN',
            data: [...buildTLV(0x80, oidBytes), 0x83, 0x01, 0x02],
            cla: 0x00
        },
        {
            name: 'Value-only OID + MRZ',
            data: [...buildTLV(0x80, oidBytes), 0x83, 0x01, 0x01],
            cla: 0x00
        },
        // ============ P1/P2 VARIATIONS ============
        {
            name: 'P1/P2=41A4 + Full DER + CAN',
            data: [...buildTLV(0x80, oidBytesFullDER), 0x83, 0x01, 0x02],
            p1p2: [0x41, 0xA4],
            cla: 0x00
        }
    ];

    for (const format of formats) {
        const p1p2 = format.p1p2 || [0xC1, 0xA4];
        const cla = format.cla !== undefined ? format.cla : 0x00;
        const mseCommand = [
            cla, 0x22, ...p1p2,
            format.data.length,
            ...format.data
        ];

        console.log(`[PACE Protocol] Trying format: ${format.name}`);
        console.log('[PACE Protocol] MSE:Set AT command:', bytesToHex(mseCommand));

        try {
            const response = await transceive(mseCommand);
            console.log('[PACE Protocol] MSE:Set AT response:', bytesToHex(response));

            if (isSuccessResponse(response)) {
                console.log('[PACE Protocol] MSE:Set AT successful with:', format.name);
                return true;
            } else {
                const sw = getStatusWord(response);
                console.warn(`[PACE Protocol] Format "${format.name}" failed: ${sw}`);

                // Don't give up on first failure, try other formats
                if (format === formats[formats.length - 1]) {
                    console.error('[PACE Protocol] All MSE:Set AT formats failed');
                    console.error('[PACE Protocol] Last SW:', sw);

                    if (sw === '6a80' || sw === '6a86') {
                        console.error('[PACE Protocol] Card does not support any tested PACE variant');
                        console.error('[PACE Protocol] This card may require:');
                        console.error('[PACE Protocol]   - BAC instead of PACE');
                        console.error('[PACE Protocol]   - CAN (Card Access Number) based PACE');
                        console.error('[PACE Protocol]   - DH instead of ECDH');
                    }
                    return false;
                }
            }
        } catch (error) {
            console.error(`[PACE Protocol] Format "${format.name}" threw error:`, error.message);
            if (format === formats[formats.length - 1]) {
                return false;
            }
        }
    }

    return false;
}

/**
 * General Authenticate - 4-step handshake
 * 
 * @param {Array<number>} password - PACE password (from MRZ or CAN)
 * @param {string} curve - Elliptic curve name
 * @returns {Promise<Object>} - { kEnc, kMac } or null
 */
async function performGeneralAuthenticate(password, curve = 'P-256') {
    console.log('[PACE Protocol] Starting General Authenticate (4 steps)...');

    try {
        // Step 1: Get encrypted nonce from card
        console.log('[PACE Protocol] GA Step 1: Request nonce');

        const step1Command = [
            ...PACE_APDU.GENERAL_AUTHENTICATE,
            0x02, // Lc
            0x7C, 0x00, // Empty dynamic authentication template
            0x00 // Le (max)
        ];

        const step1Response = await transceive(step1Command);
        console.log('[PACE Protocol] GA Step 1 response:', bytesToHex(step1Response));

        if (!isSuccessResponse(step1Response)) {
            throw new Error('GA Step 1 failed: ' + getStatusWord(step1Response));
        }

        const responseBody = step1Response.slice(0, -2);
        let nonceBlock = responseBody;
        const template = decodeTLV(responseBody, 0);
        if (template && template.tag === 0x7C) {
            nonceBlock = template.value;
        }
        const nonceTlv = findTLV(nonceBlock, 0x80) || { value: nonceBlock };
        const encryptedNonce = nonceTlv.value;
        console.log('[PACE Protocol] Encrypted nonce:', bytesToHex(encryptedNonce));

        const decryptionKey = password.slice(0, 16);
        const iv = new Array(16).fill(0);

        console.log('[PACE Protocol] Decrypting nonce...');
        const nonce = decryptAES(encryptedNonce, decryptionKey, iv);
        console.log('[PACE Protocol] Decrypted nonce:', bytesToHex(nonce));

        // Step 2: Generate terminal keypair and send public key
        console.log('[PACE Protocol] GA Step 2: Send terminal public key');

        const terminalKeypair = generateECKeypair(curve);
        console.log('[PACE Protocol] Terminal public key:', bytesToHex(terminalKeypair.publicKey));

        const terminalKeyTlv = buildTLV(0x81, terminalKeypair.publicKey);
        const step2Template = buildTLV(0x7C, terminalKeyTlv);

        const step2Command = [
            ...PACE_APDU.GENERAL_AUTHENTICATE,
            step2Template.length,
            ...step2Template,
            0x00 // Le
        ];

        const step2Response = await transceive(step2Command);
        console.log('[PACE Protocol] GA Step 2 response:', bytesToHex(step2Response));

        if (!isSuccessResponse(step2Response)) {
            throw new Error('GA Step 2 failed: ' + getStatusWord(step2Response));
        }

        // Step 3: Receive card public key
        console.log('[PACE Protocol] GA Step 3: Receive card public key');

        const step2Body = step2Response.slice(0, -2);
        let cardPublicKeyBlock = step2Body;
        const cardTemplate = decodeTLV(step2Body, 0);
        if (cardTemplate && cardTemplate.tag === 0x7C) {
            cardPublicKeyBlock = cardTemplate.value;
        }
        const cardKeyTlv = findTLV(cardPublicKeyBlock, 0x82) || findTLV(cardPublicKeyBlock, 0x80);
        const cardPublicKey = cardKeyTlv ? cardKeyTlv.value : cardPublicKeyBlock;

        console.log('[PACE Protocol] Card public key:', bytesToHex(cardPublicKey));

        // Perform ECDH to get shared secret
        console.log('[PACE Protocol] Performing ECDH key agreement...');
        const sharedSecret = performECDH(terminalKeypair.privateKey, cardPublicKey, curve);
        console.log('[PACE Protocol] Shared secret:', bytesToHex(sharedSecret));

        // Derive session keys from shared secret
        const keySize = PACE_CIPHERS.AES_128_CBC.keySize;
        const keys = derivePACEKeys(sharedSecret, keySize);

        console.log('[PACE Protocol] Session keys derived');

        // Step 4: Mutual authentication with tokens
        console.log('[PACE Protocol] GA Step 4: Mutual authentication');

        // Calculate authentication token
        const terminalToken = calculateCMAC(cardPublicKey, keys.kMac);
        console.log('[PACE Protocol] Terminal token:', bytesToHex(terminalToken));

        const step4Data = [
            0x7C,
            terminalToken.length + 2,
            0x85, // Authentication token tag
            terminalToken.length,
            ...terminalToken
        ];

        const terminalTokenTlv = buildTLV(0x85, terminalToken);
        const step4Template = buildTLV(0x7C, terminalTokenTlv);

        const step4Command = [
            ...PACE_APDU.GENERAL_AUTHENTICATE,
            step4Template.length,
            ...step4Template,
            0x00 // Le
        ];

        const step4Response = await transceive(step4Command);
        console.log('[PACE Protocol] GA Step 4 response:', bytesToHex(step4Response));

        if (!isSuccessResponse(step4Response)) {
            throw new Error('GA Step 4 failed: ' + getStatusWord(step4Response));
        }

        const step4Body = step4Response.slice(0, -2);
        let cardTokenBlock = step4Body;
        const cardTokenTemplate = decodeTLV(step4Body, 0);
        if (cardTokenTemplate && cardTokenTemplate.tag === 0x7C) {
            cardTokenBlock = cardTokenTemplate.value;
        }
        const cardTokenTlv = findTLV(cardTokenBlock, 0x86) || findTLV(cardTokenBlock, 0x85);
        const cardToken = cardTokenTlv ? cardTokenTlv.value : cardTokenBlock;
        console.log('[PACE Protocol] Card token:', bytesToHex(cardToken));

        const expectedCardToken = calculateCMAC(terminalKeypair.publicKey, keys.kMac).slice(0, cardToken.length);
        console.log('[PACE Protocol] Expected card token:', bytesToHex(expectedCardToken));

        if (!timingSafeEqual(cardToken, expectedCardToken)) {
            throw new Error('Card token verification failed');
        }

        console.log('[PACE Protocol] ✅ PACE authentication successful!');

        return keys;

    } catch (error) {
        console.error('[PACE Protocol] General Authenticate failed:', error);
        throw error;
    }
}

/**
 * Main PACE authentication function
 * Tries multiple PACE OID variants automatically
 * 
 * @param {Object} mrzData - MRZ data for password derivation
 * @param {string} curve - Elliptic curve name (optional, auto-selected)
 * @param {string} oid - Protocol OID (optional, tries all if not specified)
 * @returns {Promise<PACESession>} - Established PACE session
 */
async function performPACEAuthentication(mrzData, curve = null, oid = null) {
    console.log('[PACE Protocol] === STARTING PACE AUTHENTICATION ===');
    console.log('[PACE Protocol] MRZ Data:', JSON.stringify(mrzData, null, 2));

    let passwordSource = 'MRZ';
    let password;
    try {
        // Prefer MRZ password when full data exists
        if (mrzData && mrzData.documentNo && mrzData.birthDate) {
            password = derivePACEPassword(mrzData);
        }
    } catch (mrzError) {
        console.warn('[PACE Protocol] MRZ password derivation failed:', mrzError.message);
    }

    if (!password && mrzData?.canNumber) {
        console.log('[PACE Protocol] Falling back to CAN-derived password');
        password = derivePACEPasswordFromCAN(mrzData.canNumber);
        passwordSource = 'CAN';
    }

    if (!password) {
        throw new Error('PACE password türetilemedi. MRZ veya CAN bilgisi gerekli.');
    }

    // If specific OID provided, try only that one
    if (oid) {
        const selectedCurve = curve || 'P-256';
        console.log('[PACE Protocol] Using specified OID:', oid);
        console.log('[PACE Protocol] Curve:', selectedCurve);

        try {
            const mseSuccess = await mseSetAT(oid, selectedCurve);
            if (!mseSuccess) {
                throw new Error('MSE:Set AT failed');
            }

            const keys = await performGeneralAuthenticate(password, selectedCurve);

            const session = new PACESession();
            session.initializeKeys(keys.kEnc, keys.kMac);
            session.curve = selectedCurve;
            session.cipher = 'AES_128_CBC';

            console.log('[PACE Protocol] ✅ PACE authentication complete!');
            return session;
        } catch (error) {
            console.error('[PACE Protocol] PACE authentication failed:', error);
            throw new Error('PACE authentication failed: ' + error.message);
        }
    }

    // No specific OID - try all variants in priority order
    console.log('[PACE Protocol] 🔄 Auto-detecting PACE variant...');
    console.log('[PACE Protocol] Will try', PACE_OID_PRIORITY.length, 'different OID variants');
    console.log('[PACE Protocol] 📊 Total combinations: 5 OIDs × 11 formats = 55 tests');

    for (let i = 0; i < PACE_OID_PRIORITY.length; i++) {
        const variant = PACE_OID_PRIORITY[i];
        console.log(`[PACE Protocol] === Attempt ${i + 1}/${PACE_OID_PRIORITY.length}: ${variant.name} ===`);
        console.log('[PACE Protocol] OID:', variant.oid);
        console.log('[PACE Protocol] Curve:', variant.curve);

        try {
            // Step 0: MSE:Set AT
            const mseSuccess = await mseSetAT(variant.oid, variant.curve);
            if (!mseSuccess) {
                console.warn(`[PACE Protocol] MSE:Set AT failed for ${variant.name}, trying next...`);
                continue; // Try next OID
            }

            console.log(`[PACE Protocol] ✅ MSE:Set AT successful with ${variant.name}!`);
            console.log(`[PACE Protocol] 🎯 Turkish ID card accepted PACE variant!`);
            console.log(`[PACE Protocol] Note: CAN-PACE uses card's internal CAN, password may be ignored`);

            // Steps 1-4: General Authenticate
            // For CAN-PACE: password is in the card, we use derived password or empty
            const keys = await performGeneralAuthenticate(password, variant.curve);

            // Create session
            const session = new PACESession();
            session.initializeKeys(keys.kEnc, keys.kMac);
            session.curve = variant.curve;
            session.cipher = 'AES_128_CBC';
            session.oid = variant.oid;
            session.variant = variant.name;

            console.log('[PACE Protocol] ✅ PACE authentication complete!');
            console.log('[PACE Protocol] Successful variant:', variant.name);
            console.log('[PACE Protocol] OID:', variant.oid);

            return session;

        } catch (error) {
            console.warn(`[PACE Protocol] ${variant.name} failed:`, error.message);

            // If this is the last attempt, throw error
            if (i === PACE_OID_PRIORITY.length - 1) {
                console.error('[PACE Protocol] ❌ All PACE variants failed!');
                console.error('[PACE Protocol] Tried variants:', PACE_OID_PRIORITY.map(v => v.name).join(', '));
                throw new Error('PACE authentication failed: All OID variants rejected by card');
            }

            // Otherwise continue to next variant
            console.log(`[PACE Protocol] Continuing to next variant...`);
        }
    }

    // This should never be reached due to the throw above
    throw new Error('PACE authentication failed: No variants succeeded');
}

module.exports = {
    performPACEAuthentication,
    PACESession
};
