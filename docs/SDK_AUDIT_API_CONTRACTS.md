# SDK API Sözleşmeleri ve Hata Kodları

**Versiyon:** 1.0.0  
**Tarih:** 2025-10-16

---

## 📋 İçindekiler

1. [OCR API](#1-ocr-api)
2. [NFC API](#2-nfc-api)
3. [Liveness API](#3-liveness-api)
4. [Hata Kodları](#4-hata-kodlari)
5. [Event System](#5-event-system)

---

## 1. OCR API

### 1.1 `OCRReader.scan()`

**Kullanım:**
```typescript
import { OCRReader } from 'mobile-sdk-ocr-nfc-liveness';

const ocrReader = new OCRReader({
  onSuccess: (result) => console.log('OCR başarılı', result),
  onError: (error) => console.error('OCR hatası', error),
  onProgress: (progress) => console.log('İlerleme', progress),
});

const result = await ocrReader.scan();
```

**Response Schema:**
```typescript
interface OCRResult {
  status: 'SUCCESS' | 'FAILED' | 'LOW_CONFIDENCE' | 'RETRY_REQUIRED';
  sessionToken?: string;  // PII native'de, sadece token döner
  confidence: number;      // 0.0 - 1.0
  fields?: {
    tcNo: { value: string; confidence: number };
    name: { value: string; confidence: number };
    surname: { value: string; confidence: number };
    birthDate: { value: string; confidence: number };
    documentNo: { value: string; confidence: number };
  };
  metadata: {
    processingTime: number;  // milliseconds
    imageQuality: number;    // 0.0 - 1.0
    hasGlare: boolean;
    isBlurry: boolean;
    lightingCondition: 'GOOD' | 'LOW' | 'HIGH';
  };
  errorCode?: string;      // OCR_001, OCR_002, vs.
  errorMessage?: string;
}
```

**Hata Durumları:**
| Kod | Açıklama | Retry? |
|-----|----------|--------|
| `OCR_001` | Düşük güven skoru (<85%) | ✅ Evet |
| `OCR_002` | Çok karanlık görüntü | ✅ Evet |
| `OCR_003` | Parlama (glare) tespit edildi | ✅ Evet |
| `OCR_004` | Bulanık görüntü | ✅ Evet |
| `OCR_005` | TC No formatı geçersiz | ✅ Evet |
| `OCR_006` | Timeout (>30s) | ✅ Evet |
| `OCR_007` | Kamera izni yok | ❌ Hayır (ayarlar) |
| `OCR_008` | Bellek yetersiz | ❌ Hayır |

**Örnek Kullanım (Kotlin):**
```kotlin
// Android Native Module
import com.facebook.react.bridge.*

@ReactModule(name = "OCRModule")
class OCRModule(reactContext: ReactApplicationContext) : 
    ReactContextBaseJavaModule(reactContext) {
    
    @ReactMethod
    fun scan(promise: Promise) {
        try {
            val ocrResult = ocrEngine.recognize(currentImage)
            
            if (ocrResult.confidence < 0.85) {
                promise.reject(
                    "OCR_001",
                    "Low confidence score: ${ocrResult.confidence}",
                    null
                )
                return
            }
            
            // Session token oluştur
            val token = UUID.randomUUID().toString()
            secureStorage.save(token, ocrResult, ttl = 300_000)
            
            val response = Arguments.createMap().apply {
                putString("status", "SUCCESS")
                putString("sessionToken", token)
                putDouble("confidence", ocrResult.confidence)
                putMap("metadata", createMetadata(ocrResult))
            }
            
            promise.resolve(response)
            
        } catch (e: Exception) {
            promise.reject("OCR_999", "Unexpected error: ${e.message}", e)
        }
    }
}
```

---

## 2. NFC API

### 2.1 `NFCReader.read()`

**Kullanım:**
```typescript
import { NFCReader } from 'mobile-sdk-ocr-nfc-liveness';

const nfcReader = new NFCReader({
  onSuccess: (result) => console.log('NFC başarılı', result),
  onError: (error) => console.error('NFC hatası', error),
  onTagDetected: () => console.log('Kart algılandı'),
});

const result = await nfcReader.read({ timeout: 10000 });
```

**Response Schema:**
```typescript
interface NFCResult {
  status: 'SUCCESS' | 'FAILED' | 'TIMEOUT' | 'INVALID_CHIP';
  sessionToken?: string;   // PII native'de
  isValid: boolean;        // Chip signature doğru mu?
  chipType: 'ISO_14443_A' | 'ISO_14443_B' | 'ISO_15693';
  dataGroups: {
    dg1: boolean;  // MRZ read edildi mi?
    dg2: boolean;  // Photo read edildi mi?
    dg11?: boolean;
  };
  metadata: {
    readTime: number;      // milliseconds
    retryCount: number;
    signatureValid: boolean;
    countryCode?: string;
  };
  errorCode?: string;
  errorMessage?: string;
}
```

**Hata Durumları:**
| Kod | Açıklama | Retry? |
|-----|----------|--------|
| `NFC_001` | Timeout (10s aşıldı) | ✅ Evet |
| `NFC_002` | Kart algılanamadı | ✅ Evet |
| `NFC_003` | Okuma hatası (RF noise) | ✅ Evet |
| `NFC_004` | Chip signature geçersiz | ❌ Hayır |
| `NFC_005` | Desteklenmeyen kart tipi | ❌ Hayır |
| `NFC_006` | NFC donanım yok | ❌ Hayır |
| `NFC_007` | NFC kapalı | ❌ Hayır (ayarlar) |
| `NFC_008` | iOS background session desteklenmiyor | ❌ Hayır |

**Örnek Kullanım (Swift):**
```swift
// iOS Native Module
import CoreNFC

@objc(NFCModule)
class NFCModule: NSObject, RCTBridgeModule {
    
    static func moduleName() -> String { "NFCModule" }
    
    @objc func read(
        _ options: NSDictionary,
        resolve: @escaping RCTPromiseResolveBlock,
        reject: @escaping RCTPromiseRejectBlock
    ) {
        guard NFCReaderSession.readingAvailable else {
            reject("NFC_006", "NFC not available on this device", nil)
            return
        }
        
        let timeout = options["timeout"] as? TimeInterval ?? 10.0
        
        nfcSession = NFCTagReaderSession(
            pollingOption: .iso14443,
            delegate: self,
            queue: nil
        )
        
        nfcSession?.alertMessage = "Kartınızı telefonun arkasına yaklaştırın"
        nfcSession?.begin()
        
        // Timeout handler
        DispatchQueue.main.asyncAfter(deadline: .now() + timeout) {
            if self.nfcSession?.isReady == true {
                reject("NFC_001", "NFC read timeout", nil)
                self.nfcSession?.invalidate()
            }
        }
    }
}
```

---

## 3. LIVENESS API

### 3.1 `LivenessDetector.start()`

**Kullanım:**
```typescript
import { LivenessDetector } from 'mobile-sdk-ocr-nfc-liveness';

const detector = new LivenessDetector({
  onSuccess: (result) => console.log('Liveness başarılı', result),
  onError: (error) => console.error('Liveness hatası', error),
  onProgress: (progress) => console.log('İlerleme', progress),
  onChallenge: (challenge) => console.log('Komut', challenge),
});

const result = await detector.start({
  challengeCount: 5,
  difficulty: 'MEDIUM',
  timeout: 60000,
});
```

**Response Schema:**
```typescript
interface LivenessResult {
  status: 'SUCCESS' | 'FAILED' | 'SPOOFED' | 'TIMEOUT';
  sessionToken?: string;
  isLive: boolean;
  confidence: number;       // 0.0 - 1.0
  challenges: {
    type: 'BLINK' | 'TURN_LEFT' | 'TURN_RIGHT' | 'SMILE' | 'NOD';
    completed: boolean;
    confidence: number;
    timestamp: number;
  }[];
  antiSpoofing: {
    deepfakeScore: number;  // 0.0 - 1.0 (higher = more likely fake)
    screenReplayScore: number;
    textureScore: number;
    motionScore: number;
  };
  metadata: {
    duration: number;       // milliseconds
    frameCount: number;
    avgFPS: number;
    faceQuality: number;
  };
  errorCode?: string;
  errorMessage?: string;
}
```

**Hata Durumları:**
| Kod | Açıklama | Retry? |
|-----|----------|--------|
| `LIVE_001` | Yüz algılanamadı | ✅ Evet |
| `LIVE_002` | Birden fazla yüz | ✅ Evet |
| `LIVE_003` | Çok karanlık | ✅ Evet |
| `LIVE_004` | Challenge tamamlanmadı | ✅ Evet |
| `LIVE_005` | Deepfake tespit edildi | ❌ Hayır |
| `LIVE_006` | Video replay tespit edildi | ❌ Hayır |
| `LIVE_007` | Timeout (60s aşıldı) | ✅ Evet |
| `LIVE_008` | Kamera izni yok | ❌ Hayır |
| `LIVE_009` | Mikrofon izni yok (sesli komut için) | ❌ Hayır |

---

## 4. HATA KODLARI

### 4.1 Kategori Kodlama Sistemi

| Prefix | Kategori | Örnek |
|--------|----------|-------|
| `OCR_xxx` | OCR Hataları | OCR_001 |
| `NFC_xxx` | NFC Hataları | NFC_001 |
| `LIVE_xxx` | Liveness Hataları | LIVE_001 |
| `SEC_xxx` | Güvenlik Hataları | SEC_001 |
| `NET_xxx` | Network Hataları | NET_001 |
| `PERM_xxx` | İzin Hataları | PERM_001 |
| `SYS_xxx` | Sistem Hataları | SYS_001 |

### 4.2 Tüm Hata Kodları Listesi (Özet)

```typescript
export const ERROR_CODES = {
  // OCR (001-050)
  OCR_001: 'Low confidence score',
  OCR_002: 'Low light condition',
  OCR_003: 'Glare detected',
  OCR_004: 'Blurry image',
  OCR_005: 'Invalid TC number format',
  OCR_006: 'Processing timeout',
  OCR_007: 'Camera permission denied',
  OCR_008: 'Out of memory',
  OCR_009: 'Invalid image format',
  OCR_010: 'Image too small',
  OCR_011: 'Image too large',
  OCR_012: 'No text detected',
  OCR_013: 'Multiple documents detected',
  OCR_014: 'Document not aligned',
  OCR_015: 'Perspective distortion',
  
  // NFC (051-100)
  NFC_001: 'Read timeout',
  NFC_002: 'Tag not detected',
  NFC_003: 'Read error (RF noise)',
  NFC_004: 'Invalid chip signature',
  NFC_005: 'Unsupported tag type',
  NFC_006: 'NFC hardware unavailable',
  NFC_007: 'NFC disabled',
  NFC_008: 'iOS background not supported',
  NFC_009: 'Connection lost',
  NFC_010: 'Data corrupted',
  NFC_011: 'SOD parsing failed',
  NFC_012: 'Certificate chain invalid',
  
  // Liveness (101-150)
  LIVE_001: 'No face detected',
  LIVE_002: 'Multiple faces detected',
  LIVE_003: 'Low light condition',
  LIVE_004: 'Challenge not completed',
  LIVE_005: 'Deepfake detected',
  LIVE_006: 'Video replay detected',
  LIVE_007: 'Processing timeout',
  LIVE_008: 'Camera permission denied',
  LIVE_009: 'Microphone permission denied',
  LIVE_010: 'Face too far',
  LIVE_011: 'Face too close',
  LIVE_012: 'Face partially visible',
  LIVE_013: 'Motion too fast',
  LIVE_014: 'Motion too slow',
  LIVE_015: 'Anti-spoofing failed',
  
  // Security (151-200)
  SEC_001: 'Root/jailbreak detected',
  SEC_002: 'Debug mode detected',
  SEC_003: 'Emulator detected',
  SEC_004: 'Certificate pinning failed',
  SEC_005: 'Session token expired',
  SEC_006: 'Invalid signature',
  SEC_007: 'Encryption failed',
  SEC_008: 'Decryption failed',
  SEC_009: 'Integrity check failed',
  SEC_010: 'Frida/Xposed detected',
  
  // Network (201-250)
  NET_001: 'No internet connection',
  NET_002: 'Server unavailable',
  NET_003: 'Request timeout',
  NET_004: 'Invalid response',
  NET_005: 'Rate limit exceeded',
  NET_006: 'MITM attack suspected',
  
  // Permission (251-300)
  PERM_001: 'Camera permission required',
  PERM_002: 'NFC permission required',
  PERM_003: 'Microphone permission required',
  PERM_004: 'Storage permission required',
  PERM_005: 'Location permission required',
  
  // System (301-350)
  SYS_001: 'Unexpected error',
  SYS_002: 'Native module not found',
  SYS_003: 'Unsupported platform',
  SYS_004: 'Low battery',
  SYS_005: 'Insufficient storage',
};
```

### 4.3 Hata Response Standardı

```typescript
interface ErrorResponse {
  error: {
    code: string;           // "OCR_001"
    message: string;        // User-friendly message
    technicalMessage?: string;  // Developer message
    retryable: boolean;
    suggestion?: string;    // Ne yapmalı?
    timestamp: number;
    requestId?: string;     // Debug için
  };
}

// Örnek
{
  "error": {
    "code": "OCR_002",
    "message": "Fotoğraf çok karanlık. Lütfen daha iyi ışıkta tekrar çekin.",
    "technicalMessage": "Average brightness: 15/255, threshold: 50",
    "retryable": true,
    "suggestion": "Lambayı açın veya daha aydınlık bir ortamda deneyin",
    "timestamp": 1697462400000,
    "requestId": "req_abc123"
  }
}
```

---

## 5. EVENT SYSTEM

### 5.1 Event Types

```typescript
type SDKEvent =
  | 'onOCRStart'
  | 'onOCRProgress'
  | 'onOCRSuccess'
  | 'onOCRError'
  | 'onNFCStart'
  | 'onNFCTagDetected'
  | 'onNFCReading'
  | 'onNFCSuccess'
  | 'onNFCError'
  | 'onLivenessStart'
  | 'onLivenessChallenge'
  | 'onLivenessProgress'
  | 'onLivenessSuccess'
  | 'onLivenessError';
```

### 5.2 Event Listeners

```typescript
// React Native EventEmitter kullanımı
import { NativeEventEmitter, NativeModules } from 'react-native';

const { OCRModule } = NativeModules;
const ocrEmitter = new NativeEventEmitter(OCRModule);

// Event dinleme
const subscription = ocrEmitter.addListener('onOCRProgress', (event) => {
  console.log(`OCR Progress: ${event.progress}%`);
});

// Cleanup
subscription.remove();
```

### 5.3 Event Payloads

```typescript
// OCR Progress Event
interface OCRProgressEvent {
  type: 'onOCRProgress';
  progress: number;    // 0-100
  stage: 'preprocessing' | 'recognition' | 'validation';
}

// NFC Tag Detected Event
interface NFCTagDetectedEvent {
  type: 'onNFCTagDetected';
  tagType: string;
  uid: string;         // Tag UID (masked for security)
}

// Liveness Challenge Event
interface LivenessChallengeEvent {
  type: 'onLivenessChallenge';
  challenge: 'BLINK' | 'TURN_LEFT' | 'TURN_RIGHT' | 'SMILE';
  instruction: string;  // Türkçe yönerge
  index: number;        // Kaçıncı komut (1/5, 2/5...)
  total: number;
}
```

---

## 6. VERSIYONLAMA & BREAKING CHANGES

### 6.1 Semantic Versioning

**Format:** `MAJOR.MINOR.PATCH`

- **MAJOR:** Breaking changes (1.0.0 → 2.0.0)
- **MINOR:** New features, backward compatible (1.0.0 → 1.1.0)
- **PATCH:** Bug fixes (1.0.0 → 1.0.1)

### 6.2 Deprecation Policy

Deprecated API'ler 2 major version boyunca desteklenir:

```typescript
// Deprecated (v1.5.0)
@deprecated('Use OCRReader.scan() instead. Will be removed in v3.0.0')
async function scanDocument() { ... }

// New API (v1.5.0+)
async function scan() { ... }
```

### 6.3 Migration Guides

Her major version için migration guide:
- `MIGRATION_V1_TO_V2.md`
- `MIGRATION_V2_TO_V3.md`

---

## 7. SDK INITIALIZATION

```typescript
import SDK from 'mobile-sdk-ocr-nfc-liveness';

// Initialize SDK
SDK.initialize({
  apiKey: process.env.SDK_API_KEY,
  environment: 'production',  // 'development' | 'staging' | 'production'
  enableLogging: __DEV__,
  config: {
    ocr: {
      confidenceThreshold: 0.85,
      timeout: 30000,
      language: 'tur+eng',
    },
    nfc: {
      timeout: 10000,
      enableActiveAuth: false,  // AA opsiyonel
    },
    liveness: {
      challengeCount: 5,
      difficulty: 'MEDIUM',
      timeout: 60000,
      antiSpoofing: true,
    },
  },
  callbacks: {
    onInitialized: () => console.log('SDK initialized'),
    onError: (error) => console.error('SDK error', error),
  },
});
```

---

**Son Güncelleme:** 2025-10-16  
**API Versiyon:** 1.0.0  
**Uyumluluk:** React Native 0.70+
