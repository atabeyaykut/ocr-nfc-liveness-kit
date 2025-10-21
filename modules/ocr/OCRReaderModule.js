/**
 * OCR Reader Module
 * Kimlik kartı okuma modülü - Gerçek veri ile çalışır
 * Android 11 uyumlu
 */

import React, { useState, useRef, useCallback } from 'react';
import {
  View,
  Text,
  StyleSheet,
  TouchableOpacity,
  Alert,
  ActivityIndicator,
  Image,
  Dimensions,
  StatusBar,
  Platform,
  ScrollView,
} from 'react-native';
import { Camera, useCameraDevice } from 'react-native-vision-camera';
import ImageCropPicker from 'react-native-image-crop-picker';
import TextRecognition from '@react-native-ml-kit/text-recognition';
import RNFS from 'react-native-fs';
import { check, request, PERMISSIONS, RESULTS } from 'react-native-permissions';
import ImageResizer from '@bam.tech/react-native-image-resizer';

const { width: screenWidth, height: screenHeight } = Dimensions.get('window');

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
};

// MRZ Patterns for Turkish ID Card (back side)
// Format: IDTUR<document><surname><<names<<<<<
//         <TC_NO><check><nationality><birthdate><check><sex><expiry><check><<<<<
const MRZ_PATTERNS = {
  // Line 1: IDTUR or variants (OCR might confuse I with 1, D with O)
  LINE1: /[I1][<DO0]TUR([A-Z0-9<]{30,})/,
  // Line 2: TC No (11 digits) + check + nationality + dates + gender
  LINE2: /(\d{11})(\d)([A-Z]{3})(\d{6})(\d)([MF<])(\d{6})(\d)/,
  // More flexible - allow some OCR errors
  LINE2_FLEXIBLE: /(\d{10,11}).*?([A-Z]{3}).*?(\d{6}).*?([MF]).*?(\d{6})/,
};

// Parse MRZ (Machine Readable Zone) from back of ID card
const parseMRZ = (text) => {
  try {
    const lines = text.split('\n').map(line => line.trim());
    
    for (let i = 0; i < lines.length - 1; i++) {
      const line1Match = lines[i].match(MRZ_PATTERNS.LINE1);
      let line2Match = lines[i + 1].match(MRZ_PATTERNS.LINE2);
      
      // Fallback to flexible pattern if strict pattern fails
      if (line1Match && !line2Match) {
        line2Match = lines[i + 1].match(MRZ_PATTERNS.LINE2_FLEXIBLE);
        if (line2Match) {
          console.log('[OCR] Using flexible MRZ pattern');
        }
      }
      
      if (line1Match && line2Match) {
        // Parse surname and names from line 1
        const namesData = line1Match[1];
        const nameParts = namesData.split('<<');
        const surname = nameParts[0].replace(/</g, ' ').trim();
        const name = nameParts[1] ? nameParts[1].replace(/</g, ' ').trim() : '';
        
        // Parse data from line 2
        const tcNo = line2Match[1];
        const nationality = line2Match[3];
        const birthDate = line2Match[4]; // YYMMDD
        const gender = line2Match[6] === 'M' ? 'Erkek' : line2Match[6] === 'F' ? 'Kadın' : '';
        const expiryDate = line2Match[7]; // YYMMDD
        
        // Convert dates to DD.MM.YYYY format
        const formatMRZDate = (yymmdd) => {
          const yy = yymmdd.substring(0, 2);
          const mm = yymmdd.substring(2, 4);
          const dd = yymmdd.substring(4, 6);
          const year = parseInt(yy) > 50 ? `19${yy}` : `20${yy}`;
          return `${dd}.${mm}.${year}`;
        };
        
        return {
          tcNo,
          name: name.toUpperCase(),
          surname: surname.toUpperCase(),
          birthDate: formatMRZDate(birthDate),
          validUntil: formatMRZDate(expiryDate),
          gender,
          nationality,
          source: 'MRZ',
        };
      }
    }
    
    return null;
  } catch (error) {
    console.warn('MRZ parsing error:', error);
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
  constructor() {
    this.callbacks = {};
  }

  // API Methods
  startOCR = (options = {}) => {
    const defaultOptions = {
      language: 'tr',
      cropHints: true,
      quality: 'high',
      cardType: 'tc_kimlik',
      enableFlash: false,
    };
    
    this.options = { ...defaultOptions, ...options };
    
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
      
      // Remove file:// prefix for ImageResizer
      const nativePath = imagePath.replace('file://', '');
      
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
      
      console.log('[OCR] Image pre-processed:', processedImage.uri);
      return processedImage.uri;
    } catch (error) {
      console.warn('[OCR] Pre-processing failed, using original:', error.message);
      return imagePath;
    }
  };

  checkImageQuality = async (imagePath) => {
    try {
      // Check file size as a basic quality indicator
      const stats = await RNFS.stat(imagePath.replace('file://', ''));
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

  // Processing Methods with multi-attempt
  processImage = async (imagePath) => {
    try {
      console.log('[OCR] processImage called with:', imagePath);
      
      // Step 1: Check image quality
      console.log('[OCR] Checking image quality...');
      const qualityCheck = await this.checkImageQuality(imagePath);
      if (!qualityCheck.isGood) {
        throw new Error(qualityCheck.reason);
      }
      
      // Step 2: Try multiple preprocessing strategies
      console.log('[OCR] Attempting OCR with multiple strategies...');
      const strategies = [
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
          const nativePath = imagePath.replace('file://', '');
          console.log(`[OCR] Native path for ImageResizer:`, nativePath);
          
          console.log(`[OCR] Calling ImageResizer with strategy:`, strategy);
          const processedImage = await ImageResizer.createResizedImage(
            nativePath,
            strategy.maxWidth,
            strategy.maxHeight,
            'JPEG',
            strategy.quality,
            0,
            null,
            false,
            { mode: 'contain', onlyScaleDown: true }
          );
          console.log(`[OCR] ImageResizer completed:`, processedImage.uri);
          
          // Text recognition - ML Kit accepts file:// URI
          console.log(`[OCR] Calling ML Kit TextRecognition with:`, processedImage.uri);
          
          let result;
          try {
            // ML Kit Text Recognition returns { text, blocks }
            const mlKitResult = await TextRecognition.recognize(processedImage.uri);
            result = mlKitResult.text; // Extract text string
            console.log(`[OCR] ML Kit TextRecognition completed, text length:`, result?.length || 0);
          } catch (textRecError) {
            console.error(`[OCR] ML Kit TextRecognition FAILED:`, textRecError.message);
            console.error(`[OCR] Error stack:`, textRecError.stack);
            
            // Try with native path as fallback
            try {
              const nativeTextPath = processedImage.uri.replace('file://', '');
              console.log(`[OCR] Retry with native path:`, nativeTextPath);
              const mlKitResult = await TextRecognition.recognize(nativeTextPath);
              result = mlKitResult.text;
              console.log(`[OCR] ML Kit TextRecognition (native path) completed`);
            } catch (fallbackError) {
              console.error(`[OCR] Fallback also failed:`, fallbackError.message);
              throw new Error('Text recognition failed');
            }
          }
          
          if (result && result.length > 0) {
            // Parse and calculate confidence
            const parsedFields = this.parseIDFields(result);
            const confidence = this.calculateConfidence(parsedFields);
            
            console.log(`[OCR] Attempt ${i + 1} confidence: ${confidence}%`);
            
            if (confidence > bestConfidence) {
              bestResult = { text: result, fields: parsedFields };
              bestConfidence = confidence;
            }
            
            // If we get a good result (>70%), stop trying
            if (confidence > 70) {
              console.log('[OCR] Good result achieved, stopping attempts');
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
        const nativePath = imagePath.replace('file://', '');
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
    }
  };

  parseIDFields = (text) => {
    const fields = {};
    const validationResults = {};

    // Try MRZ parsing first (more accurate)
    const mrzData = parseMRZ(text);
    if (mrzData) {
      console.log('[OCR] MRZ data found:', mrzData);
      // MRZ data is highly accurate, mark all as valid
      Object.keys(mrzData).forEach(key => {
        if (key !== 'source' && key !== 'nationality') {
          fields[key] = mrzData[key];
          validationResults[key] = 'valid';
        }
      });
      fields.source = 'MRZ (Arka Yüz)';
      fields.validation = validationResults;
      return fields;
    }

    // Fallback to regular OCR parsing (front side)
    console.log('[OCR] No MRZ found, using regular OCR parsing');
    
    // Split text into lines for easier parsing
    const lines = text.split('\n').map(line => line.trim()).filter(line => line.length > 0);

    // TC Kimlik No - Try to find valid TC number
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
    
    // Line-by-line parsing for better accuracy
    for (let i = 0; i < lines.length; i++) {
      const line = lines[i];
      const nextLine = i + 1 < lines.length ? lines[i + 1] : '';
      
      // Soyad - line after "Soyadi" or "Surname"
      if (/Soyad[iı]?\s*\/?\s*Surname/i.test(line) && nextLine) {
        const surname = nextLine.replace(/[^A-ZÇĞİÖŞÜ\s]/g, '').trim();
        if (surname && VALIDATORS.validateName(surname)) {
          fields.surname = surname;
          validationResults.surname = 'valid';
        }
      }
      
      // Ad - line after "Adi" or "Given Name"
      if (/Ad[iı]?\s*\/?\s*Given\s*Name/i.test(line) && nextLine) {
        const name = nextLine.replace(/[^A-ZÇĞİÖŞÜ\s]/g, '').trim();
        if (name && VALIDATORS.validateName(name)) {
          fields.name = name;
          validationResults.name = 'valid';
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
      if (/Cinsiyet|Gender/i.test(line)) {
        // Check current line, next line, and line after
        const searchText = line + ' ' + nextLine + ' ' + (i + 2 < lines.length ? lines[i + 2] : '');
        const genderMatch = searchText.match(/\b(E\/M|M\/F|E|M|K|F)\b/);
        if (genderMatch) {
          const g = genderMatch[1].toUpperCase();
          fields.gender = (g === 'E' || g === 'M' || g === 'E/M') ? 'Erkek' : 'Kadın';
          validationResults.gender = 'valid';
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
        const validMatch = (line + ' ' + nextLine).match(/(\d{2})[\.\/\-](\d{2})[\.\/\-](\d{4})/);
        if (validMatch) {
          const validUntil = `${validMatch[1]}.${validMatch[2]}.${validMatch[3]}`;
          if (VALIDATORS.validateDate(validUntil)) {
            fields.validUntil = validUntil;
            validationResults.validUntil = 'valid';
          }
        }
      }
    }

    // Regex-based fallback for missed fields (only if not found by line parsing)
    if (!fields.name) {
      const nameMatch = text.match(ID_PATTERNS.NAME);
      if (nameMatch && nameMatch[1]) {
        const name = nameMatch[1].trim().toUpperCase().replace(/[^A-ZÇĞİÖŞÜ\s]/g, '');
        if (name && VALIDATORS.validateName(name)) {
          fields.name = name;
          validationResults.name = 'valid';
        }
      }
    }
    
    if (!fields.surname) {
      const surnameMatch = text.match(ID_PATTERNS.SURNAME);
      if (surnameMatch && surnameMatch[1]) {
        const surname = surnameMatch[1].trim().toUpperCase().replace(/[^A-ZÇĞİÖŞÜ\s]/g, '');
        if (surname && VALIDATORS.validateName(surname)) {
          fields.surname = surname;
          validationResults.surname = 'valid';
        }
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
}

// React Component for OCR UI
export const OCRReaderScreen = ({ navigation, route }) => {
  const [isProcessing, setIsProcessing] = useState(false);
  const [flashMode, setFlashMode] = useState('off'); // 'off', 'on', 'auto'
  const [torchEnabled, setTorchEnabled] = useState(false);
  const [previewImage, setPreviewImage] = useState(null);
  const [ocrResult, setOcrResult] = useState(null);
  const [isCameraActive, setIsCameraActive] = useState(false);
  const [awaitingConfirmation, setAwaitingConfirmation] = useState(false);
  const [cardDetected, setCardDetected] = useState(false);
  const [autoCapture, setAutoCapture] = useState(false); // Manuel mod - kart algılama yok
  const [detectionHint, setDetectionHint] = useState('Kimlik kartını çerçeve içine yerleştirin');
  const cameraRef = useRef(null);
  const device = useCameraDevice('back');
  const ocrModule = useRef(new OCRReaderModule()).current;
  const detectionTimeoutRef = useRef(null);

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
        console.log('[OCR] onOCRResult callback triggered');
        setOcrResult(result);
        setIsProcessing(false);
        setIsCameraActive(false);
        
        // Otomatik dosyaya kaydet
        console.log('[OCR] Calling saveResultsToFile...');
        saveResultsToFile(result).then(() => {
          console.log('[OCR] saveResultsToFile completed');
        }).catch((err) => {
          console.error('[OCR] saveResultsToFile error:', err);
        });
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
  }, [navigation, ocrResult]);

  const checkCameraPermission = async () => {
    const result = await check(PERMISSIONS.ANDROID.CAMERA);
    
    if (result !== RESULTS.GRANTED) {
      const requestResult = await request(PERMISSIONS.ANDROID.CAMERA);
      if (requestResult !== RESULTS.GRANTED) {
        Alert.alert(
          'Kamera İzni Gerekli',
          'OCR özelliğini kullanabilmek için kamera izni vermeniz gerekiyor.',
          [{ text: 'Tamam', onPress: () => navigation.goBack() }]
        );
      }
    }
  };

  const takePicture = async (isAuto = false) => {
    if (cameraRef.current && !isProcessing && !awaitingConfirmation) {
      setIsProcessing(true);
      setDetectionHint(isAuto ? 'Otomatik çekim yapılıyor...' : 'Fotoğraf çekiliyor...');
      
      try {
        console.log('[OCR] Step 1: Taking picture...');
        const data = await cameraRef.current.takePhoto({
          quality: 90,
          flash: flashMode,
          skipMetadata: true,
          enableAutoStabilization: false,
          enableAutoRedEyeReduction: false,
        });
        const photoUri = `file://${data.path}`;
        console.log('[OCR] Step 2: Picture taken successfully:', photoUri);
        setPreviewImage(photoUri);
        setIsCameraActive(false);
        setIsProcessing(false);
        setAwaitingConfirmation(true);
        setDetectionHint('Fotoğrafı kontrol edin ve "Oku" butonuna basın');
      } catch (error) {
        console.error('[OCR] ERROR:', error);
        console.error('[OCR] Error details:', error.message, error.stack);
        Alert.alert('Hata', `Fotoğraf çekme hatası: ${error.message}`);
        setIsProcessing(false);
        setDetectionHint('Kimlik kartını çerçeve içine yerleştirin');
      }
    }
  };
  
  const confirmAndProcessOCR = async () => {
    if (!previewImage || isProcessing) return;
    
    setIsProcessing(true);
    setAwaitingConfirmation(false);
    setDetectionHint('OCR işlemi yapılıyor...');
    
    try {
      console.log('[OCR] Step 3: Starting OCR processing...');
      ocrModule.startOCR({ includeImage: true });
      
      console.log('[OCR] Step 4: Calling processImage...');
      const result = await ocrModule.processImage(previewImage);
      console.log('[OCR] Step 5: OCR Complete! Result:', JSON.stringify(result, null, 2));
    } catch (error) {
      console.error('[OCR] ERROR:', error);
      console.error('[OCR] Error details:', error.message, error.stack);
      Alert.alert('Hata', `OCR işleme hatası: ${error.message}`);
      setIsProcessing(false);
      setIsCameraActive(true);
      setPreviewImage(null);
      setAwaitingConfirmation(false);
      setDetectionHint('Kimlik kartını çerçeve içine yerleştirin');
    }
  };
  
  const retakePicture = () => {
    setPreviewImage(null);
    setAwaitingConfirmation(false);
    setIsCameraActive(true);
    setDetectionHint('Kimlik kartını çerçeve içine yerleştirin');
  };

  // Auto-capture effect - triggers after card is stable
  // TODO: Implement real card detection with edge detection or ML Kit object detection
  React.useEffect(() => {
    if (autoCapture && cardDetected && isCameraActive && !isProcessing && !ocrResult) {
      // Card detected and stable, schedule auto-capture
      setDetectionHint('Kart algılandı! 2 saniye sabit tutun...');
      
      detectionTimeoutRef.current = setTimeout(() => {
        setDetectionHint('Otomatik çekim yapılıyor...');
        takePicture(true);
      }, 2000);
      
      return () => {
        if (detectionTimeoutRef.current) {
          clearTimeout(detectionTimeoutRef.current);
        }
      };
    }
  }, [autoCapture, cardDetected, isCameraActive, isProcessing, ocrResult]);

  const selectFromGallery = async () => {
    try {
      const image = await ImageCropPicker.openPicker({
        width: 1200,
        height: 800,
        cropping: true,
        cropperToolbarTitle: 'Kimlik Kartını Kırpın',
        cropperChooseText: 'Seç',
        cropperCancelText: 'İptal',
      });

      setPreviewImage(image.path);
      setIsCameraActive(false);
      setAwaitingConfirmation(true);
      setDetectionHint('Fotoğrafı kontrol edin ve "Oku" butonuna basın');
      
    } catch (error) {
      if (error.code !== 'E_PICKER_CANCELLED') {
        Alert.alert('Hata', 'Görsel seçilemedi.');
      }
    }
  };

  const retryOCR = () => {
    setOcrResult(null);
    setPreviewImage(null);
    setIsCameraActive(true);
  };

  const saveResultsToFile = async (result) => {
    console.log('[OCR] saveResultsToFile CALLED');
    console.log('[OCR] Result object:', JSON.stringify(result, null, 2));
    
    try {
      const timestamp = new Date().toISOString().replace(/[:.]/g, '-');
      const fileName = `OCR_Result_${timestamp}.txt`;
      const filePath = `${RNFS.DocumentDirectoryPath}/${fileName}`;
      
      console.log('[OCR] Preparing to save to:', filePath);
      
      let content = '=== OCR SONUÇLARI ===\n\n';
      content += `Tarih: ${new Date().toLocaleString('tr-TR')}\n`;
      content += `Güven Skoru: %${result.confidence}\n`;
      if (result.fields.source) {
        content += `Kaynak: ${result.fields.source}\n`;
      }
      content += '\n--- BULUNAN ALANLAR ---\n\n';
      
      const fields = result.fields;
      if (fields.tcNo) content += `TC Kimlik No: ${fields.tcNo}\n`;
      if (fields.name) content += `Ad: ${fields.name}\n`;
      if (fields.surname) content += `Soyad: ${fields.surname}\n`;
      if (fields.birthDate) content += `Doğum Tarihi: ${fields.birthDate}\n`;
      if (fields.gender) content += `Cinsiyet: ${fields.gender}\n`;
      if (fields.nationality) content += `Uyruk: ${fields.nationality}\n`;
      if (fields.serialNo) content += `Seri No: ${fields.serialNo}\n`;
      if (fields.validUntil) content += `Geçerlilik: ${fields.validUntil}\n`;
      
      content += '\n--- DOĞRULAMA DURUMU ---\n\n';
      const validation = fields.validation || {};
      Object.keys(validation).forEach(key => {
        const status = validation[key] === 'valid' ? '✓ Geçerli' : '⚠ Geçersiz';
        content += `${key}: ${status}\n`;
      });
      
      content += '\n--- HAM METİN ---\n\n';
      content += result.text;
      
      console.log('[OCR] Content length:', content.length, 'characters');
      console.log('[OCR] Calling RNFS.writeFile...');
      
      await RNFS.writeFile(filePath, content, 'utf8');
      
      console.log('[OCR] ✅ File successfully saved to:', filePath);
      
      Alert.alert(
        'Sonuçlar Kaydedildi',
        `Dosya: ${fileName}\n\nKonum: ${filePath}`,
        [{ text: 'Tamam' }]
      );
      
      return filePath;
    } catch (error) {
      console.error('[OCR] ❌ FAILED to save results:', error);
      console.error('[OCR] Error message:', error.message);
      console.error('[OCR] Error stack:', error.stack);
      Alert.alert('Hata', 'Sonuçlar kaydedilemedi: ' + error.message);
    }
  };

  const renderOverlay = () => (
    <View style={styles.overlay}>
      <View style={styles.overlayTop}>
        <Text style={[
          styles.instructionText,
          cardDetected && styles.instructionTextSuccess
        ]}>
          {detectionHint}
        </Text>
        {cardDetected && <Text style={styles.checkmark}>✓</Text>}
      </View>
      
      <View style={styles.overlayMiddle}>
        <View style={styles.overlayLeft} />
        
        <View style={[
          styles.frameContainer,
          cardDetected ? styles.frameContainerDetected : styles.frameContainerNotDetected
        ]}>
          <View style={[
            styles.corner, 
            styles.cornerTopLeft,
            cardDetected ? styles.cornerDetected : styles.cornerNotDetected
          ]} />
          <View style={[
            styles.corner, 
            styles.cornerTopRight,
            cardDetected ? styles.cornerDetected : styles.cornerNotDetected
          ]} />
          <View style={[
            styles.corner, 
            styles.cornerBottomLeft,
            cardDetected ? styles.cornerDetected : styles.cornerNotDetected
          ]} />
          <View style={[
            styles.corner, 
            styles.cornerBottomRight,
            cardDetected ? styles.cornerDetected : styles.cornerNotDetected
          ]} />
        </View>
        
        <View style={styles.overlayRight} />
      </View>
      
      <View style={styles.overlayBottom}>
        <Text style={styles.hintText}>
          {autoCapture 
            ? '🤖 Otomatik çekim: AÇIK'
            : '📷 Manuel çekim: Butona basın'}
        </Text>
        <Text style={styles.hintTextSmall}>
          • Kartın tamamı görünür olmalı{'\n'}
          • Yeterli ışık olduğundan emin olun{'\n'}
          • Yansıma ve gölge olmamasına dikkat edin
        </Text>
      </View>
    </View>
  );

  const renderResultField = (label, value, validationStatus) => {
    if (!value) return null;
    
    return (
      <View style={styles.resultRow}>
        <Text style={styles.resultLabel}>{label}:</Text>
        <View style={styles.resultValueContainer}>
          <Text style={styles.resultValue} numberOfLines={1} ellipsizeMode="tail">
            {value}
          </Text>
          {validationStatus === 'valid' && <Text style={styles.validIcon}>✓</Text>}
          {validationStatus === 'invalid' && <Text style={styles.invalidIcon}>⚠</Text>}
        </View>
      </View>
    );
  };

  const renderResult = () => {
    if (!ocrResult) return null;
    
    const validation = ocrResult.fields.validation || {};
    const hasInvalidFields = Object.values(validation).some(v => v === 'invalid');

    return (
      <ScrollView style={styles.resultContainer} contentContainerStyle={styles.resultContent}>
        <Text style={styles.resultTitle}>OCR Sonuçları</Text>
        
        {ocrResult.fields.source && (
          <View style={styles.sourceBadge}>
            <Text style={styles.sourceBadgeText}>
              {ocrResult.fields.source}
            </Text>
          </View>
        )}
        
        <View style={[
          styles.confidenceBanner,
          { backgroundColor: ocrResult.confidence > 70 ? '#E8F5E9' : '#FFF3E0' }
        ]}>
          <Text style={[
            styles.confidenceScore,
            { color: ocrResult.confidence > 70 ? '#4CAF50' : '#FF9800' }
          ]}>
            %{ocrResult.confidence}
          </Text>
          <Text style={styles.confidenceLabel}>Güven Skoru</Text>
        </View>
        
        {renderResultField('TC Kimlik No', ocrResult.fields.tcNo, validation.tcNo)}
        {renderResultField('Ad', ocrResult.fields.name, validation.name)}
        {renderResultField('Soyad', ocrResult.fields.surname, validation.surname)}
        {renderResultField('Doğum Tarihi', ocrResult.fields.birthDate, validation.birthDate)}
        {renderResultField('Cinsiyet', ocrResult.fields.gender, validation.gender)}
        {renderResultField('Uyruk', ocrResult.fields.nationality, validation.nationality)}
        {renderResultField('Seri No', ocrResult.fields.serialNo, validation.serialNo)}
        {renderResultField('Geçerlilik', ocrResult.fields.validUntil, validation.validUntil)}
        
        {hasInvalidFields && (
          <View style={styles.warningBox}>
            <Text style={styles.warningText}>
              ⚠ Bazı alanlar doğrulanamadı. Lütfen verileri kontrol edin.
            </Text>
          </View>
        )}
        
        {ocrResult.confidence < 70 && (
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

  if (awaitingConfirmation && previewImage) {
    return (
      <View style={styles.container}>
        <Image source={{ uri: previewImage }} style={styles.previewImageFull} />
        
        <View style={styles.confirmationOverlay}>
          <Text style={styles.confirmationText}>{detectionHint}</Text>
          
          <View style={styles.confirmationButtons}>
            <TouchableOpacity style={styles.retakeButton} onPress={retakePicture}>
              <Text style={styles.retakeButtonText}>🔄 Tekrar Çek</Text>
            </TouchableOpacity>
            
            <TouchableOpacity style={styles.confirmButton} onPress={confirmAndProcessOCR}>
              <Text style={styles.confirmButtonText}>✓ Oku</Text>
            </TouchableOpacity>
          </View>
        </View>
      </View>
    );
  }
  
  if (ocrResult) {
    return (
      <View style={styles.container}>
        {previewImage && (
          <Image source={{ uri: previewImage }} style={styles.previewImage} />
        )}
        {renderResult()}
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
            photo={true}
            torch={torchEnabled ? 'on' : 'off'}
            exposure={0}
            enableZoomGesture={false}
            videoStabilizationMode="off"
            enableAutoStabilization={false}
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
            
            <TouchableOpacity
              style={[styles.topControlButton, autoCapture && styles.topControlButtonActive]}
              onPress={() => {
                setAutoCapture(!autoCapture);
                setCardDetected(false); // Reset detection
              }}
            >
              <Text style={styles.topControlIcon}>🤖</Text>
              <Text style={styles.topControlLabel}>
                {autoCapture ? 'Oto' : 'Manuel'}
              </Text>
            </TouchableOpacity>
          </View>
          
          <View style={styles.controls}>
            <TouchableOpacity
              style={[styles.captureButton, isProcessing && styles.captureButtonDisabled]}
              onPress={takePicture}
              disabled={isProcessing}
            >
              {isProcessing ? (
                <ActivityIndicator color="#FFF" size="large" />
              ) : (
                <View style={styles.captureButtonInner} />
              )}
            </TouchableOpacity>
            
            <TouchableOpacity
              style={styles.galleryButton}
              onPress={selectFromGallery}
            >
              <Text style={styles.galleryButtonText}>📷</Text>
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
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#000',
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
    backgroundColor: '#AAA',
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
