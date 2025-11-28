# Face Comparison Module - NFC ile Liveness Karşılaştırması

## 📋 Genel Bakış

NFC pasaport fotoğrafı ile liveness testi sırasında çekilen fotoğrafları karşılaştırarak kimlik doğrulama yapan modül.

## 🎯 Özellikler

- ✅ **NFC Fotoğraf Yükleme**: Pasaport fotoğrafından yüz verilerini çıkarma
- ✅ **Liveness Fotoğraf Çekme**: Test sırasında rastgele fotoğraf çekme
- ✅ **Yüz Karşılaştırma**: Landmark, geometri ve özellik bazlı benzerlik analizi
- ✅ **GDPR/KVKK Uyumlu**: Tüm veriler geçici, karşılaştırma sonrası otomatik temizleme
- ✅ **Anti-spoofing**: Gerçek yüz algılama ile doğal koruma

## 🔧 Kullanım

### 1. Temel Kullanım

```javascript
const LivenessDetector = require('./modules/liveness/LivenessDetector');

// Liveness detector oluştur
const detector = new LivenessDetector({
  enableFaceComparison: true,
  capturePhotosForComparison: true,
  photoCaptureInterval: 2, // Her 2 komuttan 1 fotoğraf
});

// 1. NFC fotoğrafını yükle
const nfcPhotoUri = 'file:///path/to/nfc/photo.jpg';
await detector.loadNFCPhoto(nfcPhotoUri);

// 2. Liveness testi başlat
await detector.startLivenessTest({
  commandCount: 5,
  difficulty: 'medium',
});

// 3. Liveness sırasında fotoğraf çek (otomatik veya manuel)
await detector.capturePhotoForComparison(cameraRef, {
  command: 'blink',
  timestamp: Date.now(),
});

// 4. NFC ile karşılaştır
const comparisonResult = await detector.compareWithNFC();

if (comparisonResult.passed) {
  console.log('✅ Kimlik doğrulandı!', comparisonResult.averageScore);
} else {
  console.log('❌ Kimlik doğrulanamadı!');
}
```

### 2. React Native Örneği

```javascript
import React, { useRef, useState } from 'react';
import { Camera } from 'react-native-vision-camera';
import LivenessDetector from './modules/liveness/LivenessDetector';

const VerificationScreen = ({ nfcPhotoUri }) => {
  const cameraRef = useRef(null);
  const [detector] = useState(() => new LivenessDetector({
    enableFaceComparison: true,
    capturePhotosForComparison: true,
  }));

  const startVerification = async () => {
    try {
      // NFC fotoğrafını yükle
      await detector.loadNFCPhoto(nfcPhotoUri);

      // Callbacks
      detector.onProgress = (msg) => console.log(msg);
      detector.onPhotoCapture = (data) => {
        console.log('Fotoğraf çekildi:', data.totalPhotos);
      };

      // Liveness başlat
      await detector.startLivenessTest({ commandCount: 5 });

      // Her komut için fotoğraf çek
      // (Bu kısmı liveness modülü içinde otomatikleştirebilirsiniz)

      // Karşılaştır
      const result = await detector.compareWithNFC();
      
      if (result.passed) {
        Alert.alert('Başarılı', `Kimlik doğrulandı! Skor: ${(result.averageScore * 100).toFixed(1)}%`);
      } else {
        Alert.alert('Başarısız', 'Kimlik doğrulanamadı');
      }

    } catch (error) {
      console.error(error);
    }
  };

  return (
    <View style={{ flex: 1 }}>
      <Camera ref={cameraRef} style={{ flex: 1 }} device="front" />
      <Button title="Doğrulama Başlat" onPress={startVerification} />
    </View>
  );
};
```

### 3. NFC Entegrasyonu

```javascript
const NFCReaderModule = require('./modules/nfc/NFCReaderModule');
const LivenessDetector = require('./modules/liveness/LivenessDetector');

async function verifyIdentity(cameraRef) {
  // 1. NFC okuma
  const nfcData = await NFCReaderModule.readPassport({
    canNumber: '123456',
    dateOfBirth: '900101',
    expiryDate: '301231',
  });

  // 2. Liveness + Karşılaştırma
  const detector = new LivenessDetector({
    enableFaceComparison: true,
  });

  await detector.loadNFCPhoto(nfcData.photo.uri);
  await detector.startLivenessTest({ commandCount: 5 });
  
  // Liveness sırasında otomatik fotoğraf çekimi için
  let photoCount = 0;
  const interval = setInterval(async () => {
    if (detector.currentCommand && photoCount % 2 === 0) {
      await detector.capturePhotoForComparison(cameraRef, {
        command: detector.currentCommand.type,
      });
    }
    photoCount++;
  }, 1000);

  // Liveness tamamlanınca interval'i temizle
  detector.onSuccess = () => clearInterval(interval);

  const comparison = await detector.compareWithNFC();
  
  return {
    nfcData,
    livenessResult: true,
    faceMatchResult: comparison,
    verified: comparison.passed,
  };
}
```

## 📊 Karşılaştırma Algoritması

### Benzerlik Hesaplama

Üç farklı metriğin ağırlıklı ortalaması:

1. **Landmark Benzerliği (50% ağırlık)**
   - Gözler, burun, ağız landmark'larının pozisyon karşılaştırması
   - Euclidean mesafe hesaplama
   - Normalize edilmiş skor (0-1)

2. **Geometrik Benzerlik (30% ağırlık)**
   - Yüz boyutu oranları
   - Baş pozisyonu (Euler açıları)
   - Yüz şekli karşılaştırması

3. **Özellik Benzerliği (20% ağırlık)**
   - Göz açıklığı
   - Gülümseme durumu
   - Yüz ifadesi (sınırlı)

### Eşik Değerler

```javascript
const COMPARISON_CONFIG = {
  minSimilarityScore: 0.75,     // %75 minimum benzerlik
  minPhotosToCompare: 3,        // En az 3 fotoğraf
  confidenceThreshold: 0.7,     // ML Kit confidence
  maxComparisonTime: 5000,      // 5 saniye max
};
```

### Başarı Kriterleri

- Çekilen fotoğrafların en az **%75'i** eşik değerin üzerinde olmalı
- Ortalama benzerlik skoru **0.75** (veya daha yüksek) olmalı
- Her fotoğrafta yüz **confidence > 0.7** olmalı

## 🔒 Güvenlik & Privacy

### GDPR/KVKK Compliance

- ✅ **Geçici Depolama**: Tüm veriler bellekte, disk'te değil
- ✅ **Otomatik Temizleme**: Karşılaştırma sonrası `cleanup()` otomatik çalışır
- ✅ **Minimum Data**: Sadece landmark koordinatları ve özellik vektörleri saklanır
- ✅ **7 Gün Kural**: Sistemde hiçbir veri kalıcı değil
- ✅ **Hashing**: Tüm ID'ler hash'lenir

### Anti-spoofing

- ML Kit gerçek yüz algılama (maskelere karşı koruma)
- Çoklu fotoğraf karşılaştırması (replay attack koruması)
- Rastgele komutlar (predictable olmayan)
- Liveness + Face Match kombinasyonu

## 📈 Performans

- **Face Detection**: ~200-300ms / fotoğraf
- **Landmark Extraction**: ~50ms
- **Comparison**: ~100ms / fotoğraf çifti
- **Total Process**: ~2-3 saniye (5 fotoğraf için)

## 🧪 Test

```javascript
const FaceComparison = require('./faceComparison');

// Test
const comparison = new FaceComparison();

await comparison.loadNFCPhoto('/path/to/nfc.jpg');
await comparison.addLivenessPhoto('/path/to/live1.jpg', { command: 'blink' });
await comparison.addLivenessPhoto('/path/to/live2.jpg', { command: 'smile' });
await comparison.addLivenessPhoto('/path/to/live3.jpg', { command: 'lookLeft' });

const result = await comparison.comparePhotos();
console.log(result);
```

## 🚨 Hata Yönetimi

```javascript
try {
  await detector.loadNFCPhoto(uri);
  await detector.startLivenessTest();
  const result = await detector.compareWithNFC();
} catch (error) {
  if (error.message.includes('NFC fotoğrafında yüz algılanamadı')) {
    // Kötü kaliteli NFC fotoğrafı
  } else if (error.message.includes('Yetersiz fotoğraf')) {
    // Liveness sırasında yeterli fotoğraf çekilemedi
  } else if (error.message.includes('NFC fotoğrafı yüklenmemiş')) {
    // loadNFCPhoto() çağrılmamış
  }
}
```

## 📝 Notlar

- **Production-ready değil**: Face matching tam değil, daha fazla test gerekli
- **ML Kit Limitations**: Sadece face detection var, recognition yok
- **Cloud Alternative**: Daha iyi accuracy için Azure Face API veya AWS Rekognition kullanılabilir
- **Native Implementation**: Ideal çözüm native face recognition kütüphaneleri

## 🔄 Roadmap

- [ ] Anti-spoofing texture analysis implementasyonu
- [ ] Depth sensing (iPhone Face ID benzeri)
- [ ] Cloud face recognition API entegrasyonu (opsiyonel)
- [ ] Performance optimizasyonları
- [ ] Daha fazla test ve validasyon
- [ ] Production deployment checklist

## 📚 Referanslar

- [ML Kit Face Detection](https://developers.google.com/ml-kit/vision/face-detection)
- [Face Recognition Best Practices](https://www.nist.gov/programs-projects/face-recognition-vendor-test-frvt)
- [GDPR Biometric Data Guidelines](https://gdpr-info.eu/)
- [KVKK Biyometrik Veri Yönetmeliği](https://www.kvkk.gov.tr/)
