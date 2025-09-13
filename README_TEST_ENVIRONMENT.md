# React Native Test Environment

Bu proje, OCR, NFC ve Canlılık (Liveness) modüllerini test etmek için oluşturulmuş bir mock test ortamıdır. Gerçek kamera, NFC veya mikrofon gerektirmeden tüm modülleri test edebilirsiniz.

## 🚀 Özellikler

- **📷 OCR Test Modülü**: Test resimleri ile metin çıkarma
- **📡 NFC Test Modülü**: Mock veriler ile kimlik okuma  
- **🎭 Canlılık Test Modülü**: Simüle edilmiş hareket testi
- **📱 React Native 0.74+ uyumlu**
- **🔧 Kamera/NFC/Mikrofon gerektirmez**

## 📁 Proje Yapısı

```
ocr/
├── components/                 # Test component dosyaları
│   ├── OCRTestComponent.js    # OCR test arayüzü
│   ├── NFCTestComponent.js    # NFC test arayüzü
│   └── LivenessTestComponent.js # Canlılık test arayüzü
├── assets/test-images/        # OCR test resimleri
│   └── README.md             # Test resimleri hakkında bilgi
├── mock/                      # Mock data dosyaları
│   ├── nfcData.js            # NFC mock verileri
│   └── livenessData.js       # Canlılık mock verileri
├── App.js                     # Ana uygulama giriş noktası
├── TestEnvironmentApp.js      # Ana test arayüzü
└── README_TEST_ENVIRONMENT.md # Bu dosya
```

## 🛠️ Kurulum

1. **Bağımlılıkları yükleyin:**
```bash
npm install
```

2. **iOS için (macOS gerekli):**
```bash
cd ios && pod install && cd ..
```

3. **Uygulamayı çalıştırın:**

Android için:
```bash
npx react-native run-android
```

iOS için:
```bash
npx react-native run-ios
```

## 📱 Kullanım

### Ana Ekran
- Uygulama açıldığında 3 test modülü görürsünüz
- Her modüle tıklayarak test arayüzüne geçebilirsiniz

### OCR Test Modülü
1. Test resimlerinden birini seçin
2. OCR işlemi otomatik başlar
3. Sonuçları ekranda görün ve konsolu kontrol edin

**Mevcut Test Resimleri:**
- `id-card-sample.jpg`: Türk kimlik kartı
- `passport-sample.jpg`: Pasaport
- `document-sample.jpg`: Genel belge

### NFC Test Modülü
1. Mock veri türlerinden birini seçin
2. NFC okuma simülasyonu başlar
3. Kimlik bilgilerini ekranda görün

**Mevcut Mock Veriler:**
- `default`: Varsayılan kimlik
- `sample1`: Örnek kimlik 1
- `sample2`: Örnek kimlik 2
- `error`: Hata simülasyonu

### Canlılık Test Modülü
1. Test türünü seçin (Kolay/Orta/Zor)
2. Canlılık testi simülasyonu başlar
3. Hareket analizi sonuçlarını görün

**Test Türleri:**
- `Standart Test`: Temel canlılık testi
- `Gelişmiş Test`: Çoklu hareket testi
- `Katı Test`: Yüksek güvenlik testi
- `Başarısız Test`: Hata simülasyonu

## 🔧 Fonksiyonlar

### OCR Modülü
```javascript
// Mock OCR fonksiyonu
const recognizeTextFromImage = async (imagePath) => {
  // Simulated OCR processing
  return {
    success: true,
    text: "Extracted text...",
    confidence: 0.92,
    fields: { name: "MEHMET", surname: "YILMAZ" }
  };
};
```

### NFC Modülü
```javascript
// Mock NFC fonksiyonu
const handleNFCRead = async (mockDataType = 'default') => {
  // Simulated NFC reading
  return {
    success: true,
    cardData: { firstName: "MEHMET", lastName: "YILMAZ" },
    verification: { isValid: true }
  };
};
```

### Canlılık Modülü
```javascript
// Mock Canlılık fonksiyonu
const handleLivenessResult = async (testType = 'default') => {
  // Simulated liveness detection
  return {
    success: true,
    isLive: true,
    confidence: 0.92,
    details: { movements: {...}, faceMetrics: {...} }
  };
};
```

## 📊 Test Akışı

### OCR Test Akışı
1. Resim seçimi → Mock OCR işlemi → Metin çıkarma → Sonuç gösterimi
2. Konsol çıktısı: Çıkarılan metin ve güven oranı

### NFC Test Akışı  
1. Mock veri seçimi → NFC okuma simülasyonu → Kimlik verisi → Doğrulama sonucu
2. Konsol çıktısı: Kart verileri ve teknik bilgiler

### Canlılık Test Akışı
1. Test türü seçimi → Hareket simülasyonu → Analiz → Canlılık sonucu
2. Konsol çıktısı: Hareket analizi ve güven oranı

## 🎯 Geliştirme Notları

- Tüm testler mock verilerle çalışır
- Gerçek cihaz özellikleri gerektirmez
- React Native 0.74+ ile uyumlu
- TypeScript desteği eklenebilir
- Ek test senaryoları kolayca eklenebilir

## 🐛 Hata Ayıklama

Konsol çıktılarını kontrol edin:
```javascript
console.log('🔍 OCR Test Started:', imagePath);
console.log('📡 NFC Test Started:', mockType);  
console.log('🎭 Liveness Test Started:', testType);
```

## 📄 Lisans

MIT License - Test amaçlı kullanım için tasarlanmıştır.

## 🤝 Katkıda Bulunma

1. Yeni test senaryoları ekleyin
2. Mock veri çeşitliliğini artırın
3. UI/UX iyileştirmeleri yapın
4. Hata durumlarını genişletin

---

**Not**: Bu bir test ortamıdır. Gerçek üretim uygulamasında gerçek OCR, NFC ve canlılık algılama kütüphanelerini kullanın.
