# 📚 Mobil Kimlik Doğrulama API Dokümantasyonu

## Versiyon: 1.0.0
**Platform:** Android 11+ (API Level 30+)  
**Dil:** JavaScript (React Native)  
**Güncelleme:** 18 Ekim 2024

---

## 📋 İçindekiler

1. [OCR Reader Module](#ocr-reader-module)
2. [NFC Reader Module](#nfc-reader-module)
3. [Liveness Detection Module](#liveness-detection-module)
4. [Ortak Özellikler](#ortak-özellikler)
5. [Hata Kodları](#hata-kodları)
6. [Güvenlik Notları](#güvenlik-notları)

---

## 🔍 OCR Reader Module

Kimlik kartlarından optik karakter tanıma ile veri okuma modülü.

### Import

```javascript
import OCRReaderModule, { OCRReaderScreen } from './modules/ocr/OCRReaderModule';
```

### API Methodları

#### `startOCR(options)`

OCR işlemini başlatır.

**Parametreler:**
```javascript
options = {
  language: 'tr',           // Dil kodu (varsayılan: 'tr')
  cropHints: true,          // Kırpma yardımı göster (varsayılan: true)
  quality: 'high',          // Görüntü kalitesi: 'low', 'medium', 'high'
  cardType: 'tc_kimlik',    // Kart tipi
  enableFlash: false,       // Flaş kontrolü (varsayılan: false)
  includeImage: false       // Base64 görüntü dahil et (varsayılan: false)
}
```

#### `onOCRResult(callback)`

OCR sonucu başarılı olduğunda çağrılır.

**Callback Parametresi:**
```javascript
result = {
  success: true,
  text: "Ham OCR metni",
  fields: {
    tcNo: "12345678901",
    name: "MEHMET",
    surname: "YILMAZ",
    birthDate: "01.01.1990",
    serialNo: "A01B23456",
    validUntil: "01.01.2030"
  },
  confidence: 85,              // Güven skoru (0-100)
  imageBase64: "...",         // Opsiyonel
  timestamp: "2024-10-18T10:30:00.000Z",
  cardType: "tc_kimlik"
}
```

#### `onOCRError(callback)`

Hata durumunda çağrılır.

**Callback Parametresi:**
```javascript
error = {
  success: false,
  error: "Hata mesajı",
  code: "OCR_PROCESSING_ERROR"
}
```

### Kullanım Örneği

```javascript
const ocrModule = new OCRReaderModule();

// Callback'leri ayarla
ocrModule.onOCRResult((result) => {
  console.log('TC No:', result.fields.tcNo);
  console.log('Ad Soyad:', result.fields.name, result.fields.surname);
  console.log('Güven Skoru:', result.confidence);
});

ocrModule.onOCRError((error) => {
  console.error('OCR Hatası:', error.error);
});

// OCR başlat
ocrModule.startOCR({
  quality: 'high',
  includeImage: true
});

// Görüntüyü işle
await ocrModule.processImage(imagePath);
```

### React Component Kullanımı

```javascript
<OCRReaderScreen 
  navigation={navigation}
  route={route}
/>
```

---

## 📡 NFC Reader Module

NFC çipli kimlik kartlarından veri okuma modülü.

### Import

```javascript
import NFCReaderModule, { NFCReaderScreen } from './modules/nfc/NFCReaderModule';
```

### API Methodları

#### `startNFC(options)`

NFC okumayı başlatır.

**Parametreler:**
```javascript
options = {
  readTimeout: 30000,        // Okuma zaman aşımı (ms)
  enableVibration: true,     // Titreşim geri bildirimi
  cardType: 'tc_kimlik',     // Kart tipi
  retryCount: 3              // Deneme sayısı
}
```

#### `stopNFC()`

NFC okumayı durdurur.

#### `onNFCResult(callback)`

NFC okuma başarılı olduğunda çağrılır.

**Callback Parametresi:**
```javascript
result = {
  success: true,
  raw: {                     // Ham NFC tag verisi
    id: "04:A1:B2:C3",
    tech: ["IsoDep", "NfcA"],
    ...
  },
  parsedFields: {
    tcNo: "12345678901",
    fullName: "MEHMET YILMAZ",
    birthDate: "01.01.1990",
    rawHex: {                // Debug için hex verisi
      personal: "4D45484D4554...",
      id: "313233343536...",
      birth: "30312E30312E..."
    }
  },
  cardType: "tc_kimlik",
  timestamp: "2024-10-18T10:30:00.000Z"
}
```

#### `onNFCError(callback)`

Hata durumunda çağrılır.

**Callback Parametresi:**
```javascript
error = {
  success: false,
  error: "NFC okuma hatası",
  code: "NFC_READ_ERROR"
}
```

### Kullanım Örneği

```javascript
const nfcModule = new NFCReaderModule();

// Callback'leri ayarla
nfcModule.onNFCResult((result) => {
  console.log('TC No:', result.parsedFields.tcNo);
  console.log('Ad Soyad:', result.parsedFields.fullName);
  console.log('Kart ID:', result.raw.id);
});

nfcModule.onNFCError((error) => {
  Alert.alert('NFC Hatası', error.error);
});

// NFC başlat
await nfcModule.startNFC({
  readTimeout: 60000,
  enableVibration: true
});

// İşlem bitince durdur
nfcModule.stopNFC();
```

### React Component Kullanımı

```javascript
<NFCReaderScreen 
  navigation={navigation}
  route={route}
/>
```

---

## 🎭 Liveness Detection Module

Canlılık testi ve yüz doğrulama modülü.

### Import

```javascript
import LivenessDetectionModule, { LivenessDetectionScreen } from './modules/liveness/LivenessDetectionModule';
```

### API Methodları

#### `startLiveness(challenges)`

Canlılık testini başlatır.

**Parametreler:**
```javascript
challenges = [
  'blink',           // Göz kırpma
  'smile',           // Gülümseme
  'turnHeadLeft',    // Başı sola çevir
  'turnHeadRight',   // Başı sağa çevir
  'nodHead',         // Başı salla
  'openMouth'        // Ağzı aç
]
```

#### `stopLiveness()`

Canlılık testini durdurur.

#### `onLivenessResult(callback)`

Test tamamlandığında çağrılır.

**Callback Parametresi:**
```javascript
result = {
  passed: true,              // Test geçti mi?
  score: 75,                 // Başarı skoru (0-100)
  details: {
    totalChallenges: 4,
    successfulChallenges: 3,
    failedChallenges: 1,
    challenges: [
      {
        challenge: 'blink',
        success: true,
        timestamp: 1697621400000,
        duration: 1234        // ms
      },
      // ...diğer challenge'lar
    ]
  },
  timestamp: "2024-10-18T10:30:00.000Z"
}
```

#### `onLivenessError(callback)`

Hata durumunda çağrılır.

#### `onChallengeChanged(callback)`

Yeni challenge başladığında çağrılır.

**Callback Parametresi:**
```javascript
challenge = {
  id: 'blink',
  instruction: 'Gözlerinizi kırpın',
  voice: 'Lütfen gözlerinizi kırpın',
  duration: 3000,
  detectionKey: 'eyes'
}
```

### Kullanım Örneği

```javascript
const livenessModule = new LivenessDetectionModule();

// Callback'leri ayarla
livenessModule.onLivenessResult((result) => {
  if (result.passed) {
    console.log('Canlılık doğrulandı! Skor:', result.score);
  } else {
    console.log('Canlılık doğrulanamadı.');
  }
});

livenessModule.onChallengeChanged((challenge) => {
  console.log('Yeni talimat:', challenge.instruction);
});

// Testi başlat
await livenessModule.startLiveness([
  'blink',
  'smile',
  'turnHeadLeft'
]);
```

### React Component Kullanımı

```javascript
<LivenessDetectionScreen 
  navigation={navigation}
  route={route}
/>
```

---

## 🔧 Ortak Özellikler

### İzin Yönetimi

Tüm modüller otomatik izin kontrolü yapar:

```javascript
// Kamera izni (OCR ve Liveness için)
PERMISSIONS.ANDROID.CAMERA

// NFC otomatik olarak etkinleştirilir
// Ancak NFC'nin açık olması gerekir
```

### Hata Yönetimi

Tüm modüller tutarlı hata formatı kullanır:

```javascript
{
  success: false,
  error: "İnsan okunabilir hata mesajı",
  code: "HATA_KODU"
}
```

### Performans Özellikleri

| Modül | İşlem Süresi | Bellek Kullanımı |
|-------|--------------|------------------|
| OCR | 2-3 saniye | ~50 MB |
| NFC | 1-2 saniye | ~20 MB |
| Liveness | 15-20 saniye | ~100 MB |

---

## ❌ Hata Kodları

### OCR Hata Kodları

| Kod | Açıklama |
|-----|----------|
| `OCR_PROCESSING_ERROR` | Genel OCR işleme hatası |
| `OCR_NO_TEXT_FOUND` | Metin algılanamadı |
| `OCR_POOR_QUALITY` | Görüntü kalitesi yetersiz |
| `OCR_PERMISSION_DENIED` | Kamera izni reddedildi |

### NFC Hata Kodları

| Kod | Açıklama |
|-----|----------|
| `NFC_READ_ERROR` | Genel NFC okuma hatası |
| `NFC_NOT_SUPPORTED` | Cihaz NFC desteklemiyor |
| `NFC_DISABLED` | NFC kapalı |
| `NFC_TAG_LOST` | Kart bağlantısı kesildi |
| `NFC_UNSUPPORTED_CARD` | Desteklenmeyen kart tipi |

### Liveness Hata Kodları

| Kod | Açıklama |
|-----|----------|
| `LIVENESS_ERROR` | Genel canlılık hatası |
| `LIVENESS_NO_FACE` | Yüz algılanamadı |
| `LIVENESS_MULTIPLE_FACES` | Birden fazla yüz algılandı |
| `LIVENESS_TIMEOUT` | Zaman aşımı |

---

## 🔒 Güvenlik Notları

### Veri İşleme

- ✅ **Tüm veriler cihazda işlenir** - Sunucuya gönderilmez
- ✅ **Geçici dosyalar silinir** - İşlem sonrası temizlik
- ✅ **Bellek güvenliği** - Hassas veriler bellekte şifrelenir

### İzin Kontrolleri

- ✅ **Runtime permissions** - Her kullanımda izin kontrolü
- ✅ **Minimal izinler** - Sadece gerekli izinler istenir
- ✅ **İzin açıklamaları** - Kullanıcıya neden gerektiği açıklanır

### Veri Saklama

```javascript
// Hassas veri saklama YAPILMAMALIDIR
// Sadece geçici işleme için kullanın

// YANLIŞ ❌
AsyncStorage.setItem('tcNo', result.fields.tcNo);

// DOĞRU ✅
processData(result.fields.tcNo);
// İşlem sonrası veriyi sil
result.fields.tcNo = null;
```

### Loglama

```javascript
// Hassas veri LOGLANMAMALIDIR

// YANLIŞ ❌
console.log('TC No:', tcNo);

// DOĞRU ✅
console.log('OCR işlemi başarılı');
```

---

## 🔄 Versiyon Geçmişi

### v1.0.0 (18 Ekim 2024)
- ✅ İlk production release
- ✅ OCR Reader modülü
- ✅ NFC Reader modülü
- ✅ Liveness Detection modülü
- ✅ Android 11+ desteği
- ✅ Türkçe kimlik kartı desteği

---

## 📞 Destek

**Teknik Destek:** support@mobilkimlik.com  
**Dokümantasyon:** https://docs.mobilkimlik.com  
**GitHub:** https://github.com/mobilkimlik/sdk

---

**© 2024 Mobil Kimlik Doğrulama - Tüm hakları saklıdır.**
