# Stand-Alone OCR Mobile App

Bu proje artık **stand-alone (bağımsız)** bir React Native uygulaması olarak yapılandırılmıştır. SDK olarak kullanılmaz, doğrudan bir mobil uygulama olarak çalışır.

## 📱 Özellikler

- ✅ **OCR (Optik Karakter Tanıma)**: Kimlik kartı okuma (tek ve çift taraflı)
- ✅ **NFC Okuma**: Türk kimlik kartı çipi okuma
- ✅ **Canlılık Testi**: Yüz doğrulama ve anti-spoofing
- ✅ **KVKK Uyumlu**: Tüm veriler cihazda işlenir
- ✅ **Production Ready**: Mock data yok, gerçek implementasyon

## 🚀 Kurulum ve Çalıştırma

### 1️⃣ Önkoşullar

**Gerekli Yazılımlar:**
- Node.js 14 veya üzeri
- npm veya yarn
- Android Studio (Android için)
- Xcode 12+ (iOS için - sadece macOS)
- JDK 17 (Android için)

### 2️⃣ Projeyi Hazırlama

```bash
# Proje dizinine gidin
cd /Users/deneme/Documents/GitHub/ocr

# Bağımlılıkları yükleyin
npm install

# iOS için (sadece macOS)
cd ios && pod install && cd ..
```

### 3️⃣ Android'de Çalıştırma

#### Linux / macOS:
```bash
# Metro bundler'ı başlatın (ayrı bir terminal penceresi)
npm start

# Başka bir terminal penceresinde Android uygulamasını çalıştırın
npm run android

# VEYA
npx react-native run-android
```

#### Windows (PowerShell):
```powershell
# İki PowerShell penceresi açın

# Terminal 1: Metro bundler
npm start

# Terminal 2: Android build
npm run android

# Sorun yaşarsanız:
cd android
.\gradlew --stop
.\BUILD_CLEAN.ps1
npm run android
```

**⚠️ Windows'ta Gradle Daemon Crash?**
Detaylı çözüm için: `android/FIX_WINDOWS_BUILD.md`

**Android Gereksinimleri:**
- Android 11 (API Level 30) veya üzeri
- USB Debugging etkin Android cihaz VEYA Android Emulator
- NFC özelliği için fiziksel cihaz gerekli (emulator'da NFC çalışmaz)

### 4️⃣ iOS'te Çalıştırma (Sadece macOS)

```bash
# Metro bundler'ı başlatın (ayrı bir terminal penceresi)
npm start

# Başka bir terminal penceresinde iOS uygulamasını çalıştırın
npm run ios

# VEYA belirli bir cihaz için
npx react-native run-ios --device "iPhone adı"
```

**iOS Gereksinimleri:**
- iOS 14.0 veya üzeri
- Xcode ile geliştirici hesabı bağlantısı
- NFC özelliği için fiziksel iPhone gerekli (simulator'da NFC çalışmaz)

## 📂 Proje Yapısı

```
ocr/
├── android/              # Android native kod
├── ios/                  # iOS native kod
├── modules/              # Uygulama modülleri
│   ├── ocr/             # OCR modülü
│   ├── nfc/             # NFC modülü
│   └── liveness/        # Canlılık testi modülü
├── components/          # React bileşenleri
├── utils/               # Yardımcı fonksiyonlar
├── examples/            # Örnek ekranlar
├── App.js               # Ana uygulama entry point
├── MainApp.js           # Ana menü ve navigasyon
└── index.js             # React Native kayıt noktası
```

## 🎯 Ana Ekranlar

1. **Ana Menü** - Tüm modüllere erişim
2. **OCR Okuma** - Tek yüz kimlik tarama
3. **Çift Taraflı Tarama** - Ön ve arka yüz tarama (⭐ önerilen)
4. **NFC Okuma** - Kimlik kartı çipi okuma
5. **Canlılık Testi** - Yüz doğrulama

## 🔒 İzinler

Uygulama aşağıdaki izinleri gerektirir:

### Android
- `CAMERA` - OCR ve canlılık testi için
- `NFC` - Kimlik kartı okuma için
- `READ_EXTERNAL_STORAGE` - Görüntü işleme için
- `WRITE_EXTERNAL_STORAGE` - Görüntü kaydetme için

### iOS
- `NSCameraUsageDescription` - Kamera erişimi
- `NSPhotoLibraryUsageDescription` - Fotoğraf kütüphanesi
- `NFCReaderUsageDescription` - NFC okuma
- `NSFaceIDUsageDescription` - Face ID kullanımı

## 🐛 Sorun Giderme

### Metro Bundler Sorunları
```bash
# Cache'i temizle ve yeniden başlat
npm start -- --reset-cache
```

### Android Build Hataları

#### Linux / macOS:
```bash
# Gradle cache'i temizle
cd android && ./gradlew clean && cd ..

# Node modules'u yeniden yükle
rm -rf node_modules && npm install
```

#### Windows (PowerShell):
```powershell
# Gradle daemon crash - HIZLI ÇÖZÜM
cd android
.\QUICK_FIX.bat

# Manuel temizlik
.\gradlew --stop
.\gradlew clean --no-daemon
Remove-Item -Recurse -Force $env:USERPROFILE\.gradle\caches
Remove-Item -Recurse -Force $env:USERPROFILE\.gradle\daemon

# Node modules yenile
cd ..
Remove-Item -Recurse -Force node_modules
npm install

# Detaylı çözüm kılavuzu
# android/FIX_WINDOWS_BUILD.md dosyasına bakın
```

### iOS Build Hataları
```bash
# Pod cache'i temizle
cd ios && pod deintegrate && pod install && cd ..

# Xcode derived data'yı temizle
rm -rf ~/Library/Developer/Xcode/DerivedData
```

### NFC Çalışmıyor
- NFC yalnızca **fiziksel cihazlarda** çalışır
- Cihazınızda NFC'nin aktif olduğundan emin olun
- Android 11 veya iOS 14 minimum sürüm gereklidir

## 📊 Test Etme

```bash
# Unit testleri çalıştır
npm test

# Linting
npm run lint

# Format düzeltme
npm run format
```

## 🔧 Geliştirme Notları

- **Debug Mode**: Varsayılan olarak debug modda çalışır
- **Release Build**: Production build için ayrı komutlar gerekir
- **Hot Reloading**: Geliştirme sırasında otomatik kod yenileme
- **Component Name**: `mobile-sdk-ocr-nfc-liveness` (MainActivity'de tanımlı)

## 📱 Release Build (Production)

### Android APK
```bash
cd android
./gradlew assembleRelease
# APK: android/app/build/outputs/apk/release/app-release.apk
```

### iOS Archive
```bash
# Xcode'da Product > Archive ile yapılır
# Veya fastlane kullanabilirsiniz
```

## 🆘 Destek

Sorun yaşarsanız:
1. Önce konsol loglarını kontrol edin
2. React Native DevMenu'yi açın (Cmd+D veya Shake device)
3. Metro bundler çıktısını inceleyin
4. Native logları kontrol edin:
   - Android: `adb logcat`
   - iOS: Xcode Console

## 📝 Lisans

MIT License - Özgürce kullanabilirsiniz.

---

**Önemli Not**: Bu uygulama KVKK uyumludur. Tüm veriler cihazda işlenir, hiçbir bilgi sunucuya gönderilmez.
