/**
 * PACE (Password Authenticated Connection Establishment) Cryptographic Functions
 * Implements ICAO 9303 Part 11 - PACE v2 Protocol
 * 
 * This module provides cryptographic operations for PACE:
 * - Key derivation from MRZ/CAN
 * - ECDH (Elliptic Curve Diffie-Hellman) key agreement
 * - AES encryption/decryption
 * - CMAC (Cipher-based Message Authentication Code)
 * - Secure messaging primitives
 */

const CryptoJS = require('crypto-js');
const { Buffer } = require('buffer');
const { ec: EC } = require('elliptic');

// Standard domain parameters for PACE
// Using NIST P-256 (secp256r1) as most common for e-passports
const PACE_CURVES = {
    'P-256': {
        name: 'secp256r1',
        oid: '1.2.840.10045.3.1.7',
        keySize: 32,
        ecName: 'p256'
    },
    brainpoolP256r1: {
        name: 'brainpoolP256r1',
        oid: '1.3.36.3.3.2.8.1.1.7',
        keySize: 32,
        ecName: 'brainpoolP256r1' // will fall back to p256 if unsupported
    }
};

const curveCache = {};

function getCurveContext(curve = 'P-256') {
    const curveInfo = PACE_CURVES[curve] || PACE_CURVES['P-256'];
    const ecName = curveInfo.ecName || 'p256';

    if (!curveCache[ecName]) {
        try {
            curveCache[ecName] = new EC(ecName);
        } catch (error) {
            console.warn(`[PACE Crypto] Curve ${ecName} not supported, falling back to p256`);
            curveCache[ecName] = new EC('p256');
        }
    }

    return {
        ec: curveCache[ecName],
        curveInfo
    };
}

// Cipher suites for PACE
const PACE_CIPHERS = {
    AES_128_CBC: { oid: '2.16.840.1.101.3.4.1.2', keySize: 16, blockSize: 16 },
    AES_192_CBC: { oid: '2.16.840.1.101.3.4.1.22', keySize: 24, blockSize: 16 },
    AES_256_CBC: { oid: '2.16.840.1.101.3.4.1.42', keySize: 32, blockSize: 16 }
};

/**
 * Convert hex string to byte array
 */
function hexToBytes(hex) {
    const bytes = [];
    for (let i = 0; i < hex.length; i += 2) {
        bytes.push(parseInt(hex.substr(i, 2), 16));
    }
    return bytes;
}

/**
 * Convert byte array to hex string
 */
function bytesToHex(bytes) {
    return Buffer.from(bytes).toString('hex');
}

/**
 * Convert CryptoJS WordArray to byte array
 */
function wordArrayToBytes(wordArray) {
    const words = wordArray.words;
    const sigBytes = wordArray.sigBytes;
    const bytes = [];

    for (let i = 0; i < sigBytes; i++) {
        const byte = (words[i >>> 2] >>> (24 - (i % 4) * 8)) & 0xFF;
        bytes.push(byte);
    }

    return bytes;
}

/**
 * Convert byte array to CryptoJS WordArray
 */
function bytesToWordArray(bytes) {
    const words = [];
    for (let i = 0; i < bytes.length; i += 4) {
        words.push(
            (bytes[i] << 24) |
            (bytes[i + 1] << 16) |
            (bytes[i + 2] << 8) |
            bytes[i + 3]
        );
    }
    return CryptoJS.lib.WordArray.create(words, bytes.length);
}

/**
 * Derive PACE password from MRZ data
 * Uses SHA-1 hash of MRZ information (same as BAC)
 * 
 * @param {Object} mrzData - MRZ data object with documentNo, birthDate, expiryDate
 * @returns {Array<number>} - Derived password bytes
 */
function derivePACEPassword(mrzData) {
    console.log('[PACE Crypto] Deriving password from MRZ...');

    // Build MRZ information string (24 chars)
    const { buildMRZInformation } = require('./BACCrypto');
    const mrzInfo = buildMRZInformation(mrzData);

    console.log('[PACE Crypto] MRZ Info for PACE:', mrzInfo);

    // SHA-1 hash of MRZ
    const hash = CryptoJS.SHA1(mrzInfo);
    const hashBytes = wordArrayToBytes(hash);

    console.log('[PACE Crypto] SHA-1 hash:', bytesToHex(hashBytes));
    console.log('[PACE Crypto] Password length:', hashBytes.length);

    return hashBytes; // 20 bytes
}

/**
 * Derive PACE password from CAN (Card Access Number)
 * Turkish IDs expose a 6-digit CAN printed on the card.
 *
 * @param {string|number} canInput - Raw CAN provided by user
 * @returns {Array<number>} - Derived password bytes (SHA-1 result)
 */
function derivePACEPasswordFromCAN(canInput) {
    if (canInput === undefined || canInput === null) {
        throw new Error('CAN numarası gerekli');
    }

    const digitsOnly = String(canInput).replace(/[^0-9]/g, '');
    if (!digitsOnly) {
        throw new Error('CAN yalnızca rakamlardan oluşmalıdır');
    }

    const normalizedCAN = digitsOnly.padStart(6, '0').slice(-6);
    const maskedCAN = normalizedCAN.replace(/.(?=..)/g, '*');
    console.log('[PACE Crypto] Deriving password from CAN:', maskedCAN);

    const hash = CryptoJS.SHA1(normalizedCAN);
    const hashBytes = wordArrayToBytes(hash);

    console.log('[PACE Crypto] SHA-1 hash (CAN):', bytesToHex(hashBytes));

    return hashBytes;
}

/**
 * Derive PACE encryption and MAC keys from shared secret
 * Uses KDF (Key Derivation Function) as per ICAO 9303
 * 
 * @param {Array<number>} sharedSecret - ECDH shared secret (K)
 * @param {number} keySize - Key size in bytes (16, 24, or 32)
 * @returns {Object} - { kEnc, kMac } - Encryption and MAC keys
 */
function derivePACEKeys(sharedSecret, keySize = 16) {
    console.log('[PACE Crypto] Deriving session keys from shared secret...');
    console.log('[PACE Crypto] Shared secret length:', sharedSecret.length);
    console.log('[PACE Crypto] Target key size:', keySize);

    const secretWA = bytesToWordArray(sharedSecret);
    const counter1 = bytesToWordArray([0x00, 0x00, 0x00, 0x01]);
    const counter2 = bytesToWordArray([0x00, 0x00, 0x00, 0x02]);

    const kEncSeed = CryptoJS.SHA1(secretWA.concat(counter1));
    const kMacSeed = CryptoJS.SHA1(secretWA.concat(counter2));

    const kEncBytes = wordArrayToBytes(kEncSeed).slice(0, keySize);
    const kMacBytes = wordArrayToBytes(kMacSeed).slice(0, keySize);

    console.log('[PACE Crypto] kEnc:', bytesToHex(kEncBytes));
    console.log('[PACE Crypto] kMac:', bytesToHex(kMacBytes));

    return {
        kEnc: kEncBytes,
        kMac: kMacBytes
    };
}

/**
 * AES encryption in CBC mode
 * 
 * @param {Array<number>} data - Data to encrypt
 * @param {Array<number>} key - AES key
 * @param {Array<number>} iv - Initialization vector
 * @returns {Array<number>} - Encrypted data
 */
function encryptAES(data, key, iv) {
    console.log('[PACE Crypto] AES encryption...');
    console.log('[PACE Crypto] Data length:', data.length);
    console.log('[PACE Crypto] Key length:', key.length);

    const dataWA = bytesToWordArray(data);
    const keyWA = bytesToWordArray(key);
    const ivWA = bytesToWordArray(iv);

    const encrypted = CryptoJS.AES.encrypt(dataWA, keyWA, {
        iv: ivWA,
        mode: CryptoJS.mode.CBC,
        padding: CryptoJS.pad.NoPadding
    });

    const result = wordArrayToBytes(encrypted.ciphertext);
    console.log('[PACE Crypto] Encrypted length:', result.length);

    return result;
}

/**
 * AES decryption in CBC mode
 * 
 * @param {Array<number>} data - Data to decrypt
 * @param {Array<number>} key - AES key
 * @param {Array<number>} iv - Initialization vector
 * @returns {Array<number>} - Decrypted data
 */
function decryptAES(data, key, iv) {
    console.log('[PACE Crypto] AES decryption...');

    const dataWA = bytesToWordArray(data);
    const keyWA = bytesToWordArray(key);
    const ivWA = bytesToWordArray(iv);

    const decrypted = CryptoJS.AES.decrypt(
        { ciphertext: dataWA },
        keyWA,
        {
            iv: ivWA,
            mode: CryptoJS.mode.CBC,
            padding: CryptoJS.pad.NoPadding
        }
    );

    return wordArrayToBytes(decrypted);
}

/**
 * Calculate AES-CMAC (Cipher-based MAC)
 * CMAC as per NIST SP 800-38B
 * 
 * @param {Array<number>} data - Data to authenticate
 * @param {Array<number>} key - MAC key
 * @returns {Array<number>} - CMAC (8 bytes for secure messaging)
 */
function calculateCMAC(data, key) {
    console.log('[PACE Crypto] Calculating CMAC...');
    console.log('[PACE Crypto] Data length:', data.length);
    console.log('[PACE Crypto] Key length:', key.length);

    // Simplified CMAC implementation
    // For production, use a proper CMAC library

    const blockSize = 16; // AES block size

    // Pad data to block size
    let paddedData = [...data];
    if (paddedData.length % blockSize !== 0) {
        paddedData.push(0x80); // Padding bit
        while (paddedData.length % blockSize !== 0) {
            paddedData.push(0x00);
        }
    }

    // CBC-MAC
    let iv = new Array(blockSize).fill(0);
    let mac = iv.slice();

    for (let i = 0; i < paddedData.length; i += blockSize) {
        const block = paddedData.slice(i, i + blockSize);
        // XOR with previous MAC
        for (let j = 0; j < blockSize; j++) {
            block[j] ^= mac[j];
        }
        // Encrypt
        mac = encryptAES(block, key, new Array(blockSize).fill(0));
    }

    // Return first 16 bytes (full block) for authentication tokens
    const result = mac.slice(0, 16);
    console.log('[PACE Crypto] CMAC:', bytesToHex(result));

    return result;
}

/**
 * Generate random bytes
 * 
 * @param {number} length - Number of bytes
 * @returns {Array<number>} - Random bytes
 */
function generateRandomBytes(length) {
    const bytes = [];
    for (let i = 0; i < length; i++) {
        bytes.push(Math.floor(Math.random() * 256));
    }
    return bytes;
}

/**
 * ECDH key agreement (simplified using crypto operations)
 * For production, use elliptic curve library
 * 
 * @param {Array<number>} privateKey - Private key bytes
 * @param {Array<number>} publicKey - Public key bytes
 * @param {string} curve - Curve name (e.g., 'P-256')
 * @returns {Array<number>} - Shared secret
 */
function performECDH(privateKey, publicKey, curve = 'P-256') {
    console.log('[PACE Crypto] ECDH key agreement...');
    console.log('[PACE Crypto] Curve:', curve);
    const { ec, curveInfo } = getCurveContext(curve);

    const privateKeyHex = Buffer.from(privateKey).toString('hex');
    const keyPair = ec.keyFromPrivate(privateKeyHex, 'hex');

    const publicKeyBuffer = Buffer.from(publicKey);
    const pubPoint = ec.keyFromPublic(publicKeyBuffer.toString('hex'), 'hex').getPublic();

    const shared = keyPair.derive(pubPoint);
    const sharedBytes = shared.toArray('be', curveInfo.keySize);

    console.log('[PACE Crypto] Shared secret:', bytesToHex(sharedBytes));
    return sharedBytes;
}

/**
 * Generate EC keypair
 * 
 * @param {string} curve - Curve name
 * @returns {Object} - { privateKey, publicKey }
 */
function generateECKeypair(curve = 'P-256') {
    console.log('[PACE Crypto] Generating EC keypair...');
    const { ec, curveInfo } = getCurveContext(curve);

    const keyPair = ec.genKeyPair();
    const privateKey = keyPair.getPrivate().toArray('be', curveInfo.keySize);
    const publicKey = keyPair.getPublic().encode('array', false); // uncompressed (0x04)

    console.log('[PACE Crypto] Private key length:', privateKey.length);
    console.log('[PACE Crypto] Public key length:', publicKey.length);

    return { privateKey, publicKey };
}

/**
 * Derive PACE password from CAN (Card Authentication Number)
 * 
 * @param {Array<number>} can - Card Authentication Number (CAN)
 * @param {Array<number>} sharedSecret - ECDH shared secret (K)
 * @returns {Array<number>} - PACE password
 */
// Export all functions
module.exports = {
    derivePACEPassword,
    derivePACEPasswordFromCAN,
    derivePACEKeys,
    encryptAES,
    decryptAES,
    calculateCMAC,
    generateRandomBytes,
    performECDH,
    generateECKeypair,
    hexToBytes,
    bytesToHex,
    wordArrayToBytes,
    bytesToWordArray,
    PACE_CURVES,
    PACE_CIPHERS
};
