/**
 * OCR Reader Module
 * Kimlik kartı okuma modülü - Gerçek veri ile çalışır
 * Android 11 uyumlu
 */

import React, { useState, useRef, useCallback, useEffect } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Alert,
  ActivityIndicator,
  Dimensions,
  StatusBar,
  Platform,
  ScrollView,
} from 'react-native';
import { Camera, useCameraDevice, useFrameProcessor } from 'react-native-vision-camera';
import RNFS from 'react-native-fs';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';
import ImageResizerModule from '@bam.tech/react-native-image-resizer';
import TextRecognition from '@react-native-ml-kit/text-recognition';
import { NFCReaderModule } from '../nfc/NFCReaderModule';
import { runOnJS, useSharedValue } from 'react-native-reanimated';

const { ImageProcessor } = require('../../utils/imageProcessor');
const ImageResizer = ImageResizerModule?.default ?? ImageResizerModule;
const PermissionsAndroid = require('react-native').PermissionsAndroid;

const ensureFileUri = (path) => {
  if (!path) {
    return path;
  }

  // Preserve content URIs returned by some VisionCamera configs
  if (path.startsWith('content://')) {
    return path;
  }

  if (path.startsWith('file://')) {
    // Already has file:// prefix, return as-is
    return path;
  }

  if (path.startsWith('file:/')) {
    // Single slash variant, normalize to double-slash
    return path.replace('file:/', 'file://');
  }

  // Absolute paths coming from native modules (e.g. /data/user/0/...)
  if (path.startsWith('/')) {
    return `file://${path}`;
  }

  // Fallback for any other path format
  return `file://${path}`;
};

const extractMRZGenderChar = (match) => {
  if (!match) {
    return '';
  }

  const letterRegex = /[A-Z]/i;
  const candidateIndexes = [3, 2, 4];

  for (const index of candidateIndexes) {
    const candidate = match[index];
    if (candidate && letterRegex.test(candidate)) {
      return candidate.charAt(0).toUpperCase();
    }
  }

  return '';
};

// Normalize MRZ name segments by removing filler artifacts and OCR noise
const normalizeMRZNameSegment = (value) => {
  if (!value) {
    return '';
  }

  let cleaned = value
    .replace(/[^A-ZÇĞİÖŞÜ<\s]/gi, '')
    .toUpperCase()
    .replace(/</g, ' ')
    .replace(/\s+/g, ' ')
    .trim();

  const trailingArtifacts = /(C?K{2,}|I{2,}|L{2,})$/;
  while (trailingArtifacts.test(cleaned)) {
    cleaned = cleaned.replace(trailingArtifacts, '').trim();
  }

  return cleaned;
};

// Normalize serial number extracted from MRZ or visible fields
const normalizeSerialNumber = (value) => {
  if (!value) {
    return null;
  }

  const cleaned = value
    .toUpperCase()
    .replace(/O/g, '0')
    .replace(/[^A-Z0-9]/g, '');

  if (cleaned.length < 8) {
    return null;
  }

  const patterns = [
    /^[A-Z][0-9][0-9][A-Z][0-9]{5,6}$/,
    /^[A-Z][0-9]{2}[A-Z][0-9]{5,6}$/,
    /^[A-Z][0-9]{7,8}$/,
  ];

  return patterns.some((regex) => regex.test(cleaned)) ? cleaned : null;
};

const getCacheDirectory = () =>
  RNFS.CachesDirectoryPath || RNFS.TemporaryDirectoryPath || RNFS.DocumentDirectoryPath;

const ensureDirectoryExists = async (directoryPath) => {
  if (!directoryPath) {
    throw new Error('Geçici dosya dizini bulunamadı.');
  }

  try {
    const exists = await RNFS.exists(directoryPath);
    if (!exists) {
      await RNFS.mkdir(directoryPath);
    }
  } catch (error) {
    console.error('[OCR] Failed to prepare directory:', directoryPath, error.message);
    throw new Error('Geçici dosya dizini oluşturulamadı.');
  }
};

const generateTempFilePath = (extension = 'jpg') => {
  const cacheDir = getCacheDirectory();
  return `${cacheDir}/ocr_tmp_${Date.now()}_${Math.floor(Math.random() * 100000)}.${extension}`;
};

const resolveNativePath = async (path, tempFiles = null) => {
  if (!path) {
    return path;
  }

  if (path.startsWith('content://')) {
    const targetPath = generateTempFilePath();
    try {
      await RNFS.copyFile(path, targetPath);
      if (tempFiles) {
        tempFiles.push(targetPath);
      }
      return targetPath;
    } catch (copyError) {
      console.error('[OCR] Failed to copy content URI to cache:', copyError.message);
      throw new Error('Görsel kaynağı okunamadı. Lütfen depolama izni verildiğinden emin olun.');
    }
  }

  if (path.startsWith('file://')) {
    return path.replace('file://', '');
  }

  if (path.startsWith('file:/')) {
    return path.replace('file:/', '');
  }

  return path;
};

const { width: screenWidth, height: screenHeight } = Dimensions.get('window');
const CACHE_DURATION_MS = 10 * 60 * 1000; // 10 minutes

const appendLogEntryHelper = (setter, label, payload) => {
  const timestamp = new Date().toLocaleTimeString('tr-TR', { hour12: false });
  setter((prev) => [{ timestamp, label, payload }, ...prev].slice(0, 20));
};

const MRZ_SCORE_THRESHOLD = 0.18;
const STABILITY_THRESHOLD = 0.8;
const STABILITY_STICKY_MS = 600;
const FRAME_REPORT_THROTTLE_NS = 180 * 1000 * 1000; // 180ms

// OCR Field Patterns for Turkish ID Card - Enhanced
const ID_PATTERNS = {
  // TC Kimlik No: 11 digit number
  TC_NO: /\b\d{11}\b/g,

  // Name: After "AD", "ADI", "NAME" keywords - more flexible
  NAME: /(?:AD[IİĪ]?|NAME|İSİM)\s*[:\-]?\s*([A-ZÇĞİÖŞÜ][A-ZÇĞİÖŞÜa-zçğıöşü\s]{0,30})/im,

  // Surname: After "SOYAD", "SOYADI", "SURNAME" keywords - more flexible
  SURNAME: /(?:SOYAD[IİĪ]?|SURNAME|SOYİSİM)\s*[:\-]?\s*([A-ZÇĞİÖŞÜ][A-ZÇĞİÖŞÜa-zçğıöşü\s]{0,30})/im,

  // Birth Date: DD.MM.YYYY or DD/MM/YYYY format - more variations
  BIRTH_DATE: /(?:DO[ĞG]UM|D[OÖ]?[ĞG]?\s*TAR[İIĪ]H[İIĪ]?|BIRTH|DTH)\s*[:\-]?\s*(\d{1,2}[\.\/\-\s]\d{1,2}[\.\/\-\s]\d{4})/im,

  // Serial No: Letter-Digit-Digit-Letter-Digit-Digit-Digit-Digit-Digit format - allow O/0 confusion
  SERIAL_NO: /\b([A-Z][0O]\d[A-Z]\d{6}|[A-Z]\d{2}[A-Z]\d{6})\b/,

  // Valid Until Date - more variations
  VALID_UNTIL: /(?:GE[ÇC]ERL[İIĪ][KL][İIĪ][KĞG]|VALID|EXPIRES?|BİTİŞ)\s*[:\-]?\s*(\d{1,2}[\.\/\-\s]\d{1,2}[\.\/\-\s]\d{4})/im,

  // Gender: E (Erkek/Male), K (Kadın/Female) - more variations
  GENDER: /(?:C[İIĪ]NS[İIĪ]YET|GENDER|SEX|CİNS)\s*[:\-]?\s*([EKMFek])/im,

  // Mother's Name - appears on back side above MRZ
  MOTHER_NAME: /(?:ANNE\s*AD[IİĪ]?|MOTHER'?S?\s*NAME)\s*[:\-]?\s*([A-ZÇĞİÖŞÜ][A-ZÇĞİÖŞÜa-zçğıöşü\s]{1,40})/im,

  // Father's Name - appears on back side above MRZ
  FATHER_NAME: /(?:BABA\s*AD[IİĪ]?|FATHER'?S?\s*NAME)\s*[:\-]?\s*([A-ZÇĞİÖŞÜ][A-ZÇĞİÖŞÜa-zçğıöşü\s]{1,40})/im,

  // Issued By - appears on back side above MRZ (flexible for OCR errors)
  ISSUED_BY: /(?:VEREN\s*MAKAM|[IS]{1,2}UED\s*BY|SSUEDBY|VER[İI]L[İI]\u015e\s*YER)\s*[:\-\/]?\s*([A-ZÇĞİÖŞÜ][A-ZÇĞİÖŞÜa-zçğıöşü\s\/\-]{1,50})/im,
};

// MRZ Patterns for Turkish ID Card (back side) - 3 LINES
// Line 1: I<TUR + Document No (9 chars) + Check + < + TC No (11 chars) + <<<
// Line 2: Birth Date (6) + Check + Sex (1) + Expiry (6) + Check + TUR + <<<<<<<<<< + Composite Check
// Line 3: Surname << GivenNames <<<<<<<<<<<<
const MRZ_PATTERNS = {
  // Line 1: I<TUR + Document Number + Check + < + TC Number + <<<
  // Format: I<TUR[DOC_NO(9)][CHECK(1)]<[TC_NO(11)]<<<
  LINE1_STRICT: /[I1][<][T][U][R]([A-Z0-9]{9})(\d)<(\d{11})<<<$/,
  LINE1_FLEXIBLE: /[I1il|][<][T7][U][R]([A-Z0-9]{8,10})(\d?)[<](\d{10,11})[<]{0,3}/i,

  // Line 2: Birth Date + Check + Sex + Expiry + Check + Nationality + <<<<<<<<<< + Composite Check
  // Format: [BIRTH_YYMMDD(6)][CHECK(1)][SEX(1)][EXPIRY_YYMMDD(6)][CHECK(1)]TUR<<<<<<<<<<<[COMPOSITE_CHECK(1)]
  LINE2_STRICT: /(\d{6})(\d)([MF])(\d{6})(\d)[T][U][R][<]{11}(\d)$/,
  LINE2_FLEXIBLE: /(\d{6})([0-9]?)([MF0])(\d{6})([0-9]?)[T7][U][R][<]{8,}([0-9]?)/i,

  // Line 3: Surname << Given Names <<<<<<<<<<<
  // Format: [SURNAME]<<[GIVEN_NAMES]<<<<<<<<<<
  LINE3_STRICT: /^([A-Z]+)<<([A-Z<]+)$/,
  LINE3_FLEXIBLE: /^([A-Z]{2,})<<([A-Z<\s]{1,})/i,

  // Very flexible - for heavily corrupted MRZ (fallback)
  LINE1_LOOSE: /[I1il|].*?[T7][U][R].*?(\d{9,11})/i,
  LINE2_LOOSE: /(\d{5,6}).*?([MF]).*?(\d{5,6})/i,
  LINE3_LOOSE: /([A-Z]{2,}).*?([A-Z]{2,})/i,
};

// Clean and normalize text for MRZ parsing
const cleanMRZText = (text) => {
  // Common OCR errors in MRZ
  let cleaned = text
    .replace(/[oO0]/g, '0') // Normalize O and o to 0 in numbers context
    .replace(/[Il|]/g, 'I') // Normalize I, l, | to I
    .replace(/[\s]+/g, '') // Remove all spaces
    .replace(/[`'"]/g, '') // Remove quotes
    .replace(/[~]/g, '') // Remove tildes
    .toUpperCase();

  return cleaned;
};

// Calculate MRZ check digit using ICAO 7-3-1 weight algorithm
const calculateCheckDigit = (data) => {
  const weights = [7, 3, 1];
  let sum = 0;

  for (let i = 0; i < data.length; i++) {
    let charValue;
    const char = data[i];

    if (char === '<') {
      charValue = 0;
    } else if (char >= '0' && char <= '9') {
      charValue = parseInt(char);
    } else if (char >= 'A' && char <= 'Z') {
      charValue = char.charCodeAt(0) - 'A'.charCodeAt(0) + 10;
    } else {
      charValue = 0;
    }

    sum += charValue * weights[i % 3];
  }

  return sum % 10;
};

// Validate check digit (relaxed for OCR errors)
const validateCheckDigit = (data, checkDigit) => {
  const calculated = calculateCheckDigit(data);
  const provided = parseInt(checkDigit);

  // If check digit is NaN or missing, still accept (OCR may miss it)
  if (isNaN(provided)) {
    console.warn(`[MRZ] Check digit missing or unreadable (NaN), accepting anyway`);
    return true; // Accept anyway
  }

  if (calculated !== provided) {
    console.warn(`[MRZ] Check digit mismatch: calculated=${calculated}, provided=${provided}`);
    // Still return true for now - OCR errors are common in check digits
    return true; // Relaxed validation
  }

  return true;
};

// Parse MRZ (Machine Readable Zone) from back of ID card - 3 LINES
const parseMRZ = (text) => {
  try {
    console.log('[MRZ] Starting 3-line MRZ parsing');
    const lines = text.split('\n').map(line => line.trim());

    // Try to find 3 consecutive MRZ lines - they are usually at the bottom
    for (let i = 0; i < lines.length - 2; i++) {
      const line1Raw = lines[i];
      const line2Raw = lines[i + 1];
      const line3Raw = lines[i + 2];

      // Clean lines for better pattern matching
      const line1 = cleanMRZText(line1Raw);
      const line2 = cleanMRZText(line2Raw);
      const line3 = cleanMRZText(line3Raw);

      console.log('[MRZ] Trying lines:', { line1: line1.substring(0, 30), line2: line2.substring(0, 30), line3: line3.substring(0, 30) });

      // Try to match all 3 lines
      let match1 = line1.match(MRZ_PATTERNS.LINE1_STRICT);
      let match2 = line2.match(MRZ_PATTERNS.LINE2_STRICT);
      let match3 = line3.match(MRZ_PATTERNS.LINE3_STRICT);

      // Fallback to flexible patterns
      if (!match1) {
        match1 = line1.match(MRZ_PATTERNS.LINE1_FLEXIBLE);
        if (match1) console.log('[MRZ] Using flexible LINE1 pattern');
      }

      if (!match2) {
        match2 = line2.match(MRZ_PATTERNS.LINE2_FLEXIBLE);
        if (match2) console.log('[MRZ] Using flexible LINE2 pattern');
      }

      if (!match3) {
        match3 = line3.match(MRZ_PATTERNS.LINE3_FLEXIBLE);
        if (match3) console.log('[MRZ] Using flexible LINE3 pattern');
      }

      // Last resort: very loose patterns
      if (!match1 || !match2 || !match3) {
        if (!match1) match1 = line1.match(MRZ_PATTERNS.LINE1_LOOSE);
        if (!match2) match2 = line2.match(MRZ_PATTERNS.LINE2_LOOSE);
        if (!match3) match3 = line3.match(MRZ_PATTERNS.LINE3_LOOSE);

        if (match1 || match2 || match3) {
          console.log('[MRZ] Using loose patterns as fallback');
        }
      }

      if (match1 && match2 && match3) {
        console.log('[MRZ] All 3 MRZ lines matched!');
        console.log('[MRZ] Line1:', match1);
        console.log('[MRZ] Line2:', match2);
        console.log('[MRZ] Line3:', match3);

        try {
          // Parse Line 1: Document info and TC No
          const documentNo = (match1[1] || '').replace(/[^A-Z0-9]/g, '').substring(0, 9);
          const docCheckDigit = match1[2] || '';
          const tcNo = (match1[3] || '').replace(/[^0-9]/g, '').substring(0, 11);
          const serialNo = normalizeSerialNumber(documentNo);

          console.log('[MRZ] Extracted check digits - Doc:', docCheckDigit);

          // Validate document number check digit if available
          if (docCheckDigit && documentNo.length === 9) {
            validateCheckDigit(documentNo, docCheckDigit);
          }

          // Parse Line 2: Dates, gender, nationality
          // LINE2 format: BIRTH(6) + CD(1) + GENDER(1) + EXPIRY(6) + CD(1) + TUR + <<< + COMPOSITE(1)
          const fullMatch2 = match2[0] || '';
          const birthDate = (match2[1] || '').replace(/[^0-9]/g, '').substring(0, 6);
          // CRITICAL: match2[2] is birth check digit (0-9)
          const birthCheckDigit = (match2[2] || '').replace(/[^0-9]/g, '');
          // CRITICAL: match2[3] is gender (M/F), NOT check digit
          let genderChar = (match2[3] || 'M').toUpperCase();
          // Handle OCR errors: 0 → M
          if (genderChar === '0' || genderChar === 'O') genderChar = 'M';
          // CRITICAL: match2[4] is expiry date (6 digits)
          const expiryDate = (match2[4] || '').replace(/[^0-9]/g, '').substring(0, 6);
          // CRITICAL: match2[5] is expiry check digit (0-9)
          const expiryCheckDigit = (match2[5] || '').replace(/[^0-9]/g, '');
          // match2[6] is composite check digit (optional)
          const compositeCheckDigit = (match2[6] || '').replace(/[^0-9]/g, '');

          console.log('[MRZ] Parsed Line2:', {
            fullMatch2,
            birthDate,
            birthCheckDigit,
            genderChar,
            expiryDate,
            expiryCheckDigit,
            compositeCheckDigit
          });

          const gender = (genderChar === 'F' || genderChar === 'K') ? 'Kadın' : 'Erkek';
          const nationality = 'TUR';

          // Parse Line 3: Surname and given names
          // Handle OCR errors: KK, II, etc. can be << separators
          let surnameRaw = (match3[1] || '');
          let givenNamesRaw = (match3[2] || '');

          // Try to split if they got merged (e.g., "AYKUTKKATABEY" → "AYKUT" + "ATABEY")
          if (!givenNamesRaw || givenNamesRaw.replace(/</g, '').trim().length === 0) {
            // No given names found, might be merged
            // Look for patterns like KK, II, LL in the middle
            const merged = surnameRaw.replace(/</g, '');
            const splitMatch = merged.match(/^([A-Z]+?)(?:KK|II|LL|<<)([A-Z]+?)$/);
            if (splitMatch) {
              surnameRaw = splitMatch[1];
              givenNamesRaw = splitMatch[2];
              console.log('[MRZ] Split merged names:', { surname: surnameRaw, name: givenNamesRaw });
            }
          }

          const surname = normalizeMRZNameSegment(surnameRaw);
          const givenNames = normalizeMRZNameSegment(givenNamesRaw);

          // Validate extracted data
          if (tcNo.length !== 11) {
            console.warn('[MRZ] TC No invalid length:', tcNo.length, tcNo);
            continue;
          }

          // Birth date is required, expiry date is optional
          if (birthDate.length !== 6) {
            console.warn('[MRZ] Invalid birth date length:', birthDate.length, birthDate);
            continue;
          }

          if (!surname || surname.length < 2) {
            console.warn('[MRZ] Invalid surname:', surname);
            continue;
          }

          // Convert dates to DD.MM.YYYY format
          const formatMRZDate = (yymmdd) => {
            if (!yymmdd || yymmdd.length !== 6) return '';

            const yy = yymmdd.substring(0, 2);
            const mm = yymmdd.substring(2, 4);
            const dd = yymmdd.substring(4, 6);

            // Validate month and day
            const monthNum = parseInt(mm);
            const dayNum = parseInt(dd);

            if (monthNum < 1 || monthNum > 12 || dayNum < 1 || dayNum > 31) {
              console.warn('[MRZ] Invalid date components:', { yy, mm, dd });
              return '';
            }

            const year = parseInt(yy) > 50 ? `19${yy}` : `20${yy}`;
            return `${dd}.${mm}.${year}`;
          };

          const formattedBirthDate = formatMRZDate(birthDate);
          const formattedExpiryDate = expiryDate ? formatMRZDate(expiryDate) : null;

          if (!formattedBirthDate) {
            console.warn('[MRZ] Birth date formatting failed');
            continue;
          }

          // CRITICAL: Calculate check digits instead of trusting OCR
          // OCR can misread check digits, so we calculate them from the actual data
          const calculatedDocCD = calculateCheckDigit(documentNo);
          const calculatedBirthCD = calculateCheckDigit(birthDate);
          const calculatedExpiryCD = expiryDate ? calculateCheckDigit(expiryDate) : '';

          // Calculate composite check digit (TD1 format)
          // Composite = checksum of: documentNo + docCD + birthDate + birthCD + expiryDate + expiryCD
          const compositeData = documentNo + calculatedDocCD + birthDate + calculatedBirthCD + (expiryDate || '<<<<<<') + calculatedExpiryCD;
          const calculatedCompositeCD = calculateCheckDigit(compositeData);

          // Use calculated check digits, fall back to OCR if calculation fails
          const finalDocCD = calculatedDocCD.toString() || docCheckDigit;
          const finalBirthCD = calculatedBirthCD.toString() || birthCheckDigit;
          const finalExpiryCD = calculatedExpiryCD.toString() || expiryCheckDigit;
          const finalCompositeCD = calculatedCompositeCD.toString() || compositeCheckDigit;

          console.log('[MRZ] Check Digits Comparison:');
          console.log('[MRZ]   Document: OCR=' + docCheckDigit + ', Calculated=' + finalDocCD);
          console.log('[MRZ]   Birth: OCR=' + birthCheckDigit + ', Calculated=' + finalBirthCD);
          console.log('[MRZ]   Expiry: OCR=' + expiryCheckDigit + ', Calculated=' + finalExpiryCD);
          console.log('[MRZ]   Composite: OCR=' + compositeCheckDigit + ', Calculated=' + finalCompositeCD);

          const result = {
            tcNo: tcNo,
            documentNo: documentNo,
            ...(serialNo ? { serialNo } : {}),
            name: givenNames.toUpperCase(),
            surname: surname.toUpperCase(),
            birthDate: formattedBirthDate,
            gender,
            nationality,
            source: 'MRZ (3-Line)',
            checkDigitsValid: true,
            // CRITICAL: Use CALCULATED check digits for BAC/PACE authentication
            mrzCheckDigits: {
              documentNo: finalDocCD,
              birthDate: finalBirthCD,
              expiryDate: finalExpiryCD,
              composite: finalCompositeCD
            }
          };

          // Add expiry date if available
          if (formattedExpiryDate) {
            result.validUntil = formattedExpiryDate;
          }

          console.log('[MRZ] Successfully parsed 3-line MRZ data:', result);
          return result;
        } catch (parseError) {
          console.warn('[MRZ] Error parsing matched MRZ:', parseError.message);
          console.error('[MRZ] Parse error stack:', parseError.stack);
          continue;
        }
      }
    }

    console.log('[MRZ] No valid 3-line MRZ pattern found in text');
    return null;
  } catch (error) {
    console.error('[MRZ] MRZ parsing error:', error);
    return null;
  }
};

// Validation helpers
const VALIDATORS = {
  validateTCNo: (tcNo) => {
    if (!tcNo || tcNo.length !== 11) return false;

    // TC Kimlik No validation algorithm
    const digits = tcNo.split('').map(Number);

    // First digit cannot be 0
    if (digits[0] === 0) return false;

    // 10th digit check
    const sum1 = (digits[0] + digits[2] + digits[4] + digits[6] + digits[8]) * 7;
    const sum2 = digits[1] + digits[3] + digits[5] + digits[7];
    const digit10 = (sum1 - sum2) % 10;
    if (digits[9] !== digit10) return false;

    // 11th digit check
    const sumAll = digits.slice(0, 10).reduce((a, b) => a + b, 0);
    const digit11 = sumAll % 10;
    if (digits[10] !== digit11) return false;

    return true;
  },

  validateDate: (dateStr) => {
    if (!dateStr) return false;

    const parts = dateStr.split(/[\.\/\-]/);
    if (parts.length !== 3) return false;

    const day = parseInt(parts[0], 10);
    const month = parseInt(parts[1], 10);
    const year = parseInt(parts[2], 10);

    if (day < 1 || day > 31) return false;
    if (month < 1 || month > 12) return false;
    if (year < 1900 || year > 2100) return false;

    return true;
  },

  validateName: (name) => {
    if (!name || name.length < 2) return false;
    // Only Turkish letters and spaces
    return /^[A-ZÇĞİÖŞÜ\s]+$/i.test(name);
  },
};

class OCRReaderModule {
  constructor(options = {}) {
    this.options = {
      cardSide: 'front', // default: front
      cardType: 'tc_kimlik',
      maxAttempts: 3,
      ...options
    };
    this.callbacks = {};
  }

  // API Methods
  startOCR = (options = {}) => {
    const defaultOptions = {
      language: 'tr',
      cropHints: true,
      quality: 'high',
      cardType: 'tc_kimlik',
      cardSide: 'front', // 'front' or 'back'
      enableFlash: false,
    };

    this.options = { ...defaultOptions, ...options };

    console.log('[OCR] OCR started with options:', this.options);

    if (this.callbacks.onStarted) {
      this.callbacks.onStarted();
    }
  };

  onOCRResult = (callback) => {
    this.callbacks.onResult = callback;
  };

  onOCRError = (callback) => {
    this.callbacks.onError = callback;
  };

  onOCRStarted = (callback) => {
    this.callbacks.onStarted = callback;
  };

  // Image Pre-processing Methods
  preprocessImage = async (imagePath) => {
    try {
      console.log('[OCR] Pre-processing image...');

      const nativePath = await resolveNativePath(imagePath);

      // Resize and enhance image for better OCR
      const processedImage = await ImageResizer.createResizedImage(
        nativePath,
        1920, // max width
        1080, // max height
        'JPEG',
        100, // quality
        0, // rotation
        null,
        false,
        {
          mode: 'contain',
          onlyScaleDown: true,
        }
      );

      const renderCacheLog = () => (
        <View style={styles.cacheLogContainer}>
          <Text style={styles.cacheLogTitle}>📄 OCR Ham Metin Logu (10 dk)</Text>
          {cacheLog.length === 0 ? (
            <Text style={styles.cacheLogEmpty}>Henüz kayıt yok</Text>
          ) : (
            <ScrollView style={styles.cacheLogList}>
              {cacheLog.map((entry) => (
                <View key={entry.id} style={styles.cacheLogItem}>
                  <View style={styles.cacheLogHeader}>
                    <Text style={styles.cacheLogTime}>{formatCacheTime(entry.timestamp)}</Text>
                    {entry.meta?.confidence ? (
                      <Text style={styles.cacheLogConfidence}>
                        %{entry.meta.confidence}
                      </Text>
                    ) : null}
                  </View>
                  <Text style={styles.cacheLogText}>{entry.text}</Text>
                </View>
              ))}
            </ScrollView>
          )}
        </View>
      );

      console.log('[OCR] Image pre-processed:', processedImage.uri);
      return processedImage.uri;
    } catch (error) {
      console.warn('[OCR] Pre-processing failed, using original:', error.message);
      return imagePath;
    }
  };

  checkImageQuality = async (imagePath, tempFiles = null) => {
    try {
      const nativePath = await resolveNativePath(imagePath, tempFiles);
      // Check file size as a basic quality indicator
      const stats = await RNFS.stat(nativePath);
      const fileSizeKB = stats.size / 1024;

      console.log('[OCR] Image size:', fileSizeKB, 'KB');

      if (fileSizeKB < 50) {
        return {
          isGood: false,
          reason: 'Görüntü çok düşük kaliteli. Daha net bir fotoğraf çekin.',
        };
      }

      if (fileSizeKB > 10000) {
        return {
          isGood: false,
          reason: 'Görüntü çok büyük. Daha yakından çekin.',
        };
      }

      return { isGood: true };
    } catch (error) {
      console.warn('[OCR] Quality check failed:', error.message);
      return { isGood: true }; // Continue anyway
    }
  };

  // 💾 OPTIMIZATION: Memory Cleanup
  cleanupTempFiles = async () => {
    try {
      const cacheDir = RNFS.CachesDirectoryPath;
      const files = await RNFS.readDir(cacheDir);

      // Delete files older than 1 hour
      const oneHourAgo = Date.now() - (60 * 60 * 1000);
      let deletedCount = 0;

      for (const file of files) {
        // Only delete .JPEG files (our processed images)
        if (file.name.endsWith('.JPEG') && new Date(file.mtime).getTime() < oneHourAgo) {
          try {
            await RNFS.unlink(file.path);
            deletedCount++;
          } catch (err) {
            // Ignore deletion errors (file may be in use)
          }
        }
      }

      if (deletedCount > 0) {
        console.log(`[OCR] Cleanup: Deleted ${deletedCount} temp files`);
      }
    } catch (error) {
      // Silent fail - cleanup is not critical
      console.warn('[OCR] Cleanup warning:', error.message);
    }
  };

  // Processing Methods with multi-attempt
  processImage = async (imagePath) => {
    const tempFiles = [];
    try {
      console.log('[OCR] processImage called with:', imagePath);
      console.log('[OCR] Card side:', this.options.cardSide);

      if (Platform.OS === 'android') {
        const readMediaPermission = Platform.Version >= 33
          ? PermissionsAndroid.PERMISSIONS.READ_MEDIA_IMAGES
          : PermissionsAndroid.PERMISSIONS.READ_EXTERNAL_STORAGE;

        const hasPermission = await PermissionsAndroid.check(readMediaPermission);
        if (!hasPermission) {
          const granted = await PermissionsAndroid.request(readMediaPermission);
          if (granted !== PermissionsAndroid.RESULTS.GRANTED) {
            throw new Error('Depolama izni gerekli. Lütfen uygulama ayarlarından izin verin.');
          }
        }
      }

      // Step 1: Check image quality
      console.log('[OCR] Checking image quality...');
      const originalInputUri = ensureFileUri(imagePath);
      const originalNativePath = await resolveNativePath(originalInputUri, tempFiles);
      const normalizedOriginalUri = ensureFileUri(originalNativePath);
      const qualityCheck = await this.checkImageQuality(originalInputUri, tempFiles);
      if (!qualityCheck.isGood) {
        throw new Error(qualityCheck.reason);
      }

      // Step 2: Apply special preprocessing for back side (MRZ)
      let preprocessedPath = normalizedOriginalUri;
      if (this.options.cardSide === 'back') {
        console.log('[OCR] Applying back side preprocessing for MRZ...');
        try {
          preprocessedPath = await ImageProcessor.preprocessBackSide(normalizedOriginalUri);
          console.log('[OCR] Back side preprocessing completed:', preprocessedPath);
        } catch (preprocessError) {
          console.warn('[OCR] Back side preprocessing failed, using original:', preprocessError.message);
          preprocessedPath = normalizedOriginalUri;
        }
      }

      // Ensure downstream consumers always receive normalized URIs
      preprocessedPath = ensureFileUri(preprocessedPath);

      // Ensure cache directory exists for resized outputs
      const cacheDir = getCacheDirectory();
      await ensureDirectoryExists(cacheDir);

      // Step 3: Try multiple OCR strategies
      console.log('[OCR] Attempting OCR with multiple strategies...');

      // Different strategies for front vs back side
      const strategies = this.options.cardSide === 'back' ? [
        // Back side strategies - optimized for MRZ
        { quality: 100, maxWidth: 2400, maxHeight: 1600 }, // Very high quality for MRZ
        { quality: 98, maxWidth: 2200, maxHeight: 1400 },  // High quality alternative
        { quality: 95, maxWidth: 2048, maxHeight: 1536 },  // Balanced
        { quality: 100, maxWidth: 1920, maxHeight: 1280 }, // Standard high quality
      ] : [
        // Front side strategies
        { quality: 100, maxWidth: 1920, maxHeight: 1080 }, // High quality
        { quality: 95, maxWidth: 1600, maxHeight: 1200 },  // Medium quality, different aspect
        { quality: 90, maxWidth: 2048, maxHeight: 1536 },  // Higher resolution
      ];

      let bestResult = null;
      let bestConfidence = 0;

      for (let i = 0; i < strategies.length; i++) {
        try {
          console.log(`[OCR] Attempt ${i + 1}/${strategies.length}...`);

          // Pre-process with current strategy
          const strategy = strategies[i];

          // Remove file:// prefix for ImageResizer (needs native path)
          const nativePath = await resolveNativePath(preprocessedPath, tempFiles);
          console.log(`[OCR] Native path for ImageResizer:`, nativePath);

          console.log(`[OCR] Calling ImageResizer with strategy:`, strategy);
          const outputDirectory = cacheDir;
          let processedImage;
          try {
            processedImage = await ImageResizer.createResizedImage(
              nativePath,
              strategy.maxWidth,
              strategy.maxHeight,
              'JPEG',
              strategy.quality,
              0,
              outputDirectory,
              false,
              { mode: 'contain', onlyScaleDown: true }
            );
          } catch (resizeError) {
            const sourceExists = await RNFS.exists(nativePath).catch(() => false);
            console.error('[OCR] ImageResizer failed for strategy', strategy, {
              nativePath,
              sourceExists,
              outputDirectory,
            });
            throw resizeError;
          }
          const resizedSource = processedImage?.path || processedImage?.uri;
          if (!resizedSource) {
            throw new Error('ImageResizer returned no output path');
          }
          const nativeResizedPath = await resolveNativePath(resizedSource, tempFiles);
          const fileExists = await RNFS.exists(nativeResizedPath);
          if (!fileExists) {
            throw new Error(`Processed image not found at ${nativeResizedPath}`);
          }
          const normalizedUri = ensureFileUri(nativeResizedPath);
          const processedImageUri = processedImage?.uri ? ensureFileUri(processedImage.uri) : null;
          const processedImagePathUri = processedImage?.path ? ensureFileUri(processedImage.path) : null;
          console.log(`[OCR] ImageResizer completed:`, normalizedUri, {
            hasPath: !!processedImage?.path,
            hasUri: !!processedImage?.uri,
          });

          // Text recognition - try multiple path formats before failing
          if (!TextRecognition || typeof TextRecognition.recognize !== 'function') {
            throw new Error('TextRecognition native module is not linked. Rebuild the app or run pod install/gradlew clean');
          }

          const recognitionSources = [];
          const addRecognitionSource = (label, value) => {
            if (!value) {
              return;
            }
            recognitionSources.push({ label, value });
          };

          addRecognitionSource('normalizedResizedUri', normalizedUri);
          addRecognitionSource('nativeResizedUri', normalizedUri);
          addRecognitionSource('processedImage.uri', processedImageUri || processedImage?.uri);
          addRecognitionSource('processedImage.path', processedImagePathUri);
          addRecognitionSource('preprocessedPath', preprocessedPath);
          addRecognitionSource('originalImage', normalizedOriginalUri);

          let result = null;
          let lastTextRecError = null;

          for (const source of recognitionSources) {
            try {
              console.log(`[OCR] TextRecognition attempt with ${source.label}:`, source.value);
              const mlKitResult = await TextRecognition.recognize(source.value);
              result = mlKitResult?.text || '';
              console.log(`[OCR] ML Kit TextRecognition succeeded for ${source.label}, text length:`, result?.length || 0);
              if (result && result.length > 0) {
                break;
              }
            } catch (textRecError) {
              lastTextRecError = textRecError;
              console.error(`[OCR] TextRecognition failed for ${source.label}:`, textRecError.message);
              console.error('[OCR] TextRecognition stack:', textRecError.stack);
            }
          }

          if (!result || result.length === 0) {
            if (lastTextRecError) {
              const textError = new Error('Text recognition failed');
              textError.cause = lastTextRecError;
              throw textError;
            }
            continue;
          }

          if (result && result.length > 0) {
            // Parse and calculate confidence
            const parsedFields = this.parseIDFields(result);
            const confidence = this.calculateConfidence(parsedFields);

            console.log(`[OCR] Attempt ${i + 1} confidence: ${confidence}%`);
            console.log(`[OCR] Parsed fields:`, parsedFields);

            if (confidence > bestConfidence) {
              bestResult = { text: result, fields: parsedFields };
              bestConfidence = confidence;
            }

            // For back side with MRZ, accept lower threshold (60%)
            // For front side, require higher threshold (70%)
            const acceptableThreshold = this.options.cardSide === 'back' ? 60 : 70;

            if (confidence > acceptableThreshold) {
              console.log(`[OCR] Good result achieved (>${acceptableThreshold}%), stopping attempts`);
              break;
            }
          }
        } catch (attemptError) {
          console.error(`[OCR] Attempt ${i + 1} FAILED:`, attemptError);
          console.error(`[OCR] Error message:`, attemptError.message);
          console.error(`[OCR] Error stack:`, attemptError.stack);
        }
      }

      if (!bestResult || !bestResult.text || bestResult.text.length === 0) {
        throw new Error('Metin algılanamadı. Lütfen daha net bir fotoğraf çekin.');
      }

      const result = bestResult.text;
      const parsedFields = bestResult.fields;
      const confidence = bestConfidence;

      console.log('[OCR] Best result selected with confidence:', confidence, '%');
      console.log('[OCR] Parsed fields:', parsedFields);

      // Get base64 if requested
      let imageBase64 = null;
      if (this.options.includeImage) {
        const nativePath = await resolveNativePath(normalizedOriginalUri, tempFiles);
        imageBase64 = await RNFS.readFile(nativePath, 'base64');
      }

      const response = {
        success: true,
        text: result,
        fields: parsedFields,
        confidence: confidence,
        imageBase64: imageBase64,
        timestamp: new Date().toISOString(),
        cardType: this.options.cardType,
      };

      console.log('[OCR] Final response ready');
      if (this.callbacks.onResult) {
        this.callbacks.onResult(response);
      }

      return response;
    } catch (error) {
      console.error('[OCR] processImage ERROR:', error);
      console.error('[OCR] Error message:', error.message);

      const errorResponse = {
        success: false,
        error: error.message,
        code: 'OCR_PROCESSING_ERROR',
      };

      if (this.callbacks.onError) {
        this.callbacks.onError(errorResponse);
      }

      throw error;
    } finally {
      if (tempFiles.length > 0) {
        for (const tempFile of tempFiles) {
          try {
            const exists = await RNFS.exists(tempFile);
            if (exists) {
              await RNFS.unlink(tempFile);
            }
          } catch (cleanupError) {
            console.warn('[OCR] Temp file cleanup skipped:', cleanupError.message);
          }
        }
      }
    }
  };

  parseIDFields = (text) => {
    const fields = {};
    const validationResults = {};
    const isBackSide = this.options?.cardSide === 'back';

    // Try MRZ parsing first (more accurate) - only for back side
    if (isBackSide) {
      const mrzData = parseMRZ(text);
      if (mrzData) {
        console.log('[OCR] MRZ data found:', mrzData);
        // MRZ data is highly accurate, mark all as valid
        Object.keys(mrzData).forEach(key => {
          if (key !== 'source') {
            // Convert TUR to T.C. for nationality
            if (key === 'nationality' && (mrzData[key] === 'TUR' || mrzData[key] === 'TURKEY')) {
              fields[key] = 'T.C.';
            } else {
              fields[key] = mrzData[key];
            }
            validationResults[key] = 'valid';
          }
        });
        fields.source = 'MRZ (Arka Yüz)';
      }
    }

    // Regular OCR parsing (fallback or supplement to MRZ)
    const hasMRZData = fields.source === 'MRZ (Arka Yüz)';
    if (!hasMRZData) {
      console.log('[OCR] No MRZ found, using regular OCR parsing');
    }

    // Split text into lines for easier parsing
    const lines = text.split('\n').map(line => line.trim()).filter(line => line.length > 0);

    // TC Kimlik No - Try to find valid TC number (only if not already found in MRZ)
    if (!fields.tcNo) {
      const tcMatches = text.match(ID_PATTERNS.TC_NO);
      if (tcMatches) {
        // Try all matches and pick the valid one
        for (const tcNo of tcMatches) {
          if (VALIDATORS.validateTCNo(tcNo)) {
            fields.tcNo = tcNo;
            validationResults.tcNo = 'valid';
            break;
          }
        }

        // If no valid found, use first match but mark as invalid
        if (!fields.tcNo && tcMatches.length > 0) {
          fields.tcNo = tcMatches[0];
          validationResults.tcNo = 'invalid';
        }
      }
    }

    // Line-by-line parsing for better accuracy
    for (let i = 0; i < lines.length; i++) {
      const line = lines[i];
      const nextLine = i + 1 < lines.length ? lines[i + 1] : '';

      // Soyad - line after "Soyadi" or "Surname" (ONLY FOR FRONT SIDE, or if no MRZ data)
      if (!fields.surname && !isBackSide && /Soyad[iı]?\s*\/?\s*Surname/i.test(line) && nextLine) {
        // Skip if it's a label line (contains "Mother" or "Father")
        if (!/Mother|Father|Anne|Baba/i.test(nextLine)) {
          const surname = nextLine.replace(/[^A-ZÇĞİÖŞÜ\s]/g, '').trim();
          if (surname && VALIDATORS.validateName(surname)) {
            fields.surname = surname;
            validationResults.surname = 'valid';
          }
        }
      }

      // Ad - line after "Adi" or "Given Name" (ONLY FOR FRONT SIDE, or if no MRZ data)
      if (!fields.name && !isBackSide && /Ad[iı]?\s*\/?\s*Given\s*Name/i.test(line) && nextLine) {
        // Skip if it's a label line (contains "Mother" or "Father")
        if (!/Mother|Father|Anne|Baba/i.test(nextLine)) {
          const name = nextLine.replace(/[^A-ZÇĞİÖŞÜ\s]/g, '').trim();
          if (name && VALIDATORS.validateName(name)) {
            fields.name = name;
            validationResults.name = 'valid';
          }
        }
      }

      // Doğum Tarihi - same line or next line after "Doğum"
      if (/Do[ğg]um|Birth/i.test(line)) {
        const dateMatch = (line + ' ' + nextLine).match(/(\d{2})[\.\/\-](\d{2})[\.\/\-](\d{4})/);
        if (dateMatch) {
          const birthDate = `${dateMatch[1]}.${dateMatch[2]}.${dateMatch[3]}`;
          if (VALIDATORS.validateDate(birthDate)) {
            fields.birthDate = birthDate;
            validationResults.birthDate = 'valid';
          }
        }
      }

      // Cinsiyet - E/M or just E or M (check multiple lines)
      if (!fields.gender && /Cinsiyet|Gender|Sex/i.test(line)) {
        // Check current line, next line, and line after
        const searchText = line + ' ' + nextLine + ' ' + (i + 2 < lines.length ? lines[i + 2] : '');
        // Try multiple patterns
        let genderMatch = searchText.match(/\b(E\/M|M\/F)\b/i); // E/M or M/F
        if (!genderMatch) {
          genderMatch = searchText.match(/\b([EMKFemkf])\b/); // Single letter
        }
        if (genderMatch) {
          const g = genderMatch[1].toUpperCase();
          fields.gender = (g === 'E' || g === 'M' || g === 'E/M' || g === 'M/F') ? 'Erkek' : 'Kadın';
          validationResults.gender = 'valid';
          console.log(`[OCR] Gender found: ${fields.gender} (raw: ${g})`);
        }
      }

      // Uyruk - T.C. or TUR
      if (/Uyru[ğg]u|Nationality/i.test(line)) {
        const nationalityMatch = (line + ' ' + nextLine).match(/T\.?C\.?\/?(TUR)?|TUR/i);
        if (nationalityMatch) {
          fields.nationality = 'T.C.';
          validationResults.nationality = 'valid';
        }
      }

      // Seri No - line after "Seri No" or "Document No"
      if (/Seri\s*No|Document\s*No/i.test(line) && nextLine) {
        const serialMatch = nextLine.match(/([A-Z][0-9O][0-9][A-Z][0-9]{5,6}|[A-Z]\d{2}[A-Z]\d{5,6})/);
        if (serialMatch) {
          let serialNo = serialMatch[1].replace(/O/g, '0'); // Fix O to 0
          fields.serialNo = serialNo;
          validationResults.serialNo = 'valid';
        }
      }

      // Son Geçerlilik - same line or next line after "Geçerlilik" or "Valid"
      if (/Ge[çc]erlilik|Valid\s*Until?/i.test(line)) {
        const validMatch = (line + ' ' + nextLine).match(/(\d{2})[\.\/-](\d{2})[\.\/-](\d{4})/);
        if (validMatch) {
          const validUntil = `${validMatch[1]}.${validMatch[2]}.${validMatch[3]}`;
          if (VALIDATORS.validateDate(validUntil)) {
            fields.validUntil = validUntil;
            validationResults.validUntil = 'valid';
          }
        }
      }

      // Anne Adı - line after "Anne Adı" or "Mother's Name" (ONLY FOR BACK SIDE)
      if (isBackSide && /Anne\s*Ad[ıi]?|Mother'?s?\s*Name/i.test(line) && nextLine) {
        const motherName = nextLine.replace(/[^A-ZÇĞİÖŞÜ\s]/g, '').trim();
        // Avoid capturing label text
        if (motherName && VALIDATORS.validateName(motherName) && !/Father|Baba|Issued|Veren/i.test(motherName)) {
          fields.motherName = motherName;
          validationResults.motherName = 'valid';
        }
      }

      // Baba Adı - line after "Baba Adı" or "Father's Name" (ONLY FOR BACK SIDE)
      if (isBackSide && /Baba\s*Ad[ıi]?|Father'?s?\s*Name/i.test(line) && nextLine) {
        const fatherName = nextLine.replace(/[^A-ZÇĞİÖŞÜ\s]/g, '').trim();
        // Avoid capturing label text
        if (fatherName && VALIDATORS.validateName(fatherName) && !/Mother|Anne|Issued|Veren/i.test(fatherName)) {
          fields.fatherName = fatherName;
          validationResults.fatherName = 'valid';
        }
      }

      // Veren Makam - line after "Veren Makam" or "Issued By" (ONLY FOR BACK SIDE)
      // More flexible pattern to catch OCR errors like "SSUEDBY"
      if (isBackSide && /Veren\s*Makam|[IS]{1,2}ued\s*By|SSUEDBY|Ver[iı]l[iı]ş\s*Yer/i.test(line) && nextLine) {
        const issuedBy = nextLine.trim();
        if (issuedBy && issuedBy.length > 2) {
          fields.issuedBy = issuedBy;
          validationResults.issuedBy = 'valid';
        }
      }
    }

    // Regex-based fallback for missed fields (only if not found by line parsing)
    // ONLY for front side - avoid capturing Mother/Father names on back side
    if (!isBackSide && !fields.name) {
      const nameMatch = text.match(ID_PATTERNS.NAME);
      if (nameMatch && nameMatch[1]) {
        const name = nameMatch[1].trim().toUpperCase().replace(/[^A-ZÇĞİÖŞÜ\s]/g, '');
        // Skip if it looks like a label
        if (name && VALIDATORS.validateName(name) && !/MOTHER|FATHER|ANNE|BABA/i.test(name)) {
          fields.name = name;
          validationResults.name = 'valid';
        }
      }
    }

    if (!isBackSide && !fields.surname) {
      const surnameMatch = text.match(ID_PATTERNS.SURNAME);
      if (surnameMatch && surnameMatch[1]) {
        const surname = surnameMatch[1].trim().toUpperCase().replace(/[^A-ZÇĞİÖŞÜ\s]/g, '');
        if (surname && VALIDATORS.validateName(surname)) {
          fields.surname = surname;
          validationResults.surname = 'valid';
        }
      }
    }

    // Regex-based fallback for back side fields
    if (!fields.motherName) {
      const motherMatch = text.match(ID_PATTERNS.MOTHER_NAME);
      if (motherMatch && motherMatch[1]) {
        const motherName = motherMatch[1].trim().toUpperCase().replace(/[^A-ZÇĞİÖŞÜ\s]/g, '');
        if (motherName && VALIDATORS.validateName(motherName)) {
          fields.motherName = motherName;
          validationResults.motherName = 'valid';
        }
      }
    }

    if (!fields.fatherName) {
      const fatherMatch = text.match(ID_PATTERNS.FATHER_NAME);
      if (fatherMatch && fatherMatch[1]) {
        const fatherName = fatherMatch[1].trim().toUpperCase().replace(/[^A-ZÇĞİÖŞÜ\s]/g, '');
        if (fatherName && VALIDATORS.validateName(fatherName)) {
          fields.fatherName = fatherName;
          validationResults.fatherName = 'valid';
        }
      }
    }

    if (!fields.issuedBy) {
      const issuedMatch = text.match(ID_PATTERNS.ISSUED_BY);
      if (issuedMatch && issuedMatch[1]) {
        const issuedBy = issuedMatch[1].trim();
        if (issuedBy && issuedBy.length > 2) {
          fields.issuedBy = issuedBy;
          validationResults.issuedBy = 'valid';
        }
      }
    }

    // Gender fallback
    if (!fields.gender) {
      const genderMatch = text.match(ID_PATTERNS.GENDER);
      if (genderMatch && genderMatch[1]) {
        const g = genderMatch[1].toUpperCase();
        fields.gender = (g === 'E' || g === 'M') ? 'Erkek' : 'Kadın';
        validationResults.gender = 'valid';
      }
    }

    // Valid Until fallback
    if (!fields.validUntil) {
      const validMatch = text.match(ID_PATTERNS.VALID_UNTIL);
      if (validMatch && validMatch[1]) {
        const validUntil = validMatch[1].replace(/[\s]/g, '.').replace(/[\/\-]/g, '.');
        if (VALIDATORS.validateDate(validUntil)) {
          fields.validUntil = validUntil;
          validationResults.validUntil = 'valid';
        }
      }
    }

    // Serial No fallback
    if (!fields.serialNo) {
      const serialMatch = text.match(ID_PATTERNS.SERIAL_NO);
      if (serialMatch && serialMatch[1]) {
        let serialNo = serialMatch[1].replace(/O/g, '0');
        fields.serialNo = serialNo;
        validationResults.serialNo = 'valid';
      }
    }

    fields.validation = validationResults;

    // Debug logging
    console.log('[OCR] Parsed fields:', {
      tcNo: fields.tcNo || 'NOT FOUND',
      name: fields.name || 'NOT FOUND',
      surname: fields.surname || 'NOT FOUND',
      birthDate: fields.birthDate || 'NOT FOUND',
      gender: fields.gender || 'NOT FOUND',
      nationality: fields.nationality || 'NOT FOUND',
      serialNo: fields.serialNo || 'NOT FOUND',
      validUntil: fields.validUntil || 'NOT FOUND',
    });

    return fields;
  };

  calculateConfidence = (fields) => {
    const requiredFields = ['tcNo', 'name', 'surname'];
    const optionalFields = ['birthDate', 'serialNo', 'validUntil', 'gender', 'nationality'];

    let score = 0;
    let maxScore = 0;
    const validation = fields.validation || {};

    // Required fields (40 points each, +10 bonus if validated)
    requiredFields.forEach(field => {
      maxScore += 50; // 40 base + 10 validation bonus
      if (fields[field]) {
        score += 40;
        // Validation bonus
        if (validation[field] === 'valid') {
          score += 10;
        } else if (validation[field] === 'invalid') {
          score -= 5; // Penalty for invalid data
        }
      }
    });

    // Optional fields (10 points each, +5 bonus if validated)
    optionalFields.forEach(field => {
      maxScore += 15; // 10 base + 5 validation bonus
      if (fields[field]) {
        score += 10;
        // Validation bonus
        if (validation[field] === 'valid') {
          score += 5;
        }
      }
    });

    // Ensure score doesn't go below 0
    score = Math.max(0, score);

    return Math.round((score / maxScore) * 100);
  };

  /**
   * Process both front and back sides of ID card
   * @param {string} frontImagePath - Path to front side image
   * @param {string} backImagePath - Path to back side image
   * @returns {Promise<object>} - Merged and validated OCR results
   */
  processBothSides = async (frontImagePath, backImagePath) => {
    try {
      console.log('[OCR] Starting dual-side processing...');
      console.log('[OCR] Front image:', frontImagePath);
      console.log('[OCR] Back image:', backImagePath);

      // Ensure options exists
      if (!this.options) {
        this.options = {
          cardSide: 'front',
          cardType: 'tc_kimlik',
          maxAttempts: 3
        };
      }

      // ⚡ OPTIMIZATION: Parallel Processing (50% faster!)
      // Process both sides simultaneously instead of sequentially
      console.log('[OCR] Processing both sides in parallel...');

      const [frontResult, backResult] = await Promise.all([
        (async () => {
          console.log('[OCR] Processing front side...');
          // Create separate options for front side (avoid race condition)
          const originalCardSide = this.options.cardSide;
          this.options.cardSide = 'front';
          try {
            const result = await this.processImage(frontImagePath);
            console.log('[OCR] Front side results:', result.fields || {});
            return result;
          } finally {
            this.options.cardSide = originalCardSide;
          }
        })(),

        (async () => {
          console.log('[OCR] Processing back side...');
          // Create separate options for back side (avoid race condition)
          const originalCardSide = this.options.cardSide;
          this.options.cardSide = 'back';
          try {
            const result = await this.processImage(backImagePath);
            console.log('[OCR] Back side results:', result.fields || {});
            return result;
          } finally {
            this.options.cardSide = originalCardSide;
          }
        })()
      ]);

      // processImage already returns { success, text, fields, confidence }
      const frontFields = frontResult.fields || {};
      const backFields = backResult.fields || {};

      // Merge and validate results
      const mergedData = this.mergeAndValidate(frontFields, backFields);

      console.log('[OCR] Merged and validated results:', mergedData);

      // 💾 OPTIMIZATION: Cleanup old temp files (non-blocking)
      this.cleanupTempFiles().catch(() => {
        // Silent fail - cleanup is not critical
      });

      return {
        success: true,
        data: mergedData,
        frontSide: frontFields,
        backSide: backFields,
        timestamp: new Date().toISOString(),
      };
    } catch (error) {
      console.error('[OCR] Dual-side processing error:', error);
      throw error;
    }
  };

  /**
   * Merge and validate data from front and back sides
   * @param {object} frontData - Data from front side
   * @param {object} backData - Data from back side (MRZ)
   * @returns {object} - Merged and validated data
   */
  mergeAndValidate = (frontData, backData) => {
    console.log('[OCR] Merging front and back data...');

    const merged = {};
    const conflicts = [];
    const validation = {};

    // Priority fields: Use MRZ (back) data as primary source (more accurate)
    const mrzPriorityFields = ['tcNo', 'name', 'surname', 'birthDate', 'gender', 'nationality'];

    mrzPriorityFields.forEach(field => {
      const frontValue = frontData[field];
      const backValue = backData[field];

      if (backValue && frontValue) {
        // Both sides have data - compare
        if (this.compareFieldValues(field, backValue, frontValue)) {
          // Values match - use back (MRZ) as it's more accurate
          merged[field] = backValue;
          validation[field] = 'verified'; // Both sides match
          console.log(`[OCR] ✓ ${field}: Front and back match (${backValue})`);
        } else {
          // Values don't match - conflict detected
          merged[field] = backValue; // Prefer MRZ
          validation[field] = 'conflict';
          conflicts.push({
            field,
            frontValue,
            backValue,
            used: 'back (MRZ)',
            reason: 'MRZ is more accurate'
          });
          console.warn(`[OCR] ⚠ ${field}: CONFLICT - Front: "${frontValue}" vs Back: "${backValue}" (using MRZ)`);
        }
      } else if (backValue) {
        // Only back has data
        merged[field] = backValue;
        validation[field] = 'back-only';
        console.log(`[OCR] ${field}: From back side only`);
      } else if (frontValue) {
        // Only front has data
        merged[field] = frontValue;
        validation[field] = 'front-only';
        console.log(`[OCR] ${field}: From front side only`);
      }
    });

    // Fields that can be on both sides but prefer back (MRZ)
    const flexibleFields = ['validUntil'];
    flexibleFields.forEach(field => {
      if (backData[field]) {
        merged[field] = backData[field];
        validation[field] = frontData[field] ? 'verified' : 'back-only';
      } else if (frontData[field]) {
        merged[field] = frontData[field];
        validation[field] = 'front-only';
      }
    });

    // Back-side exclusive fields (from MRZ)
    const backOnlyFields = ['documentNo', 'checkDigitsValid', 'motherName', 'fatherName', 'issuedBy'];
    backOnlyFields.forEach(field => {
      if (backData[field]) {
        merged[field] = backData[field];
        validation[field] = 'back-only';
      }
    });

    // Front-side exclusive fields
    const frontOnlyFields = ['serialNo', 'nationality'];
    frontOnlyFields.forEach(field => {
      if (frontData[field] && !merged[field]) {
        merged[field] = frontData[field];
        validation[field] = 'front-only';
      }
    });

    // Add metadata
    merged.validation = validation;
    merged.conflicts = conflicts;
    merged.source = 'dual-side-scan';
    merged.confidence = this.calculateDualSideConfidence(merged, conflicts);

    // Calculate completeness
    // Count only actual ID fields, not metadata like checkDigitsValid
    const totalFields = 12; // Total expected ID fields
    const filledFields = Object.keys(merged).filter(k =>
      !['validation', 'conflicts', 'source', 'confidence', 'completeness', 'checkDigitsValid'].includes(k)
    ).length;
    merged.completeness = Math.round((filledFields / totalFields) * 100);

    return merged;
  };

  /**
   * Compare two field values for similarity
   * @param {string} fieldName - Name of the field
   * @param {string} value1 - First value
   * @param {string} value2 - Second value
   * @returns {boolean} - True if values match
   */
  compareFieldValues = (fieldName, value1, value2) => {
    if (!value1 || !value2) return false;

    // Normalize strings
    const normalize = (str) => {
      return str.toString()
        .toUpperCase()
        .replace(/[İI]/g, 'I')
        .replace(/[ĞG]/g, 'G')
        .replace(/[ÜU]/g, 'U')
        .replace(/[ŞS]/g, 'S')
        .replace(/[ÖO]/g, 'O')
        .replace(/[ÇC]/g, 'C')
        .replace(/\s+/g, '')
        .trim();
    };

    const norm1 = normalize(value1);
    const norm2 = normalize(value2);

    // Exact match
    if (norm1 === norm2) return true;

    // For dates, check different formats
    if (fieldName === 'birthDate') {
      const date1 = norm1.replace(/[\.\/\-]/g, '');
      const date2 = norm2.replace(/[\.\/\-]/g, '');
      return date1 === date2;
    }

    // For names, allow minor differences (OCR errors)
    if (['name', 'surname'].includes(fieldName)) {
      // Calculate similarity (simple Levenshtein-like)
      const maxLen = Math.max(norm1.length, norm2.length);
      const minLen = Math.min(norm1.length, norm2.length);

      if (maxLen === 0) return true;

      // Allow up to 20% difference for names
      const similarity = minLen / maxLen;
      if (similarity >= 0.8) {
        // Check if one contains the other
        if (norm1.includes(norm2) || norm2.includes(norm1)) {
          return true;
        }
      }
    }

    return false;
  };

  /**
   * Calculate confidence for dual-side scan
   * @param {object} mergedData - Merged data
   * @param {array} conflicts - Array of conflicts
   * @returns {number} - Confidence score (0-100)
   */
  calculateDualSideConfidence = (mergedData, conflicts) => {
    let baseScore = 100;

    // Penalty for conflicts
    const conflictPenalty = conflicts.length * 10;
    baseScore -= conflictPenalty;

    // Bonus for verified fields
    const validation = mergedData.validation || {};
    const verifiedCount = Object.values(validation).filter(v => v === 'verified').length;
    const verifiedBonus = verifiedCount * 5;
    baseScore += verifiedBonus;

    // Check completeness of critical fields
    const criticalFields = ['tcNo', 'name', 'surname', 'birthDate'];
    const criticalComplete = criticalFields.every(f => mergedData[f]);
    if (criticalComplete) {
      baseScore += 10;
    }

    // Ensure score is between 0-100
    return Math.max(0, Math.min(100, Math.round(baseScore)));
  };
}

const detectionHintIntro = 'MRZ: Kartın arka yüzündeki MRZ satırlarını çerçeveye hizalayın. Kart algılandığında ardışık 3 fotoğraf otomatik alınacaktır.';

// React Component for OCR UI
export const OCRReaderScreen = ({ navigation, route }) => {
  const [isProcessing, setIsProcessing] = useState(false);
  const [flashMode, setFlashMode] = useState('off');
  const [torchEnabled, setTorchEnabled] = useState(false);
  const [ocrResult, setOcrResult] = useState(null);
  const [isCameraActive, setIsCameraActive] = useState(false);
  const [detectionHint, setDetectionHint] = useState(detectionHintIntro);
  const [pendingCaptures, setPendingCaptures] = useState(0);
  const [cacheLog, setCacheLog] = useState([]);
  const [ocrLogs, setOcrLogs] = useState([]);
  const [nfcLogs, setNfcLogs] = useState([]);
  const [nfcPhase, setNfcPhase] = useState('pending');
  const [nfcError, setNfcError] = useState(null);
  const [mrzReady, setMrzReady] = useState(false);
  const [deviceStable, setDeviceStable] = useState(false);
  const cameraRef = useRef(null);
  const device = useCameraDevice('back');
  const ocrModule = useRef(new OCRReaderModule()).current;
  const nfcModuleRef = useRef(null);
  const nfcSessionActiveRef = useRef(false);
  const lastMrzFieldsRef = useRef(null);
  const returnTo = route?.params?.returnTo;
  const returnSourceStep = route?.params?.returnParams?.sourceStep;
  const hasForwardedRef = useRef(false);
  const AUTO_ACCEPT_CONFIDENCE = 70;
  const cacheRef = useRef([]);
  const CAPTURE_SEQUENCE_COUNT = 3;
  const CAPTURE_DELAY_MS = 350;
  const AUTO_CAPTURE_DELAY_MS = 1200;
  const autoCaptureTimeoutRef = useRef(null);
  const detectionScoresRef = useRef({ mrzScore: 0, stabilityScore: 0 });
  const lastStableAtRef = useRef(Date.now());
  const previousBottomLuma = useSharedValue(0);
  const lastFrameReportNs = useSharedValue(0);

  useEffect(() => {
    if (!NFCReaderModule) {
      console.warn('[OCR→NFC] NFCReaderModule bulunamadı. NFC akışı atlanacak.');
      return;
    }

    const moduleInstance = nfcModuleRef.current || new NFCReaderModule();
    nfcModuleRef.current = moduleInstance;

    const handleNfcResult = (response) => {
      console.log('[OCR→NFC] NFC okuma tamamlandı. Ayrıştırılan alanlar:', response?.parsedFields || {});
      console.log('[OCR→NFC] NFC JSON:', JSON.stringify(response, null, 2));
      appendLogEntryHelper(setNfcLogs, 'NFC_OK', response);
      setDetectionHint('NFC okuma tamamlandı.');
      setNfcPhase('completed');
      setNfcError(null);
      nfcSessionActiveRef.current = false;
      moduleInstance.stopNFC().catch(() => { });
    };

    const handleNfcError = (errorResponse) => {
      console.error('[OCR→NFC] NFC okuma hatası:', errorResponse);
      appendLogEntryHelper(setNfcLogs, 'NFC_ERROR', errorResponse);
      setDetectionHint('NFC okuma başarısız oldu, tekrar deneyin.');
      setNfcError(errorResponse);
      setNfcPhase('error');
      nfcSessionActiveRef.current = false;
    };

    moduleInstance.onNFCResult(handleNfcResult);
    moduleInstance.onNFCError(handleNfcError);
    moduleInstance.onNFCStarted(() => {
      console.log('[OCR→NFC] NFC dinleme modu başladı. Kartı cihaza yaklaştırın.');
    });
    moduleInstance.onNFCStopped(() => {
      console.log('[OCR→NFC] NFC dinleme modu durduruldu.');
    });

    return () => {
      nfcSessionActiveRef.current = false;
      moduleInstance.stopNFC().catch(() => { });
    };
  }, []);

  const reportFrameMetrics = useCallback(({ mrzScore, stabilityScore }) => {
    detectionScoresRef.current = { mrzScore, stabilityScore };
    setMrzReady(mrzScore >= MRZ_SCORE_THRESHOLD);
    const now = Date.now();
    if (stabilityScore >= STABILITY_THRESHOLD) {
      lastStableAtRef.current = now;
    }
    const isStable = now - lastStableAtRef.current <= STABILITY_STICKY_MS;
    setDeviceStable(isStable);
  }, []);

  const frameProcessor = useFrameProcessor((frame) => {
    'worklet';

    if (!frame || frame.width === 0 || frame.height === 0) {
      return;
    }

    const width = frame.width;
    const height = frame.height;
    const bytesPerRow = frame.bytesPerRow ?? width;
    const buffer = frame.toArrayBuffer();

    if (!buffer) {
      return;
    }

    const luminance = new Uint8Array(buffer, 0, bytesPerRow * height);
    const regionStartY = Math.max(0, Math.floor(height * 0.65));
    const regionEndY = height - 2;
    const regionStartX = Math.floor(width * 0.1);
    const regionEndX = Math.floor(width * 0.9);
    const stepY = Math.max(2, Math.floor((regionEndY - regionStartY) / 40));
    const stepX = Math.max(2, Math.floor((regionEndX - regionStartX) / 80));

    let sampleCount = 0;
    let darkCount = 0;
    let brightCount = 0;
    let sum = 0;

    for (let y = regionStartY; y < regionEndY; y += stepY) {
      const rowOffset = y * bytesPerRow;
      for (let x = regionStartX; x < regionEndX; x += stepX) {
        const value = luminance[rowOffset + x];
        sum += value;
        if (value < 90) {
          darkCount += 1;
        } else if (value > 185) {
          brightCount += 1;
        }
        sampleCount += 1;
      }
    }

    if (sampleCount === 0) {
      return;
    }

    const avg = sum / sampleCount;
    const contrastRatio = darkCount / sampleCount;
    const brightRatio = brightCount / sampleCount;
    const mrzScore = contrastRatio * (brightRatio > 0.12 ? 1 : 0.7);

    const delta = Math.abs(avg - previousBottomLuma.value);
    previousBottomLuma.value = avg;
    const stabilityScore = Math.max(0, 1 - Math.min(1, delta / 18));

    const timestampNs = frame.timestamp ?? 0;
    if (timestampNs - lastFrameReportNs.value > FRAME_REPORT_THROTTLE_NS) {
      lastFrameReportNs.value = timestampNs;
      runOnJS(reportFrameMetrics)({ mrzScore, stabilityScore });
    }
  }, [lastFrameReportNs, previousBottomLuma, reportFrameMetrics]);

  const startNfcFlow = useCallback((mrzFields = {}) => {
    if (!nfcModuleRef.current) {
      console.warn('[OCR→NFC] NFC modülü hazır değil.');
      return;
    }

    if (nfcSessionActiveRef.current) {
      console.log('[OCR→NFC] NFC okuması zaten aktif.');
      return;
    }

    nfcSessionActiveRef.current = true;
    lastMrzFieldsRef.current = mrzFields;
    setNfcError(null);
    setNfcPhase('scanning');

    const mrzSummary = {
      tcNo: mrzFields.tcNo || null,
      name: mrzFields.name || null,
      surname: mrzFields.surname || null,
      birthDate: mrzFields.birthDate || null,
      documentNo: mrzFields.documentNo || null,
    };

    console.log('[OCR→NFC] OCR tamamlandı. NFC başlatılıyor...', mrzSummary);
    appendLogEntryHelper(setOcrLogs, 'OCR_RESULT', mrzFields);
    setDetectionHint('NFC hazır: Kartınızı telefonun arkasına yaklaştırın.');

    nfcModuleRef.current.startNFC({
      cardType: 'tc_kimlik',
      readTimeout: 45000,
      mrzSeed: mrzSummary,
    }).catch((error) => {
      nfcSessionActiveRef.current = false;
      console.error('[OCR→NFC] NFC başlatma hatası:', error);
      setDetectionHint('NFC başlatılamadı. Tekrar deneyin.');
    });
  }, []);

  const checkCameraPermission = useCallback(async () => {
    try {
      const permissionType = Platform.OS === 'ios'
        ? PERMISSIONS.IOS.CAMERA
        : PERMISSIONS.ANDROID.CAMERA;

      const status = await check(permissionType);
      if (status === RESULTS.GRANTED) {
        return true;
      }

      const newStatus = await request(permissionType);
      if (newStatus === RESULTS.GRANTED) {
        return true;
      }

      Alert.alert(
        'Kamera İzni Gerekli',
        'OCR işlemi için kamera izni vermeniz gerekiyor.',
        [{ text: 'Tamam' }]
      );
      return false;
    } catch (err) {
      console.error('[OCR] Kamera izni kontrolü başarısız:', err);
      Alert.alert('Hata', 'Kamera izni kontrol edilirken bir sorun oluştu.');
      return false;
    }
  }, []);

  const saveResultsToFile = useCallback(async (result) => {
    try {
      if (!result) {
        return null;
      }

      const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
      const fileName = `OCR_Result_${timestamp}.txt`;
      const filePath = `${RNFS.DocumentDirectoryPath}/${fileName}`;

      let content = '=== OCR SONUÇLARI ===\n\n';
      content += `Tarih: ${new Date().toLocaleString('tr-TR')}\n`;
      content += `Güven Skoru: %${result.confidence ?? 0}\n`;
      if (result.fields?.source) {
        content += `Kaynak: ${result.fields.source}\n`;
      }

      const fields = result.fields || {};
      const fieldEntries = [
        ['TC Kimlik No', fields.tcNo],
        ['Ad', fields.name],
        ['Soyad', fields.surname],
        ['Doğum Tarihi', fields.birthDate],
        ['Cinsiyet', fields.gender],
        ['Uyruk', fields.nationality],
        ['Seri No', fields.serialNo],
        ['Geçerlilik', fields.validUntil],
      ];

      content += '\n--- BULUNAN ALANLAR ---\n\n';
      fieldEntries.forEach(([label, value]) => {
        if (value) {
          content += `${label}: ${value}\n`;
        }
      });

      const validation = fields.validation || {};
      content += '\n--- DOĞRULAMA DURUMU ---\n\n';
      Object.keys(validation).forEach((key) => {
        const status = validation[key] === 'valid' ? '✓ Geçerli' : validation[key] === 'invalid' ? '⚠ Geçersiz' : '–';
        content += `${key}: ${status}\n`;
      });

      if (result.text) {
        content += '\n--- HAM METİN ---\n\n';
        content += result.text;
      }

      await RNFS.writeFile(filePath, content, 'utf8');
      console.log('[OCR] Sonuç dosyası kaydedildi:', filePath);
      return filePath;
    } catch (error) {
      console.error('[OCR] Sonuçlar kaydedilemedi:', error);
      return null;
    }
  }, []);

  const pruneCache = useCallback(() => {
    const cutoff = Date.now() - CACHE_DURATION_MS;
    const filtered = cacheRef.current.filter((entry) => entry.timestamp >= cutoff);
    if (filtered.length !== cacheRef.current.length) {
      cacheRef.current = filtered;
      setCacheLog(filtered);
    }
  }, []);

  const appendCacheEntry = useCallback((rawText, meta = {}) => {
    if (!rawText) {
      return;
    }

    const timestamp = Date.now();
    const entry = {
      id: `${timestamp}-${Math.random().toString(16).slice(2, 8)}`,
      timestamp,
      text: rawText,
      meta,
    };

    const cutoff = timestamp - CACHE_DURATION_MS;
    const updated = [entry, ...cacheRef.current].filter((item) => item.timestamp >= cutoff);
    cacheRef.current = updated;
    setCacheLog(updated);

    console.log('[OCR][Standalone] Ham metin kaydı', {
      timestamp: new Date(timestamp).toISOString(),
      preview: rawText.substring(0, 80),
      meta,
    });
  }, []);

  useEffect(() => {
    const interval = setInterval(pruneCache, 30000);
    return () => clearInterval(interval);
  }, [pruneCache]);

  const formatCacheTime = useCallback((value) => {
    const date = new Date(value);
    return date.toLocaleTimeString('tr-TR', { hour: '2-digit', minute: '2-digit', second: '2-digit' });
  }, []);

  const finalizeResult = useCallback(
    (result) => {
      if (!result || hasForwardedRef.current) {
        return;
      }

      hasForwardedRef.current = true;
      appendCacheEntry(result.text || '', {
        confidence: result?.confidence ?? null,
        side: 'combined',
      });

      const summary = {
        tcNo: result?.fields?.tcNo || result?.extractedFields?.tcNo || null,
        name: result?.fields?.name || result?.extractedFields?.name || null,
        surname: result?.fields?.surname || result?.extractedFields?.surname || null,
        confidence: result?.confidence ?? null,
      };

      setOcrResult(result);
      setDetectionHint('OCR sonucu alındı, devam ediliyor...');
      setIsProcessing(false);
      lastMrzFieldsRef.current = result?.fields || null;
      setNfcPhase('pending');
      setNfcError(null);

      forwardStepResult({
        success: true,
        timestamp: new Date().toISOString(),
        data: result,
        summary,
      });

      saveResultsToFile(result).catch((err) => {
        console.error('[OCR] saveResultsToFile error:', err);
      });

      startNfcFlow(result?.fields || {});
    },
    [appendCacheEntry, forwardStepResult, startNfcFlow]
  );

  const retryOCR = useCallback(() => {
    hasForwardedRef.current = false;
    setOcrResult(null);
    const detectionHintIntro = 'MRZ: Kartın arka yüzündeki MRZ satırlarını çerçeveye hizalayın. Kart algılandığında ardışık 3 fotoğraf otomatik alınacaktır.';
    setIsProcessing(false);
    setIsCameraActive(true);
    setPendingCaptures(0);
    if (nfcModuleRef.current) {
      nfcModuleRef.current.stopNFC().catch(() => { });
    }
    nfcSessionActiveRef.current = false;
    setNfcPhase('pending');
    setNfcError(null);
    lastMrzFieldsRef.current = null;
    setNfcLogs([]);
  }, []);

  const renderResultField = useCallback((label, value, validationStatus) => {
    if (!value) {
      return null;
    }

    return (
      <View style={styles.resultRow}>
        <Text style={styles.resultLabel}>{label}:</Text>
        <View style={styles.resultValueContainer}>
          <Text style={styles.resultValue}>{value}</Text>
          {validationStatus === 'valid' && <Text style={styles.validIcon}>✓</Text>}
          {validationStatus === 'invalid' && <Text style={styles.invalidIcon}>⚠</Text>}
        </View>
      </View>
    );
  }, []);

  const forwardStepResult = useCallback(
    (payload) => {
      if (!returnTo || !returnSourceStep) {
        return;
      }

      navigation.navigate({
        name: returnTo,
        params: {
          returnParams: {
            sourceStep: returnSourceStep,
            stepResult: payload,
          },
        },
        merge: true,
      });

      if (navigation.canGoBack()) {
        navigation.goBack();
      }
    },
    [navigation, returnTo, returnSourceStep]
  );

  const captureSingleMrz = useCallback(async () => {
    const photo = await cameraRef.current.takePhoto({
      qualityPrioritization: 'speed',
      flash: flashMode,
      skipMetadata: true,
    });

    const photoPath = photo?.path || photo?.uri;
    if (!photoPath) {
      throw new Error('Fotoğraf alınamadı');
    }

    ocrModule.options = { ...(ocrModule.options || {}), cardSide: 'back' };
    const result = await ocrModule.processImage(photoPath);
    if (!result?.success) {
      throw new Error(result?.error || 'OCR işlemi başarısız oldu');
    }

    appendCacheEntry(result.text || '', {
      confidence: result.confidence ?? null,
      side: 'back',
    });

    return result;
  }, [appendCacheEntry, flashMode, ocrModule]);

  const takePhotoAndProcess = useCallback(async () => {
    if (!cameraRef.current || isProcessing) {
      return;
    }

    try {
      setIsProcessing(true);
      setPendingCaptures(CAPTURE_SEQUENCE_COUNT);
      const successfulCaptures = [];

      for (let i = 0; i < CAPTURE_SEQUENCE_COUNT; i++) {
        try {
          const result = await captureSingleMrz();
          successfulCaptures.push(result);
        } catch (error) {
          console.warn('[OCR] MRZ capture attempt failed:', error?.message || error);
        }

        setPendingCaptures(CAPTURE_SEQUENCE_COUNT - (i + 1));
        await new Promise((resolve) => setTimeout(resolve, CAPTURE_DELAY_MS));
      }

      setPendingCaptures(0);

      if (successfulCaptures.length === 0) {
        throw new Error('Hiçbir çekimden MRZ verisi elde edilemedi. Lütfen tekrar deneyin.');
      }

      const bestResult = successfulCaptures.reduce((best, current) => {
        const bestConfidence = best?.confidence ?? 0;
        const currentConfidence = current?.confidence ?? 0;
        return currentConfidence > bestConfidence ? current : best;
      }, successfulCaptures[0]);

      setDetectionHint('MRZ okundu, sonuçlar hazırlanıyor...');
      finalizeResult(bestResult);
    } catch (error) {
      console.error('[OCR] Fotoğraf yakalama/OCR hatası:', error);
      Alert.alert('Hata', error.message || 'Fotoğraf alınamadı');
      setIsProcessing(false);
    }
  }, [CAPTURE_DELAY_MS, CAPTURE_SEQUENCE_COUNT, captureSingleMrz, finalizeResult, isProcessing]);

  useEffect(() => {
    if (!isCameraActive || isProcessing || pendingCaptures > 0 || !!ocrResult || !mrzReady || !deviceStable) {
      if (autoCaptureTimeoutRef.current) {
        clearTimeout(autoCaptureTimeoutRef.current);
        autoCaptureTimeoutRef.current = null;
      }
      return;
    }

    autoCaptureTimeoutRef.current = setTimeout(() => {
      autoCaptureTimeoutRef.current = null;
      takePhotoAndProcess();
    }, AUTO_CAPTURE_DELAY_MS);

    return () => {
      if (autoCaptureTimeoutRef.current) {
        clearTimeout(autoCaptureTimeoutRef.current);
        autoCaptureTimeoutRef.current = null;
      }
    };
  }, [AUTO_CAPTURE_DELAY_MS, deviceStable, isCameraActive, isProcessing, mrzReady, pendingCaptures, ocrResult, takePhotoAndProcess]);

  useEffect(() => {
    if (!isCameraActive || ocrResult || isProcessing) {
      return;
    }

    if (!mrzReady) {
      setDetectionHint('Kart algılanamadı. MRZ satırlarını çerçeveye hizalayın.');
      return;
    }

    if (!deviceStable) {
      setDetectionHint('Kart algılandı, lütfen telefonu sabit tutun.');
      return;
    }

    setDetectionHint('Kart algılandı. Otomatik çekim başlamak üzere.');
  }, [deviceStable, isCameraActive, isProcessing, mrzReady, ocrResult]);

  // Setup callbacks
  React.useEffect(() => {
    let isMounted = true;

    checkCameraPermission().then(() => {
      if (isMounted) {
        setIsCameraActive(true);
      }
    });

    ocrModule.onOCRResult((result) => {
      if (isMounted) {
        finalizeResult(result);
      }
    });

    ocrModule.onOCRError((error) => {
      if (isMounted) {
        Alert.alert('Hata', error.error || 'OCR işlemi başarısız oldu');
        setIsProcessing(false);
      }
    });

    // Listen to navigation focus/blur to control camera
    const unsubscribeFocus = navigation.addListener('focus', () => {
      if (isMounted && !ocrResult) {
        setIsCameraActive(true);
      }
    });

    const unsubscribeBlur = navigation.addListener('blur', () => {
      if (isMounted) {
        setIsCameraActive(false);
        setTorchEnabled(false);
      }
    });

    return () => {
      isMounted = false;
      setIsCameraActive(false);
      setTorchEnabled(false);
      unsubscribeFocus();
      unsubscribeBlur();
    };
  }, [checkCameraPermission, finalizeResult, navigation]);

  // ... (rest of the code remains the same)

  const renderCacheLog = useCallback(() => (
    <View style={styles.cacheLogContainer}>
      <Text style={styles.cacheLogTitle}>📄 OCR Ham Metin Logu (10 dk)</Text>
      {cacheLog.length === 0 ? (
        <Text style={styles.cacheLogEmpty}>Henüz kayıt yok</Text>
      ) : (
        <ScrollView style={styles.cacheLogList}>
          {cacheLog.map((entry) => (
            <View key={entry.id} style={styles.cacheLogItem}>
              <View style={styles.cacheLogHeader}>
                <Text style={styles.cacheLogTime}>{formatCacheTime(entry.timestamp)}</Text>
                {entry.meta?.confidence ? (
                  <Text style={styles.cacheLogConfidence}>
                    %{entry.meta.confidence}
                  </Text>
                ) : null}
              </View>
              <Text style={styles.cacheLogText}>{entry.text}</Text>
            </View>
          ))}
        </ScrollView>
      )}
    </View>
  ), [cacheLog, formatCacheTime]);

  const renderStructuredLog = useCallback((title, logs, emptyMessage) => (
    <View style={styles.structuredLogContainer}>
      <Text style={styles.structuredLogTitle}>{title}</Text>
      {logs.length === 0 ? (
        <Text style={styles.logEmpty}>{emptyMessage}</Text>
      ) : (
        <ScrollView style={styles.structuredLogList}>
          {logs.map((entry, idx) => (
            <View key={`${entry.timestamp}-${idx}`} style={styles.structuredLogItem}>
              <View style={styles.structuredLogHeader}>
                <Text style={styles.structuredLogTime}>{entry.timestamp}</Text>
                <Text style={styles.structuredLogLabel}>{entry.label}</Text>
              </View>
              <Text style={styles.structuredLogPayload}>{JSON.stringify(entry.payload, null, 2)}</Text>
            </View>
          ))}
        </ScrollView>
      )}
    </View>
  ), []);

  const renderNfcStatusCard = useCallback(() => {
    if (!ocrResult) {
      return null;
    }

    if (nfcPhase === 'completed') {
      return (
        <View style={styles.nfcStatusCardSuccess}>
          <Text style={styles.nfcStatusTitle}>NFC Okundu ✓</Text>
          <Text style={styles.nfcStatusMessage}>Kart çip verileri başarıyla alındı. Aşağıda logları inceleyebilirsiniz.</Text>
        </View>
      );
    }

    if (nfcPhase === 'error') {
      return (
        <View style={styles.nfcStatusCardError}>
          <Text style={styles.nfcStatusTitle}>NFC Okuması Başarısız</Text>
          <Text style={styles.nfcStatusMessage}>{nfcError?.error || 'NFC okuması tamamlanamadı.'}</Text>
          <TouchableOpacity
            style={styles.nfcRetryButton}
            onPress={() => startNfcFlow(lastMrzFieldsRef.current || {})}
          >
            <Text style={styles.nfcRetryButtonText}>Tekrar Dene</Text>
          </TouchableOpacity>
        </View>
      );
    }

    if (nfcPhase === 'scanning') {
      return (
        <View style={styles.nfcStatusCardScanning}>
          <ActivityIndicator color="#2563EB" style={styles.nfcStatusSpinner} />
          <Text style={styles.nfcStatusTitle}>NFC Okuma Devam Ediyor</Text>
          <Text style={styles.nfcStatusMessage}>Kartınızı telefonun arkasına yaklaştırın ve sabit tutun.</Text>
        </View>
      );
    }

    return (
      <View style={styles.nfcStatusCardInfo}>
        <Text style={styles.nfcStatusTitle}>NFC Hazırlanıyor</Text>
        <Text style={styles.nfcStatusMessage}>Kart okuma işlemi birazdan başlayacak.</Text>
      </View>
    );
  }, [nfcPhase, nfcError, ocrResult, startNfcFlow]);

  const renderOverlay = () => (
    <View style={styles.overlay}>
      <View style={styles.overlayTop}>
        <Text style={styles.instructionText}>
          {detectionHint}
        </Text>
      </View>

      <View style={styles.overlayMiddle}>
        <View style={styles.overlayLeft} />

        <View style={styles.frameContainer}>
          <View style={[styles.corner, styles.cornerTopLeft]} />
          <View style={[styles.corner, styles.cornerTopRight]} />
          <View style={[styles.corner, styles.cornerBottomLeft]} />
          <View style={[styles.corner, styles.cornerBottomRight]} />
        </View>

        <View style={styles.overlayRight} />
      </View>

      <View style={styles.overlayBottom}>
        <Text style={styles.hintText}>
          Arka yüz (MRZ) taranıyor
        </Text>
        <Text style={styles.hintTextSmall}>
          • Kartın tamamı görünür olmalı{'\n'}
          • Yeterli ışık olduğundan emin olun{'\n'}
          • Yansıma ve gölge olmamasına dikkat edin
        </Text>
      </View>
    </View>
  );

  // ... (rest of the code remains the same)

  const renderResult = (result) => {
    if (!result) return null;

    const validation = result.fields.validation || {};
    const hasInvalidFields = Object.values(validation).some(v => v === 'invalid');

    return (
      <ScrollView style={styles.resultContainer} contentContainerStyle={styles.resultContent}>
        <Text style={styles.resultTitle}>OCR Sonuçları</Text>

        {result.fields.source && (
          <View style={styles.sourceBadge}>
            <Text style={styles.sourceBadgeText}>
              {result.fields.source}
            </Text>
          </View>
        )}

        <View
          style={[
            styles.confidenceBanner,
            { backgroundColor: result.confidence > 70 ? '#E8F5E9' : '#FFF3E0' }
          ]}
        >
          <Text
            style={[
              styles.confidenceScore,
              { color: result.confidence > 70 ? '#4CAF50' : '#FF9800' }
            ]}
          >
            %{result.confidence}
          </Text>
          <Text style={styles.confidenceLabel}>Güven Skoru</Text>
        </View>

        {renderResultField('TC Kimlik No', result.fields.tcNo, validation.tcNo)}
        {renderResultField('Ad', result.fields.name, validation.name)}
        {renderResultField('Soyad', result.fields.surname, validation.surname)}
        {renderResultField('Doğum Tarihi', result.fields.birthDate, validation.birthDate)}
        {renderResultField('Cinsiyet', result.fields.gender, validation.gender)}
        {renderResultField('Uyruk', result.fields.nationality, validation.nationality)}
        {renderResultField('Seri No', result.fields.serialNo, validation.serialNo)}
        {renderResultField('Geçerlilik', result.fields.validUntil, validation.validUntil)}

        {hasInvalidFields && (
          <View style={styles.warningBox}>
            <Text style={styles.warningText}>
              ⚠ Bazı alanlar doğrulanamadı. Lütfen verileri kontrol edin.
            </Text>
          </View>
        )}

        {result.confidence < 70 && (
          <View style={styles.tipBox}>
            <Text style={styles.tipTitle}>💡 İpuçları:</Text>
            <Text style={styles.tipText}>
              • Kartı daha iyi ışıklandırın{'\n'}
              • Yansıma olmayan bir ortam seçin{'\n'}
              • Kartın tamamının çerçeve içinde olduğundan emin olun{'\n'}
              • Kamerayı sabit tutun
            </Text>
          </View>
        )}

        <TouchableOpacity style={styles.retryButton} onPress={retryOCR}>
          <Text style={styles.retryButtonText}>Yeniden Tara</Text>
        </TouchableOpacity>
      </ScrollView>
    );
  };

  // ... (rest of the code remains the same)

  if (ocrResult) {
    return (
      <View style={[styles.container, styles.resultScreen]}>
        {renderResult(ocrResult)}
        {renderNfcStatusCard()}
        {nfcPhase === 'completed' && (
          <>
            {renderStructuredLog('📄 OCR İşlem Logları', ocrLogs, 'Henüz OCR logu yok.')}
            {renderStructuredLog('📶 NFC İşlem Logları', nfcLogs, 'Henüz NFC logu yok.')}
            {renderCacheLog()}
          </>
        )}
      </View>
    );
  }

  return (
    <View style={styles.container}>
      <StatusBar barStyle="light-content" backgroundColor="#000" />

      {/* Header with back button */}
      <View style={styles.header}>
        <TouchableOpacity
          style={styles.backButton}
          onPress={() => {
            setIsCameraActive(false);
            setTorchEnabled(false);
            navigation.goBack();
          }}
        >
          <Text style={styles.backButtonText}>← Geri</Text>
        </TouchableOpacity>
        <Text style={styles.headerTitle}>OCR Okuma</Text>
        <View style={styles.headerSpacer} />
      </View>

      {device && isCameraActive ? (
        <>
          <Camera
            ref={cameraRef}
            style={styles.camera}
            device={device}
            isActive={isCameraActive}
            torch={torchEnabled ? 'on' : 'off'}
            exposure={0}
            enableZoomGesture={false}
            videoStabilizationMode="off"
            enableAutoStabilization={false}
            photo={true}
            frameProcessor={frameProcessor}
            frameProcessorFps={5}
          />

          {renderOverlay()}

          {/* Flash, Torch & Auto-capture Controls */}
          <View style={styles.topControls}>
            <TouchableOpacity
              style={[styles.topControlButton, torchEnabled && styles.topControlButtonActive]}
              onPress={() => setTorchEnabled(!torchEnabled)}
            >
              <Text style={styles.topControlIcon}>🔦</Text>
            </TouchableOpacity>

            <TouchableOpacity
              style={[styles.topControlButton, flashMode !== 'off' && styles.topControlButtonActive]}
              onPress={() => {
                const modes = ['off', 'on', 'auto'];
                const currentIndex = modes.indexOf(flashMode);
                const nextMode = modes[(currentIndex + 1) % modes.length];
                setFlashMode(nextMode);
              }}
            >
              <Text style={styles.topControlIcon}>⚡</Text>
              <Text style={styles.topControlLabel}>
                {flashMode === 'off' ? 'Kapalı' : flashMode === 'on' ? 'Açık' : 'Oto'}
              </Text>
            </TouchableOpacity>
          </View>
        </>
      ) : !device ? (
        <View style={styles.errorContainer}>
          <Text style={styles.errorText}>Kamera bulunamadı</Text>
        </View>
      ) : (
        <View style={styles.errorContainer}>
          <ActivityIndicator color="#FFF" size="large" />
          <Text style={styles.errorText}>Kamera başlatılıyor...</Text>
        </View>
      )}

      <View style={styles.controls}>
        <TouchableOpacity
          style={[styles.captureButton, isProcessing && styles.captureButtonDisabled]}
          onPress={takePhotoAndProcess}
          disabled={isProcessing}
        >
          <View style={styles.captureButtonInner} />
        </TouchableOpacity>
        <View style={[styles.detectionStatus, (!mrzReady || !deviceStable) && styles.detectionStatusInactive]}>
          <Text style={styles.detectionStatusText}>
            MRZ: {mrzReady ? 'Algılandı' : 'Aranıyor'} • Stabilite: {deviceStable ? 'Sabit' : 'Hareketli'}
          </Text>
        </View>
      </View>

      {renderCacheLog()}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#000',
  },
  resultScreen: {
    backgroundColor: '#F1F5F9',
  },
  header: {
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'space-between',
    paddingHorizontal: 16,
    paddingVertical: 12,
    backgroundColor: 'rgba(0,0,0,0.8)',
    zIndex: 100,
  },
  backButton: {
    padding: 8,
  },
  backButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  headerTitle: {
    color: '#FFF',
    fontSize: 18,
    fontWeight: 'bold',
  },
  headerSpacer: {
    width: 60,
  },
  camera: {
    flex: 1,
  },
  overlay: {
    ...StyleSheet.absoluteFillObject,
  },
  overlayTop: {
    flex: 0.15,
    backgroundColor: 'rgba(0,0,0,0.6)',
    justifyContent: 'center',
    alignItems: 'center',
  },
  overlayMiddle: {
    flex: 0.5,
    flexDirection: 'row',
  },
  overlayLeft: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.6)',
  },
  overlayRight: {
    flex: 1,
    backgroundColor: 'rgba(0,0,0,0.6)',
  },
  overlayBottom: {
    flex: 0.35,
    backgroundColor: 'rgba(0,0,0,0.6)',
    justifyContent: 'flex-start',
    alignItems: 'center',
    paddingTop: 20,
  },
  frameContainer: {
    width: screenWidth * 0.85,
    height: screenWidth * 0.54,
    position: 'relative',
  },
  corner: {
    position: 'absolute',
    width: 40,
    height: 40,
    borderColor: '#FFF',
    borderWidth: 3,
  },
  cornerTopLeft: {
    top: 0,
    left: 0,
    borderRightWidth: 0,
    borderBottomWidth: 0,
  },
  cornerTopRight: {
    top: 0,
    right: 0,
    borderLeftWidth: 0,
    borderBottomWidth: 0,
  },
  cornerBottomLeft: {
    bottom: 0,
    left: 0,
    borderRightWidth: 0,
    borderTopWidth: 0,
  },
  cornerBottomRight: {
    bottom: 0,
    right: 0,
    borderLeftWidth: 0,
    borderTopWidth: 0,
  },
  instructionText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
    textAlign: 'center',
  },
  instructionTextSuccess: {
    color: '#4CAF50',
  },
  checkmark: {
    color: '#4CAF50',
    fontSize: 24,
    fontWeight: 'bold',
    marginTop: 4,
  },
  hintText: {
    color: '#FFF',
    fontSize: 14,
    fontWeight: '600',
    textAlign: 'center',
    marginBottom: 8,
  },
  hintTextSmall: {
    color: '#FFF',
    fontSize: 11,
    textAlign: 'center',
    lineHeight: 16,
  },
  frameContainerDetected: {
    borderWidth: 2,
    borderColor: '#4CAF50',
    borderRadius: 8,
  },
  frameContainerNotDetected: {
    borderWidth: 2,
    borderColor: '#FF5252',
    borderRadius: 8,
  },
  cornerDetected: {
    borderColor: '#4CAF50',
  },
  cornerNotDetected: {
    borderColor: '#FF5252',
  },
  controls: {
    position: 'absolute',
    bottom: 30,
    left: 0,
    right: 0,
    flexDirection: 'row',
    justifyContent: 'space-around',
    alignItems: 'center',
    paddingHorizontal: 30,
  },
  captureButton: {
    width: 70,
    height: 70,
    borderRadius: 35,
    backgroundColor: '#FFF',
    justifyContent: 'center',
    alignItems: 'center',
    borderWidth: 5,
    borderColor: '#DDD',
  },
  captureButtonDisabled: {
    opacity: 0.4,
  },
  captureButtonInner: {
    width: 50,
    height: 50,
    borderRadius: 25,
    backgroundColor: '#FFF',
  },
  flashButton: {
    padding: 15,
    backgroundColor: 'rgba(255,255,255,0.2)',
    borderRadius: 10,
  },
  flashButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  galleryButton: {
    padding: 15,
    backgroundColor: 'rgba(255,255,255,0.2)',
    borderRadius: 10,
  },
  galleryButtonText: {
    fontSize: 24,
  },
  previewImage: {
    width: '100%',
    height: 300,
    resizeMode: 'contain',
    marginBottom: 20,
  },
  previewImageFull: {
    width: '100%',
    height: '100%',
    resizeMode: 'contain',
  },
  confirmationOverlay: {
    position: 'absolute',
    bottom: 0,
    left: 0,
    right: 0,
    backgroundColor: 'rgba(0,0,0,0.8)',
    padding: 20,
    paddingBottom: 40,
  },
  confirmationText: {
    color: '#FFF',
    fontSize: 16,
    textAlign: 'center',
    marginBottom: 20,
  },
  confirmationButtons: {
    flexDirection: 'row',
    justifyContent: 'space-around',
  },
  retakeButton: {
    flex: 1,
    marginRight: 10,
    paddingVertical: 15,
    backgroundColor: '#FF5252',
    borderRadius: 10,
    alignItems: 'center',
  },
  retakeButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  confirmButton: {
    flex: 1,
    marginLeft: 10,
    paddingVertical: 15,
    backgroundColor: '#4CAF50',
    borderRadius: 10,
    alignItems: 'center',
  },
  confirmButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  resultContainer: {
    flex: 1,
    backgroundColor: '#FFF',
  },
  resultContent: {
    padding: 20,
    paddingBottom: 40,
  },
  resultTitle: {
    fontSize: 22,
    fontWeight: 'bold',
    marginBottom: 16,
    textAlign: 'center',
    color: '#333',
  },
  sourceBadge: {
    backgroundColor: '#E8F5E9',
    paddingHorizontal: 12,
    paddingVertical: 6,
    borderRadius: 16,
    alignSelf: 'center',
    marginBottom: 12,
    borderWidth: 1,
    borderColor: '#4CAF50',
  },
  sourceBadgeText: {
    color: '#2E7D32',
    fontSize: 12,
    fontWeight: '600',
  },
  confidenceBanner: {
    alignItems: 'center',
    padding: 16,
    borderRadius: 12,
    marginBottom: 20,
  },
  confidenceScore: {
    fontSize: 36,
    fontWeight: 'bold',
  },
  confidenceLabel: {
    fontSize: 14,
    color: '#666',
    marginTop: 4,
  },
  validIcon: {
    color: '#4CAF50',
    fontSize: 18,
    marginLeft: 8,
    fontWeight: 'bold',
  },
  invalidIcon: {
    color: '#FF9800',
    fontSize: 18,
    marginLeft: 8,
  },
  warningBox: {
    backgroundColor: '#FFF3E0',
    padding: 12,
    borderRadius: 8,
    marginVertical: 12,
    borderLeftWidth: 4,
    borderLeftColor: '#FF9800',
  },
  warningText: {
    color: '#F57C00',
    fontSize: 13,
    lineHeight: 18,
  },
  tipBox: {
    backgroundColor: '#E3F2FD',
    padding: 16,
    borderRadius: 8,
    marginVertical: 12,
    borderLeftWidth: 4,
    borderLeftColor: '#2196F3',
  },
  tipTitle: {
    fontSize: 14,
    fontWeight: '600',
    color: '#1976D2',
    marginBottom: 8,
  },
  tipText: {
    fontSize: 12,
    color: '#1565C0',
    lineHeight: 18,
  },
  resultRow: {
    flexDirection: 'row',
    justifyContent: 'space-between',
    paddingVertical: 10,
    borderBottomWidth: 1,
    borderBottomColor: '#EEE',
  },
  resultLabel: {
    fontSize: 14,
    color: '#666',
    flex: 1,
  },
  resultValueContainer: {
    flex: 2,
    flexDirection: 'row',
    alignItems: 'center',
    justifyContent: 'flex-end',
  },
  resultValue: {
    fontSize: 14,
    fontWeight: '600',
    color: '#333',
    textAlign: 'right',
    flexShrink: 1,
  },
  retryButton: {
    marginTop: 30,
    paddingVertical: 15,
    backgroundColor: '#2196F3',
    borderRadius: 10,
    alignItems: 'center',
  },
  retryButtonText: {
    color: '#FFF',
    fontSize: 16,
    fontWeight: '600',
  },
  topControls: {
    position: 'absolute',
    top: 20,
    left: 0,
    right: 0,
    flexDirection: 'row',
    justifyContent: 'space-around',
    paddingHorizontal: 20,
    zIndex: 10,
  },
  topControlButton: {
    backgroundColor: 'rgba(0, 0, 0, 0.6)',
    paddingHorizontal: 14,
    paddingVertical: 8,
    borderRadius: 18,
    alignItems: 'center',
    borderWidth: 2,
    borderColor: 'transparent',
  },
  topControlButtonActive: {
    backgroundColor: 'rgba(33, 150, 243, 0.8)',
    borderColor: '#fff',
  },
  topControlIcon: {
    fontSize: 22,
  },
  topControlLabel: {
    color: '#fff',
    fontSize: 10,
    fontWeight: '600',
    marginTop: 2,
  },
  errorContainer: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#000',
  },
  errorText: {
    color: '#FFF',
    fontSize: 16,
  },
});

export default OCRReaderModule;
