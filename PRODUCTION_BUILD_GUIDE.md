# 🚀 Production Build Guide

## ✅ Tamamlanan İşlemler

### 1. Mock Data Kaldırıldı
- ✅ **CameraModule.swift**: Tüm simulator check'leri kaldırıldı
- ✅ **LivenessDetectionModule.swift**: Tüm simulator check'leri kaldırıldı
- ✅ **OCRModule.swift**: Zaten production-ready (mock data yok)
- ✅ **NFCReaderModule.swift**: Zaten production-ready (mock data yok)

### 2. App Configuration
- ✅ **index.js**: `App` component'i register edildi
- ✅ **App.js**: `USE_TEST_MODE = false` - MainApp kullanılıyor
- ✅ **iOS Build**: Clean build başarılı

### 3. Production-Ready Modules
- ✅ **OCRModule**: Vision framework + Turkish language support
- ✅ **CameraModule**: Real camera capture + permissions
- ✅ **LivenessDetectionModule**: Real face detection + anti-spoofing
- ✅ **NFCReaderModule**: Real Turkish ID card reading
- ✅ **SecureStorage**: Keychain encryption
- ✅ **FrameProcessor**: Image quality optimization

---

## 📱 Physical Device Test (Gerekli)

### iOS Gereksinimleri
1. **Physical Device Gerekli** ✅
   - Simulator NFC desteği yok
   - Simulator gerçek kamera yok
   - Production build sadece gerçek cihazda çalışır

2. **Apple Developer Account** ✅
   - Provisioning Profile
   - Signing Certificate
   - Bundle ID: `com.ocr.mobile.sdk`

### Test Adımları

#### 1. Xcode'da Device Seçimi
```bash
# Xcode'u aç
open ios/OCRMobileSDK.xcworkspace

# Xcode'da:
# 1. Target: OCRMobileSDK seçili olsun
# 2. Device: Kendi iPhone'unuzu seçin (simulator değil!)
# 3. Signing & Capabilities:
#    - Team: Apple Developer hesabınızı seçin
#    - Provisioning Profile: Automatic
```

#### 2. Build ve Run
```bash
# Terminal'den:
npx react-native run-ios --device "YourDeviceName"

# VEYA Xcode'dan:
# Command + R ile build ve run
```

#### 3. Test Checklist

##### ✅ OCR Testi
- [ ] Kamera izni isteniyor mu?
- [ ] Fotoğraf çekiliyor mu?
- [ ] TC Kimlik kartı tanınıyor mu?
- [ ] Veriler doğru parse ediliyor mu?

##### ✅ Liveness Detection Testi
- [ ] Kamera açılıyor mu?
- [ ] Yüz tanınıyor mu?
- [ ] Göz kırpma, gülümseme, baş dönme komutları çalışıyor mu?
- [ ] Anti-spoofing skorları hesaplanıyor mu?

##### ✅ NFC Testi
- [ ] NFC okuyucu açılıyor mu?
- [ ] Kimlik kartı tanınıyor mu?
- [ ] MRZ data parse ediliyor mu?
- [ ] TC No, ad, soyad, doğum tarihi doğru mu?

##### ✅ Camera Features
- [ ] Flash açılıp kapanıyor mu?
- [ ] Focus ayarlanıyor mu?
- [ ] Ön/arka kamera değişimi çalışıyor mu?

---

## 🔐 Info.plist Permissions (Kontrol Et!)

```xml
<key>NSCameraUsageDescription</key>
<string>Kimlik doğrulama için kamera erişimi gereklidir</string>

<key>NSPhotoLibraryUsageDescription</key>
<string>Fotoğraf kaydetmek için galeri erişimi gereklidir</string>

<key>NSFaceIDUsageDescription</key>
<string>Güvenli veri saklama için Face ID kullanılır</string>

<key>NFCReaderUsageDescription</key>
<string>Kimlik kartı okumak için NFC gereklidir</string>

<key>com.apple.developer.nfc.readersession.iso7816.select-identifiers</key>
<array>
    <string>A0000002471001</string>
</array>
```

---

## 📋 Production Build Steps

### 1. Archive (App Store için)
```bash
# Xcode'da:
# 1. Product → Archive
# 2. Organizer açılır
# 3. "Distribute App" buton
# 4. TestFlight veya App Store
```

### 2. Release Configuration
```bash
# Xcode'da:
# 1. Edit Scheme → Run
# 2. Build Configuration: Release
# 3. Info.plist'ten debug ayarlarını kaldır
```

### 3. Version & Build Number
```bash
# ios/OCRMobileSDK/Info.plist
<key>CFBundleShortVersionString</key>
<string>1.0.0</string>
<key>CFBundleVersion</key>
<string>1</string>
```

---

## 🎯 MainApp Features

Production app şu özellikleri içeriyor:

1. **📸 OCR Scanning**
   - Turkish ID card recognition
   - Vision framework + ML
   - Field extraction (TC, Name, Date, etc.)

2. **😊 Liveness Detection**
   - Real-time face tracking
   - Gesture commands (blink, smile, turn, nod)
   - Anti-spoofing (depth + texture analysis)

3. **📡 NFC Reading**
   - Turkish ID card NFC chip
   - ICAO Doc 9303 MRZ parsing
   - Secure data extraction

4. **📷 Camera Control**
   - Photo capture
   - Focus/flash control
   - Front/back switching

5. **🔒 Security**
   - Keychain encryption (AES256)
   - Token-based data exchange
   - 5-minute TTL for PII
   - One-time token usage

---

## 🐛 Troubleshooting

### Build Failed?
```bash
# Clean everything
cd ios
rm -rf Pods Podfile.lock
pod install
cd ..
rm -rf node_modules
npm install

# DerivedData temizle
rm -rf ~/Library/Developer/Xcode/DerivedData
```

### Signing Error?
- Xcode → Signing & Capabilities
- Team seçin
- "Automatically manage signing" aktif

### NFC Not Working?
- Physical device kullanıyor musunuz?
- Info.plist'te NFC permissions var mı?
- Capabilities'te "Near Field Communication Tag Reading" aktif mi?

### Camera Not Working?
- Physical device kullanıyor musunuz?
- Info.plist'te Camera permission var mı?
- Uygulama izin istedi mi?

---

## 📝 Next Steps

1. ✅ Physical device'a deploy et
2. ✅ Tüm özellikleri test et
3. ✅ Real Turkish ID card ile test et
4. ✅ Production data ile stress test
5. ✅ TestFlight beta test
6. ✅ App Store submission

---

## 🎉 Ready for Production!

**Tüm mock data kaldırıldı!**
**Tüm native modules production-ready!**
**Physical device test için hazır!**

🚀 Good luck with your production deployment!
