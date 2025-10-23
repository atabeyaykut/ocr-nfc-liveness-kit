# 📱 Türkiye Kimlik SDK - Kullanım Kılavuzu

## 📋 İçindekiler

1. [Genel Bakış](#genel-bakış)
2. [Kurulum](#kurulum)
3. [Yapılandırma](#yapılandırma)
4. [OCR Modülü](#ocr-modülü)
5. [NFC Modülü](#nfc-modülü)
6. [Canlılık Testi Modülü](#canlılık-testi-modülü)
7. [Tam Entegrasyon Örneği](#tam-entegrasyon-örneği)
8. [API Referansı](#api-referansı)
9. [Hata Yönetimi](#hata-yönetimi)
10. [Performans İpuçları](#performans-ipuçları)
11. [Güvenlik](#güvenlik)
12. [Sık Sorulan Sorular](#sık-sorulan-sorular)

---

## 🎯 Genel Bakış

Türkiye Kimlik SDK, React Native uygulamalarında kimlik doğrulama işlemlerini kolaylaştıran kapsamlı bir çözümdür.

### Özellikler

- ✅ **OCR ile Kimlik Okuma**: Kamera ile kimlik kartının ön ve arka yüzünü tarayarak bilgileri otomatik çıkarma
- ✅ **NFC ile Kimlik Okuma**: NFC özellikli kimlik kartlarından veri okuma
- ✅ **Canlılık Testi**: Yüz tanıma ve hareket algılama ile canlılık doğrulama
- ✅ **MRZ Desteği**: Arka yüzdeki makine okunabilir alan (MRZ) desteği
- ✅ **Çift Taraflı Okuma**: Ön ve arka yüz verilerini birleştirme ve doğrulama

### Desteklenen Platformlar

- iOS 14.0+
- Android 5.0+ (API Level 21+)
- React Native 0.63.0+

---

## 📦 Kurulum

### 1. NPM Paketi Kurulumu

```bash
# NPM ile kurulum
npm install @turkiye/kimlik-sdk

# Yarn ile kurulum
yarn add @turkiye/kimlik-sdk
```

### 2. Platform Spesifik Kurulum

#### iOS Kurulumu

```bash
cd ios && pod install
```

**Info.plist Ayarları:**

```xml
<!-- Kamera İzni -->
<key>NSCameraUsageDescription</key>
<string>Kimlik kartınızı okumak için kamera erişimine ihtiyacımız var.</string>

<!-- NFC İzni -->
<key>NFCReaderUsageDescription</key>
<string>Kimlik kartınızdaki NFC çipini okumak için NFC erişimine ihtiyacımız var.</string>

<!-- NFC Capability -->
<key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
<array>
    <string>A0000002471001</string>
</array>
```

**Capabilities (Xcode):**
- Near Field Communication Tag Reading ✓

#### Android Kurulumu

**AndroidManifest.xml:**

```xml
<!-- Kamera İzni -->
<uses-permission android:name="android.permission.CAMERA" />

<!-- NFC İzni -->
<uses-permission android:name="android.permission.NFC" />
<uses-feature android:name="android.hardware.nfc" android:required="false" />

<!-- NFC Intent Filter (MainActivity) -->
<intent-filter>
    <action android:name="android.nfc.action.TECH_DISCOVERED"/>
</intent-filter>
<meta-data android:name="android.nfc.action.TECH_DISCOVERED"
    android:resource="@xml/nfc_tech_filter" />
```

**android/app/build.gradle:**

```gradle
android {
    compileSdkVersion 33
    
    defaultConfig {
        minSdkVersion 21
        targetSdkVersion 33
    }
}
```

---

## ⚙️ Yapılandırma

### Temel Import

```javascript
import {
  OCRReader,
  NFCReaderModule,
  LivenessDetector,
  Logger,
  PermissionManager
} from '@turkiye/kimlik-sdk';
```

### İzin Yönetimi

```javascript
import { PermissionManager } from '@turkiye/kimlik-sdk';

// Kamera izni kontrol ve isteme
const checkPermissions = async () => {
  const hasCameraPermission = await PermissionManager.requestCameraPermission();
  if (!hasCameraPermission) {
    console.error('Kamera izni reddedildi');
    return false;
  }
  
  // NFC kontrolü (sadece cihaz destekliyorsa)
  const hasNFCSupport = await PermissionManager.checkNFCSupport();
  console.log('NFC Desteği:', hasNFCSupport);
  
  return true;
};
```

---

## 📸 OCR Modülü

### Temel Kullanım

```javascript
import { OCRReader } from '@turkiye/kimlik-sdk';

const ocrReader = new OCRReader({
  onSuccess: (result) => {
    console.log('OCR Başarılı:', result);
  },
  onError: (error) => {
    console.error('OCR Hatası:', error);
  },
  onStatusChange: (newStatus, oldStatus) => {
    console.log('Durum değişti:', oldStatus, '->', newStatus);
  }
});

// OCR başlatma
const startOCR = async () => {
  try {
    // OCR'ı başlat
    await ocrReader.startOCR({
      cardSide: 'front', // 'front' veya 'back'
      language: 'tr',
      quality: 'high'
    });
    
    // Görüntü yakalama
    const imageUri = await ocrReader.captureImage();
    
    // Metin çıkarma
    const result = await ocrReader.extractText(imageUri);
    
    console.log('Çıkarılan Alanlar:', result.extractedFields);
    // {
    //   tcNo: "12345678901",
    //   name: "MEHMET",
    //   surname: "YILMAZ",
    //   birthDate: "01.01.1990",
    //   gender: "Erkek",
    //   serialNo: "A01E12345",
    //   validUntil: "01.01.2030"
    // }
    
  } catch (error) {
    console.error('OCR hatası:', error);
  }
};
```

### Çift Taraflı Okuma

```javascript
const ocrModule = new OCRReaderModule();

// Hem ön hem arka yüzü okuma
const readBothSides = async (frontImage, backImage) => {
  const result = await ocrModule.processBothSides(frontImage, backImage);
  
  console.log('Birleştirilmiş Sonuç:', result.data);
  console.log('Ön Yüz:', result.frontSide);
  console.log('Arka Yüz (MRZ):', result.backSide);
  console.log('Güven Skoru:', result.data.confidence);
  console.log('Çakışmalar:', result.data.conflicts);
};
```

### MRZ Okuma (Arka Yüz)

```javascript
// Arka yüz için özel ayar
await ocrReader.startOCR({
  cardSide: 'back',
  enhanceImage: true // MRZ için otomatik ön işleme
});

// MRZ verisi otomatik ayrıştırılır:
// - TC Kimlik No
// - Doğum Tarihi  
// - Son Geçerlilik
// - Cinsiyet
// - Ad ve Soyad
```

---

## 📡 NFC Modülü

### Temel Kullanım

```javascript
import { NFCReaderModule } from '@turkiye/kimlik-sdk';

const nfcReader = new NFCReaderModule();

// Callback'leri ayarla
nfcReader.onNFCResult((result) => {
  console.log('NFC Başarılı:', result.parsedFields);
  // {
  //   tcNo: "12345678901",
  //   fullName: "MEHMET YILMAZ",
  //   birthDate: "01.01.1990"
  // }
});

nfcReader.onNFCError((error) => {
  console.error('NFC Hatası:', error.error);
});

// NFC okumayı başlat
const startNFC = async () => {
  try {
    await nfcReader.startNFC({
      readTimeout: 30000, // 30 saniye
      enableVibration: true,
      cardType: 'tc_kimlik'
    });
  } catch (error) {
    Alert.alert('NFC Hatası', error.message);
  }
};

// NFC'yi durdur
const stopNFC = async () => {
  await nfcReader.stopNFC();
};
```

### React Component ile Kullanım

```javascript
import { NFCReaderScreen } from '@turkiye/kimlik-sdk';

const MyScreen = () => {
  return (
    <NFCReaderScreen
      navigation={navigation}
      route={route}
      onSuccess={(data) => {
        console.log('NFC verisi:', data);
      }}
    />
  );
};
```

---

## 🎭 Canlılık Testi Modülü

### Temel Kullanım

```javascript
import { LivenessDetector } from '@turkiye/kimlik-sdk';

const livenessDetector = new LivenessDetector({
  realTimeMode: true,
  enableFaceDetection: true,
  enableMotionDetection: true
});

// Callback'leri ayarla
livenessDetector.onSuccess = (result) => {
  console.log('Canlılık testi başarılı:', result);
};

livenessDetector.onInstructionGiven = (instruction) => {
  console.log('Yeni talimat:', instruction);
  // "Başınızı sola çevirin"
  // "Gözlerinizi kırpın"
  // "Gülümseyin"
};

livenessDetector.onProgress = (message) => {
  console.log('İlerleme:', message);
};

// Canlılık testini başlat
const startLiveness = async () => {
  try {
    const result = await livenessDetector.startLivenessTest({
      maxRetries: 3,
      timeoutDuration: 30000
    });
    
    console.log('Test tamamlandı:', result);
  } catch (error) {
    console.error('Canlılık testi hatası:', error);
  }
};
```

### Komut Sırası

```javascript
import { generateCommandSequence } from '@turkiye/kimlik-sdk';

// Özel komut sırası oluştur
const commands = generateCommandSequence({
  count: 3,
  includeTypes: ['blink', 'turn', 'smile']
});

// Komut doğrulama
const validateResponse = (command, faceData) => {
  switch (command.type) {
    case 'blink':
      return faceData.leftEyeOpenProbability < 0.3;
    case 'turn_left':
      return faceData.headEulerAngleY < -30;
    case 'smile':
      return faceData.smilingProbability > 0.7;
    default:
      return false;
  }
};
```

---

## 🔗 Tam Entegrasyon Örneği

```javascript
import React, { useState } from 'react';
import {
  View,
  Text,
  TouchableOpacity,
  StyleSheet,
  Alert
} from 'react-native';
import {
  OCRReader,
  NFCReaderModule,
  LivenessDetector,
  PermissionManager
} from '@turkiye/kimlik-sdk';

const IdentityVerificationScreen = () => {
  const [step, setStep] = useState('select'); // select, ocr, nfc, liveness, complete
  const [verificationData, setVerificationData] = useState({});
  
  const ocrReader = new OCRReader();
  const nfcReader = new NFCReaderModule();
  const livenessDetector = new LivenessDetector();
  
  // OCR ile okuma
  const performOCR = async () => {
    setStep('ocr');
    
    try {
      await ocrReader.startOCR({ cardSide: 'front' });
      const imageUri = await ocrReader.captureImage();
      const result = await ocrReader.extractText(imageUri);
      
      setVerificationData(prev => ({
        ...prev,
        ocr: result.extractedFields
      }));
      
      Alert.alert(
        'OCR Başarılı',
        'Kimlik bilgileri okundu. NFC ile doğrulamaya geçebilirsiniz.',
        [{ text: 'NFC ile Doğrula', onPress: performNFC }]
      );
    } catch (error) {
      Alert.alert('OCR Hatası', error.message);
      setStep('select');
    }
  };
  
  // NFC ile doğrulama
  const performNFC = async () => {
    setStep('nfc');
    
    nfcReader.onNFCResult((result) => {
      setVerificationData(prev => ({
        ...prev,
        nfc: result.parsedFields
      }));
      
      // OCR ve NFC verilerini karşılaştır
      const ocrTC = verificationData.ocr?.tcNo;
      const nfcTC = result.parsedFields?.tcNo;
      
      if (ocrTC === nfcTC) {
        Alert.alert(
          'Doğrulama Başarılı',
          'Kimlik bilgileri eşleşti. Canlılık testine geçebilirsiniz.',
          [{ text: 'Canlılık Testi', onPress: performLiveness }]
        );
      } else {
        Alert.alert('Uyarı', 'OCR ve NFC verileri eşleşmiyor!');
      }
    });
    
    try {
      await nfcReader.startNFC();
    } catch (error) {
      Alert.alert('NFC Hatası', error.message);
      setStep('select');
    }
  };
  
  // Canlılık testi
  const performLiveness = async () => {
    setStep('liveness');
    
    livenessDetector.onSuccess = (result) => {
      setVerificationData(prev => ({
        ...prev,
        liveness: result
      }));
      
      completeVerification();
    };
    
    try {
      await livenessDetector.startLivenessTest();
    } catch (error) {
      Alert.alert('Canlılık Testi Hatası', error.message);
      setStep('select');
    }
  };
  
  // Doğrulama tamamlama
  const completeVerification = () => {
    setStep('complete');
    
    console.log('Tüm Doğrulama Verileri:', verificationData);
    
    // Backend'e gönder
    sendVerificationToBackend(verificationData);
    
    Alert.alert(
      'Doğrulama Tamamlandı',
      'Kimlik doğrulama işlemi başarıyla tamamlandı.',
      [{ text: 'Tamam', onPress: () => setStep('select') }]
    );
  };
  
  const sendVerificationToBackend = async (data) => {
    // Backend API çağrısı
    try {
      const response = await fetch('https://api.example.com/verify', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
        },
        body: JSON.stringify(data)
      });
      
      const result = await response.json();
      console.log('Backend yanıtı:', result);
    } catch (error) {
      console.error('Backend hatası:', error);
    }
  };
  
  return (
    <View style={styles.container}>
      <Text style={styles.title}>Kimlik Doğrulama</Text>
      
      {step === 'select' && (
        <View style={styles.buttonContainer}>
          <TouchableOpacity style={styles.button} onPress={performOCR}>
            <Text style={styles.buttonText}>📸 OCR ile Başla</Text>
          </TouchableOpacity>
          
          <TouchableOpacity style={styles.button} onPress={performNFC}>
            <Text style={styles.buttonText}>📡 NFC ile Başla</Text>
          </TouchableOpacity>
        </View>
      )}
      
      {step === 'ocr' && (
        <View style={styles.statusContainer}>
          <Text style={styles.statusText}>OCR işlemi devam ediyor...</Text>
        </View>
      )}
      
      {step === 'nfc' && (
        <View style={styles.statusContainer}>
          <Text style={styles.statusText}>Kimlik kartınızı yaklaştırın...</Text>
        </View>
      )}
      
      {step === 'liveness' && (
        <View style={styles.statusContainer}>
          <Text style={styles.statusText}>Canlılık testi yapılıyor...</Text>
        </View>
      )}
      
      {step === 'complete' && (
        <View style={styles.statusContainer}>
          <Text style={styles.successText}>✅ Doğrulama Tamamlandı</Text>
        </View>
      )}
    </View>
  );
};

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    padding: 20,
  },
  title: {
    fontSize: 24,
    fontWeight: 'bold',
    marginBottom: 30,
  },
  buttonContainer: {
    width: '100%',
  },
  button: {
    backgroundColor: '#2196F3',
    padding: 15,
    borderRadius: 10,
    marginBottom: 15,
  },
  buttonText: {
    color: 'white',
    fontSize: 18,
    textAlign: 'center',
  },
  statusContainer: {
    alignItems: 'center',
  },
  statusText: {
    fontSize: 16,
    color: '#666',
  },
  successText: {
    fontSize: 20,
    color: '#4CAF50',
    fontWeight: 'bold',
  },
});

export default IdentityVerificationScreen;
```

---

## 📚 API Referansı

### OCRReader Sınıfı

| Metod | Açıklama | Parametreler | Dönüş |
|-------|----------|--------------|-------|
| `startOCR(options)` | OCR sistemini başlatır | `{cardSide, language, quality}` | `Promise<boolean>` |
| `captureImage(options)` | Görüntü yakalar | `{quality, maxWidth, maxHeight}` | `Promise<string>` |
| `extractText(imageUri, options)` | Metin çıkarır | `imageUri: string, {language, confidence}` | `Promise<object>` |
| `extractField(text, fieldType)` | Belirli alanı çıkarır | `text: string, fieldType: string` | `string\|null` |
| `processBothSides(front, back)` | İki yüzü işler | `front: string, back: string` | `Promise<object>` |

### NFCReaderModule Sınıfı

| Metod | Açıklama | Parametreler | Dönüş |
|-------|----------|--------------|-------|
| `startNFC(options)` | NFC okumayı başlatır | `{readTimeout, enableVibration}` | `Promise<void>` |
| `stopNFC()` | NFC okumayı durdurur | - | `Promise<void>` |
| `onNFCResult(callback)` | Başarı callback'i | `callback: function` | `void` |
| `onNFCError(callback)` | Hata callback'i | `callback: function` | `void` |

### LivenessDetector Sınıfı

| Metod | Açıklama | Parametreler | Dönüş |
|-------|----------|--------------|-------|
| `startLivenessTest(options)` | Testi başlatır | `{maxRetries, timeoutDuration}` | `Promise<boolean>` |
| `captureFrontCamera(options)` | Ön kamerayı başlatır | `options: object` | `Promise<object>` |
| `giveInstruction(type, text)` | Talimat verir | `type: string, text: string` | `Promise<void>` |
| `validateMotion(motion, expected)` | Hareketi doğrular | `motion: object, expected: string` | `boolean` |

---

## ⚠️ Hata Yönetimi

### OCR Hata Kodları

```javascript
const OCR_ERROR_CODES = {
  CAMERA_PERMISSION_DENIED: 'Kamera izni reddedildi',
  CAMERA_NOT_AVAILABLE: 'Kamera kullanılamıyor',
  IMAGE_CAPTURE_FAILED: 'Görüntü yakalanamadı',
  TEXT_EXTRACTION_FAILED: 'Metin çıkarılamadı',
  INVALID_IMAGE_FORMAT: 'Geçersiz görüntü formatı'
};

// Hata yakalama
try {
  await ocrReader.extractText(imageUri);
} catch (error) {
  switch (error.code) {
    case 'CAMERA_PERMISSION_DENIED':
      // İzin iste
      break;
    case 'TEXT_EXTRACTION_FAILED':
      // Yeniden dene
      break;
    default:
      // Genel hata
      console.error(error);
  }
}
```

### NFC Hata Durumları

```javascript
// NFC desteklenmiyor
if (!await NfcManager.isSupported()) {
  Alert.alert('Hata', 'Bu cihaz NFC desteklemiyor');
  return;
}

// NFC kapalı
if (!await NfcManager.isEnabled()) {
  Alert.alert(
    'NFC Kapalı',
    'NFC\'yi açmak ister misiniz?',
    [
      { text: 'İptal' },
      { text: 'Ayarlara Git', onPress: () => NfcManager.goToNfcSetting() }
    ]
  );
}
```

---

## 🚀 Performans İpuçları

### OCR Optimizasyonları

1. **Görüntü Boyutu**: OCR için optimal görüntü genişliği 1200-1600px
2. **Ön İşleme**: Arka yüz (MRZ) için özel ön işleme kullanın
3. **Paralel İşleme**: İki yüzü aynı anda işleyin

```javascript
// Optimizasyon örneği
const optimizedOCR = async () => {
  // Paralel işleme
  const [frontResult, backResult] = await Promise.all([
    ocrModule.processImage(frontImage, { cardSide: 'front' }),
    ocrModule.processImage(backImage, { cardSide: 'back' })
  ]);
  
  // Bellek temizliği
  await ocrModule.cleanupTempFiles();
};
```

### NFC Optimizasyonları

1. **Timeout Ayarı**: Uygun timeout süresi belirleyin (15-30 saniye)
2. **Retry Mekanizması**: Başarısız okumalarda otomatik yeniden deneme

```javascript
const nfcWithRetry = async (maxRetries = 3) => {
  for (let i = 0; i < maxRetries; i++) {
    try {
      const result = await nfcReader.readCard();
      return result;
    } catch (error) {
      if (i === maxRetries - 1) throw error;
      await new Promise(resolve => setTimeout(resolve, 1000));
    }
  }
};
```

---

## 🔐 Güvenlik

### Veri Güvenliği

1. **PII Koruması**: Kişisel veriler bellekte şifrelenir
2. **Token Tabanlı Erişim**: iOS'ta Keychain, Android'de EncryptedSharedPreferences
3. **Otomatik Temizlik**: 5 dakika sonra otomatik veri temizliği

```javascript
// Güvenli veri saklama örneği
import { SecureStorage } from '@turkiye/kimlik-sdk';

// Veri kaydetme
await SecureStorage.setItem('user_tc', tcNo, {
  accessible: SecureStorage.ACCESSIBLE.WHEN_UNLOCKED,
  ttl: 300 // 5 dakika
});

// Veri okuma
const tcNo = await SecureStorage.getItem('user_tc');

// Veri silme
await SecureStorage.removeItem('user_tc');
```

### Ağ Güvenliği

```javascript
// HTTPS zorunluluğu
const sendToBackend = async (data) => {
  // Hassas verileri hashle
  const hashedTC = await crypto.createHash('sha256')
    .update(data.tcNo)
    .digest('hex');
  
  // SSL/TLS ile gönder
  const response = await fetch('https://api.example.com/verify', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
      'X-API-Key': 'your-api-key'
    },
    body: JSON.stringify({
      ...data,
      tcNo: hashedTC // Hash'lenmiş TC
    })
  });
};
```

---

## ❓ Sık Sorulan Sorular

### S: Hangi kimlik kartları destekleniyor?
C: Şu anda yeni nesil Türkiye Cumhuriyeti kimlik kartları (çipli) desteklenmektedir.

### S: NFC tüm cihazlarda çalışır mı?
C: NFC özelliği olan Android ve iPhone (7 ve üzeri) cihazlarda çalışır.

### S: OCR doğruluğu nedir?
C: İyi ışık koşullarında %95+ doğruluk oranı sağlanır.

### S: Offline çalışır mı?
C: OCR ve NFC modülleri offline çalışır. Sadece backend doğrulaması internet gerektirir.

### S: Hangi diller destekleniyor?
C: Şu anda Türkçe ve İngilizce desteklenmektedir.

### S: Canlılık testi zorunlu mu?
C: Hayır, isteğe bağlıdır ancak güvenlik için önerilir.

### S: Veri nerede saklanır?
C: Veriler cihazda geçici olarak şifrelenmiş şekilde saklanır ve 5 dakika sonra otomatik silinir.

---

## 📞 Destek

- **GitHub Issues**: https://github.com/turkiye/kimlik-sdk/issues
- **E-posta**: sdk-destek@turkiye.gov.tr
- **Dokümantasyon**: https://docs.kimlik-sdk.turkiye.gov.tr

---

## 📄 Lisans

MIT Lisansı - Detaylar için [LICENSE](../LICENSE) dosyasına bakın.

---

*Son güncelleme: Kasım 2024*
