# 📱 NFC Modülü - Kullanım Kılavuzu

## İçindekiler
- [Genel Bakış](#genel-bakış)
- [Kurulum ve Konfigürasyon](#kurulum-ve-konfigürasyon)
- [Kullanım](#kullanım)
- [API Referansı](#api-referansı)
- [Test Edilme](#test-edilme)
- [Güvenlik](#güvenlik)
- [Troubleshooting](#troubleshooting)

---

## Genel Bakış

NFC modülü, Türk kimlik kartlarından NFC teknolojisi ile veri okumayı sağlar. ICAO 9303 standartlarına uyumlu, dijital imza doğrulama ve güvenli veri aktarımı özellikleriyle gelişmiş bir NFC okuyucu sistemidir.

### Özellikler

✅ **Kapsamlı NFC Desteği**
- IsoDep (ISO 14443 Type A/B)
- NDEF (NFC Forum Type 4)
- Mifare Classic/Ultralight
- NFC-V (ISO 15693)

✅ **Güvenlik**
- ICAO 9303 uyumlu dijital imza doğrulama
- SOD (Security Object Document) kontrolü
- DG15 (Active Authentication) desteği
- Token-based secure data exchange
- PII (Personally Identifiable Information) koruması

✅ **Performans**
- Asenkron okuma (non-blocking)
- Configurable timeout ayarları
- Automatic retry on transient failures
- Performance logging
- Data optimization & filtering

✅ **Error Handling**
- Detaylı hata mesajları
- User-friendly Türkçe açıklamalar
- Retry mekanizması
- Card removal detection

---

## Kurulum ve Konfigürasyon

### 1. Android Permissions

`AndroidManifest.xml` dosyasında NFC izinleri tanımlıdır:

```xml
<!-- NFC permissions -->
<uses-permission android:name="android.permission.NFC" />
<uses-feature 
    android:name="android.hardware.nfc"
    android:required="false" />
```

### 2. NFC Tech Filter

`res/xml/nfc_tech_filter.xml` dosyası tüm NFC teknolojilerini destekler:

```xml
<tech-list>
    <tech>android.nfc.tech.IsoDep</tech>
</tech-list>
<tech-list>
    <tech>android.nfc.tech.Ndef</tech>
</tech-list>
<!-- ... diğer teknolojiler ... -->
```

### 3. MainActivity Configuration

`MainActivity.java` NFC intent handling yapılandırılmıştır:

```java
@Override
protected void onNewIntent(Intent intent) {
    super.onNewIntent(intent);
    setIntent(intent);
    
    if (NfcAdapter.ACTION_TECH_DISCOVERED.equals(intent.getAction())) {
        Tag tag = intent.getParcelableExtra(NfcAdapter.EXTRA_TAG);
        // Handle NFC tag
    }
}
```

---

## Kullanım

### Basit Kullanım

```javascript
import { NFCReader } from './modules/nfc';

// NFC Reader oluştur
const nfcReader = new NFCReader({
  timeout: 15000, // 15 saniye timeout
  onSuccess: (data) => {
    console.log('NFC Data:', data);
  },
  onError: (error) => {
    console.error('NFC Error:', error.message);
  },
  onStatusChange: (status) => {
    console.log('Status:', status);
  }
});

// NFC'yi başlat
const isInitialized = await nfcReader.startNFC();

if (isInitialized) {
  // NFC kartı oku
  const data = await nfcReader.readNFCData({
    useRealNFC: true,
    timeout: 10000
  });
  
  console.log('Kimlik No:', data.idNumber);
  console.log('Ad Soyad:', data.firstName, data.lastName);
}

// NFC'yi durdur
await nfcReader.stopNFC();
```

### React Component Örneği

```javascript
import React, { useState, useEffect } from 'react';
import { View, Button, Text } from 'react-native';
import { NFCReader } from './modules/nfc';

const NFCComponent = () => {
  const [nfcReader] = useState(() => new NFCReader());
  const [status, setStatus] = useState('idle');
  const [data, setData] = useState(null);

  useEffect(() => {
    nfcReader.onStatusChange = setStatus;
    nfcReader.onSuccess = setData;
    
    return () => {
      nfcReader.stopNFC();
    };
  }, []);

  const handleRead = async () => {
    try {
      await nfcReader.startNFC();
      const result = await nfcReader.readNFCData();
      console.log('NFC Data:', result);
    } catch (error) {
      console.error('Error:', error);
    }
  };

  return (
    <View>
      <Text>Status: {status}</Text>
      <Button title="NFC Oku" onPress={handleRead} />
      {data && <Text>TC: {data.idNumber}</Text>}
    </View>
  );
};
```

---

## API Referansı

### NFCReader Class

#### Constructor

```javascript
new NFCReader(options)
```

**Options:**
- `timeout` (number): Okuma timeout süresi (ms) - Default: 10000
- `onSuccess` (function): Başarı callback
- `onError` (function): Hata callback
- `onStatusChange` (function): Durum değişikliği callback
- `onProgress` (function): İlerleme mesajları callback
- `enablePerformanceLogging` (boolean): Performance logging - Default: true
- `normalizeOutput` (boolean): Veri normalizasyonu - Default: true

#### Methods

##### `startNFC(): Promise<boolean>`

NFC sistemini başlatır ve cihaz desteğini kontrol eder.

**Returns:** Promise<boolean> - Başarı durumu

**Throws:**
- `Error` - NFC desteklenmiyor
- `Error` - NFC kapalı
- `Error` - İzinler reddedildi

**Example:**
```javascript
const isStarted = await nfcReader.startNFC();
if (!isStarted) {
  console.error('NFC başlatılamadı');
}
```

##### `readNFCData(options): Promise<object>`

NFC kartından veri okur.

**Parameters:**
- `options.timeout` (number): Özel timeout süresi
- `options.useRealNFC` (boolean): Gerçek NFC kullan - Default: true
- `options.alertMessage` (string): Kullanıcıya gösterilecek mesaj

**Returns:** Promise<object> - Okunan NFC verisi

**Throws:**
- `Error` - Timeout
- `Error` - Kart algılanamadı
- `Error` - Okuma hatası
- `Error` - Duplicate reading

**Example:**
```javascript
const data = await nfcReader.readNFCData({
  timeout: 15000,
  useRealNFC: true
});
```

##### `stopNFC(): Promise<void>`

NFC operasyonlarını durdurur ve temizlik yapar.

**Example:**
```javascript
await nfcReader.stopNFC();
```

##### `getStatus(): string`

Mevcut NFC durumunu döndürür.

**Returns:** string - Status ('idle', 'ready', 'scanning', 'reading', etc.)

##### `getLastReadData(): object|null`

Son okunan veriyi döndürür.

**Returns:** object|null - Son okunan NFC verisi

##### `getPerformanceLogs(): Array`

Performance loglarını döndürür.

**Returns:** Array - Performance log entries

---

## NFC Data Structure

```javascript
{
  // Kişisel Bilgiler
  firstName: "AHMET",
  lastName: "YILMAZ",
  idNumber: "12345678901",
  birthDate: "01.01.1990",
  birthPlace: "ANKARA",
  nationality: "T.C.",
  gender: "E",
  
  // Belge Bilgileri
  serialNumber: "A12B34567",
  documentNumber: "ABC123456",
  issueDate: "01.01.2020",
  expiryDate: "01.01.2030",
  issuingAuthority: "ANKARA NÜFUS MÜDÜRLÜĞÜ",
  
  // Aile Bilgileri
  motherName: "AYŞE",
  fatherName: "MEHMET",
  
  // Kart Türü
  cardType: "Turkish ID Card",
  
  // NFC Metadata
  nfcData: {
    uid: "04:12:34:56:78:90:AB",
    technology: "IsoDep",
    readTime: "2025-10-20T21:30:00.000Z",
    signalStrength: 85,
    tagType: "Type4"
  },
  
  // Doğrulama
  verification: {
    isValid: true,
    checksum: "VALID",
    digitalSignature: "VERIFIED",
    readMethod: "NFC_REAL"
  },
  
  // Performance Metadata
  _metadata: {
    optimized: true,
    originalSize: 2048,
    optimizedSize: 1024,
    processingTime: "2025-10-20T21:30:05.000Z"
  }
}
```

---

## Test Edilme

### Mock Data ile Test

Mock data kullanarak gerçek NFC cihazı olmadan test yapabilirsiniz:

```javascript
const data = await nfcReader.readNFCData({
  useRealNFC: false  // Mock data kullan
});
```

### Test Component

`NFCTestComponent.js` ile mock verilerle UI testi yapabilirsiniz:

```javascript
import NFCTestComponent from './components/NFCTestComponent';

// App.js içinde
<NFCTestComponent />
```

### Unit Tests

```bash
npm test -- --testPathPattern=nfc
```

Test dosyaları:
- `__tests__/nfc.test.js` - Temel fonksiyonellik testleri
- `__tests__/nfc.integration.test.js` - Entegrasyon testleri
- `__tests__/nfc.performance.test.js` - Performance testleri

---

## Güvenlik

### 1. Dijital İmza Doğrulama

Native modül (`NfcReaderModule.java`) ICAO 9303 standartlarına uygun dijital imza doğrulaması yapar:

```java
ValidationResult result = signatureValidator.validateSignature(
    chipData.dg1,  // Machine Readable Zone
    chipData.dg2,  // Face Image
    chipData.sod,  // Security Object Document
    chipData.dg15  // Active Authentication Public Key
);
```

### 2. Token-Based Data Exchange

Hassas veriler (PII) React Native bridge üzerinden geçmez. Sadece session token ve metadata iletilir:

```java
// Native tarafta secure storage
String sessionToken = secureStorage.store(chipData);

// Bridge'e sadece token gönder
WritableMap result = Arguments.createMap();
result.putString("sessionToken", sessionToken);
result.putBoolean("isValid", validationResult.isValid);
promise.resolve(result);
```

### 3. Secure Storage

Okunan veriler `EncryptedSharedPreferences` ile güvenli şekilde saklanır:

```java
SecureStorage secureStorage = SecureStorage.getInstance(context);
secureStorage.store(key, sensitiveData);
```

---

## Troubleshooting

### NFC Desteklenmiyor

**Problem:** `NFC not supported on this device`

**Çözümler:**
- Cihazda NFC donanımı olduğunu kontrol edin
- Android 4.4 (API 19) veya üzeri gereklidir
- Emülatörde NFC çalışmaz, fiziksel cihaz gereklidir

### NFC Kapalı

**Problem:** `NFC kapalı. Lütfen cihaz ayarlarından NFC özelliğini açın.`

**Çözümler:**
- Ayarlar > Bağlantılar > NFC ve ödeme > NFC'yi açın
- Uçak modu kapalı olmalı
- Pil tasarrufu modu NFC'yi kapatabilir

### Timeout Hatası

**Problem:** `Timeout: NFC okuma zaman aşımı`

**Çözümler:**
- Kartı telefona daha yakın tutun
- Kartı sabit pozisyonda bekletin
- Timeout süresini artırın: `timeout: 15000`
- Metal kılıf kullanıyorsanız çıkarın

### Kart Okunamıyor

**Problem:** `NFC kartı okunamadı`

**Çözümler:**
- Kartı doğru yöne çevirin (çip tarafı telefona)
- Telefon kasasını çıkarın
- Farklı açıda deneyin
- Kartın yüzeyini temizleyin

### Bağlantı Kesildi

**Problem:** `Connection lost: NFC bağlantısı kesildi`

**Çözümler:**
- Kartı hareket ettirmeyin
- Telefonu sabit tutun
- Metal nesnelerden uzak durun
- Retry mekanizması otomatik deneyecektir

---

## Best Practices

### 1. Error Handling

Her zaman try-catch kullanın ve kullanıcıya anlamlı hata mesajları gösterin:

```javascript
try {
  const data = await nfcReader.readNFCData();
} catch (error) {
  if (error.message.includes('Timeout')) {
    Alert.alert('Zaman Aşımı', 'Kartı daha yakın tutun ve tekrar deneyin.');
  } else if (error.message.includes('not supported')) {
    Alert.alert('Uyarı', 'Cihazınız NFC desteklemiyor.');
  } else {
    Alert.alert('Hata', error.message);
  }
}
```

### 2. Status Monitoring

Kullanıcıyı bilgilendirmek için status değişikliklerini takip edin:

```javascript
nfcReader.onStatusChange = (status) => {
  const messages = {
    scanning: '🔍 Kart aranıyor...',
    reading: '📖 Kart okunuyor...',
    processing: '⚙️ Veriler işleniyor...',
    success: '✅ İşlem başarılı!'
  };
  showToast(messages[status]);
};
```

### 3. Cleanup

Component unmount olduğunda NFC'yi durdurun:

```javascript
useEffect(() => {
  return () => {
    nfcReader.stopNFC();
  };
}, []);
```

### 4. Performance Monitoring

Production'da performance logları kontrol edin:

```javascript
const logs = nfcReader.getPerformanceLogs();
console.log('Average read time:', 
  logs.reduce((sum, log) => sum + log.duration, 0) / logs.length
);
```

---

## Advanced Usage

### Custom Configuration

```javascript
const nfcReader = new NFCReader({
  timeout: 20000,
  readRetries: 5,
  connectionTimeout: 8000,
  enablePerformanceLogging: true,
  normalizeOutput: true,
  filterMetadata: true,
  maxDataSize: 100000,
  onProgress: (message) => {
    console.log('Progress:', message);
  }
});
```

### Retry Logic

Modül otomatik retry mekanizmasına sahiptir. Manuel retry için:

```javascript
async function readWithRetry(maxAttempts = 3) {
  for (let attempt = 1; attempt <= maxAttempts; attempt++) {
    try {
      const data = await nfcReader.readNFCData();
      return data;
    } catch (error) {
      if (attempt === maxAttempts) throw error;
      console.log(`Attempt ${attempt} failed, retrying...`);
      await new Promise(resolve => setTimeout(resolve, 1000));
    }
  }
}
```

---

## Support

### Test Edilmiş Cihazlar

- ✅ Samsung Galaxy (S10+, S20, Note 10+)
- ✅ Google Pixel (3, 4, 5)
- ✅ Xiaomi (Mi 9, Mi 10)
- ⚠️ Samsung Note 3 (Eski Android sürümü - limitli destek)

### Gereksinimler

- Android 4.4 (API 19) veya üzeri
- NFC donanımı
- React Native 0.70+
- react-native-nfc-manager ^3.16.2

### İletişim

Issues veya sorularınız için GitHub repository'sine issue açabilirsiniz.

---

## Changelog

### v1.0.0 (Current)
- ✅ ICAO 9303 uyumlu NFC okuma
- ✅ Dijital imza doğrulama
- ✅ Mock data desteği
- ✅ Performance optimization
- ✅ Comprehensive error handling
- ✅ React Native bridge entegrasyonu

---

**Son Güncelleme:** 20 Ekim 2025
