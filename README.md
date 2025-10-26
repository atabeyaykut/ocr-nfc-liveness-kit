# 🇹🇷 Turkish ID Card SDK

[![npm version](https://img.shields.io/badge/version-1.0.0-blue.svg)](https://www.npmjs.com/package/@turkiye/kimlik-sdk)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![React Native](https://img.shields.io/badge/React%20Native-0.74.7-61DAFB.svg)](https://reactnative.dev/)
[![TypeScript](https://img.shields.io/badge/TypeScript-Ready-3178C6.svg)](https://www.typescriptlang.org/)

**React Native SDK for Turkish ID card verification with OCR, NFC, and Liveness Detection.**

Complete solution for identity verification in Turkey with support for:
- 📸 **OCR** - Document scanning and text recognition
- 📡 **NFC** - Turkish ID card chip reading  
- 🤳 **Liveness Detection** - Anti-spoofing face verification

---

## 📋 Table of Contents

- [Features](#-features)
- [Installation](#-installation)
- [Quick Start](#-quick-start)
- [Modules](#-modules)
  - [OCR Reader](#ocr-reader)
  - [NFC Reader](#nfc-reader)
  - [Liveness Detection](#liveness-detection)
- [Advanced Features](#-advanced-features)
- [TypeScript Support](#-typescript-support)
- [Platform Requirements](#-platform-requirements)
- [Examples](#-examples)
- [API Reference](#-api-reference)
- [License](#-license)

---

## ✨ Features

### Core Modules
- ✅ **OCR Reader** - ML Kit powered text recognition
  - Turkish ID card support (front & back)
  - Automatic field extraction (TC No, Name, Surname, Birth Date)
  - MRZ (Machine Readable Zone) support
  - Image quality checks (blur, glare, lighting)
  
- ✅ **NFC Reader** - Real chip reading
  - Turkish ID card APDU commands
  - DG1 (MRZ) data extraction
  - ISO-DEP tag support
  - Secure data transmission

- ✅ **Liveness Detection** - Anti-spoofing
  - Real-time face detection
  - Gesture recognition (blink, smile, turn, nod)
  - Voice & text commands (Turkish TTS)
  - Depth & texture analysis

### Enhancement Utilities
- 📊 **Analytics** - Optional event tracking
- 🛡️ **Error Handling** - 26 standardized error codes
- ⚡ **Performance Monitoring** - Metrics and statistics
- 🔐 **Secure Storage** - Keychain/SharedPreferences encryption

### Platform Support
- ✅ **iOS** 14.0+ (Swift native modules)
- ✅ **Android** SDK 26+ (Java/Kotlin native modules)
- ✅ **TypeScript** Full type definitions

---

## 📦 Installation

```bash
npm install @turkiye/kimlik-sdk
# or
yarn add @turkiye/kimlik-sdk
```

### iOS Setup
```bash
cd ios && pod install
```

Add to `Info.plist`:
```xml
<key>NSCameraUsageDescription</key>
<string>Kimlik tarama için kamera erişimi gerekli</string>
<key>NFCReaderUsageDescription</key>
<string>Kimlik kartı okuma için NFC erişimi gerekli</string>
```

### Android Setup

Add to `AndroidManifest.xml`:
```xml
<uses-permission android:name="android.permission.CAMERA" />
<uses-permission android:name="android.permission.NFC" />
```

---

## 🚀 Quick Start

### Basic OCR Scanning

```javascript
import { OCRReader } from '@turkiye/kimlik-sdk';

const reader = new OCRReader({
  cardSide: 'front',
  onSuccess: (data) => {
    console.log('TC No:', data.extractedFields.tcNo);
    console.log('Name:', data.extractedFields.name);
    console.log('Surname:', data.extractedFields.surname);
  },
  onError: (error) => {
    console.error('Error:', error.message);
  }
});

// Start scanning
await reader.startOCR();
```

### Basic NFC Reading

```javascript
import { NFCReader } from '@turkiye/kimlik-sdk';

const nfcReader = new NFCReader({
  alertMessage: 'Kimliğinizi telefonun arkasına yaklaştırın',
  onSuccess: (data) => {
    console.log('TC No:', data.idNumber);
    console.log('Name:', data.name);
    console.log('Birth Date:', data.birthDate);
  }
});

await nfcReader.startNFC();
await nfcReader.readNFCData();
```

### Basic Liveness Test

```javascript
import { LivenessDetector } from '@turkiye/kimlik-sdk';

const detector = new LivenessDetector({
  commands: ['blink', 'smile', 'turn_left'],
  enableVoice: true, // Turkish TTS
  onProgress: (message) => {
    console.log('Progress:', message);
  },
  onSuccess: (result) => {
    console.log('Liveness verified!');
    console.log('Confidence:', result.confidence);
  }
});

await detector.startLivenessTest();
```

---

## 📚 Modules

### OCR Reader

**Full Workflow Example:**

```javascript
import { OCRReader } from '@turkiye/kimlik-sdk';

const scanDocument = async () => {
  const reader = new OCRReader({
    cardSide: 'front',
    language: 'tr',
    confidence: 0.7,
    onSuccess: (data) => {
      console.log('Text:', data.text);
      console.log('Confidence:', data.confidence);
      console.log('Fields:', data.extractedFields);
    }
  });

  // Initialize
  await reader.startOCR();
  
  // Capture image
  const imageUri = await reader.captureImage({
    quality: 0.8,
    flash: 'auto',
    cameraPosition: 'back'
  });
  
  // Extract text
  const result = await reader.extractText(imageUri, {
    enhanceImage: true
  });
  
  return result;
};
```

**Extracted Fields:**
- `tcNo` - Turkish ID number (11 digits)
- `name` - First name
- `surname` - Last name
- `birthDate` - Date of birth
- `documentNo` - Document number

---

### NFC Reader

**Full Example:**

```javascript
import { NFCReader } from '@turkiye/kimlik-sdk';

const readCard = async () => {
  const reader = new NFCReader({
    timeout: 10000,
    alertMessage: 'Lütfen kartınızı yaklaştırın',
    useRealNFC: true,
    onProgress: (message) => {
      console.log(message);
    }
  });

  // Check NFC support
  await reader.startNFC();
  
  // Read data
  const data = await reader.readNFCData();
  
  console.log('Personal Info:', {
    tcNo: data.idNumber,
    name: data.firstName,
    surname: data.lastName,
    birthDate: data.birthDate,
    gender: data.gender
  });
  
  console.log('Document Info:', {
    documentNo: data.documentNumber,
    expiryDate: data.expiryDate,
    nationality: data.nationality
  });
  
  return data;
};
```

**NFC Data Structure:**
```typescript
{
  cardType: string;
  firstName: string;
  lastName: string;
  idNumber: string;      // TC Kimlik No
  birthDate: string;     // DD.MM.YYYY
  birthPlace?: string;
  nationality: string;
  gender: string;        // M/F
  documentNumber: string;
  expiryDate?: string;
  nfcData: {
    uid: string;
    technology: string;
    readTime: string;
  };
  verification: {
    isValid: boolean;
    readMethod: 'NFC_REAL' | 'NFC_MOCK';
  };
}
```

---

### Liveness Detection

**Full Example:**

```javascript
import { LivenessDetector } from '@turkiye/kimlik-sdk';

const performLivenessTest = async () => {
  const detector = new LivenessDetector({
    cameraType: 'front',
    captureQuality: 0.8,
    timeoutDuration: 30000,
    enableFaceDetection: true,
    enableMotionDetection: true,
    commands: ['blink', 'smile', 'turn_left', 'turn_right'],
    enableVoice: true, // Sesli komutlar (TTS)
    
    onInstructionGiven: (event) => {
      console.log('Command:', event.instruction);
      console.log('Message:', event.message);
    },
    
    onProgress: (message) => {
      console.log('Progress:', message);
    },
    
    onSuccess: (result) => {
      console.log('Status:', result.status);
      console.log('Duration:', result.duration);
      console.log('Commands completed:', result.instructions);
      console.log('Confidence:', result.confidence);
    },
    
    onError: (error) => {
      console.error('Liveness failed:', error.message);
    }
  });

  await detector.startLivenessTest();
};
```

**Available Commands:**
- `look_straight` - Düz bakın
- `blink` - Göz kırpın
- `smile` - Gülümseyin
- `turn_left` - Sola dönün
- `turn_right` - Sağa dönün
- `nod` - Baş sallayın

---

## 🔧 Advanced Features

### 1. Analytics (Optional)

```javascript
import { Analytics } from '@turkiye/kimlik-sdk';

// Initialize (opt-in)
Analytics.initialize({
  enabled: true,
  provider: 'firebase', // or 'amplitude', 'console'
  providerInstance: firebaseAnalytics()
});

// Track events
Analytics.trackEvent('OCR', 'scan_success', 'front_side', 0.95);
Analytics.trackPerformance('ocr_processing', 1250);
Analytics.trackError(error, { module: 'OCR' });
```

### 2. Enhanced Error Handling

```javascript
import { ErrorHandler, ERROR_CODES, SDKError } from '@turkiye/kimlik-sdk';

try {
  await reader.extractText(imageUri);
} catch (error) {
  const sdkError = ErrorHandler.createError(
    ERROR_CODES.OCR_IMAGE_TOO_BLURRY,
    error.message
  );
  
  console.log(sdkError.getUserMessage());     // Türkçe mesaj
  console.log(sdkError.getSuggestedAction()); // Çözüm önerisi
  console.log(sdkError.canRetry());           // Retry yapılabilir mi?
}

// Auto retry with backoff
const result = await ErrorHandler.retryOperation(
  () => reader.extractText(imageUri),
  {
    maxRetries: 3,
    delayMs: 1000,
    backoffMultiplier: 2
  }
);
```

**Error Codes:**
- `OCR001` - Camera permission denied
- `OCR002` - Image too blurry
- `OCR003` - Image too dark
- `NFC001` - NFC not supported
- `NFC003` - NFC timeout
- `LIV002` - Face not detected
- ...and 20 more

### 3. Performance Monitoring

```javascript
import { PerformanceMonitor } from '@turkiye/kimlik-sdk';

// Measure async operations
const result = await PerformanceMonitor.measure(
  'ocr_workflow',
  async () => {
    return await reader.startCompleteOCRWorkflow();
  }
);

// Get statistics
const stats = PerformanceMonitor.getStatistics('ocr_workflow');
console.log({
  average: stats.avg,    // 1250ms
  median: stats.p50,     // 1100ms
  p95: stats.p95,        // 2000ms
  count: stats.count     // 50 scans
});

// Memory usage
const memory = PerformanceMonitor.getMemoryUsage();
console.log(`Memory: ${memory.usedPercent}%`);
```

---

## 🎯 TypeScript Support

Full TypeScript definitions included:

```typescript
import { 
  OCRReader, 
  OCRResult, 
  OCROptions,
  NFCReader,
  NFCData,
  LivenessDetector,
  LivenessResult 
} from '@turkiye/kimlik-sdk';

// Type-safe configuration
const options: OCROptions = {
  cardSide: 'front',
  language: 'tr',
  onSuccess: (data: OCRResult) => {
    console.log(data.text);
    console.log(data.confidence);
  }
};

const reader = new OCRReader(options);
```

---

## 📱 Platform Requirements

### iOS
- **Minimum:** iOS 14.0+
- **Xcode:** 14.0+
- **Swift:** 5.0+
- **Frameworks:** Vision, CoreNFC, AVFoundation, Security
- **Physical device required** for NFC testing

### Android
- **Minimum SDK:** 26 (Android 8.0)
- **Target SDK:** 34
- **NDK:** Latest
- **NFC:** Hardware support required

### React Native
- **Version:** 0.74.7
- **Node:** 16.0+
- **npm:** 8.0+

---

## 📖 Examples

### Complete Identity Verification Flow

```javascript
import { OCRReader, NFCReader, LivenessDetector } from '@turkiye/kimlik-sdk';

const verifyIdentity = async () => {
  try {
    // Step 1: OCR - Scan front of ID card
    console.log('Step 1: Scanning ID card...');
    const ocrReader = new OCRReader({ cardSide: 'front' });
    await ocrReader.startOCR();
    const ocrData = await ocrReader.extractText(imageUri);
    
    console.log('OCR Data:', {
      tcNo: ocrData.extractedFields.tcNo,
      name: ocrData.extractedFields.name
    });

    // Step 2: NFC - Read chip data
    console.log('Step 2: Reading NFC chip...');
    const nfcReader = new NFCReader();
    await nfcReader.startNFC();
    const nfcData = await nfcReader.readNFCData();
    
    console.log('NFC Data:', {
      tcNo: nfcData.idNumber,
      birthDate: nfcData.birthDate
    });

    // Step 3: Liveness - Verify person
    console.log('Step 3: Liveness detection...');
    const detector = new LivenessDetector({
      commands: ['blink', 'smile'],
      enableVoice: true
    });
    const livenessResult = await detector.startLivenessTest();
    
    console.log('Liveness:', livenessResult.status);

    // Verify data consistency
    if (ocrData.extractedFields.tcNo === nfcData.idNumber) {
      console.log('✅ Identity verified successfully!');
      return {
        verified: true,
        tcNo: nfcData.idNumber,
        name: nfcData.firstName,
        surname: nfcData.lastName
      };
    } else {
      throw new Error('Data mismatch');
    }

  } catch (error) {
    console.error('Verification failed:', error);
    return { verified: false, error: error.message };
  }
};
```

---

## 📚 API Reference

### OCRReader

```typescript
class OCRReader {
  constructor(options?: OCROptions);
  
  startOCR(options?: OCROptions): Promise<boolean>;
  captureImage(options?: CameraOptions): Promise<string>;
  cropImage(imageUri: string, cropData: CropData): Promise<string>;
  extractText(imageUri: string, options?: OCROptions): Promise<OCRResult>;
  extractField(text: string, fieldType: 'tc_no' | 'name' | 'surname'): string | null;
  
  getStatus(): OCRStatus;
  getLastExtractedText(): OCRResult | null;
  getPerformanceMetrics(): PerformanceMetrics;
  reset(): void;
}
```

### NFCReader

```typescript
class NFCReader {
  constructor(options?: NFCOptions);
  
  startNFC(): Promise<boolean>;
  readNFCData(options?: NFCOptions): Promise<NFCData>;
  stopNFC(): Promise<void>;
  
  getStatus(): NFCStatus;
  getLastReadData(): NFCData | null;
}
```

### LivenessDetector

```typescript
class LivenessDetector {
  constructor(config?: LivenessConfig);
  
  startLivenessTest(options?: LivenessOptions): Promise<boolean>;
  stopLivenessTest(): Promise<void>;
  
  getStatus(): LivenessStatus;
  getCapturedImagesCount(): number;
  reset(): void;
}
```

---

## 🔒 Security

- ✅ **Keychain/SharedPreferences** encryption for sensitive data
- ✅ **Token-based** PII protection (no personal data in bridge)
- ✅ **5-minute TTL** for cached sensitive information
- ✅ **One-time token** usage for secure data retrieval
- ✅ **Anti-spoofing** depth and texture analysis

---

## 🐛 Error Handling

All errors include:
- **Code**: Standardized error code (e.g., `OCR002`)
- **Message**: Turkish user-friendly message
- **Suggestion**: Actionable solution
- **Retryable**: Boolean flag indicating if operation can be retried

```javascript
catch (error) {
  if (error instanceof SDKError) {
    console.log('Code:', error.code);
    console.log('Message:', error.getUserMessage());
    console.log('Solution:', error.getSuggestedAction());
    console.log('Can retry:', error.canRetry());
  }
}
```

---

## 📄 License

MIT License - see LICENSE file for details

---

## 👥 Support

For issues and questions:
- GitHub Issues: [github.com/atabeyaykut/ocr/issues](https://github.com/atabeyaykut/ocr/issues)
- Email: support@example.com

---

## 🙏 Acknowledgments

Built with:
- [@react-native-ml-kit/text-recognition](https://www.npmjs.com/package/@react-native-ml-kit/text-recognition)
- [@react-native-ml-kit/face-detection](https://www.npmjs.com/package/@react-native-ml-kit/face-detection)
- [react-native-nfc-manager](https://www.npmjs.com/package/react-native-nfc-manager)
- [react-native-vision-camera](https://www.npmjs.com/package/react-native-vision-camera)
- [react-native-tts](https://www.npmjs.com/package/react-native-tts)

---

**Made with ❤️ for Turkish Identity Verification**
