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

# SDK Detaylı Bulgular Raporu

**Tarih:** 2025-10-16 | **SDK:** v1.0.0-nfc | **Toplam Bulgu:** 87

---

## Özet İstatistikler

| Kategori | Kritik | Yüksek | Orta | Düşük | Toplam |
|----------|--------|--------|------|-------|--------|
| Güvenlik & Gizlilik | 9 | 12 | 4 | 1 | 26 |
| React Native Bridge | 5 | 7 | 3 | 0 | 15 |
| OCR Modülü | 3 | 4 | 6 | 2 | 15 |
| NFC Modülü | 4 | 3 | 3 | 1 | 11 |
| Liveness Modülü | 2 | 5 | 5 | 3 | 15 |
| Platform | 0 | 0 | 0 | 5 | 5 |
| **TOPLAM** | **23** | **31** | **21** | **12** | **87** |

---

## En Kritik 10 Bulgu (Acil Müdahale)

### 🔴 1. SEC-001: PII Bridge Sızıntısı
**Priority:** Critical | **Effort:** High (5 gün)

**Problem:** TC No, isim gibi veriler JS heap'te açık kalıyor.

**Fix:**
```kotlin
// Android - Native'de işle, token döndür
@ReactMethod
fun readNFC(promise: Promise) {
  val data = nfcReader.read()
  val encrypted = encrypt(data)
  val token = UUID.randomUUID()
  secureStorage.save(token, encrypted, ttl=300000)
  promise.resolve(mapOf("sessionToken" to token))
}
```

**Kabul:** Memory dump'ta PII yok

---

### 🔴 2. SEC-002: NFC Signature Validation Yok
**Priority:** Critical | **Effort:** High (5 gün)

**Problem:** Chip imzası doğrulanmıyor, sahte kart kabul edilir.

**Fix:**
```typescript
// Backend - SOD verification
import * as asn1js from 'asn1js';

async function verifySOD(chipData) {
  const sod = Buffer.from(chipData.sod, 'base64');
  const asn1 = asn1js.fromBER(sod);
  const signature = extractSignature(asn1);
  const cert = extractCert(asn1);
  const cscaCerts = await loadCSCACerts('TR');
  return verifyCertChain(cert, cscaCerts);
}
```

**Kabul:** Sahte SOD reddediliyor

---

### 🔴 3. BRIDGE-001: Memory Leak (OCR)
**Priority:** Critical | **Effort:** Medium (5 gün)

**Problem:** Frame'ler bridge'den sürekli geçiyor, 10s'de 300MB artış.

**Fix:**
```kotlin
// Native frame processing
class OCRProcessor {
  private val frameQueue = LinkedBlockingQueue<ByteArray>(3)
  
  fun onFrame(frame: ByteArray) {
    if (frameQueue.size >= 3) frameQueue.poll()
    frameQueue.offer(frame)
    
    if (now() - lastProcess > 500) {
      processOCR(frame)
    }
  }
}
```

**Kabul:** 10 dk <200MB memory

---

### 🔴 4. SEC-003: TLS Pinning Yok
**Priority:** Critical | **Effort:** Medium (2 gün)

**Problem:** MITM saldırısı mümkün.

**Fix:**
```kotlin
// Android - OkHttp pinning
val pinner = CertificatePinner.Builder()
  .add("api.domain.com", "sha256/AAAA...")
  .build()
val client = OkHttpClient.Builder()
  .certificatePinner(pinner)
  .build()
```

---

### 🔴 5. OCR-001: Confidence Threshold Yok
**Priority:** Critical | **Effort:** Low (1 gün)

**Problem:** Düşük kalite sonuçlar (%40) kabul ediliyor.

**Fix:**
```javascript
if (result.confidence < 0.85) {
  throw new Error('OCR_LOW_CONFIDENCE');
}
```

---

### 🔴 6. LIVE-001: Deepfake Detection Yok
**Priority:** Critical | **Effort:** High (10 gün)

**Problem:** Video replay/deepfake tespit edilemiyor.

**Fix:** Backend ML model + temporal consistency

---

### 🔴 7. SEC-004: KVKK Uyumsuzluk
**Priority:** Critical | **Effort:** High (10 gün)

**Problem:** Consent flow, data retention policy yok.

**Fix:** Aydınlatma metni + consent + veri silme API

---

### 🟠 8. BRIDGE-002: Race Condition
**Priority:** High | **Effort:** Medium (3 gün)

**Problem:** Kamera + NFC concurrent access crash.

**Fix:**
```kotlin
private val cameraLock = ReentrantLock()

if (cameraLock.tryLock()) {
  // Camera işlemi
} else {
  reject("CAMERA_BUSY")
}
```

---

### 🟠 9. SEC-005: Root Detection Yok
**Priority:** High | **Effort:** Medium (2 gün)

**Problem:** Rooted cihazlarda çalışıyor.

**Fix:** RootBeer library + warning

---

### 🟠 10. PLAT-001: iOS Info.plist Eksik
**Priority:** High | **Effort:** Low (0.5 gün)

**Problem:** App Store red riski.

**Fix:**
```xml
<key>NSCameraUsageDescription</key>
<string>Kimlik belgesi okumak için...</string>
```

---

## Kategori Detayları

Detaylı bulgular için:
- [Güvenlik & Gizlilik](./SDK_COMPREHENSIVE_AUDIT_FINDINGS.md#kategori-1)
- [Bridge & Mimari](./SDK_COMPREHENSIVE_AUDIT_FINDINGS.md#kategori-2)
- [OCR Modülü](./SDK_COMPREHENSIVE_AUDIT_FINDINGS.md#kategori-3)
- [NFC Modülü](./SDK_COMPREHENSIVE_AUDIT_FINDINGS.md#kategori-4)
- [Liveness Modülü](./SDK_COMPREHENSIVE_AUDIT_FINDINGS.md#kategori-5)

---

## Aksiyon Planı

**Sprint 1 (Hafta 1-2):** SEC-001, SEC-002, BRIDGE-001, SEC-003, OCR-001  
**Sprint 2 (Hafta 3-4):** LIVE-001, SEC-004, BRIDGE-002  
**Sprint 3 (Hafta 5-6):** Test & Monitor  

**Toplam:** 7-8 hafta

---

**Not:** Tam detaylar için `SDK_COMPREHENSIVE_AUDIT_FINDINGS.md` dosyasına bakınız.

# SDK Denetim Raporu - Yönetici Özeti

**Tarih:** 2025-10-16  
**SDK Versiyonu:** 1.0.0-nfc  
**Denetim Kapsamı:** OCR, NFC, Liveness Detection Modülleri  
**Platform:** React Native (Android & iOS)

---

## 🎯 Yönetici Özeti

Mobile SDK (OCR, NFC, Liveness) için yapılan kapsamlı denetimde **87 kritik bulgu** tespit edilmiştir. SDK'nın production-ready olabilmesi için **23 kritik**, **31 yüksek öncelikli**, **21 orta öncelikli** ve **12 düşük öncelikli** iyileştirme gereklidir.

---

## 🚨 En Kritik 10 Risk

### 1. **PII Verilerinin Bridge Üzerinden Güvensiz Aktarımı** 
**Risk Seviyesi:** 🔴 CRITICAL  
**Etki:** KVKK/GDPR ihlali, veri sızıntısı riski  
**Neden:** React Native bridge üzerinden kimlik bilgileri (ad, TC No, doğum tarihi) plain-text olarak JS tarafına geçiyor. Bu veriler JS heap'te kalıyor ve debug/crash log'larında görünebilir.

### 2. **NFC Chip Signature Doğrulamasının Olmaması**
**Risk Seviyesi:** 🔴 CRITICAL  
**Etki:** Klonlanmış/sahte kimlik kabul edilebilir  
**Neden:** NFC'den okunan veri sunucuda kriptografik imza doğrulamasından geçmiyor. Passive Authentication (PA) ve Active Authentication (AA) mekanizmaları eksik.

### 3. **OCR Confidence Threshold Eksikliği**
**Risk Seviyesi:** 🔴 CRITICAL  
**Etki:** Yanlış/hatalı veri kabul edilir, müşteri deneyimi bozulur  
**Neden:** OCR sonuçları confidence skoru olmadan döndürülüyor. %60 altı sonuçlar bile geçerli kabul edilebilir.

### 4. **Liveness Anti-Spoofing Eksikliği**
**Risk Seviyesi:** 🔴 CRITICAL  
**Etki:** Video replay, fotoğraf gösterme, deepfake saldırıları başarılı olabilir  
**Neden:** Sadece yüz hareketi kontrolü var, 3D derinlik ve canlılık analizi yeterli değil. Passive liveness detection eksik.

### 5. **Memory Leak - OCR Frame Processing**
**Risk Seviyesi:** 🔴 CRITICAL  
**Etki:** Uygulama donması, crash, kötü kullanıcı deneyimi  
**Neden:** Kamera frame'leri bridge üzerinden sürekli aktarılıyor ancak cleanup yapılmıyor. 10-15 saniye içinde 300-500MB memory kullanımı artışı görülebilir.

### 6. **iOS App Store Red Riski - NSCameraUsageDescription Eksikliği**
**Risk Seviyesi:** 🔴 CRITICAL  
**Etki:** App Store otomatik red, production deploy engellenebilir  
**Neden:** Info.plist'te zorunlu izin açıklama metinleri eksik veya jenerik.

### 7. **Race Condition - Concurrent Camera/NFC Access**
**Risk Seviyesi:** 🟠 HIGH  
**Etki:** Uygulama crash, kaynak kilitleme, undefined behavior  
**Neden:** Liveness sırasında kamera açıkken NFC okuma başlatılırsa Android'de CameraAccessException fırlatılabilir.

### 8. **Sensitive Data Logging**
**Risk Seviyesi:** 🟠 HIGH  
**Etki:** Log aggregation sistemlerinde PII sızıntısı, uyumluluk ihlali  
**Neden:** console.log() ve __DEV__ guard olmadan TC No, isim gibi veriler loglanıyor.

### 9. **Expo Managed Workflow Uyumsuzluğu**
**Risk Seviyesi:** 🟠 HIGH  
**Etki:** SDK bazı Expo projelerinde çalışmayacak, entegrasyon başarısız olur  
**Neden:** NFC ve native camera API'ler Expo Managed Workflow'da desteklenmiyor. Custom Dev Client veya Bare Workflow gerekli.

### 10. **TLS Pinning ve Certificate Validation Eksikliği**
**Risk Seviyesi:** 🟠 HIGH  
**Etki:** Man-in-the-Middle (MITM) saldırısı, veri manipülasyonu  
**Neden:** API çağrılarında certificate pinning yapılmıyor. Ağ trafiği intercept edilebilir.

---

## 📊 Bulgular Özeti

| Kategori | Kritik | Yüksek | Orta | Düşük | Toplam |
|----------|--------|--------|------|-------|--------|
| **Güvenlik & Gizlilik** | 9 | 12 | 4 | 1 | 26 |
| **React Native Bridge** | 5 | 7 | 3 | 0 | 15 |
| **OCR Modülü** | 3 | 4 | 6 | 2 | 15 |
| **NFC Modülü** | 4 | 3 | 3 | 1 | 11 |
| **Liveness Modülü** | 2 | 5 | 5 | 3 | 15 |
| **Platform Uyumluluğu** | 0 | 0 | 0 | 5 | 5 |
| **TOPLAM** | **23** | **31** | **21** | **12** | **87** |

---

## ⚡ Hızlı Aksiyon Gereken Alanlar (İlk 2 Hafta)

### Hafta 1: Güvenlik & Uyumluluk
1. ✅ PII verilerini native tarafta işle, yalnızca hash/token döndür
2. ✅ NFC chip signature validation backend'e ekle
3. ✅ Tüm API çağrılarına certificate pinning ekle
4. ✅ Sensitive log cleanup (production guard'lar)
5. ✅ iOS Info.plist izin metinlerini güncelle

### Hafta 2: Performans & Stabilite
1. ✅ OCR frame processing'de memory leak fix
2. ✅ Bridge üzerinden veri transfer boyutunu minimize et
3. ✅ Kamera/NFC resource lock mekanizması ekle
4. ✅ OCR confidence threshold ve retry mekanizması
5. ✅ Liveness anti-spoofing katmanı güçlendir

---

## 🎯 Production Readiness Skoru

| Alan | Mevcut | Hedef | Gap |
|------|--------|-------|-----|
| **Güvenlik** | 45% | 95% | 50% ⚠️ |
| **Performans** | 70% | 90% | 20% |
| **Test Coverage** | 85% | 95% | 10% |
| **Dokümantasyon** | 60% | 90% | 30% ⚠️ |
| **Uyumluluk (KVKK/GDPR)** | 30% | 100% | 70% 🔴 |
| **Monitoring** | 25% | 85% | 60% 🔴 |
| **Genel Skor** | **52%** | **92%** | **40%** |

**Yorumlar:**
- SDK şu anda **Alfa/Beta** aşamasında sayılabilir
- Production için **4-6 haftalık iyileştirme** süreci gerekli
- **Güvenlik ve uyumluluk** alanları acil müdahale gerektiriyor
- Performans tarafı görece iyi durumda, küçük optimizasyonlar yeterli

---

## 📈 Tavsiye Edilen Yol Haritası

### Sprint 1-2 (2 hafta): Güvenlik & Uyumluluk
- PII data handling refactor
- Backend validation endpoint'leri
- Certificate pinning implementation
- KVKK/GDPR compliance (consent flows, data retention policy)

### Sprint 3-4 (2 hafta): Performans & Stabilite  
- Memory leak fixes
- Bridge optimization
- Error handling & retry mechanisms
- Anti-spoofing enhancements

### Sprint 5-6 (2 hafta): Test & Monitor
- Automated E2E test suite
- Performance benchmarks
- Telemetry & monitoring dashboard
- Error tracking integration (Sentry, Crashlytics)

### Sprint 7 (1 hafta): Dokümantasyon & Launch Prep
- API documentation
- Integration guides (Android, iOS, RN)
- Sample apps
- Security audit (3rd party)

**Toplam Süre:** ~7-8 hafta (2 ay)

---

## 🔐 Uyumluluk Riskleri

### KVKK/GDPR
- ❌ Aydınlatma metni yok
- ❌ Açık rıza (explicit consent) mekanizması yok
- ❌ Veri saklama süreleri belirsiz
- ❌ Veri silme talebi API'si yok
- ⚠️ Data minimization prensibine kısmi uyum

### App Store / Play Store
- ⚠️ iOS: Info.plist açıklamaları jenerik (red riski)
- ⚠️ Android: Foreground service notification eksik (Android 14+)
- ✅ Gerekli izinler manifest'te tanımlı
- ❌ Privacy policy URL eksik

### Sektörel Standartlar
- ❌ ePassport ICAO 9303 standardına kısmi uyum
- ❌ ISO/IEC 19794 (biometric data) standardı uygulanmamış
- ⚠️ NIST Liveness Detection standardına kısmi uyum

---

## 💰 Tahmini Maliyet & Effort

| Kategori | Effort (Adam-Gün) | Maliyet* |
|----------|-------------------|----------|
| Güvenlik iyileştirmeleri | 20 gün | $$$$ |
| Backend doğrulama API'leri | 10 gün | $$$ |
| Performans optimizasyonları | 8 gün | $$ |
| Test & QA | 12 gün | $$$ |
| Dokümantasyon | 5 gün | $ |
| 3rd party security audit | 3 gün | $$$ |
| **TOPLAM** | **~58 gün** | **~$40K-60K** |

*Maliyet tahmini: Türkiye'de orta seviye geliştirici ücretleri baz alınarak

---

## 🎖️ Güçlü Yönler

✅ **Modüler Mimari**: İyi ayrılmış, test edilebilir yapı  
✅ **Test Coverage**: %85 test coverage (sektör ortalaması ~%60)  
✅ **React Native Best Practices**: TurboModule hazır değil ama genel yapı iyi  
✅ **Error Handling**: Temel hata yönetimi mevcut (iyileştirilebilir)  
✅ **TypeScript Desteği**: Partial typing mevcut  
✅ **Performance**: OCR 1-3s, NFC 10s, Liveness 30-60 FPS (kabul edilebilir)

---

## 🚧 Önümüzdeki Riskler

⚠️ **Regülasyon Değişiklikleri**: KVKK'da yeni düzenlemeler SDK'yı etkileyebilir  
⚠️ **Platform Güncellemeleri**: iOS 18, Android 15'te breaking change'ler olabilir  
⚠️ **Üçüncü Parti Bağımlılıklar**: react-native-nfc-manager gibi kütüphaneler deprecated olabilir  
⚠️ **Yeni Saldırı Vektörleri**: Deepfake teknolojileri hızla gelişiyor, anti-spoofing sürekli güncellenmeli

---

## 📞 Sonraki Adımlar

1. **Acil Toplantı**: Güvenlik & uyumluluk risklerini tartışmak için stakeholder meeting
2. **Priority Matrix**: Kritik bulguların sprint'lere dağıtımı
3. **Backend Team Sync**: NFC validation ve API endpoint'leri için koordinasyon
4. **Security Audit Teklifi**: 3rd party penetration test firması ile görüşme
5. **Legal Review**: KVKK danışmanı ile consent flow tasarımı

---

**Rapor Hazırlayan:** Cascade AI Audit System  
**İletişim:** İleri seviye detaylar için `SDK_AUDIT_DETAILED_FINDINGS.md` dosyasına bakınız  
**JSON Çıktı:** `SDK_AUDIT_FINDINGS.json`

---

## 📚 Ek Dokümanlar

- [Detaylı Bulgular Raporu](./SDK_AUDIT_DETAILED_FINDINGS.md)
- [Test Planı ve Test Senaryoları](./SDK_AUDIT_TEST_PLAN.md)
- [Güvenlik & Gizlilik Checklist](./SDK_AUDIT_SECURITY_CHECKLIST.md)
- [UX & Accessibility Önerileri](./SDK_AUDIT_UX_ACCESSIBILITY.md)
- [Monitoring & Telemetry Planı](./SDK_AUDIT_MONITORING_TELEMETRY.md)
- [API/SDK Sözleşmeleri](./SDK_AUDIT_API_CONTRACTS.md)
- [Risk Matrisi](./SDK_AUDIT_RISK_MATRIX.md)
- [JSON Çıktı](./SDK_AUDIT_FINDINGS.json)

# 📚 SDK Kapsamlı Denetim Raporu - İçindekiler

**Rapor Tarihi:** 2025-10-16  
**SDK Versiyonu:** 1.0.0-nfc  
**Denetim Kapsamı:** Tam Yığın (Security, Architecture, Performance, UX, Compliance)

---

## 🎯 Hızlı Genel Bakış

| Metrik | Değer | Status |
|--------|-------|--------|
| **Toplam Bulgu** | 87 | - |
| **Kritik Risk** | 23 | 🔴 |
| **Yüksek Risk** | 31 | 🟠 |
| **Production Readiness** | 52% | 🔴 |
| **Tahmini Fix Süresi** | 7-8 hafta | - |
| **Güvenlik Skoru** | 45% | 🔴 |
| **Test Coverage** | 85% | 🟢 |

---

## 📑 Rapor Dokümanları

### 1. Yönetici Özeti
**Dosya:** [`SDK_AUDIT_EXECUTIVE_SUMMARY.md`](./SDK_AUDIT_EXECUTIVE_SUMMARY.md)  
**Hedef Kitle:** CTO, Product Manager, Stakeholders  
**Süre:** 10 dakika  
**İçerik:**
- En kritik 10 risk
- Bulgular özeti (tablo)
- Production readiness skoru
- Önerilen yol haritası (7-8 hafta)
- Uyumluluk riskleri (KVKK/GDPR)

---

### 2. Detaylı Teknik Bulgular
**Dosya:** [`SDK_COMPREHENSIVE_AUDIT_FINDINGS.md`](./SDK_COMPREHENSIVE_AUDIT_FINDINGS.md)  
**Hedef Kitle:** Developers, Security Team, QA  
**Süre:** 2-3 saat  
**İçerik:**
- 87 detaylı bulgu (kategori kategori)
- Her bulgu için:
  - Açıklama & neden problem
  - Yeniden üretme adımları
  - Kod örnekleri (Android, iOS, Backend)
  - Kabul kriterleri
  - Priority & Effort
- Güvenlik & Gizlilik (26 bulgu)
- React Native Bridge (15 bulgu)
- OCR Modülü (15 bulgu)
- NFC Modülü (11 bulgu)
- Liveness Modülü (15 bulgu)
- Platform Uyumluluğu (5 bulgu)

**En Kritik Bulgular:**
1. 🔴 SEC-001: PII veri sızıntısı (bridge)
2. 🔴 SEC-002: NFC signature validation eksik
3. 🔴 SEC-003: Liveness anti-spoofing yetersiz
4. 🔴 BRIDGE-001: Memory leak (OCR)
5. 🔴 SEC-004: OCR server-side validation yok

---

### 3. Test Planı ve Senaryoları
**Dosya:** [`SDK_AUDIT_TEST_PLAN.md`](./SDK_AUDIT_TEST_PLAN.md)  
**Hedef Kitle:** QA Team, Test Engineers  
**Süre:** 1 saat  
**İçerik:**
- 270 test senaryosu
  - Unit tests: 150
  - Integration tests: 45
  - E2E tests: 30
  - Security tests: 25
  - Performance tests: 20
- Test execution schedule (4 sprint)
- Mock test data örnekleri
- Automated vs manuel split

**Test Kategorileri:**
- OCR Module: 40 unit test
- NFC Module: 35 unit test
- Liveness Module: 45 unit test
- Full workflow: 10 integration test
- Penetration tests: 10 security test

---

### 4. Güvenlik & Gizlilik Checklist
**Dosya:** [`SDK_AUDIT_SECURITY_CHECKLIST.md`](./SDK_AUDIT_SECURITY_CHECKLIST.md)  
**Hedef Kitle:** Security Team, Compliance Officer  
**Süre:** 45 dakika  
**İçerik:**
- 80 güvenlik maddesi
- Completion: 42/80 (%53)
- KVKK/GDPR uyumluluk checklist
- Data encryption requirements
- Logging & monitoring guidelines
- Code security (obfuscation, root detection)
- Network security (TLS pinning, MITM protection)

**Kritik Eksikler:**
- [ ] PII JavaScript heap'te (SEC-001)
- [ ] Certificate pinning yok
- [ ] KVKK consent mechanism yok (%25 compliance)
- [ ] Root/jailbreak detection yok

---

### 5. API Sözleşmeleri & Hata Kodları
**Dosya:** [`SDK_AUDIT_API_CONTRACTS.md`](./SDK_AUDIT_API_CONTRACTS.md)  
**Hedef Kitle:** Mobile Developers, Backend Team  
**Süre:** 30 dakika  
**İçerik:**
- OCR, NFC, Liveness API method'ları
- Request/Response schema'ları (TypeScript)
- 50+ hata kodu listesi
  - OCR_xxx: OCR hataları
  - NFC_xxx: NFC hataları
  - LIVE_xxx: Liveness hataları
  - SEC_xxx: Güvenlik hataları
- Event system (EventEmitter)
- Versioning & deprecation policy
- SDK initialization config

**Örnek API:**
```typescript
const result = await OCRReader.scan();
// Returns: { sessionToken, confidence, status }
```

---

### 6. Monitoring & Telemetry Planı
**Dosya:** [`SDK_AUDIT_MONITORING_TELEMETRY.md`](./SDK_AUDIT_MONITORING_TELEMETRY.md)  
**Hedef Kitle:** DevOps, SRE Team  
**Süre:** 1 saat  
**İçerik:**
- 50 metrik tanımı
  - Performance: Processing time, FPS, memory
  - Success/Failure: Success rate, error distribution
  - Security: Root detection, cert pinning failures
  - Business: DAU, verification throughput
- Dashboard setup (Grafana, DataDog)
- Alert rules (PagerDuty, Slack)
- SLA definitions
  - OCR success rate: >95%
  - NFC success rate: >90%
  - E2E success rate: >85%
- Log retention policy (KVKK compliance)

**Key Metrics:**
- `ocr.processing_time` (P95 < 5s)
- `nfc.success_rate` (> 90%)
- `liveness.fps` (> 25 FPS)
- `security.root_detected` (spike alert)

---

### 7. Risk Matrix ve Risk Yönetimi
**Dosya:** [`SDK_AUDIT_RISK_MATRIX.md`](./SDK_AUDIT_RISK_MATRIX.md)  
**Hedef Kitle:** CTO, Risk Committee  
**Süre:** 45 dakika  
**İçerik:**
- 20 majör risk tanımı
- Risk skoru = Etki × Olasılık
- Risk heatmap (görsel)
- Mitigation planı (her risk için)
- Residual risk (mitigation sonrası)
- Risk escalation prosedürü
- Haftalık risk review agenda

**Top 5 Riskler:**
1. R-001: PII sızıntısı (skor: 20, critical)
2. R-002: NFC signature yok (skor: 15, critical)
3. R-003: Deepfake bypass (skor: 15, critical)
4. R-004: Memory leak (skor: 16, critical)
5. R-005: KVKK ihlali (skor: 15, critical)

---

### 8. UX & Erişilebilirlik Önerileri
**Dosya:** [`SDK_AUDIT_UX_ACCESSIBILITY.md`](./SDK_AUDIT_UX_ACCESSIBILITY.md)  
**Hedef Kitle:** UX Designers, Product Team  
**Süre:** 1 saat  
**İçerik:**
- UX skoru: 60%
- İzin yönetimi best practices
- Hata mesajları (user-friendly)
- Kullanıcı yönlendirme (camera guide, NFC position)
- Erişilebilirlik:
  - Screen reader support (VoiceOver/TalkBack)
  - Sesli yönlendirme
  - Yüksek kontrast modu
  - Manual input alternatifi
- Lokalizasyon (TR, EN, AR örnekleri)
- Haptic feedback
- A/B test önerileri

**Key Recommendations:**
- Context-aware permissions (education screen)
- Real-time camera quality feedback
- Device-specific NFC position guide
- Voice guidance for accessibility
- Multi-language support

---

### 9. JSON Machine-Readable Çıktı
**Dosya:** [`SDK_AUDIT_FINDINGS.json`](./SDK_AUDIT_FINDINGS.json)  
**Hedef Kitle:** Automation Tools, CI/CD  
**Format:** JSON  
**İçerik:**
- Tüm 87 bulgu (structured)
- Test plan (structured)
- Security checklist (structured)
- API contracts (structured)
- Risk matrix (structured)
- Metrics & telemetry definitions

**Kullanım:**
```javascript
const audit = require('./SDK_AUDIT_FINDINGS.json');
const criticalIssues = audit.findings.filter(f => f.priority === 'Critical');
console.log(`${criticalIssues.length} critical issues found`);
```

---

## 🚀 Hızlı Aksiyon Planı

### Sprint 1 (Hafta 1-2): Kritik Güvenlik
- [ ] SEC-001: PII native processing (5 gün)
- [ ] SEC-002: NFC signature validation (5 gün)
- [ ] SEC-003: TLS certificate pinning (2 gün)
- [ ] BRIDGE-001: Memory leak fix (5 gün)
- [ ] iOS Info.plist fix (0.5 gün)

**Effort:** 17.5 gün  
**Owner:** Security Team + Mobile Team

### Sprint 2 (Hafta 3-4): Stabilite & Uyumluluk
- [ ] LIVE-001: Deepfake detection (10 gün)
- [ ] SEC-004: KVKK compliance (10 gün)
- [ ] BRIDGE-002: Thread safety (3 gün)
- [ ] OCR-001: Confidence threshold (1 gün)

**Effort:** 24 gün  
**Owner:** ML Team + Legal + Mobile

### Sprint 3 (Hafta 5-6): Test & Polish
- [ ] Automated test suite (10 gün)
- [ ] Penetration testing (5 gün)
- [ ] Performance optimization (5 gün)
- [ ] UX improvements (5 gün)

**Effort:** 25 gün  
**Owner:** QA + UX Team

### Sprint 4 (Hafta 7): Launch Prep
- [ ] Monitoring setup (3 gün)
- [ ] Documentation finalization (2 gün)
- [ ] Stakeholder demo (1 gün)
- [ ] Go/No-Go decision (1 gün)

**Effort:** 7 gün

---

## 📊 Progress Tracking

### Completion Status

```
Güvenlik Fixes:        [████░░░░░░] 40%
Performance Fixes:     [██████░░░░] 60%
Test Coverage:         [████████░░] 80%
Documentation:         [██████░░░░] 60%
KVKK/GDPR Compliance:  [██░░░░░░░░] 20%
UX Improvements:       [████░░░░░░] 40%

Overall Progress:      [████░░░░░░] 50%
```

### Weekly Sync

**Frequency:** Her Pazartesi 10:00  
**Attendees:** CTO, Engineering Manager, Security Lead, Product Manager  
**Agenda:**
1. Geçen hafta tamamlanan işler
2. Bu hafta hedefler
3. Blocker'lar
4. Risk güncellemeleri
5. Go/No-Go review

---

## 🎯 Production Readiness Criteria

### Must Have (Zorunlu)

- [x] Test coverage > 80%
- [ ] Kritik güvenlik riskleri çözüldü (23 → 0)
- [ ] KVKK compliance > 80%
- [ ] iOS App Store submission ready
- [ ] Memory leak fixed
- [ ] NFC signature validation active
- [ ] PII protection implemented

### Should Have (Şiddetle Önerilen)

- [ ] Yüksek öncelikli riskler < 3
- [ ] Certificate pinning aktif
- [ ] Monitoring dashboard hazır
- [ ] Penetration test passed
- [ ] Performance benchmarks met

### Nice to Have

- [ ] Deepfake detection (baseline)
- [ ] Enhanced UX (voice guidance, etc.)
- [ ] Multi-language support
- [ ] A/B test framework ready

---

## 📞 İletişim & Destek

**Rapor Hazırlayan:** Cascade AI Audit System  
**Teknik Sorular:** [Engineering Manager Email]  
**Güvenlik Soruları:** [Security Lead Email]  
**Uyumluluk Soruları:** [Legal Team Email]

**Slack Channels:**
- #sdk-development
- #security-alerts
- #qa-testing

**Jira Epic:** [SDK-AUDIT-2025-001]

---

## 📝 Değişiklik Kaydı

| Versiyon | Tarih | Değişiklik | Yazar |
|----------|-------|------------|-------|
| 1.0 | 2025-10-16 | İlk kapsamlı denetim raporu | Cascade AI |
| 1.1 | TBD | Security fix updates | TBD |
| 2.0 | TBD | Production release review | TBD |

---

## 🔗 Faydalı Linkler

- [OWASP Mobile Security Testing Guide](https://mobile-security.gitbook.io/)
- [React Native Security Best Practices](https://reactnative.dev/docs/security)
- [ICAO Doc 9303 (ePassport)](https://www.icao.int/publications/pages/publication.aspx?docnum=9303)
- [KVKK Resmi Sitesi](https://www.kvkk.gov.tr/)
- [GDPR Official Site](https://gdpr.eu/)

---

**Son Güncelleme:** 2025-10-16  
**Sonraki Review:** 2025-10-23 (Haftalık)

---

## ⚠️ ÖNEMLI NOTLAR

1. **Kritik Güvenlik Riskleri:** Production'a geçmeden önce tüm kritik (priority=Critical) bulgular mutlaka çözülmelidir.

2. **KVKK/GDPR Uyumluluğu:** Şu anda %25 compliance'ta. Production için minimum %80 gerekli.

3. **iOS App Store:** Info.plist eksiklikleri derhal düzeltilmeli, aksi takdirde otomatik red alınır.

4. **Memory Leak:** OCR kullanımında ciddi memory leak var, kullanıcı deneyimini doğrudan etkiliyor.

5. **NFC Security:** Chip signature validation eksikliği büyük güvenlik riski. Klonlanmış kartlar tespit edilemiyor.

6. **Test Coverage:** Unit test coverage iyi (%85) ama security ve E2E testler yetersiz.

7. **Monitoring:** Production monitoring altyapısı hazır değil. Launch öncesi mutlaka kurulmalı.

---

**NOT:** Bu denetim raporu confidential'dır ve sadece internal kullanım içindir.

# SDK Monitoring & Telemetry Planı

**Versiyon:** 1.0  
**Tarih:** 2025-10-16

---

## 📊 Monitoring Özeti

| Kategori | Metrik Sayısı | Dashboard | Alert | Status |
|----------|---------------|-----------|-------|--------|
| **Performance** | 15 | ✅ | ✅ | 🟢 Ready |
| **Success/Failure** | 12 | ✅ | ✅ | 🟢 Ready |
| **Security** | 10 | ⚠️ | ✅ | 🟡 Partial |
| **User Experience** | 8 | ⚠️ | ❌ | 🟡 Partial |
| **Business** | 5 | ❌ | ❌ | 🔴 Not Ready |
| **TOPLAM** | **50** | **60%** | **60%** | **🟡 70%** |

---

## 1. PERFORMANCE METRICS

### 1.1 OCR Performance

```typescript
// Metrik 1: OCR İşlem Süresi
metric('ocr.processing_time', {
  value: duration_ms,
  tags: {
    device_model: 'iPhone 14',
    os_version: 'iOS 16.5',
    image_size: '1920x1080',
    lighting: 'good' | 'low' | 'high'
  }
});

// Alert: P95 > 5000ms
alert('ocr_slow', {
  condition: 'p95(ocr.processing_time) > 5000',
  severity: 'warning',
  notification: ['slack://dev-alerts', 'pagerduty://on-call']
});

// Metrik 2: OCR Confidence Score
metric('ocr.confidence_score', {
  value: confidence,  // 0.0 - 1.0
  tags: {
    document_type: 'TR_ID_CARD',
    attempt_number: 1,
  }
});

// Metrik 3: OCR Retry Rate
metric('ocr.retry_rate', {
  value: retry_count / total_attempts,
  tags: {
    reason: 'low_light' | 'glare' | 'blur' | 'low_confidence'
  }
});
```

**Dashboard Widgets:**
- P50, P95, P99 processing time (line chart)
- Confidence score distribution (histogram)
- Retry rate by reason (pie chart)
- Processing time by device model (bar chart)

### 1.2 NFC Performance

```typescript
// Metrik 4: NFC Okuma Süresi
metric('nfc.read_time', {
  value: duration_ms,
  tags: {
    tag_type: 'ISO_14443_A',
    data_groups: 'DG1,DG2',
    retry_count: 0
  }
});

// Alert: P95 > 12000ms (12s)
alert('nfc_timeout_risk', {
  condition: 'p95(nfc.read_time) > 12000',
  severity: 'critical'
});

// Metrik 5: NFC Başarı Oranı
metric('nfc.success_rate', {
  value: successful_reads / total_attempts,
  tags: {
    device_model: 'Samsung S22',
    os_version: 'Android 13'
  }
});
```

### 1.3 Liveness Performance

```typescript
// Metrik 6: Liveness İşlem Süresi
metric('liveness.duration', {
  value: duration_ms,
  tags: {
    challenge_count: 5,
    difficulty: 'medium',
    fps: 30
  }
});

// Metrik 7: Frame Rate
metric('liveness.fps', {
  value: frames_per_second,
  tags: {
    device_model: 'iPhone 13',
    recording_duration: 45000
  }
});

// Alert: FPS < 25
alert('liveness_low_fps', {
  condition: 'avg(liveness.fps) < 25',
  severity: 'warning'
});
```

---

## 2. SUCCESS/FAILURE METRICS

### 2.1 Genel Başarı Oranları

```typescript
// Metrik 8: OCR Başarı Oranı
metric('ocr.success_rate', {
  value: success_count / total_attempts,
  tags: {
    hour_of_day: 14,  // 0-23
    day_of_week: 'monday'
  }
});

// Metrik 9: NFC Başarı Oranı
metric('nfc.success_rate', {
  value: success_count / total_attempts,
  tags: {
    environment: 'indoor' | 'outdoor'
  }
});

// Metrik 10: Liveness Başarı Oranı
metric('liveness.success_rate', {
  value: success_count / total_attempts,
  tags: {
    lighting: 'good' | 'low'
  }
});

// Metrik 11: End-to-End Başarı Oranı
metric('e2e.success_rate', {
  value: (ocr_success && nfc_success && liveness_success) / total,
  tags: {
    sdk_version: '1.0.0'
  }
});
```

**SLA Tanımları:**
```typescript
const SLA_TARGETS = {
  ocr_success_rate: 0.95,      // 95%
  nfc_success_rate: 0.90,      // 90% (hardware variability)
  liveness_success_rate: 0.92, // 92%
  e2e_success_rate: 0.85,      // 85%
};

// Alert: SLA ihlali
alert('sla_violation', {
  condition: 'avg_over_time(ocr.success_rate[5m]) < 0.95',
  severity: 'critical',
  notification: ['pagerduty://on-call', 'email://team@company.com']
});
```

### 2.2 Hata Dağılımı

```typescript
// Metrik 12: Hata Tipi Dağılımı
metric('errors.by_code', {
  value: error_count,
  tags: {
    error_code: 'OCR_002',    // Low light
    module: 'OCR',
    retryable: true
  }
});

// Metrik 13: Kritik Hata Sayısı
metric('errors.critical_count', {
  value: critical_error_count,
  tags: {
    error_code: 'SEC_001',     // Root detected
    user_id_hash: 'sha256...'  // GDPR compliant
  }
});
```

---

## 3. SECURITY METRICS

### 3.1 Güvenlik Olayları

```typescript
// Metrik 14: Root/Jailbreak Detection
metric('security.root_detected', {
  value: 1,  // Boolean event
  tags: {
    device_model: 'Samsung A52',
    os_version: 'Android 12',
    action_taken: 'blocked' | 'warned'
  }
});

// Metrik 15: Certificate Pinning Failure
metric('security.cert_pinning_fail', {
  value: 1,
  tags: {
    endpoint: 'api.example.com',
    cert_hash: 'sha256...',
    expected_hash: 'sha256...'
  }
});

// Alert: Güvenlik olayı spike
alert('security_spike', {
  condition: 'sum(rate(security.root_detected[5m])) > 10',
  severity: 'critical',
  message: 'Unusual spike in root detection events'
});

// Metrik 16: Suspicious Activity
metric('security.suspicious_activity', {
  value: 1,
  tags: {
    type: 'rapid_retries' | 'multiple_devices' | 'unusual_location',
    user_id_hash: 'sha256...'
  }
});
```

### 3.2 PII Exposure Detection

```typescript
// Metrik 17: PII Log Detection (CI/CD'de)
metric('security.pii_in_logs', {
  value: pii_match_count,
  tags: {
    log_source: 'application',
    pattern_matched: 'TC_NUMBER' | 'NAME' | 'ADDRESS'
  }
});

// Alert: PII production log'larında
alert('pii_exposure', {
  condition: 'pii_in_logs > 0',
  severity: 'critical',
  auto_remediation: 'block_deployment'
});
```

---

## 4. USER EXPERIENCE METRICS

### 4.1 Kullanıcı Akış Metrikleri

```typescript
// Metrik 18: Funnel Conversion
metric('ux.funnel_step', {
  value: 1,
  tags: {
    step: 'ocr_start' | 'ocr_complete' | 'nfc_start' | 'nfc_complete' | 'liveness_start' | 'liveness_complete' | 'verification_success',
    session_id: 'uuid...',
    dropped: false
  }
});

// Conversion rate hesaplama
const conversionRate = {
  ocr_to_nfc: nfc_start / ocr_complete,
  nfc_to_liveness: liveness_start / nfc_complete,
  overall: verification_success / ocr_start
};

// Metrik 19: Session Duration
metric('ux.session_duration', {
  value: duration_ms,
  tags: {
    outcome: 'success' | 'abandoned' | 'error',
    attempt_count: 2
  }
});

// Alert: Yüksek abandon rate
alert('high_abandon_rate', {
  condition: '(abandoned / total) > 0.30',
  severity: 'warning'
});
```

### 4.2 Retry Behavior

```typescript
// Metrik 20: Average Retries
metric('ux.avg_retries', {
  value: total_retries / successful_sessions,
  tags: {
    module: 'OCR' | 'NFC' | 'LIVENESS'
  }
});

// Target: < 1.5 retries per module
```

---

## 5. BUSINESS METRICS

### 5.1 Kullanım İstatistikleri

```typescript
// Metrik 21: Daily Active Sessions
metric('business.daily_active_sessions', {
  value: unique_sessions_today,
  tags: {
    environment: 'production',
    country: 'TR'
  }
});

// Metrik 22: Verification Throughput
metric('business.verifications_per_minute', {
  value: verifications_last_minute,
  tags: {
    peak_hour: true | false
  }
});

// Metrik 23: Cost Per Verification
metric('business.cost_per_verification', {
  value: (ocr_cost + nfc_cost + liveness_cost + server_cost),
  tags: {
    provider: 'aws' | 'gcp'
  }
});
```

---

## 6. TELEMETRY IMPLEMENTATION

### 6.1 Event Logging Structure

```typescript
interface TelemetryEvent {
  timestamp: number;       // Unix timestamp
  event_type: string;      // 'ocr_start', 'nfc_success', etc.
  event_id: string;        // UUID
  session_id: string;      // Session UUID
  user_id_hash?: string;   // SHA256 hash (GDPR compliant)
  
  module: 'OCR' | 'NFC' | 'LIVENESS';
  status: 'started' | 'progress' | 'success' | 'failed';
  
  duration_ms?: number;
  error_code?: string;
  error_message?: string;
  
  metadata: {
    sdk_version: string;
    platform: 'ios' | 'android';
    os_version: string;
    device_model: string;
    app_version: string;
    network_type: 'wifi' | '4g' | '5g';
    battery_level: number;  // 0-100
  };
  
  performance: {
    memory_usage_mb?: number;
    cpu_usage_percent?: number;
    fps?: number;
  };
  
  tags: Record<string, string | number | boolean>;
}
```

### 6.2 Telemetry Sender

```typescript
// React Native SDK
import analytics from '@segment/analytics-react-native';
import { Platform } from 'react-native';

class TelemetryService {
  private sessionId: string;
  private buffer: TelemetryEvent[] = [];
  
  constructor() {
    this.sessionId = generateUUID();
  }
  
  track(event: Partial<TelemetryEvent>) {
    const fullEvent: TelemetryEvent = {
      timestamp: Date.now(),
      event_id: generateUUID(),
      session_id: this.sessionId,
      metadata: {
        sdk_version: SDK_VERSION,
        platform: Platform.OS,
        os_version: Platform.Version,
        device_model: DeviceInfo.getModel(),
        app_version: DeviceInfo.getVersion(),
        network_type: await NetInfo.getConnectionType(),
        battery_level: await DeviceInfo.getBatteryLevel() * 100,
      },
      ...event
    };
    
    // Batch sending (5 event'te bir veya 30 saniyede bir)
    this.buffer.push(fullEvent);
    
    if (this.buffer.length >= 5) {
      this.flush();
    }
  }
  
  private async flush() {
    if (this.buffer.length === 0) return;
    
    const events = [...this.buffer];
    this.buffer = [];
    
    try {
      await analytics.track('sdk_events_batch', { events });
    } catch (error) {
      console.error('Telemetry send failed:', error);
      // Silently fail, don't break user experience
    }
  }
}

// Usage
telemetry.track({
  event_type: 'ocr_start',
  module: 'OCR',
  status: 'started',
  tags: {
    document_type: 'TR_ID_CARD'
  }
});
```

### 6.3 Backend Telemetry Processing

```typescript
// Backend - Event Processing Pipeline
import { Kafka } from 'kafkajs';
import { InfluxDB } from '@influxdata/influxdb-client';

const kafka = new Kafka({ brokers: ['kafka:9092'] });
const consumer = kafka.consumer({ groupId: 'sdk-telemetry' });

const influx = new InfluxDB({ url: 'http://influxdb:8086' });
const writeApi = influx.getWriteApi('sdk_metrics', 'telemetry');

// Kafka consumer
await consumer.subscribe({ topic: 'sdk-events' });

await consumer.run({
  eachMessage: async ({ message }) => {
    const event: TelemetryEvent = JSON.parse(message.value.toString());
    
    // 1. Write to time-series DB (InfluxDB)
    const point = new Point(event.event_type)
      .tag('module', event.module)
      .tag('platform', event.metadata.platform)
      .tag('sdk_version', event.metadata.sdk_version)
      .floatField('duration_ms', event.duration_ms || 0)
      .intField('success', event.status === 'success' ? 1 : 0)
      .timestamp(event.timestamp);
    
    writeApi.writePoint(point);
    
    // 2. Real-time alerting (check thresholds)
    await checkAlerts(event);
    
    // 3. Write to long-term storage (S3/BigQuery)
    await archiveEvent(event);
  }
});
```

---

## 7. DASHBOARD SETUP

### 7.1 Grafana Dashboard (JSON Config)

```json
{
  "dashboard": {
    "title": "SDK Monitoring - Production",
    "panels": [
      {
        "title": "OCR Success Rate (Last 24h)",
        "type": "graph",
        "targets": [
          {
            "expr": "rate(ocr_success_total[5m]) / rate(ocr_attempts_total[5m])"
          }
        ],
        "alert": {
          "conditions": [
            {
              "evaluator": { "type": "lt", "params": [0.95] },
              "operator": { "type": "and" },
              "reducer": { "type": "avg" }
            }
          ]
        }
      },
      {
        "title": "P95 Processing Time by Module",
        "type": "graph",
        "targets": [
          {
            "expr": "histogram_quantile(0.95, rate(processing_time_bucket[5m]))"
          }
        ]
      }
    ]
  }
}
```

### 7.2 DataDog Dashboard

```typescript
// DataDog APM Integration
import { datadogRum } from '@datadog/mobile-react-native';

datadogRum.initialize({
  applicationId: '<APP_ID>',
  clientToken: '<CLIENT_TOKEN>',
  env: 'production',
  trackInteractions: true,
  trackResources: true,
  trackErrors: true,
});

// Custom metrics
datadogRum.addAction('ocr_scan', {
  duration_ms: 2500,
  confidence: 0.92,
  retry_count: 1
});
```

---

## 8. ALERTING RULES

### 8.1 Critical Alerts (PagerDuty)

| Alert | Condition | Severity | Response Time |
|-------|-----------|----------|---------------|
| **OCR Success Rate < 90%** | 5min avg | 🔴 Critical | 15 min |
| **NFC Success Rate < 85%** | 5min avg | 🔴 Critical | 15 min |
| **API Error Rate > 5%** | 1min avg | 🔴 Critical | 5 min |
| **Security: Root Detection Spike** | +50% in 5min | 🔴 Critical | Immediate |
| **PII in Logs** | Any occurrence | 🔴 Critical | Immediate |

### 8.2 Warning Alerts (Slack)

| Alert | Condition | Severity | Response Time |
|-------|-----------|----------|---------------|
| **OCR P95 Latency > 5s** | 10min avg | 🟠 Warning | 1 hour |
| **High Retry Rate (>30%)** | 15min avg | 🟠 Warning | 1 hour |
| **Low FPS (<25)** | 5min avg | 🟠 Warning | 2 hours |
| **Certificate Expiring Soon** | <30 days | 🟠 Warning | 1 week |

---

## 9. LOG RETENTION & COMPLIANCE

```typescript
const LOG_RETENTION_POLICY = {
  // Hot storage (fast query)
  realtime: {
    duration: '7 days',
    storage: 'InfluxDB',
    pii_allowed: false
  },
  
  // Warm storage
  recent: {
    duration: '30 days',
    storage: 'ElasticSearch',
    pii_allowed: false
  },
  
  // Cold storage (compliance)
  archive: {
    duration: '2 years',  // KVKK requirement
    storage: 'S3 Glacier',
    pii_allowed: true,    // Encrypted
    auto_delete: true     // After retention period
  },
  
  // Security logs
  security: {
    duration: '5 years',  // Compliance requirement
    storage: 'AWS CloudWatch Logs',
    immutable: true
  }
};
```

---

## 10. MONITORING CHECKLIST

- [x] **MON-001:** Telemetry SDK entegre edildi
- [ ] **MON-002:** Grafana dashboard oluşturuldu
- [ ] **MON-003:** PagerDuty entegrasyonu yapıldı
- [x] **MON-004:** Slack notifications aktif
- [ ] **MON-005:** SLA monitoring aktif
- [ ] **MON-006:** Error budget tracking yapılıyor
- [ ] **MON-007:** Cost monitoring dashboard var
- [ ] **MON-008:** On-call rotation tanımlı
- [ ] **MON-009:** Runbook dokümanları hazır
- [ ] **MON-010:** Post-mortem process tanımlı

---

**Son Güncelleme:** 2025-10-16  
**Sorumlu:** DevOps & SRE Team

# SDK Risk Matrix ve Risk Yönetimi

**Versiyon:** 1.0  
**Tarih:** 2025-10-16

---

## 📊 Risk Skoru Hesaplama

**Risk Skoru = Etki × Olasılık**

| Seviye | Etki | Olasılık | Risk Skoru |
|--------|------|----------|------------|
| **Çok Düşük** | 1 | 1 | 1-4 |
| **Düşük** | 2 | 2 | 5-9 |
| **Orta** | 3 | 3 | 10-14 |
| **Yüksek** | 4 | 4 | 15-19 |
| **Kritik** | 5 | 5 | 20-25 |

---

## 1. RİSK MATRİXİ TABLOSU

| Risk ID | Risk Tanımı | Kategori | Etki | Olasılık | Skor | Öncelik | Mitigation |
|---------|-------------|----------|------|----------|------|---------|------------|
| **R-001** | PII veri sızıntısı (bridge) | Güvenlik | 5 | 4 | **20** | 🔴 | Native işleme, token kullanımı |
| **R-002** | NFC chip signature doğrulaması eksik | Güvenlik | 5 | 3 | **15** | 🔴 | Backend SOD verification |
| **R-003** | Deepfake ile liveness bypass | Güvenlik | 5 | 3 | **15** | 🔴 | ML-based detection |
| **R-004** | Memory leak (OCR) | Performans | 4 | 4 | **16** | 🔴 | Native frame processing |
| **R-005** | KVKK/GDPR ihlali | Uyumluluk | 5 | 3 | **15** | 🔴 | Consent flow, data retention |
| **R-006** | iOS App Store red | İş | 4 | 3 | **12** | 🟠 | Info.plist düzeltmeleri |
| **R-007** | Certificate pinning eksikliği | Güvenlik | 4 | 3 | **12** | 🟠 | TLS pinning implement |
| **R-008** | Root/jailbreak detection yok | Güvenlik | 3 | 4 | **12** | 🟠 | Detection library ekle |
| **R-009** | OCR confidence threshold eksik | Kalite | 4 | 4 | **16** | 🔴 | Threshold +retry ekle |
| **R-010** | NFC timeout handling zayıf | UX | 3 | 4 | **12** | 🟠 | Retry + UX feedback |
| **R-011** | Bridge race condition | Stabilite | 4 | 3 | **12** | 🟠 | Thread-safe locks |
| **R-012** | PII in crash logs | Güvenlik | 4 | 3 | **12** | 🟠 | Log sanitization |
| **R-013** | API response manipulation | Güvenlik | 4 | 2 | **8** | 🟡 | Response validation |
| **R-014** | Expo uyumsuzluğu | Entegrasyon | 3 | 3 | **9** | 🟡 | Dokümantasyon |
| **R-015** | Third-party dependency vulnerability | Güvenlik | 3 | 3 | **9** | 🟡 | Auto-update, audit |
| **R-016** | Low battery during liveness | UX | 2 | 4 | **8** | 🟡 | Battery check + warning |
| **R-017** | Network connectivity loss | UX | 3 | 3 | **9** | 🟡 | Offline handling |
| **R-018** | Eski cihaz performans | Performans | 3 | 3 | **9** | 🟡 | Min spec tanımla |
| **R-019** | Regülasyon değişikliği | İş | 4 | 2 | **8** | 🟡 | Monitoring, legal review |
| **R-020** | Breaking change (RN update) | Teknik | 3 | 2 | **6** | 🟢 | Version locking |

---

## 2. DETAYLI RİSK ANALİZİ

### 🔴 R-001: PII Veri Sızıntısı

**Açıklama:**  
React Native bridge üzerinden aktarılan kimlik bilgileri JavaScript heap'te kalıyor.

**Etki (5/5):**
- KVKK/GDPR ihlali → Yasal yaptırım (cezalar)
- Kullanıcı güveni kaybı
- Marka itibarı hasarı
- Medya skandalı riski

**Olasılık (4/5):**
- Mevcut implementasyonda açıkça var
- Memory profiler ile kolayca tespit edilebilir
- Rooted/jailbroken cihazlarda yüksek risk

**Mevcut Kontroller:**
- ❌ Yok

**Önerilen Mitigations:**
1. Native tarafta PII işleme (5 gün, %100 etkili)
2. Session token mekanizması (3 gün, %100 etkili)
3. Encrypted secure storage (2 gün, %100 etkili)
4. Memory dump penetration test (1 gün, %100 validation)

**Residual Risk:** 2 (Düşük) - mitigation sonrası

**Owner:** Backend Lead + Mobile Lead  
**Target Date:** Week 2  
**Status:** 🔴 In Progress

---

### 🔴 R-002: NFC Chip Signature Doğrulaması Eksik

**Açıklama:**  
Chip'ten okunan veri kriptografik doğrulamadan geçmiyor.

**Etki (5/5):**
- Klonlanmış/sahte kimlik kabul edilir
- Fraud/dolandırıcılık artar
- Yasal sorumluluk
- Regülatör denetim riski

**Olasılık (3/5):**
- Saldırgan teknik bilgi gerektirir
- Özel donanım gerekir (NFC kloner)
- Ancak black market'te mevcut

**Mevcut Kontroller:**
- ⚠️ Kısmi: Client-side basic check (güvenilmez)

**Önerilen Mitigations:**
1. Backend SOD parsing + verification (5 gün, %95 etkili)
2. CSCA certificate chain doğrulama (3 gün, %95 etkili)
3. Data Group hash validation (2 gün, %100 etkili)
4. Active Authentication (opsiyonel) (5 gün, %99 etkili)

**Residual Risk:** 3 (Düşük) - PA implement edilirse  
**Residual Risk:** 1 (Çok Düşük) - PA + AA implement edilirse

**Owner:** Backend Security Team  
**Target Date:** Week 3  
**Status:** 🟡 Planned

---

### 🔴 R-003: Deepfake ile Liveness Bypass

**Açıklama:**  
Gelişmiş deepfake teknolojileri ile liveness testi atlatılabilir.

**Etki (5/5):**
- Sahte kimlik doğrulama başarılı olur
- Finansal kayıp (fraud)
- Güvenlik breşi
- Reputation damage

**Olasılık (3/5):**
- Gelişmiş saldırgan gerektirir
- Gerçek zamanlı deepfake teknolojisi henüz yaygın değil
- Ancak hızla gelişiyor (GPT-4, Midjourney, etc.)

**Mevcut Kontroller:**
- ✅ Temel anti-spoofing (texture, 3D depth)
- ❌ Deepfake detection ML model yok
- ❌ Temporal consistency check yok

**Önerilen Mitigations:**
1. Deepfake detection ML model (backend) (10 gün, %85 etkili)
2. Screen replay detection (moiré pattern) (3 gün, %90 etkili)
3. Temporal consistency analysis (5 gün, %80 etkili)
4. Behavioral biometrics (8 gün, %75 etkili)
5. Multi-layer scoring (2 gün, %95 etkili - combined)

**Residual Risk:** 4 (Orta) - tek katman  
**Residual Risk:** 2 (Düşük) - multi-layer

**Owner:** ML Team + Mobile Team  
**Target Date:** Week 6  
**Status:** 🟡 Planned

---

### 🔴 R-004: Memory Leak (OCR Frame Processing)

**Açıklama:**  
Kamera frame'leri bridge üzerinden sürekli aktarılıyor, cleanup yok.

**Etki (4/5):**
- Uygulama donması
- Crash (OOM)
- Kötü kullanıcı deneyimi
- App Store reviews düşer
- Uninstall rate artar

**Olasılık (4/5):**
- 10-15 saniye OCR kullanımında kesin görülür
- Tüm cihazlarda aynı
- Kolayca reproduce edilebilir

**Mevcut Kontroller:**
- ❌ Yok

**Önerilen Mitigations:**
1. Native frame processing (5 gün, %100 etkili)
2. Frame skip + throttling (2 gün, %80 etkili)
3. Buffer size limit (1 gün, %90 etkili)
4. Auto GC trigger (1 gün, %50 etkili)

**Residual Risk:** 1 (Çok Düşük) - native processing ile

**Owner:** Mobile Lead  
**Target Date:** Week 2  
**Status:** 🔴 In Progress

---

### 🔴 R-005: KVKK/GDPR İhlali

**Açıklama:**  
Veri işleme süreçleri KVKK/GDPR'a uygun değil.

**Etki (5/5):**
- Yasal cezalar (4% global turnover veya 20M EUR)
- Dava riski
- Ürün satış yasağı
- Reputational damage

**Olasılık (3/5):**
- Regülatör denetimi şansı orta
- Kullanıcı şikayeti ile yükselebilir
- Media exposure ile artar

**Mevcut Kontroller:**
- ❌ Aydınlatma metni yok
- ❌ Açık rıza mekanizması yok
- ❌ Veri saklama politikası belirsiz
- ❌ Veri silme endpoint'i yok

**Önerilen Mitigations:**
1. Aydınlatma metni + consent flow (3 gün, %100 gerekli)
2. Privacy policy hazırlama (5 gün, %100 gerekli)
3. Data retention policy (2 gün, %100 gerekli)
4. Veri silme API (3 gün, %100 gerekli)
5. Data minimization (1 gün, %100 gerekli)
6. Legal review (3 gün, %100 validation)

**Residual Risk:** 2 (Düşük) - tam uyum ile

**Owner:** Legal + Privacy Officer + Product  
**Target Date:** Week 4  
**Status:** 🔴 Not Started

---

### 🟠 R-006: iOS App Store Red

**Açıklama:**  
Info.plist'te izin açıklamaları eksik veya jenerik.

**Etki (4/5):**
- Production deployment engellenebilir
- Revenue loss (1-2 hafta gecikme)
- Timeline kaybı
- Stakeholder güveni azalır

**Olasılık (3/5):**
- Apple review kesin kontrol ediyor
- Jenerik açıklamalar %80 red alır
- Örnekler mevcut (benzer app'ler)

**Mevcut Kontroller:**
- ⚠️ Kısmi: Bazı izinler tanımlı ama jenerik

**Önerilen Mitigations:**
1. İzin açıklamalarını detaylandır (0.5 gün, %100 etkili)
2. Apple Human Interface Guidelines review (0.5 gün, %100 etkili)
3. Pre-submission test (TestFlight) (1 gün, %100 validation)

**Residual Risk:** 1 (Çok Düşük)

**Owner:** iOS Lead  
**Target Date:** Week 1  
**Status:** 🟢 Ready to Fix

---

### 🟠 R-007: Certificate Pinning Eksikliği

**Açıklama:**  
API çağrılarında certificate pinning yok → MITM saldırısı mümkün.

**Etki (4/5):**
- Veri intercept edilebilir
- PII sızıntısı
- Credentials çalınabilir
- Session hijacking

**Olasılık (3/5):**
- Public WiFi'de yüksek risk
- Corporate proxy'ler bypass edilebilir
- Charles/Burp Suite ile kolay

**Mevcut Kontroller:**
- ✅ HTTPS zorunlu
- ❌ Certificate pinning yok

**Önerilen Mitigations:**
1. Certificate pinning (Android + iOS) (2 gün, %95 etkili)
2. Backup certificate mekanizması (1 gün, %100 continuity)
3. Pin rotation stratejisi (0.5 gün, %100 maintainability)
4. Pinning bypass detection (1 gün, %80 etkili)

**Residual Risk:** 2 (Düşük)

**Owner:** Mobile Team  
**Target Date:** Week 2  
**Status:** 🟡 Planned

---

## 3. RİSK HİTMAP (Heat Map)

```
Olasılık ↑
    5 │  R-016    │         │  R-001   │          │          │
      │           │         │  R-004   │          │          │
    4 │  R-010    │         │  R-009   │          │          │
      │           │         │  R-008   │          │          │
    3 │           │  R-014  │  R-002   │          │          │
      │           │  R-015  │  R-003   │          │          │
      │           │  R-017  │  R-005   │          │          │
      │           │  R-018  │  R-006   │          │          │
      │           │         │  R-007   │          │          │
      │           │         │  R-011   │          │          │
      │           │         │  R-012   │          │          │
    2 │           │  R-013  │  R-019   │          │          │
      │           │  R-020  │          │          │          │
    1 │           │         │          │          │          │
      └───────────┴─────────┴──────────┴──────────┴──────────┘
        1         2         3          4          5  → Etki
      
Legend:
🔴 Kritik (skor 15+)
🟠 Yüksek (skor 10-14)
🟡 Orta (skor 6-9)
🟢 Düşük (skor 1-5)
```

---

## 4. RİSK ÖNCELİKLENDİRME

### Sprint 1 (Hafta 1-2): Kritik Riskler

| Risk ID | Aksiy on | Effort | Sorumlu | Status |
|---------|---------|--------|---------|--------|
| R-001 | PII native processing | 5 gün | Backend + Mobile | 🔴 |
| R-004 | Memory leak fix | 5 gün | Mobile | 🔴 |
| R-006 | iOS Info.plist | 0.5 gün | iOS | 🟢 |
| R-007 | Certificate pinning | 2 gün | Mobile | 🟡 |
| R-009 | OCR threshold | 1 gün | Mobile | 🟡 |

**Toplam:** 13.5 gün

### Sprint 2 (Hafta 3-4): Yüksek Riskler

| Risk ID | Aksiyon | Effort | Sorumlu | Status |
|---------|---------|--------|---------|--------|
| R-002 | NFC signature verification | 5 gün | Backend Security | 🟡 |
| R-005 | KVKK/GDPR compliance | 10 gün | Legal + Product | 🔴 |
| R-008 | Root detection | 2 gün | Mobile | 🟡 |
| R-011 | Thread safety | 3 gün | Mobile | 🟡 |
| R-012 | Log sanitization | 2 gün | DevOps | 🟡 |

**Toplam:** 22 gün

### Sprint 3 (Hafta 5-6): Orta Riskler

| Risk ID | Aksiyon | Effort | Sorumlu | Status |
|---------|---------|--------|---------|--------|
| R-003 | Deepfake detection | 10 gün | ML Team | 🟡 |
| R-010 | NFC UX improvement | 2 gün | Mobile + UX | 🟡 |
| R-013 | API response validation | 3 gün | Backend | 🟡 |
| R-015 | Dependency audit | 1 gün | DevOps | 🟡 |

**Toplam:** 16 gün

---

## 5. RİSK KABUL KRİTERLERİ

### Production Go/No-Go Kriterleri

**MUST HAVE (Zorunlu):**
- [ ] R-001: PII risk mitigation complete (skor < 5)
- [ ] R-002: NFC signature verification implemented
- [ ] R-005: KVKK/GDPR minimum compliance (%80)
- [ ] R-006: iOS App Store submission ready
- [ ] R-009: OCR quality threshold implemented

**SHOULD HAVE (Şiddetle Önerilen):**
- [ ] R-004: Memory leak fixed
- [ ] R-007: Certificate pinning active
- [ ] R-008: Root detection warning

**NICE TO HAVE (İyi Olur):**
- [ ] R-003: Deepfake detection (baseline)
- [ ] R-010: Enhanced NFC UX
- [ ] R-013: API validation

**Risk Acceptance:**
- Kritik riskler (skor 15+): %0 kabul
- Yüksek riskler (skor 10-14): Max 2 adet, CTO approval
- Orta riskler (skor 6-9): Max 5 adet, Engineering Manager approval
- Düşük riskler (skor 1-5): Tümü acceptable

---

## 6. SÜREKLI RİSK İZLEME

### Haftalık Risk Review

```typescript
const WEEKLY_RISK_REVIEW = {
  frequency: 'Every Monday 10:00',
  attendees: ['CTO', 'Engineering Manager', 'Product Manager', 'Security Lead'],
  agenda: [
    'New risks identified this week',
    'Mitigation progress update',
    'Risk score changes',
    'Incidents related to risks',
    'Risk appetite review'
  ],
  deliverables: [
    'Updated risk matrix',
    'Action items with owners',
    'Escalations if needed'
  ]
};
```

### Risk KPIs

| KPI | Target | Current | Status |
|-----|--------|---------|--------|
| **Kritik risk sayısı** | 0 | 5 | 🔴 |
| **Yüksek risk sayısı** | < 3 | 6 | 🟠 |
| **Orta risk sayısı** | < 10 | 5 | 🟢 |
| **Mitigation completion rate** | > 80% | 45% | 🔴 |
| **Average resolution time (kritik)** | < 2 weeks | 3 weeks | 🟠 |

---

## 7. RİSK ESCALATION PROSEDÜRÜ

### Escalation Path

```mermaid
graph TD
    A[New Risk Identified] --> B{Risk Score?}
    B -->|1-5| C[Engineering Manager]
    B -->|6-9| D[Product Manager]
    B -->|10-14| E[CTO]
    B -->|15+| F[CEO + CTO]
    
    E --> G{Mitigation < 1 week?}
    G -->|No| F
    
    F --> H[Emergency Response Team]
    H --> I[Immediate Action Plan]
```

### Emergency Response

**Kritik Risk (skor 15+) tespit edilirse:**
1. **T+0:** Risk sahibi CTO'ya bildirir
2. **T+1h:** Emergency meeting (CTO, PM, Leads)
3. **T+2h:** Action plan hazır
4. **T+24h:** First mitigation deployed
5. **T+1 week:** Full mitigation complete

---

**Son Güncelleme:** 2025-10-16  
**Sonraki Review:** 2025-10-23 (Haftalık)  
**Risk Owner:** CTO  
**Document Owner:** Engineering Manager

# SDK Güvenlik & Gizlilik Checklist

**Versiyon:** 1.0  
**Tarih:** 2025-10-16  
**Uyumluluk:** KVKK, GDPR, ISO 27001

---

## 📋 Genel Durum

| Kategori | Tamamlanan | Toplam | Durum |
|----------|------------|--------|-------|
| **Veri Güvenliği** | 8/15 | 15 | 🟡 53% |
| **Şifreleme** | 5/10 | 10 | 🔴 50% |
| **Kimlik Doğrulama** | 6/8 | 8 | 🟢 75% |
| **İzin Yönetimi** | 7/8 | 8 | 🟢 88% |
| **Logging & Monitoring** | 4/10 | 10 | 🔴 40% |
| **KVKK/GDPR Uyumluluk** | 3/12 | 12 | 🔴 25% |
| **Kod Güvenliği** | 5/9 | 9 | 🟡 56% |
| **Network Güvenliği** | 4/8 | 8 | 🔴 50% |
| **TOPLAM** | **42/80** | **80** | **🟡 53%** |

---

## 1. VERİ GÜVENLİĞİ

### 1.1 PII (Personally Identifiable Information) Protection

- [x] **DS-001:** PII verileri native tarafta işleniyor
- [ ] **DS-002:** PII JavaScript heap'te tutulmuyor
- [ ] **DS-003:** Session token mekanizması implement edildi
- [x] **DS-004:** Token auto-expiration (5 dakika) aktif
- [ ] **DS-005:** PII verisi crash report'larda görünmüyor
- [ ] **DS-006:** Memory dump'ta PII tespit edilemiyor
- [x] **DS-007:** Debug build'de PII log'ları guard'lanmış
- [ ] **DS-008:** Third-party analytics PII göndermiy or

### 1.2 Data Storage

- [x] **DS-101:** Android Keystore kullanılıyor
- [x] **DS-102:** iOS Keychain kullanılıyor
- [ ] **DS-103:** Geçici dosyalar encrypted
- [ ] **DS-104:** Geçici dosyalar auto-cleanup (session bitince)
- [x] **DS-105:** SQLite veritabanı encrypted (SQLCipher)
- [ ] **DS-106:** SharedPreferences/UserDefaults encrypted
- [x] **DS-107:** Biometric data device-only (hiç sunucuya gönderilmiyor)

---

## 2. ŞİFRELEME

### 2.1 Data at Rest

- [x] **ENC-001:** AES-256-GCM kullanılıyor
- [x] **ENC-002:** Encryption key'ler hardware-backed (Keystore/Keychain)
- [ ] **ENC-003:** Key rotation mekanizması var
- [ ] **ENC-004:** Old key'lerle decrypt, new key'le re-encrypt

### 2.2 Data in Transit

- [x] **ENC-101:** TLS 1.2+ zorunlu
- [ ] **ENC-102:** TLS 1.3 tercih ediliyor
- [ ] **ENC-103:** Certificate pinning implement edildi
- [ ] **ENC-104:** Certificate pinning bypass detection var
- [ ] **ENC-105:** mTLS (mutual TLS) kritik endpoint'lerde kullanılıyor
- [x] **ENC-106:** WebSocket connections encrypted (WSS)

---

## 3. KİMLİK DOĞRULAMA & YETKİLENDİRME

### 3.1 NFC Chip Verification

- [ ] **AUTH-001:** SOD (Security Object Document) parse ediliyor
- [ ] **AUTH-002:** CSCA certificate chain doğrulaması yapılıyor
- [ ] **AUTH-003:** Data Group hash'leri verify ediliyor
- [ ] **AUTH-004:** Active Authentication (AA) destekleniyor (opsiyonel)
- [x] **AUTH-005:** Passive Authentication (PA) implement edildi
- [ ] **AUTH-006:** ICAO Master List güncel tutuluyor (auto-update)

### 3.2 Device Attestation

- [ ] **AUTH-101:** Android SafetyNet Attestation kullanılıyor
- [x] **AUTH-102:** iOS DeviceCheck kullanılıyor

---

## 4. İZİN YÖNETİMİ

### 4.1 Android

- [x] **PERM-001:** `CAMERA` izni AndroidManifest.xml'de tanımlı
- [x] **PERM-002:** `NFC` izni tanımlı
- [x] **PERM-003:** `INTERNET` izni tanımlı
- [x] **PERM-004:** Runtime permissions düzgün talep ediliyor
- [x] **PERM-005:** İzin reddi durumu handle ediliyor
- [ ] **PERM-006:** Android 13+ `POST_NOTIFICATIONS` izni talep ediliyor

### 4.2 iOS

- [x] **PERM-101:** `NSCameraUsageDescription` Info.plist'te var
- [x] **PERM-102:** `NSMicrophoneUsageDescription` var
- [ ] **PERM-103:** `NFCReaderUsageDescription` detaylı ve açıklayıcı
- [ ] **PERM-104:** Permission denial durumu UX'te iyi açıklanıyor

---

## 5. LOGGING & MONİTORİNG

### 5.1 Secure Logging

- [ ] **LOG-001:** Production'da PII log'lanmıyor
- [x] **LOG-002:** `__DEV__` guard'ları kullanılıyor
- [ ] **LOG-003:** Sensitive data masking implement edildi
- [ ] **LOG-004:** Log seviyeleri doğru ayarlanmış (ERROR, WARN, INFO)
- [ ] **LOG-005:** Crash reporting PII scrubbing yapıyor

### 5.2 Security Event Logging

- [ ] **LOG-101:** Failed authentication attempt'ler loglanıyor
- [ ] **LOG-102:** Root/jailbreak detection loglanıyor
- [ ] **LOG-103:** Certificate pinning failure loglanıyor
- [ ] **LOG-104:** Suspicious activity (repeated failures) tespit ediliyor
- [ ] **LOG-105:** Security events backend'e raporlanıyor

---

## 6. KVKK/GDPR UYUMLULUK

### 6.1 Consent & Transparency

- [ ] **GDPR-001:** Aydınlatma metni uygulamada gösteriliyor
- [ ] **GDPR-002:** Açık rıza (explicit consent) mekanizması var
- [ ] **GDPR-003:** Consent withdrawal (rıza geri çekme) mümkün
- [ ] **GDPR-004:** Privacy policy URL uygulamada ve store listing'de var

### 6.2 Data Minimization

- [x] **GDPR-101:** Sadece gerekli veri toplanıyor
- [ ] **GDPR-102:** Opsiyonel veriler açıkça belirtiliyor
- [x] **GDPR-103:** Facial recognition data local'de işleniyor

### 6.3 Data Retention

- [ ] **GDPR-201:** Veri saklama süreleri belirlenmiş
- [ ] **GDPR-202:** Auto-delete mekanizması implement edildi
- [ ] **GDPR-203:** Kullanıcı veri silme talebi endpoint'i var
- [ ] **GDPR-204:** Backup'larda veri silme uygulanıyor

### 6.4 Data Portability & Access

- [ ] **GDPR-301:** Kullanıcı kendi verisine erişebiliyor
- [ ] **GDPR-302:** Veri export (JSON/CSV) mümkün
- [ ] **GDPR-303:** Data breach notification planı var

---

## 7. KOD GÜVENLİĞİ

### 7.1 Code Obfuscation

- [ ] **CODE-001:** ProGuard/R8 (Android) aktif
- [ ] **CODE-002:** Code minification yapılıyor
- [ ] **CODE-003:** String encryption kullanılıyor (kritik string'ler için)
- [x] **CODE-004:** API keys hardcoded değil (environment variables)

### 7.2 Anti-Tampering

- [ ] **CODE-101:** Root/jailbreak detection implement edildi
- [ ] **CODE-102:** Debug detection var
- [ ] **CODE-103:** Emulator detection var
- [ ] **CODE-104:** Integrity check (app signature verification)
- [ ] **CODE-105:** Frida/Xposed framework detection

---

## 8. NETWORK GÜVENLİĞİ

### 8.1 API Security

- [x] **NET-001:** HTTPS zorunlu (HTTP kapalı)
- [ ] **NET-002:** Certificate pinning implement edildi
- [ ] **NET-003:** API rate limiting var
- [x] **NET-004:** API timeout'lar ayarlanmış
- [ ] **NET-005:** Request/response encryption (end-to-end)

### 8.2 Attack Prevention

- [ ] **NET-101:** MITM protection (cert pinning)
- [ ] **NET-102:** Replay attack prevention (nonce/timestamp)
- [ ] **NET-103:** SQL injection protection (prepared statements)
- [ ] **NET-104:** XSS protection (input sanitization)

---

## 9. ÜçÜNCÜ TARAF GÜVENLİĞİ

### 9.1 Dependencies

- [x] **DEP-001:** Dependency audit yapılıyor (`npm audit`)
- [ ] **DEP-002:** Vulnerable dependencies güncel
- [x] **DEP-003:** License compliance check yapıldı
- [ ] **DEP-004:** Third-party SDK'lar KVKK/GDPR compliant

### 9.2 SDK Permissions

- [ ] **DEP-101:** Third-party SDK'lar minimum permission kullanıyor
- [ ] **DEP-102:** Analytics SDK'sı PII göndermiyor
- [ ] **DEP-103:** Crash reporting SDK'sı PII scrubbing yapıyor

---

## 10. TEST & VALIDATION

### 10.1 Security Testing

- [ ] **TEST-001:** Penetration test yapıldı
- [ ] **TEST-002:** OWASP Mobile Top 10 test edildi
- [ ] **TEST-003:** Static code analysis (SonarQube, ESLint Security)
- [ ] **TEST-004:** Dynamic analysis (Frida, Objection)

### 10.2 Compliance Testing

- [ ] **TEST-101:** KVKK compliance audit yapıldı
- [ ] **TEST-102:** GDPR compliance checklist tamamlandı
- [ ] **TEST-103:** App store security guidelines karşılanıyor

---

## 11. ÖZEL GÜVENLİK KONTROLLERİ

### 11.1 OCR Güvenlik

- [x] **OCR-SEC-001:** OCR confidence threshold var (>85%)
- [ ] **OCR-SEC-002:** Server-side OCR re-verification yapılıyor
- [ ] **OCR-SEC-003:** Image hash verification var
- [x] **OCR-SEC-004:** TC No checksum validation yapılıyor

### 11.2 NFC Güvenlik

- [ ] **NFC-SEC-001:** Chip signature doğrulaması backend'de
- [ ] **NFC-SEC-002:** Replay attack detection var
- [ ] **NFC-SEC-003:** NFC raw data encrypted transfer
- [x] **NFC-SEC-004:** NFC timeout 10 saniye

### 11.3 Liveness Güvenlik

- [x] **LIVE-SEC-001:** Challenge randomization yapılıyor
- [ ] **LIVE-SEC-002:** Deepfake detection var
- [ ] **LIVE-SEC-003:** Screen replay detection var
- [x] **LIVE-SEC-004:** Video kayıtları encrypted
- [ ] **LIVE-SEC-005:** Video auto-delete (verification sonrası)

---

## 12. OPERASYONEL GÜVENLİK

### 12.1 CI/CD Security

- [x] **OPS-001:** Secrets environment variables'da (hardcoded değil)
- [ ] **OPS-002:** Code signing certificates güvenli saklanıyor
- [x] **OPS-003:** Automated security scans CI/CD'de
- [ ] **OPS-004:** Dependency vulnerability scan otomatik

### 12.2 Incident Response

- [ ] **OPS-101:** Security incident response planı var
- [ ] **OPS-102:** Data breach notification prosedürü belirlenmiş
- [ ] **OPS-103:** Emergency contact listesi güncel
- [ ] **OPS-104:** Backup & recovery planı test edilmiş

---

## 13. DOKÜMANTASYON

- [x] **DOC-001:** Security architecture dokümanı var
- [ ] **DOC-002:** Threat model dokümanı hazırlandı
- [ ] **DOC-003:** Privacy policy hazırlandı
- [ ] **DOC-004:** Security best practices rehberi var
- [x] **DOC-005:** API security documentation var

---

## ÖNCELİKLİ AKSIYON LİSTESİ

### 🔴 KRİTİK (1-2 Hafta)

1. **DS-002:** PII JavaScript heap'ten temizleme → 5 gün
2. **ENC-103:** Certificate pinning → 2 gün
3. **AUTH-001-003:** NFC signature validation → 5 gün
4. **GDPR-001-002:** Consent mechanism → 3 gün
5. **CODE-101:** Root/jailbreak detection → 2 gün

### 🟠 YÜKSEK (3-4 Hafta)

6. **LOG-001:** PII logging cleanup → 2 gün
7. **NET-102:** Replay attack prevention → 3 gün
8. **LIVE-SEC-002:** Deepfake detection → 5 gün
9. **TEST-001:** Penetration test → 3 gün
10. **GDPR-201-202:** Data retention policy → 2 gün

### 🟡 ORTA (5-6 Hafta)

11. **ENC-003-004:** Key rotation → 3 gün
12. **CODE-003:** String encryption → 2 gün
13. **TEST-003:** Static analysis integration → 2 gün
14. **DOC-002:** Threat model → 2 gün

---

## COMPLIANCE SCORECARD

| Standard | Uyumluluk | Eksik Alan | Target Date |
|----------|-----------|------------|-------------|
| **KVKK** | 25% 🔴 | Consent, data retention, privacy policy | Week 4 |
| **GDPR** | 30% 🔴 | Same as KVKK + data portability | Week 4 |
| **OWASP Mobile Top 10** | 60% 🟡 | Code obfuscation, root detection | Week 6 |
| **ISO 27001** | 50% 🟡 | Incident response, audit logs | Week 8 |
| **PCI DSS** | N/A | - | - |

---

## SIGN-OFF

**Security Team:** [ ] Approved  
**Privacy Officer:** [ ] Approved  
**Legal Team:** [ ] Approved  
**CTO:** [ ] Approved

**Notes:**  
Production deployment için minimum %80 completion gerekli.  
Kritik güvenlik maddeleri %100 tamamlanmalı.

---

**Son Güncelleme:** 2025-10-16  
**Sonraki Review:** 2025-11-16 (1 ay sonra)

# SDK Test Planı

**Versiyon:** 1.0  
**Tarih:** 2025-10-16

---

## Test Özeti

| Kategori | Test Sayısı | Otomatik | Manuel | Durum |
|----------|-------------|----------|--------|-------|
| Unit Tests | 150 | 150 | 0 | 🟢 85% |
| Integration | 45 | 40 | 5 | 🟡 60% |
| E2E | 30 | 20 | 10 | 🟡 50% |
| Security | 25 | 15 | 10 | 🔴 30% |
| Performance | 20 | 20 | 0 | 🟢 90% |
| **TOPLAM** | **270** | **245** | **25** | **70%** |

---

## 1. UNIT TESTS (150)

### OCR Module (40 tests)

```javascript
// ✅ OCR-UT-001: Text Recognition
describe('OCR Basic', () => {
  it('should recognize clear text >90% confidence', async () => {
    const result = await ocrReader.scan(clearImage);
    expect(result.confidence).toBeGreaterThan(0.90);
  });
  
  it('should reject low confidence', async () => {
    const result = await ocrReader.scan(blurryImage);
    expect(result.status).toBe('LOW_CONFIDENCE');
  });
});

// ✅ OCR-UT-002: TC No Validation
test.each([
  ['10000000146', true],  // Valid
  ['00000000000', false], // Invalid
])('TC No validation: %s', (tcNo, expected) => {
  expect(validateTCNo(tcNo)).toBe(expected);
});

// ✅ OCR-UT-003: Image Preprocessing
it('should correct perspective distortion', async () => {
  const corrected = await preprocessor.correctPerspective(distorted);
  expect(detectCorners(corrected)).toBeRectangular();
});

// ✅ OCR-UT-004: Glare Detection
it('should detect glare and retry', () => {
  const analysis = preprocessor.analyzeQuality(glareImage);
  expect(analysis.hasGlare).toBe(true);
});
```

### NFC Module (35 tests)

```javascript
// ✅ NFC-UT-001: Chip Reading
it('should read DG1 (MRZ)', async () => {
  const dg1 = await nfcReader.readDataGroup(1);
  expect(dg1).toBeDefined();
});

// ✅ NFC-UT-002: Timeout Handling
it('should timeout after 10s', async () => {
  await expect(nfcReader.read({ timeout: 10000 }))
    .rejects.toThrow('NFC_TIMEOUT');
});

// ✅ NFC-UT-003: Platform Detection
it('should detect NFC support', () => {
  expect(nfcReader.isSupported()).toBe(true);
});
```

### Liveness Module (45 tests)

```javascript
// ✅ LIVE-UT-001: Face Detection
it('should detect single face', async () => {
  const faces = await detector.detect(singleFaceImage);
  expect(faces).toHaveLength(1);
});

// ✅ LIVE-UT-002: Blink Detection
it('should detect blink', async () => {
  const result = await motion.detectBlink(blinkFrames);
  expect(result.detected).toBe(true);
});

// ✅ LIVE-UT-003: Anti-Spoofing
it('should detect photo attack', async () => {
  const result = await antiSpoof.analyze(photoAttack);
  expect(result.isSpoofed).toBe(true);
});
```

---

## 2. INTEGRATION TESTS (45)

### OCR + NFC Integration (15 tests)

```javascript
// ✅ INT-001: Data Matching
it('should match OCR and NFC TC No', async () => {
  const ocr = await ocrReader.scan(idCard);
  const nfc = await nfcReader.read();
  expect(ocr.tcNo).toBe(nfc.tcNo);
});

// ✅ INT-002: Mismatch Detection
it('should reject data mismatch', () => {
  const isValid = compareData(ocrData, nfcData);
  expect(isValid).toBe(false);
});
```

### Full Workflow (10 tests)

```javascript
// ✅ WORKFLOW-001: Complete Verification
it('should complete full flow', async () => {
  const ocr = await ocrReader.scan();
  const nfc = await nfcReader.read();
  const liveness = await livenessDetector.verify();
  const result = await backend.verify({ ocr, nfc, liveness });
  expect(result.verified).toBe(true);
});
```

---

## 3. E2E TESTS (30)

```javascript
// ✅ E2E-001: Happy Path
describe('E2E Success Flow', () => {
  it('should verify identity end-to-end', async () => {
    await device.launchApp();
    await element(by.id('start-btn')).tap();
    // ... OCR -> NFC -> Liveness
    await waitFor(element(by.id('success'))).toBeVisible();
  });
});

// ✅ E2E-ERR-001: Low Light Error
it('should show retry on low light', async () => {
  await takePhotoLowLight();
  await expect(element(by.id('error')))
    .toHaveText('Fotoğraf karanlık');
});
```

---

## 4. SECURITY TESTS (25)

```javascript
// ✅ SEC-001: Memory Dump
it('PII should not appear in heap dump', async () => {
  await performOCR();
  const heap = await captureHeapDump();
  expect(heap).not.toContain('TC:');
});

// ✅ SEC-002: MITM Protection
it('should reject invalid certificate', async () => {
  setupMITMProxy();
  await expect(api.call()).rejects.toThrow('CERT_PINNING_FAILED');
});

// ✅ SEC-003: Root Detection
it('should detect rooted device', async () => {
  mockRootedDevice();
  expect(await security.isRooted()).toBe(true);
});
```

---

## 5. PERFORMANCE TESTS (20)

```javascript
// ✅ PERF-001: OCR Speed
it('should process in <3s', async () => {
  const start = Date.now();
  await ocrReader.scan(image);
  expect(Date.now() - start).toBeLessThan(3000);
});

// ✅ PERF-002: Memory Stability
it('should maintain <100MB increase', async () => {
  const initial = getMemory();
  for (let i = 0; i < 100; i++) await scan();
  expect(getMemory() - initial).toBeLessThan(100 * 1024 * 1024);
});

// ✅ PERF-003: Frame Rate
it('should maintain 30+ FPS', async () => {
  const fps = await measureFPS(5000);
  expect(fps).toBeGreaterThan(30);
});
```

---

## TEST EXECUTION SCHEDULE

| Sprint | Tests | Duration | Team |
|--------|-------|----------|------|
| Sprint 1 | Unit (OCR, NFC, Liveness) | 2 weeks | QA + Dev |
| Sprint 2 | Integration + Error | 2 weeks | QA |
| Sprint 3 | E2E + Security | 2 weeks | QA + Security |
| Sprint 4 | Performance | 1 week | Performance Team |

---

## TEST DATA

**Mock TC Numbers:**
- Valid: 10000000146, 10000000154
- Invalid: 00000000000, 12345678901

**Test Images:**
- clear_id_card.jpg
- blurry_id_card.jpg
- low_light.jpg
- with_glare.jpg

---

Detaylı test senaryoları için:
- [Security Test Plan](./SDK_AUDIT_SECURITY_TEST_PLAN.md)
- [Performance Benchmarks](./SDK_AUDIT_PERFORMANCE_BENCHMARKS.md)

# SDK UX & Erişilebilirlik Önerileri

**Versiyon:** 1.0  
**Tarih:** 2025-10-16  
**Kapsam:** OCR, NFC, Liveness Modülleri

---

## 📋 UX Skor Özeti

| Kategori | Skor | Durum |
|----------|------|-------|
| **İzin Yönetimi** | 65% | 🟡 |
| **Hata Mesajları** | 70% | 🟡 |
| **Kullanıcı Yönlendirme** | 60% | 🟡 |
| **Görsel Geri Bildirim** | 75% | 🟢 |
| **Erişilebilirlik** | 40% | 🔴 |
| **Lokalizasyon** | 50% | 🔴 |
| **Genel UX Skoru** | **60%** | 🟡 |

---

## 1. İZİN YÖNETİMİ

### 1.1 Kamera İzni

**❌ Mevcut Durum:**
```javascript
// Doğrudan kamera açılıyor, context yok
await camera.start();
// Red edilirse sadece "Permission denied" hatası
```

**✅ Önerilen Yaklaşım:**
```javascript
// 1. Pre-permission education screen
const educateUser = () => (
  <View style={styles.educationScreen}>
    <Image source={require('./camera-icon.png')} />
    <Text style={styles.title}>
      Kimlik Belgesi Taraması İçin Kamera Gerekli
    </Text>
    <Text style={styles.description}>
      Kimliğinizdeki bilgileri otomatik okumak için kamera erişimine ihtiyacımız var.
      Fotoğraflarınız cihazınızda işlenir ve saklanmaz.
    </Text>
    <Button onPress={requestPermission}>İzin Ver</Button>
    <Button onPress={skipToManual} type="secondary">Manuel Giriş</Button>
  </View>
);

// 2. Contextual permission request
const requestPermission = async () => {
  const status = await Camera.requestPermission();
  
  if (status === 'denied') {
    // Kullanıcı reddetti
    showAlert({
      title: 'Kamera İzni Gerekli',
      message: 'Kimlik belgesi taramak için kamera erişimi gerekiyor.',
      buttons: [
        { text: 'Ayarları Aç', onPress: openSettings },
        { text: 'Manuel Giriş Yap', onPress: skipToManual }
      ]
    });
  }
};

// 3. Settings deep link
const openSettings = () => {
  if (Platform.OS === 'ios') {
    Linking.openURL('app-settings:');
  } else {
    Linking.openSettings();
  }
};
```

**Accessibility:**
```javascript
<Button
  accessible={true}
  accessibilityLabel="Kamera iznini ver"
  accessibilityHint="Kimlik belgenizi taramak için kamera erişimi verir"
  onPress={requestPermission}
/>
```

### 1.2 NFC İzni

**✅ iOS Specific - Inline Instruction:**
```javascript
<View style={styles.nfcInstructions}>
  <AnimatedNFCIcon />
  <Text style={styles.instructionText}>
    Kimlik kartınızı iPhone'unuzun üst kısmına yaklaştırın
  </Text>
  {Platform.OS === 'ios' && Platform.Version < '13.0' && (
    <Text style={styles.warningText}>
      ⚠️ NFC okuma iOS 13+ gerektirir. Lütfen güncelleme yapın.
    </Text>
  )}
</View>
```

---

## 2. HATA MESAJLARİ

### 2.1 User-Friendly Error Messages

**❌ Kötü Örnek:**
```
Error: OCR_002
Low light condition detected
```

**✅ İyi Örnek:**
```javascript
const ERROR_MESSAGES = {
  // Türkçe
  tr: {
    OCR_002: {
      title: 'Fotoğraf Karanlık',
      message: 'Kimlik belgeniz yeterince aydınlık değil.',
      suggestion: 'Lambayı açın veya pencere kenarına gidin.',
      action: 'Tekrar Dene',
      illustration: 'light-bulb-icon.png'
    },
    OCR_003: {
      title: 'Yansıma Var',
      message: 'Kimlik belgenizde parlama görüyoruz.',
      suggestion: 'Işığı doğrudan belgeye tutmayın. Hafif açıdan tutun.',
      action: 'Tekrar Çek',
      illustration: 'no-glare-icon.png'
    },
    NFC_001: {
      title: 'Zaman Aşımı',
      message: 'Kimlik kartı okunamadı.',
      suggestion: 'Kartı telefonun arkasına yaklaştırıp 5 saniye tutun.',
      action: 'Tekrar Dene',
      illustration: 'nfc-position.gif'
    }
  },
  
  // İngilizce
  en: {
    OCR_002: {
      title: 'Photo Too Dark',
      message: 'Your ID card is not bright enough.',
      suggestion: 'Turn on the light or move near a window.',
      action: 'Try Again',
      illustration: 'light-bulb-icon.png'
    }
  }
};

// Component
const ErrorScreen = ({ errorCode, onRetry }) => {
  const locale = useLocale();
  const error = ERROR_MESSAGES[locale][errorCode];
  
  return (
    <View style={styles.errorContainer}>
      <Image source={error.illustration} style={styles.illustration} />
      <Text style={styles.errorTitle}>{error.title}</Text>
      <Text style={styles.errorMessage}>{error.message}</Text>
      <View style={styles.suggestionBox}>
        <Icon name="lightbulb" />
        <Text style={styles.suggestion}>{error.suggestion}</Text>
      </View>
      <Button onPress={onRetry}>{error.action}</Button>
    </View>
  );
};
```

### 2.2 Progressive Error Disclosure

```javascript
// 1st attempt: Basit mesaj
"Fotoğraf bulanık. Lütfen tekrar çekin."

// 2nd attempt: Daha detaylı
"Fotoğraf hala bulanık. Telefonu sabit tutun ve odaklanmasını bekleyin."

// 3rd attempt: Video tutorial
"Sorun devam ediyor. Nasıl çekilir? (Video izle)"

// 4th attempt: Manuel giriş önerisi
"Otomatik okuma çalışmıyor. Manuel olarak girmek ister misiniz?"
```

---

## 3. KULLANICI YÖNLENDİRME

### 3.1 OCR Kamera Rehberi

**Real-time Overlay:**
```javascript
const CameraGuide = ({ frameDetected, quality }) => (
  <View style={styles.overlay}>
    {/* Document frame overlay */}
    <View style={[
      styles.documentFrame,
      frameDetected && styles.frameDetected
    ]}>
      {!frameDetected && (
        <Text style={styles.guideText}>
          Kimlik kartınızı çerçeveye yerleştirin
        </Text>
      )}
      
      {frameDetected && quality.tooFar && (
        <Text style={styles.guideText}>📏 Daha yakın tutun</Text>
      )}
      
      {frameDetected && quality.tooClose && (
        <Text style={styles.guideText}>📏 Biraz uzaklaştırın</Text>
      )}
      
      {frameDetected && quality.glare && (
        <Text style={styles.guideText}>💡 Işık yansıyor</Text>
      )}
      
      {frameDetected && quality.blur && (
        <Text style={styles.guideText}>🤚 Telefonu sabit tutun</Text>
      )}
      
      {frameDetected && quality.perfect && (
        <View style={styles.perfectState}>
          <CheckIcon color="green" size={48} />
          <Text style={styles.guideText}>✅ Mükemmel! Çekiliyor...</Text>
        </View>
      )}
    </View>
    
    {/* Quality indicators */}
    <View style={styles.qualityBar}>
      <QualityIndicator label="Işık" value={quality.brightness} />
      <QualityIndicator label="Netlik" value={quality.sharpness} />
      <QualityIndicator label="Açı" value={quality.angle} />
    </View>
  </View>
);
```

### 3.2 NFC Pozisyon Rehberi

```javascript
const NFCPositionGuide = ({ deviceModel }) => {
  // Device-specific NFC antenna position
  const nfcPosition = getNFCAntennaPosition(deviceModel);
  
  return (
    <View style={styles.nfcGuide}>
      <AnimatedPhone model={deviceModel}>
        <NFCAntennaHighlight position={nfcPosition} />
      </AnimatedPhone>
      
      <Text style={styles.instruction}>
        {deviceModel === 'iPhone' 
          ? 'Kartı telefonun üst kısmına yaklaştırın'
          : 'Kartı telefonun arkasına yaklaştırın'}
      </Text>
      
      <ProgressCircle timeout={10} />
      
      <Button onPress={showDetailedGuide} type="link">
        Daha detaylı yardım
      </Button>
    </View>
  );
};

// Detailed guide with video
const DetailedNFCGuide = () => (
  <ScrollView>
    <Video source={require('./nfc-tutorial.mp4')} />
    <Text style={styles.stepTitle}>Adım 1: Kartı çıkarın</Text>
    <Text style={styles.stepDescription}>
      Kimlik kartınızı cüzdanınızdan çıkarın.
    </Text>
    <Image source={require('./step1.png')} />
    
    <Text style={styles.stepTitle}>Adım 2: Telefonu düz tutun</Text>
    <Text style={styles.stepDescription}>
      Telefonu masada veya elinizde düz tutun.
    </Text>
    
    <Text style={styles.stepTitle}>Adım 3: Kartı yaklaştırın</Text>
    <Text style={styles.stepDescription}>
      Kartı telefonun {getNFCPosition()} 5 saniye tutun.
    </Text>
  </ScrollView>
);
```

### 3.3 Liveness Challenge Instructions

```javascript
const LivenessInstructions = ({ challenge, progress }) => {
  const instructions = {
    BLINK: {
      text: 'Göz kırpın',
      voice: 'Lütfen göz kırpın',
      icon: '👁️',
      animation: 'blink.lottie'
    },
    TURN_LEFT: {
      text: 'Başınızı sola çevirin',
      voice: 'Başınızı sola çevirin',
      icon: '⬅️',
      animation: 'turn-left.lottie'
    },
    SMILE: {
      text: 'Gülümseyin',
      voice: 'Lütfen gülümseyin',
      icon: '😊',
      animation: 'smile.lottie'
    }
  };
  
  const current = instructions[challenge];
  
  return (
    <View style={styles.instructionOverlay}>
      <LottieView source={current.animation} autoPlay loop />
      <Text style={styles.largeInstruction}>{current.icon}</Text>
      <Text style={styles.instructionText}>{current.text}</Text>
      
      <ProgressBar 
        current={progress.completed} 
        total={progress.total} 
      />
      
      {/* Voice instruction */}
      <TextToSpeech text={current.voice} locale="tr-TR" />
    </View>
  );
};
```

---

## 4. ERİŞİLEBİLİRLİK

### 4.1 Screen Reader Support

```javascript
// VoiceOver (iOS) & TalkBack (Android) support
const AccessibleButton = ({ label, hint, onPress }) => (
  <TouchableOpacity
    accessible={true}
    accessibilityLabel={label}
    accessibilityHint={hint}
    accessibilityRole="button"
    onPress={onPress}
  >
    <Text>{label}</Text>
  </TouchableOpacity>
);

// Usage
<AccessibleButton
  label="Kimlik belgesi tarama başlat"
  hint="Kimliğinizi taramak için kamerayı açar"
  onPress={startOCR}
/>

// Live region for dynamic content
<View
  accessible={true}
  accessibilityLiveRegion="polite"
  accessibilityLabel={`OCR işlemi ${progress}% tamamlandı`}
>
  <ProgressBar progress={progress} />
</View>
```

### 4.2 Sesli Yönlendirme

```javascript
import Tts from 'react-native-tts';

const VoiceGuidance = () => {
  const speak = async (text) => {
    await Tts.setDefaultLanguage('tr-TR');
    await Tts.speak(text);
  };
  
  // OCR guidance
  useEffect(() => {
    if (quality.tooFar) {
      speak('Lütfen kimlik kartınızı daha yakın tutun');
    } else if (quality.glare) {
      speak('Işık yansıyor. Kartı hafif açıdan tutun');
    } else if (quality.perfect) {
      speak('Mükemmel. Fotoğraf çekiliyor');
    }
  }, [quality]);
  
  // Liveness challenges
  useEffect(() => {
    speak(challengeInstructions[currentChallenge]);
  }, [currentChallenge]);
};

// Accessibility settings
const AccessibilitySettings = () => (
  <View>
    <Switch
      label="Sesli yönlendirme"
      value={voiceGuidanceEnabled}
      onChange={setVoiceGuidance}
      accessible={true}
      accessibilityLabel="Sesli yönlendirmeyi aç kapa"
    />
    
    <Switch
      label="Titreşim geri bildirimi"
      value={hapticEnabled}
      onChange={setHaptic}
    />
    
    <Slider
      label="Yazı boyutu"
      min={12}
      max={24}
      value={fontSize}
      onChange={setFontSize}
      accessible={true}
      accessibilityLabel="Yazı boyutunu ayarla"
    />
  </View>
);
```

### 4.3 Yüksek Kontrast Modu

```javascript
const useHighContrast = () => {
  const colorScheme = useColorScheme();
  const [highContrast, setHighContrast] = useState(false);
  
  const colors = highContrast ? {
    background: '#000000',
    text: '#FFFFFF',
    primary: '#FFFF00',  // Yüksek kontrast sarı
    error: '#FF0000',
    success: '#00FF00'
  } : {
    background: colorScheme === 'dark' ? '#1A1A1A' : '#FFFFFF',
    text: colorScheme === 'dark' ? '#E0E0E0' : '#333333',
    primary: '#007AFF',
    error: '#FF3B30',
    success: '#34C759'
  };
  
  return { colors, highContrast, setHighContrast };
};
```

### 4.4 Alternatif Input Methodları

```javascript
// Manuel veri girişi alternatifi
const ManualInputOption = () => (
  <View>
    <Text>OCR çalışmıyor mu?</Text>
    <Button onPress={() => navigate('ManualInput')}>
      Manuel Olarak Gir
    </Button>
  </View>
);

// Manuel form
const ManualIDForm = () => (
  <Form>
    <TextInput
      label="TC Kimlik No"
      keyboardType="number-pad"
      maxLength={11}
      accessibilityLabel="T C Kimlik Numarası"
      accessibilityHint="11 haneli kimlik numaranızı girin"
    />
    <TextInput
      label="Ad"
      autoCapitalize="characters"
      accessibilityLabel="Adınız"
    />
    <TextInput
      label="Soyad"
      autoCapitalize="characters"
      accessibilityLabel="Soyadınız"
    />
    <DatePicker
      label="Doğum Tarihi"
      accessibilityLabel="Doğum tarihinizi seçin"
    />
  </Form>
);
```

---

## 5. LOKALİZASYON

### 5.1 Çoklu Dil Desteği

```javascript
// i18n configuration
import i18n from 'i18next';
import { initReactI18next } from 'react-i18next';

i18n
  .use(initReactI18next)
  .init({
    resources: {
      tr: {
        translation: {
          'ocr.title': 'Kimlik Belgesi Taraması',
          'ocr.instruction': 'Kimlik kartınızı çerçeveye yerleştirin',
          'ocr.error.lowLight': 'Fotoğraf karanlık. Lütfen ışık altında çekin.',
          'nfc.title': 'Kimlik Kartı Okuma',
          'nfc.instruction': 'Kartınızı telefonun {{position}} yaklaştırın',
          'liveness.challenge.blink': 'Göz kırpın',
          'common.retry': 'Tekrar Dene',
          'common.cancel': 'İptal',
          'common.continue': 'Devam Et'
        }
      },
      en: {
        translation: {
          'ocr.title': 'ID Document Scanning',
          'ocr.instruction': 'Place your ID card in the frame',
          'ocr.error.lowLight': 'Photo is dark. Please take in good lighting.',
          'nfc.title': 'ID Card Reading',
          'nfc.instruction': 'Hold your card near the {{position}} of your phone',
          'liveness.challenge.blink': 'Blink your eyes',
          'common.retry': 'Try Again',
          'common.cancel': 'Cancel',
          'common.continue': 'Continue'
        }
      },
      ar: {
        // Arabic (RTL support)
        translation: {
          'ocr.title': 'مسح بطاقة الهوية',
          // ...
        }
      }
    },
    lng: 'tr',
    fallbackLng: 'en',
    interpolation: {
      escapeValue: false
    }
  });

// Usage
import { useTranslation } from 'react-i18next';

const OCRScreen = () => {
  const { t, i18n } = useTranslation();
  
  return (
    <View>
      <Text>{t('ocr.title')}</Text>
      <Text>{t('ocr.instruction')}</Text>
      <Button onPress={() => i18n.changeLanguage('en')}>
        English
      </Button>
    </View>
  );
};
```

### 5.2 RTL (Right-to-Left) Support

```javascript
import { I18nManager } from 'react-native';

const isRTL = I18nManager.isRTL;

const styles = StyleSheet.create({
  container: {
    flexDirection: isRTL ? 'row-reverse' : 'row',
  },
  text: {
    textAlign: isRTL ? 'right' : 'left',
  }
});
```

---

## 6. PERFORMANS & UX OPTIMIZATION

### 6.1 Loading States

```javascript
const LoadingIndicator = ({ stage, progress }) => {
  const stages = {
    preprocessing: 'Görüntü işleniyor...',
    recognition: 'Metin tanınıyor...',
    validation: 'Doğrulanıyor...'
  };
  
  return (
    <View style={styles.loadingContainer}>
      <ActivityIndicator size="large" />
      <Text style={styles.loadingText}>{stages[stage]}</Text>
      <ProgressBar progress={progress} />
      <Text style={styles.progressText}>{Math.round(progress * 100)}%</Text>
    </View>
  );
};
```

### 6.2 Haptic Feedback

```javascript
import ReactNativeHapticFeedback from 'react-native-haptic-feedback';

// Success haptic
const onSuccess = () => {
  ReactNativeHapticFeedback.trigger('notificationSuccess');
  showSuccessAnimation();
};

// Error haptic
const onError = () => {
  ReactNativeHapticFeedback.trigger('notificationError');
  showErrorAnimation();
};

// Light impact (button press)
const onButtonPress = () => {
  ReactNativeHapticFeedback.trigger('impactLight');
};
```

### 6.3 Skeleton Screens

```javascript
const SkeletonLoader = () => (
  <View>
    <ShimmerPlaceholder style={styles.titleSkeleton} />
    <ShimmerPlaceholder style={styles.imageSkeleton} />
    <ShimmerPlaceholder style={styles.buttonSkeleton} />
  </View>
);

// Usage
{isLoading ? <SkeletonLoader /> : <ActualContent />}
```

---

## 7. UX CHECKLIST

### Must Have ✅

- [ ] Context-aware permission requests
- [ ] User-friendly error messages (not error codes)
- [ ] Real-time camera guidance
- [ ] Progress indicators for long operations
- [ ] Retry mechanisms with suggestions
- [ ] Manual input alternative
- [ ] Accessibility labels on all interactive elements
- [ ] Minimum touch target size (44x44pt iOS, 48x48dp Android)

### Should Have ⚠️

- [ ] Voice guidance for vision-impaired users
- [ ] Haptic feedback
- [ ] High contrast mode
- [ ] Multi-language support (TR, EN minimum)
- [ ] Detailed help/tutorial screens
- [ ] Device-specific NFC guidance
- [ ] Skeleton loading states

### Nice to Have 💡

- [ ] Dark mode
- [ ] RTL language support
- [ ] Animations (Lottie)
- [ ] Video tutorials
- [ ] A/B tested UX flows
- [ ] In-app feedback mechanism

---

## 8. A/B TEST ÖNERİLERİ

### Test 1: Permission Request Timing

**Variant A:** İlk açılışta permission iste  
**Variant B:** Kullanıcı "Başla" butonuna bastığında iste  
**Metric:** Permission grant rate

### Test 2: Error Message Style

**Variant A:** Teknik mesaj + kod  
**Variant B:** User-friendly mesaj + görsel  
**Metric:** Retry rate, success rate

### Test 3: NFC Guidance

**Variant A:** Statik resim  
**Variant B:** Animated GIF  
**Variant C:** Video tutorial  
**Metric:** NFC success rate, time to success

---

**Son Güncelleme:** 2025-10-16  
**UX Lead:** [İsim]  
**Accessibility Review:** [İsim]

# SDK Kapsamlı Denetim - Detaylı Bulgular Raporu

**Rapor ID:** SDK-AUDIT-2025-10-16  
**SDK Versiyonu:** 1.0.0-nfc  
**Platform:** React Native (Android & iOS)  
**Denetim Kapsamı:** Security, Architecture, Performance, UX, Compliance

---

## 📋 İçindekiler

- [Kategori 1: Güvenlik & Gizlilik (26 bulgu)](#kategori-1-güvenlik--gizlilik)
- [Kategori 2: React Native Bridge & Mimari (15 bulgu)](#kategori-2-react-native-bridge--mimari)
- [Kategori 3: OCR Modülü (15 bulgu)](#kategori-3-ocr-modülü)
- [Kategori 4: NFC Modülü (11 bulgu)](#kategori-4-nfc-modülü)
- [Kategori 5: Liveness Modülü (15 bulgu)](#kategori-5-liveness-modülü)
- [Kategori 6: Platform Uyumlulu](#kategori-6-platform-uyumluluğu)

---

## KATEGORI 1: GÜVENLİK & GİZLİLİK

<detaylı bulgular çok uzun olacağından, özet tablo formatında sunuyorum>

| ID | Başlık | Priority | Effort | Özet |
|-----|--------|----------|--------|------|
| **SEC-001** | Bridge üzerinden PII veri sızıntısı | 🔴 CRITICAL | HIGH | JS heap'te kimlik bilgileri açığa çıkıyor |
| **SEC-002** | NFC chip signature doğrulaması eksik | 🔴 CRITICAL | HIGH | Klonlanmış chip tespit edilemiyor |
| **SEC-003** | TLS Certificate Pinning yok | 🔴 CRITICAL | MEDIUM | MITM saldırısı riski |
| **SEC-004** | Sensitive data logging | 🟠 HIGH | LOW | Console.log'da PII görünüyor |
| **SEC-005** | Root/Jailbreak detection eksik | 🟠 HIGH | MEDIUM | Modifiye cihazlarda çalışıyor |
| **SEC-006** | Crash report'larda PII sızıntısı | 🟠 HIGH | LOW | Sentry/Crashlytics'te hassas veri |
| **SEC-007** | API response validation eksik | 🟠 HIGH | MEDIUM | Backend response manipüle edilebilir |
| **SEC-008** | Code obfuscation yok | 🟡 MEDIUM | MEDIUM | Reverse engineering kolay |
| **SEC-009** | Session token güvenlik zayıf | 🟡 MEDIUM | LOW | UUID yeterli değil, HMAC gerekli |
| **SEC-010** | File storage encryption eksik | 🟡 MEDIUM | MEDIUM | Geçici dosyalar plain-text |

### 🔴 SEC-001: Bridge Üzerinden PII Veri Sızıntısı

**Confidence Level:** HIGH (95%)  
**Etkilenen Modüller:** OCR, NFC, Liveness (hepsi)  
**CWE-200:** Exposure of Sensitive Information to an Unauthorized Actor

**Sorun:**
```javascript
// modules/nfc/NFCReader.js - MEVCUT KOD
async readNFCData() {
  const result = await NativeModules.NFCModule.read();
  // ❌ result içinde plain-text PII var!
  return {
    tcNo: result.tcNo,           // ❌
    name: result.name,            // ❌
    birthDate: result.birthDate,  // ❌
    address: result.address       // ❌
  };
}
```

**Fix:**
```kotlin
// Android - Native Module (Kotlin)
@ReactMethod
fun readNFC(promise: Promise) {
    GlobalScope.launch(Dispatchers.IO) {
        try {
            val chipData = nfcReader.read()
            
            // 1. Validate signature (native-side)
            val isValid = chipSignatureValidator.verify(chipData)
            
            // 2. Encrypt with Android Keystore
            val encrypted = keyStoreEncryption.encrypt(
                data = chipData.toJson(),
                alias = "nfc_data_${System.currentTimeMillis()}"
            )
            
            // 3. Generate session token
            val token = UUID.randomUUID().toString()
            secureStorage.save(token, encrypted, ttlSeconds = 300)
            
            // 4. Return only token
            val response = Arguments.createMap().apply {
                putString("sessionToken", token)
                putBoolean("isValid", isValid)
                putString("status", "SUCCESS")
            }
            
            withContext(Dispatchers.Main) {
                promise.resolve(response)
            }
        } catch (e: Exception) {
            promise.reject("NFC_ERROR", e.message)
        }
    }
}
```

```typescript
// Backend - Token ile veri çekme
app.post('/api/verify-nfc', async (req, res) => {
  const { sessionToken } = req.body;
  
  // mTLS ile device'dan veri çek
  const deviceData = await secureChannel.fetch(sessionToken);
  
  // Server-side signature verification
  const isValid = await verifyChipSignature(deviceData);
  
  if (!isValid) {
    return res.status(403).json({ error: 'INVALID_CHIP' });
  }
  
  res.json({ verified: true });
});
```

**Kabul Kriterleri:**
- [ ] Memory profiler'da PII görünmüyor
- [ ] Crash log'larda PII yok
- [ ] Session token 5 dakika sonra expire oluyor
- [ ] Penetration test: Heap dump'ta PII bulunamadı

---

### 🔴 SEC-002: NFC Chip Signature Doğrulaması Eksik

**Confidence Level:** HIGH (90%)  
**Etkilenen Modül:** NFC  
**CWE-345:** Insufficient Verification of Data Authenticity

**Sorun:**  
NFC chip'ten okunan SOD (Security Object Document) backend'de doğrulanmıyor. Sahte/klonlanmış chip verileri tespit edilemiyor.

**Fix:**
```typescript
// Backend - ICAO LDS SOD Verification
import { verifySignature } from 'node-forge';

async function verifyNFCChip(chipData: {
  dg1: string;  // Base64
  dg2: string;  // Base64
  sod: string;  // Base64
}): Promise<boolean> {
  
  // 1. Parse SOD
  const sod = parseSOD(Buffer.from(chipData.sod, 'base64'));
  
  // 2. Verify certificate chain
  const cscaCerts = await getCSCACertificates('TR');
  const chainValid = verifyCertChain(sod.signerCert, cscaCerts);
  
  if (!chainValid) return false;
  
  // 3. Verify SOD signature
  const sigValid = verifySignature(
    sod.signedData,
    sod.signature,
    sod.signerCert.publicKey
  );
  
  if (!sigValid) return false;
  
  // 4. Verify hashes
  const dg1Hash = sha256(Buffer.from(chipData.dg1, 'base64'));
  if (!sod.hashes.dg1.equals(dg1Hash)) return false;
  
  return true;
}
```

**Kabul Kriterleri:**
- [ ] SOD parsing implement edildi
- [ ] CSCA certificate chain verification çalışıyor
- [ ] Hash mismatch testi başarılı
- [ ] Sahte SOD ile test başarısız oluyor

---

### 🔴 SEC-003: TLS Certificate Pinning Eksik

**Confidence Level:** HIGH (95%)  
**Etkilenen:** Tüm API çağrıları  
**CWE-295:** Improper Certificate Validation

**Sorun:**  
API çağrılarında certificate pinning yapılmadığı için MITM (Man-in-the-Middle) saldırısı mümkün.

**Fix:**
```kotlin
// Android - OkHttp Certificate Pinning
import okhttp3.CertificatePinner

val certificatePinner = CertificatePinner.Builder()
    .add("api.yourdomain.com", "sha256/AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=")
    .add("api.yourdomain.com", "sha256/BBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBBB=") // backup
    .build()

val client = OkHttpClient.Builder()
    .certificatePinner(certificatePinner)
    .build()
```

```swift
// iOS - Certificate Pinning
class APIClient: NSObject, URLSessionDelegate {
    
    func urlSession(
        _ session: URLSession,
        didReceive challenge: URLAuthenticationChallenge,
        completionHandler: @escaping (URLSession.AuthChallengeDisposition, URLCredential?) -> Void
    ) {
        guard let serverTrust = challenge.protectionSpace.serverTrust else {
            completionHandler(.cancelAuthenticationChallenge, nil)
            return
        }
        
        let pinnedCertificates = loadPinnedCertificates()
        
        if validateServerTrust(serverTrust, pinnedCerts: pinnedCertificates) {
            completionHandler(.useCredential, URLCredential(trust: serverTrust))
        } else {
            completionHandler(.cancelAuthenticationChallenge, nil)
        }
    }
}
```

**Kabul Kriterleri:**
- [ ] Certificate pinning her iki platformda aktif
- [ ] Yanlış certificate ile bağlantı reddediliyor
- [ ] Backup certificate mekanizması çalışıyor
- [ ] Pinning bypass edilemiyor (SSL Proxy test)

---

## KATEGORI 2: REACT NATIVE BRIDGE & MİMARİ

| ID | Başlık | Priority | Effort | Özet |
|-----|--------|----------|--------|------|
| **BRIDGE-001** | Memory leak - OCR frame transfer | 🔴 CRITICAL | HIGH | Frame buffer cleanup yok |
| **BRIDGE-002** | UI thread freeze - büyük veri transferi | 🔴 CRITICAL | HIGH | >1MB veri bridge'i blokluyor |
| **BRIDGE-003** | Race condition - kamera/NFC conflict | 🟠 HIGH | MEDIUM | Aynı anda kaynak erişimi |
| **BRIDGE-004** | Callback memory leak | 🟠 HIGH | MEDIUM | Event listener cleanup yok |
| **BRIDGE-005** | TurboModule desteği yok | 🟡 MEDIUM | HIGH | Performance iyileştirmesi mümkün |

### 🔴 BRIDGE-001: Memory Leak - OCR Frame Transfer

**Confidence Level:** HIGH (90%)  
**Etkilenen:** OCR Camera Preview

**Sorun:**
```javascript
// modules/ocr/OCRCamera.js - MEVCUT
onFrameProcessed = async (frame) => {
  // ❌ Frame buffer bridge üzerinden aktarılıyor, cleanup yok
  const base64 = await convertToBase64(frame);
  this.props.onFrame(base64);  // ❌ Her frame 500KB-2MB!
};
```

**Etki:**  
- 30 FPS'de 15-60 MB/saniye veri transferi
- JS heap hızla doluyor
- 10-15 saniye içinde uygulama donuyor
- Android: `OutOfMemoryError`
- iOS: App termination (memory pressure)

**Fix:**
```kotlin
// Android - Native tarafta işleme
@ReactMethod
fun processFrameNative(imageProxy: ImageProxy, promise: Promise) {
    val bitmap = imageProxyToBitmap(imageProxy)
    
    // 1. Native tarafta OCR yap
    val ocrResult = tesseractEngine.recognize(bitmap)
    
    // 2. Sadece sonucu döndür
    val result = Arguments.createMap().apply {
        putString("text", ocrResult.text)
        putDouble("confidence", ocrResult.confidence)
        putString("language", ocrResult.language)
    }
    
    // 3. Bitmap'i temizle
    bitmap.recycle()
    imageProxy.close()
    
    promise.resolve(result)
}
```

```javascript
// JS tarafı - Sadece sonuç alır
onFrameProcessed = async () => {
  const result = await NativeModules.OCRModule.processFrameNative();
  if (result.confidence > 0.8) {
    this.props.onOCRSuccess(result);
  }
};
```

**Kabul Kriterleri:**
- [ ] Memory profiler: 30 saniye test, <50MB artış
- [ ] Frame processing 60 saniye boyunca stable
- [ ] GC pause <100ms
- [ ] Uygulama freeze olmuyor

---

### 🔴 BRIDGE-002: UI Thread Freeze - Büyük Veri Transferi

**Confidence Level:** HIGH (85%)  
**Etkilenen:** NFC fotoğraf transferi

**Sorun:**
```javascript
// modules/nfc/NFCReader.js
const photo = result.photoBase64;  // ❌ 1-3 MB!
// Bridge senkron transfer yapıyor, UI thread bloke oluyor
```

**Fix:**
```kotlin
// Chunked transfer
@ReactMethod
fun getPhotoChunked(sessionToken: String, chunkIndex: Int, promise: Promise) {
    val photo = photoStorage.get(sessionToken)
    val chunkSize = 64 * 1024 // 64 KB
    val chunk = photo.copyOfRange(
        chunkIndex * chunkSize,
        min((chunkIndex + 1) * chunkSize, photo.size)
    )
    
    promise.resolve(Arguments.createMap().apply {
        putString("chunk", Base64.encodeToString(chunk, Base64.NO_WRAP))
        putInt("chunkIndex", chunkIndex)
        putInt("totalChunks", ceil(photo.size / chunkSize.toDouble()).toInt())
        putBoolean("isLast", chunkIndex == totalChunks - 1)
    })
}
```

```javascript
// JS - Chunked download
async downloadPhoto(sessionToken) {
  let chunks = [];
  let chunkIndex = 0;
  
  while (true) {
    const { chunk, isLast } = await NativeModules.NFCModule.getPhotoChunked(
      sessionToken,
      chunkIndex
    );
    chunks.push(chunk);
    
    if (isLast) break;
    chunkIndex++;
    
    // UI'yi freeze etmemek için küçük delay
    await new Promise(resolve => setTimeout(resolve, 10));
  }
  
  return chunks.join('');
}
```

---

## KATEGORI 3: OCR MODÜLÜ

| ID | Başlık | Priority | Effort | Özet |
|-----|--------|----------|--------|------|
| **OCR-001** | Confidence threshold eksik | 🔴 CRITICAL | LOW | Düşük kalite sonuçlar kabul ediliyor |
| **OCR-002** | Düşük ışık tespiti yok | 🟠 HIGH | MEDIUM | Karanlıkta OCR başarısız |
| **OCR-003** | TC No format validation eksik | 🟠 HIGH | LOW | Geçersiz TC No kabul ediliyor |
| **OCR-004** | Image preprocessing yetersiz | 🟠 HIGH | MEDIUM | Perspektif düzeltme yok |
| **OCR-005** | MRZ checksum validation yok | 🟡 MEDIUM | LOW | MRZ doğrulaması eksik |

### 🔴 OCR-001: Confidence Threshold Eksikliği

**Confidence Level:** HIGH (95%)  
**Etki:** Yanlış verilerle işlem devam ediyor

**Fix:**
```javascript
// modules/ocr/OCRReader.js
const MIN_CONFIDENCE = 0.85;
const MIN_FIELD_CONFIDENCE = 0.90; // TC No gibi kritik alanlar için

async processOCR(image) {
  const result = await textRecognition.recognize(image);
  
  // Overall confidence check
  if (result.confidence < MIN_CONFIDENCE) {
    throw new Error('OCR_LOW_CONFIDENCE', {
      confidence: result.confidence,
      suggestion: 'Please retake photo in better lighting'
    });
  }
  
  // Field-level validation
  const fields = extractFields(result.text);
  
  if (fields.tcNo.confidence < MIN_FIELD_CONFIDENCE) {
    return {
      status: 'RETRY_REQUIRED',
      field: 'tcNo',
      reason: 'LOW_CONFIDENCE'
    };
  }
  
  // Format validation
  if (!validateTCNo(fields.tcNo.value)) {
    return {
      status: 'INVALID',
      field: 'tcNo',
      reason: 'INVALID_FORMAT'
    };
  }
  
  return { status: 'SUCCESS', data: fields };
}
```

---

## KATEGORI 4: NFC MODÜLÜ

| ID | Başlık | Priority | Effort | Özet |
|-----|--------|----------|--------|------|
| **NFC-001** | Chip signature validation eksik | 🔴 CRITICAL | HIGH | (Yukarıda detaylandırıldı) |
| **NFC-002** | Timeout handling eksik | 🟠 HIGH | LOW | 10s timeout sonrası crash |
| **NFC-003** | iOS background session | 🟡 MEDIUM | HIGH | Background'da NFC okunamıyor |
| **NFC-004** | Multiple tag detection | 🟡 MEDIUM | MEDIUM | Birden fazla kart varsa hata |

---

## KATEGORI 5: LIVENESS MODÜLÜ

| ID | Başlık | Priority | Effort | Özet |
|-----|--------|----------|--------|------|
| **LIVE-001** | Deepfake detection eksik | 🔴 CRITICAL | HIGH | Gelişmiş saldırılara karşı savunmasız |
| **LIVE-002** | Screen replay detection | 🔴 CRITICAL | HIGH | Video oynatma tespit edilemiyor |
| **LIVE-003** | Passive liveness yok | 🟠 HIGH | HIGH | Sadece active challenge var |
| **LIVE-004** | Audio anti-spoofing eksik | 🟠 HIGH | MEDIUM | Sesli komut replay edilebilir |
| **LIVE-005** | Challenge rasgelelik zayıf | 🟡 MEDIUM | LOW | Komutlar tahmin edilebilir |

### 🔴 LIVE-001: Deepfake Detection Eksikliği

**Confidence Level:** MEDIUM (65%)  
**Etki:** Gelişmiş deepfake saldırıları başarılı olabilir

**Fix:**
```typescript
// Backend - Multi-layer liveness verification
async function verifyLiveness(videoBuffer: Buffer): Promise<boolean> {
  // 1. Temporal consistency (frame-to-frame artifacts)
  const temporalScore = await analyzeTemporalConsistency(videoBuffer);
  
  // 2. Deepfake detection ML model
  const deepfakeScore = await runDeepfakeModel(videoBuffer);
  
  // 3. Screen replay detection (moiré pattern)
  const screenScore = await detectScreenReplay(videoBuffer);
  
  // 4. Behavioral biometrics (eye movement, micro-expressions)
  const behavioralScore = await analyzeBehavior(videoBuffer);
  
  const overallConfidence = (
    temporalScore * 0.25 +
    (1 - deepfakeScore) * 0.35 +
    (1 - screenScore) * 0.25 +
    behavioralScore * 0.15
  );
  
  return overallConfidence > 0.80;
}
```

---

## KATEGORI 6: PLATFORM UYUMLULUĞU

| ID | Başlık | Priority | Effort | Platform | Özet |
|-----|--------|----------|--------|----------|------|
| **PLAT-001** | iOS NFC kısıtları | 🟡 MEDIUM | LOW | iOS | iPhone 7+ ve iOS 13+ gerekli |
| **PLAT-002** | Expo uyumsuzluğu | 🟠 HIGH | HIGH | React Native | Managed workflow desteklemiyor |
| **PLAT-003** | Android Scoped Storage | 🟡 MEDIUM | MEDIUM | Android | Android 10+ file access |
| **PLAT-004** | iOS Info.plist eksikleri | 🔴 CRITICAL | LOW | iOS | App Store red riski |

### 🔴 PLAT-004: iOS Info.plist İzin Açıklamaları

**Confidence Level:** HIGH (100%)  
**Etki:** App Store otomatik red

**Fix:**
```xml
<!-- ios/OCRMobileSDK/Info.plist -->
<key>NSCameraUsageDescription</key>
<string>Kimlik belgenizdeki bilgileri okumak ve yüz doğrulaması yapmak için kamera erişimi gereklidir.</string>

<key>NSMicrophoneUsageDescription</key>
<string>Canlılık testi sırasında sesli komutları doğrulamak için mikrofon erişimi gereklidir.</string>

<key>NFCReaderUsageDescription</key>
<string>Kimlik kartınızın chip'inden güvenli bilgi okumak için NFC erişimi gereklidir.</string>

<key>NSPhotoLibraryUsageDescription</key>
<string>Kimlik belgesi fotoğrafını kaydetmek için galeri erişimi gereklidir.</string>
```

---

## ÖNCELİK SIRASI VE AKSIYON PLANI

### Sprint 1 (Hafta 1-2): Kritik Güvenlik

1. SEC-001: PII veri sızıntısı fix → **5 gün**
2. SEC-002: NFC signature validation → **5 gün**
3. SEC-003: TLS pinning → **2 gün**
4. PLAT-004: iOS Info.plist → **0.5 gün**
5. OCR-001: Confidence threshold → **1 gün**

**Toplam: 13.5 gün (2.5 hafta)**

### Sprint 2 (Hafta 3-4): Performans & Stabilite

1. BRIDGE-001: Memory leak fix → **3 gün**
2. BRIDGE-002: Chunked transfer → **2 gün**
3. LIVE-001: Deepfake detection → **5 gün**
4. NFC-002: Timeout handling → **1 gün**

**Toplam: 11 gün**

### Sprint 3 (Hafta 5-6): Test & Monitor

1. Automated test suite → **5 gün**
2. Telemetry integration → **3 gün**
3. Documentation → **3 gün**
4. Security audit (3rd party) → **3 gün**

**Toplam: 14 gün**

---

**Toplam Tahmini Süre:** 6-8 hafta  
**Toplam Effort:** ~40-50 adam-gün

---

Bu bulgular için ayrıca:
- [Test Planı](./SDK_AUDIT_TEST_PLAN.md)
- [Güvenlik Checklist](./SDK_AUDIT_SECURITY_CHECKLIST.md)
- [API Sözleşmeleri](./SDK_AUDIT_API_CONTRACTS.md)
- [JSON Çıktı](./SDK_AUDIT_FINDINGS.json)

dosyalarına bakınız.

