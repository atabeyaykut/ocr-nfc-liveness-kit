/**
 * BAC (Basic Access Control) Cryptography Module
 * ICAO 9303 Part 11 - Security Mechanisms for MRTDs
 * 
 * Implements:
 * - MRZ Check Digit Calculation
 * - BAC Key Derivation (Kenc, Kmac)
 * - 3DES CBC Encryption/Decryption
 * - MAC Calculation (ISO 9797-1 Method 2)
 * - Secure Messaging
 */

import CryptoJS from 'crypto-js';
import { Buffer } from 'buffer';

/**
 * Calculate MRZ check digit according to ICAO 9303
 * Uses weighted sum modulo 10
 * 
 * @param {string} data - Input string (numbers, letters, '<')
 * @returns {string} - Single check digit (0-9)
 */
export function calculateCheckDigit(data) {
    const weights = [7, 3, 1];
    let sum = 0;

    for (let i = 0; i < data.length; i++) {
        const char = data[i];
        let value;

        if (char === '<') {
            value = 0;
        } else if (char >= '0' && char <= '9') {
            value = parseInt(char, 10);
        } else if (char >= 'A' && char <= 'Z') {
            value = char.charCodeAt(0) - 'A'.charCodeAt(0) + 10;
        } else {
            value = 0;
        }

        sum += value * weights[i % 3];
    }

    return (sum % 10).toString();
}

/**
 * Validate MRZ check digit
 * 
 * @param {string} data - Data to validate
 * @param {string} checkDigit - Expected check digit
 * @returns {boolean} - True if valid
 */
export function validateCheckDigit(data, checkDigit) {
    const calculated = calculateCheckDigit(data);
    return calculated === checkDigit;
}

/**
 * Format date for MRZ (YYMMDD)
 * 
 * @param {string} dateStr - Date string (various formats)
 * @returns {string} - YYMMDD format
 */
export function formatDateForMRZ(dateStr) {
    // Validate input
    if (!dateStr || typeof dateStr !== 'string') {
        console.error('[BAC] Invalid date string:', dateStr);
        throw new Error(`Invalid date string: ${dateStr}. Expected a valid date string.`);
    }

    // Trim whitespace
    dateStr = dateStr.trim();

    // Handle formats like: DD.MM.YYYY, DD/MM/YYYY, YYYY-MM-DD
    let day, month, year;

    if (dateStr.includes('.')) {
        [day, month, year] = dateStr.split('.');
    } else if (dateStr.includes('/')) {
        [day, month, year] = dateStr.split('/');
    } else if (dateStr.includes('-')) {
        [year, month, day] = dateStr.split('-');
    } else if (dateStr.length === 6) {
        // Already in YYMMDD format
        return dateStr;
    } else {
        throw new Error(`Unsupported date format: ${dateStr}`);
    }

    // Extract YY from YYYY
    if (year && year.length === 4) {
        year = year.substring(2);
    }

    // Pad day and month to 2 digits
    day = day?.padStart(2, '0') || '01';
    month = month?.padStart(2, '0') || '01';
    year = year?.padStart(2, '0') || '00';

    return `${year}${month}${day}`;
}

/**
 * Build MRZ information string for BAC
 * Format: DocumentNumber + CheckDigit + DateOfBirth + CheckDigit + DateOfExpiry + CheckDigit
 * 
 * @param {Object} mrzData - MRZ data object
 * @param {string} mrzData.documentNo - Document number
 * @param {string} mrzData.birthDate - Birth date (YYMMDD or DD.MM.YYYY)
 * @param {string} mrzData.expiryDate - Expiry date (YYMMDD or DD.MM.YYYY), optional
 * @returns {string} - MRZ information string (max 30 chars)
 */
export function buildMRZInformation(mrzData) {
    console.log('[BAC] Building MRZ information from:', mrzData);
    console.log('[BAC] MRZ Check Digits provided:', mrzData.mrzCheckDigits);

    // Normalize document number (remove spaces, pad/truncate to 9 chars)
    let docNo = (mrzData.documentNo || '').replace(/\s/g, '').toUpperCase();

    console.log('[BAC] ⚠️ TESTING ALTERNATIVE MRZ FORMATS');

    // Get check digit first
    const providedCheckDigit = mrzData.mrzCheckDigits?.documentNo;

    // TEST 1: Document number WITH check digit (MRZ line format)
    // Example: A43D646181 (9 digits + 1 check digit = 10 chars, truncate to 9)
    let docNoWithCD = docNo;
    if (providedCheckDigit) {
        docNoWithCD = docNo + providedCheckDigit; // e.g., A43D646181
        console.log('[BAC] ⚠️ TEST: DocNo + CheckDigit:', docNoWithCD);
    }
    if (docNoWithCD.length < 9) {
        docNoWithCD += '<'.repeat(9 - docNoWithCD.length);
    }
    if (docNoWithCD.length > 9) {
        docNoWithCD = docNoWithCD.substring(0, 9);
    }
    console.log('[BAC] Format 1 (With CD embedded):', docNoWithCD);

    // TEST 2: Standard format (without CD)
    let docNoStandard = docNo;
    while (docNoStandard.length < 9) {
        docNoStandard += '<';
    }
    if (docNoStandard.length > 9) {
        docNoStandard = docNoStandard.substring(0, 9);
    }
    console.log('[BAC] Format 2 (Standard):', docNoStandard);

    // TRY WITH CHECK DIGIT EMBEDDED FIRST
    docNo = docNoWithCD;

    // CRITICAL: ALWAYS calculate check digit (OCR can misread them)
    // e-Devlet APK also calculates check digits, doesn't trust MRZ
    const docCheckDigit = calculateCheckDigit(docNo);
    const ocrDocCD = mrzData.mrzCheckDigits?.documentNo;
    console.log('[BAC] Document number for BAC:', docNo);
    console.log('[BAC] Check digit: CALCULATED=' + docCheckDigit + ' vs OCR=' + ocrDocCD);
    console.log('[BAC] ⚠️ Using document format with CD embedded in 9-char field');

    // Format birth date
    const birthDate = formatDateForMRZ(mrzData.birthDate);
    // CRITICAL: ALWAYS calculate check digit (OCR can misread them)
    const birthCheckDigit = calculateCheckDigit(birthDate);
    const ocrBirthCD = mrzData.mrzCheckDigits?.birthDate;
    console.log('[BAC] Birth date:', birthDate, 'Check digit: CALCULATED=' + birthCheckDigit + ' vs OCR=' + ocrBirthCD);

    // Format expiry date (or use default if not provided)
    let expiryDate;
    let expiryCheckDigit;

    if (mrzData.expiryDate && mrzData.expiryDate.length > 0) {
        expiryDate = formatDateForMRZ(mrzData.expiryDate);
        // CRITICAL: ALWAYS calculate check digit (OCR can misread them)
        expiryCheckDigit = calculateCheckDigit(expiryDate);
        const ocrExpiryCD = mrzData.mrzCheckDigits?.expiryDate;
        console.log('[BAC] Expiry date:', expiryDate, 'Check digit: CALCULATED=' + expiryCheckDigit + ' vs OCR=' + ocrExpiryCD);
    } else {
        // Default expiry: 99 years from birth (common for Turkish ID cards without expiry)
        const birthYear = parseInt(birthDate.substring(0, 2), 10);
        const expiryYear = (birthYear + 99) % 100;
        expiryDate = `${expiryYear.toString().padStart(2, '0')}${birthDate.substring(2)}`;
        expiryCheckDigit = calculateCheckDigit(expiryDate);
        console.log('[BAC] No expiry date provided, using calculated:', expiryDate);
    }

    // Combine all parts
    const mrzInfo = docNo + docCheckDigit + birthDate + birthCheckDigit + expiryDate + expiryCheckDigit;

    console.log('[BAC] ✅ MRZ Information String:', mrzInfo, `(${mrzInfo.length} chars)`);
    console.log('[BAC] Full breakdown:', {
        docNo: docNo,
        docCD: docCheckDigit,
        birth: birthDate,
        birthCD: birthCheckDigit,
        exp: expiryDate,
        expCD: expiryCheckDigit
    });

    if (mrzInfo.length !== 24) {
        console.warn(`[BAC] MRZ info length is ${mrzInfo.length}, expected 24`);
    }

    return mrzInfo;
}

/**
 * Derive BAC keys (Kenc and Kmac) from MRZ information
 * Uses SHA-1 and key derivation as per ICAO 9303
 * 
 * @param {string} mrzInfo - MRZ information string (24 chars)
 * @returns {Object} - { kEnc: WordArray, kMac: WordArray }
 */
export function deriveBACKeys(mrzInfo) {
    console.log('[BAC] Deriving keys from MRZ info:', mrzInfo);

    // Step 1: Compute SHA-1 hash of MRZ information
    const hash = CryptoJS.SHA1(mrzInfo);
    console.log('[BAC] SHA-1 hash:', hash.toString(CryptoJS.enc.Hex));

    // Step 2: Extract key seeds (first 16 bytes for Kenc, next 16 bytes for Kmac)
    const hashWords = hash.words;
    const hashBytes = [];

    for (let i = 0; i < hashWords.length; i++) {
        hashBytes.push((hashWords[i] >>> 24) & 0xFF);
        hashBytes.push((hashWords[i] >>> 16) & 0xFF);
        hashBytes.push((hashWords[i] >>> 8) & 0xFF);
        hashBytes.push(hashWords[i] & 0xFF);
    }

    // SHA-1 produces 20 bytes, we need 32 bytes for both keys
    // Concatenate hash with itself to get enough bytes
    const extendedHash = hashBytes.concat(hashBytes.slice(0, 12));

    console.log('[BAC] Extended hash length:', extendedHash.length);

    // Extract key material (as byte arrays)
    const kEncSeedBytes = extendedHash.slice(0, 16);
    const kMacSeedBytes = extendedHash.slice(16, 32);

    console.log('[BAC] Kenc seed bytes length:', kEncSeedBytes.length);
    console.log('[BAC] Kmac seed bytes length:', kMacSeedBytes.length);

    // Convert to WordArray properly
    const kEncSeed = bytesToWordArray(kEncSeedBytes);
    const kMacSeed = bytesToWordArray(kMacSeedBytes);

    console.log('[BAC] Kenc seed sigBytes:', kEncSeed.sigBytes);
    console.log('[BAC] Kenc seed hex:', kEncSeed.toString(CryptoJS.enc.Hex));
    console.log('[BAC] Kmac seed sigBytes:', kMacSeed.sigBytes);
    console.log('[BAC] Kmac seed hex:', kMacSeed.toString(CryptoJS.enc.Hex));

    // Step 3: Apply key derivation (adjust parity bits for DES)
    console.log('[BAC] Adjusting Kenc parity...');
    const kEnc = adjustDESParity(kEncSeed);
    console.log('[BAC] Adjusting Kmac parity...');
    const kMac = adjustDESParity(kMacSeed);

    console.log('[BAC] Final Kenc sigBytes:', kEnc.sigBytes);
    console.log('[BAC] Final Kenc hex:', kEnc.toString(CryptoJS.enc.Hex));
    console.log('[BAC] Final Kmac sigBytes:', kMac.sigBytes);
    console.log('[BAC] Final Kmac hex:', kMac.toString(CryptoJS.enc.Hex));

    return { kEnc, kMac };
}

/**
 * Adjust DES key parity bits
 * Each byte must have odd parity (LSB is parity bit)
 * 
 * @param {WordArray} key - Key to adjust
 * @returns {WordArray} - Key with correct parity
 */
function adjustDESParity(key) {
    console.log('[BAC] adjustDESParity input sigBytes:', key.sigBytes);
    const bytes = wordArrayToBytes(key);
    console.log('[BAC] adjustDESParity bytes length:', bytes.length);

    for (let i = 0; i < bytes.length; i++) {
        let byte = bytes[i] & 0xFE; // Clear parity bit
        let parity = 0;

        // Count set bits
        for (let j = 0; j < 7; j++) {
            if ((byte >> (j + 1)) & 1) {
                parity++;
            }
        }

        // Set parity bit for odd parity
        if (parity % 2 === 0) {
            byte |= 1;
        }

        bytes[i] = byte;
    }

    const result = bytesToWordArray(bytes);
    console.log('[BAC] adjustDESParity output sigBytes:', result.sigBytes);
    console.log('[BAC] adjustDESParity output hex:', result.toString(CryptoJS.enc.Hex));

    return result;
}

/**
 * Convert CryptoJS WordArray to byte array
 * 
 * @param {WordArray} wordArray - CryptoJS WordArray
 * @returns {Array<number>} - Byte array
 */
export function wordArrayToBytes(wordArray) {
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
 * 
 * @param {Array<number>} bytes - Byte array
 * @returns {WordArray} - CryptoJS WordArray
 */
export function bytesToWordArray(bytes) {
    // CryptoJS.lib.WordArray.create expects an array of 32-bit words, not bytes
    const words = [];
    for (let i = 0; i < bytes.length; i += 4) {
        const word = (bytes[i] << 24) |
            ((bytes[i + 1] || 0) << 16) |
            ((bytes[i + 2] || 0) << 8) |
            (bytes[i + 3] || 0);
        words.push(word);
    }

    return CryptoJS.lib.WordArray.create(words, bytes.length);
}

/**
 * 3DES CBC Encryption
 * 
 * @param {Array<number>|WordArray} data - Data to encrypt
 * @param {WordArray} key - 3DES key (16 bytes)
 * @param {WordArray} iv - Initialization vector (8 bytes)
 * @returns {Array<number>} - Encrypted data
 */
export function encrypt3DES(data, key, iv) {
    // Convert input to byte array
    const dataBytes = Array.isArray(data) ? data : wordArrayToBytes(data);

    console.log('[BAC] === 3DES ENCRYPTION START ===');
    console.log('[BAC] Input data (bytes):', dataBytes.length, 'bytes');
    console.log('[BAC] Input data (hex):', Buffer.from(dataBytes).toString('hex'));
    console.log('[BAC] Key length:', key.sigBytes, 'bytes');
    console.log('[BAC] Key (hex):', key.toString(CryptoJS.enc.Hex));
    console.log('[BAC] IV (hex):', iv.toString(CryptoJS.enc.Hex));

    // ICAO 9303 uses 2-key Triple DES (K1, K2, K1)
    // Expand 16-byte key to 24 bytes: K1 || K2 || K1
    let tripleDesKey = key;
    if (key.sigBytes === 16) {
        console.log('[BAC] Expanding 16-byte key to 24 bytes (K1||K2||K1)...');
        const keyBytes = wordArrayToBytes(key);
        const key1 = keyBytes.slice(0, 8);
        const key2 = keyBytes.slice(8, 16);
        const expandedKey = key1.concat(key2).concat(key1);
        tripleDesKey = bytesToWordArray(expandedKey);
        console.log('[BAC] Expanded key (24 bytes):', tripleDesKey.toString(CryptoJS.enc.Hex));
    }

    // Convert data to WordArray for CryptoJS
    const dataWA = bytesToWordArray(dataBytes);
    console.log('[BAC] Data WordArray sigBytes:', dataWA.sigBytes);

    // CRITICAL: Encrypt using TripleDES directly
    const encrypted = CryptoJS.TripleDES.encrypt(dataWA, tripleDesKey, {
        iv: iv,
        mode: CryptoJS.mode.CBC,
        padding: CryptoJS.pad.NoPadding
    });

    // Extract ciphertext only
    const ciphertext = encrypted.ciphertext;
    console.log('[BAC] Ciphertext WordArray sigBytes:', ciphertext.sigBytes);

    const cipherBytes = wordArrayToBytes(ciphertext);
    console.log('[BAC] Output length:', cipherBytes.length, 'bytes');
    console.log('[BAC] Output (hex):', Buffer.from(cipherBytes).toString('hex'));
    console.log('[BAC] === 3DES ENCRYPTION END ===');

    // CRITICAL CHECK: Output should be same size as input (no padding)
    if (cipherBytes.length !== dataBytes.length) {
        console.error('[BAC] ❌ ERROR: Output length mismatch!');
        console.error('[BAC] Expected:', dataBytes.length, 'bytes');
        console.error('[BAC] Got:', cipherBytes.length, 'bytes');
        console.error('[BAC] This indicates CryptoJS added padding despite NoPadding setting!');

        // Return only the first dataBytes.length bytes
        const trimmed = cipherBytes.slice(0, dataBytes.length);
        console.warn('[BAC] ⚠️  Trimming to', trimmed.length, 'bytes');
        return trimmed;
    }

    return cipherBytes;
}

/**
 * 3DES CBC Decryption
 * 
 * @param {Array<number>|WordArray} data - Data to decrypt
 * @param {WordArray} key - 3DES key (16 bytes)
 * @param {WordArray} iv - Initialization vector (8 bytes)
 * @returns {Array<number>} - Decrypted data
 */
export function decrypt3DES(data, key, iv) {
    const dataWA = Array.isArray(data) ? bytesToWordArray(data) : data;

    console.log('[BAC] Decrypting with 3DES...');
    console.log('[BAC] Input data length:', dataWA.sigBytes);

    // ICAO 9303 uses 2-key Triple DES (K1, K2, K1)
    // If key is 16 bytes, expand to 24 bytes: K1 || K2 || K1
    let tripleDesKey = key;
    if (key.sigBytes === 16) {
        console.log('[BAC] Expanding 16-byte key to 24 bytes for 3DES...');
        const keyBytes = wordArrayToBytes(key);
        const key1 = keyBytes.slice(0, 8);
        const key2 = keyBytes.slice(8, 16);
        const expandedKey = key1.concat(key2).concat(key1); // K1 || K2 || K1
        tripleDesKey = bytesToWordArray(expandedKey);
    }

    // Perform 3DES decryption in CBC mode
    const decrypted = CryptoJS.TripleDES.decrypt(
        { ciphertext: dataWA },
        tripleDesKey,
        {
            iv: iv,
            mode: CryptoJS.mode.CBC,
            padding: CryptoJS.pad.NoPadding
        }
    );

    const plainBytes = wordArrayToBytes(decrypted);
    console.log('[BAC] Decrypted data length:', plainBytes.length);
    console.log('[BAC] Decrypted data:', Buffer.from(plainBytes).toString('hex'));

    return plainBytes;
}

/**
 * Calculate MAC (Message Authentication Code) - ISO 9797-1 Algorithm 3 (Retail MAC)
 * 
 * ICAO 9303 uses ISO/IEC 9797-1 MAC algorithm 3:
 * 1. Pad data with ISO 9797-1 padding method 2 (0x80 + zeros)
 * 2. Apply DES CBC with K1 over padded data
 * 3. Take last block, decrypt with K2 (ECB)
 * 4. Encrypt result with K1 (ECB) to get final MAC
 * 
 * @param {Array<number>} data - Data to calculate MAC for
 * @param {WordArray} key - MAC key (16 bytes: K1 || K2)
 * @returns {Array<number>} - MAC (8 bytes)
 */
export function calculateMAC(data, key) {
    console.log('[BAC] === MAC CALCULATION START ===');
    console.log('[BAC] Input data length:', data.length, 'bytes');
    console.log('[BAC] Input data (hex):', Buffer.from(data).toString('hex'));

    // Step 1: Pad data using ISO 9797-1 padding method 2
    const paddedData = padData(data, 8);
    console.log('[BAC] Padded data length:', paddedData.length, 'bytes');
    console.log('[BAC] Padded data (hex):', Buffer.from(paddedData).toString('hex'));

    // Extract K1 and K2 from 16-byte key
    const keyBytes = wordArrayToBytes(key);
    if (keyBytes.length < 16) {
        throw new Error('[BAC] MAC key must be 16 bytes (K1 || K2)');
    }

    const key1 = bytesToWordArray(keyBytes.slice(0, 8));
    const key2 = bytesToWordArray(keyBytes.slice(8, 16));
    console.log('[BAC] K1 (hex):', key1.toString(CryptoJS.enc.Hex));
    console.log('[BAC] K2 (hex):', key2.toString(CryptoJS.enc.Hex));

    const zeroIV = CryptoJS.enc.Hex.parse('0000000000000000');

    // Step 2: DES-CBC with K1 over padded data
    const dataWA = bytesToWordArray(paddedData);
    const cbcEncrypted = CryptoJS.DES.encrypt(dataWA, key1, {
        iv: zeroIV,
        mode: CryptoJS.mode.CBC,
        padding: CryptoJS.pad.NoPadding
    });

    const cbcBytes = wordArrayToBytes(cbcEncrypted.ciphertext);
    console.log('[BAC] CBC output length:', cbcBytes.length, 'bytes');
    console.log('[BAC] CBC output (hex):', Buffer.from(cbcBytes).toString('hex'));

    // Step 3: Take last 8-byte block
    const lastBlockBytes = cbcBytes.slice(-8);
    console.log('[BAC] Last block (hex):', Buffer.from(lastBlockBytes).toString('hex'));

    // Step 4: Retail MAC finalization: decrypt with K2 (ECB)
    const lastBlockWA = bytesToWordArray(lastBlockBytes);
    const decrypted = CryptoJS.DES.decrypt(
        { ciphertext: lastBlockWA },
        key2,
        {
            mode: CryptoJS.mode.ECB,
            padding: CryptoJS.pad.NoPadding
        }
    );

    const decryptedBytes = wordArrayToBytes(decrypted);
    console.log('[BAC] After K2 decrypt (hex):', Buffer.from(decryptedBytes).toString('hex'));

    // Step 5: Encrypt with K1 (ECB) to obtain final MAC
    const finalEncrypted = CryptoJS.DES.encrypt(decrypted, key1, {
        mode: CryptoJS.mode.ECB,
        padding: CryptoJS.pad.NoPadding
    });

    const mac = wordArrayToBytes(finalEncrypted.ciphertext).slice(0, 8);
    console.log('[BAC] Final MAC (8 bytes):', Buffer.from(mac).toString('hex'));
    console.log('[BAC] === MAC CALCULATION END ===');

    return mac;
}

/**
 * Pad data to multiple of block size (ISO/IEC 9797-1 Padding Method 2)
 * Also known as ISO/IEC 9797-1 padding method 2: 0x80 followed by zeros
 * 
 * @param {Array<number>} data - Data to pad
 * @param {number} blockSize - Block size in bytes (typically 8 for DES/3DES)
 * @returns {Array<number>} - Padded data
 */
export function padData(data, blockSize = 8) {
    const padded = data.slice();

    // Always add 0x80 as first padding byte
    padded.push(0x80);

    // Add 0x00 bytes until we reach block boundary
    while (padded.length % blockSize !== 0) {
        padded.push(0x00);
    }

    console.log('[BAC] Padded data: input', data.length, 'bytes -> output', padded.length, 'bytes');
    return padded;
}

export function removePadding(data) {
    if (!data || data.length === 0) {
        return [];
    }

    let index = data.length - 1;

    while (index >= 0 && data[index] === 0x00) {
        index--;
    }

    if (index >= 0 && data[index] === 0x80) {
        return data.slice(0, index);
    }

    return data.slice();
}

/**
 * Generate random bytes (for challenges, IVs, etc.)
 * 
 * @param {number} length - Number of bytes to generate
 * @returns {Array<number>} - Random bytes
 */
export function generateRandomBytes(length) {
    console.log('[BAC] Generating', length, 'random bytes...');

    // React Native: Use Math.random as fallback (crypto-js random may not work properly)
    const bytes = [];
    for (let i = 0; i < length; i++) {
        bytes.push(Math.floor(Math.random() * 256));
    }

    console.log('[BAC] Generated random bytes:', Buffer.from(bytes).toString('hex'));
    return bytes;
}

/**
 * XOR two byte arrays
 * 
 * @param {Array<number>} a - First array
 * @param {Array<number>} b - Second array
 * @returns {Array<number>} - XORed result
 */
export function xorBytes(a, b) {
    const result = [];
    const length = Math.min(a.length, b.length);

    for (let i = 0; i < length; i++) {
        result.push(a[i] ^ b[i]);
    }

    return result;
}

/**
 * Increment byte array as a counter (big-endian)
 * 
 * @param {Array<number>} counter - Counter to increment
 * @returns {Array<number>} - Incremented counter
 */
export function incrementCounter(counter) {
    const result = counter.slice();

    for (let i = result.length - 1; i >= 0; i--) {
        if (result[i] === 0xFF) {
            result[i] = 0x00;
        } else {
            result[i]++;
            break;
        }
    }

    return result;
}

// Export all functions
export default {
    calculateCheckDigit,
    validateCheckDigit,
    formatDateForMRZ,
    buildMRZInformation,
    deriveBACKeys,
    encrypt3DES,
    decrypt3DES,
    calculateMAC,
    generateRandomBytes,
    xorBytes,
    incrementCounter,
    padData,
    removePadding,
    bytesToWordArray,
    wordArrayToBytes
};
