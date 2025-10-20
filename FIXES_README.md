# React Native 0.78.0 Düzeltmeler

Bu proje React Native 0.78.0 kullanmaktadır ve bazı bağımlılıklar otomatik düzeltme gerektirmektedir.

## 🔧 Otomatik Düzeltmeler

Aşağıdaki sorunlar **otomatik olarak** `npm install` sonrasında düzeltilir:

### 1. **react-native-fs** - Namespace Sorunu
- **Sorun**: Android Gradle Plugin 8.x namespace gerektirir
- **Düzeltme**: `namespace "com.rnfs"` eklendi

### 2. **react-native-text-recognition** - Namespace ve SDK Versiyonları
- **Sorun**: 
  - Namespace eksik
  - compileSdkVersion 29 (Java 9+ için yetersiz)
  - minSdkVersion 16 (React Native 0.78 için yetersiz)
- **Düzeltme**:
  - `namespace "com.reactnativetextrecognition"` eklendi
  - compileSdkVersion: 29 → 34
  - minSdkVersion: 16 → 21
  - targetSdkVersion: 29 → 34

### 3. **Metro Bundler** - Middleware Sorunları
- **Sorun**:
  - `unusedMiddlewareStub` boş obje (middleware fonksiyonu olmalı)
  - `indexPageMiddleware` undefined (export edilmemiş)
  - Undefined middleware'ler hata veriyor
- **Düzeltme**:
  - `unusedMiddlewareStub` middleware fonksiyonuna dönüştürüldü
  - `indexPageMiddleware` doğru şekilde import edildi
  - Undefined middleware'ler filtrelendi

### 4. **Root Project** - SDK Versiyonları
- **minSdkVersion**: 23 → 24 (React Native 0.78.0 gereksinimi)
- **React Native versiyonları**: 0.74.7 → 0.78.0

## 🚀 Kullanım

### İlk Kurulum
```bash
npm install
```

### node_modules Yeniden Kurulduğunda
```bash
npm install
```

Düzeltmeler otomatik olarak uygulanacaktır!

### Manuel Düzeltme (Gerekirse)
```bash
node scripts/fix-dependencies.js
```

## 📱 Build ve Çalıştırma

### Android Build
```bash
cd android
.\gradlew clean
.\gradlew assembleDebug
```

### Metro Bundler Başlatma
```bash
npm start
```

### Uygulamayı Çalıştırma
```bash
npm run android
```

veya

```bash
# Metro açık kalacak şekilde başka bir terminalde
npx react-native run-android
```

## ✅ Düzeltmelerin Kalıcılığı

- ✅ `scripts/fix-dependencies.js` oluşturuldu
- ✅ `package.json` içinde `postinstall` script'i eklendi
- ✅ Her `npm install` sonrası otomatik uygulanır
- ✅ Git'e commit edilebilir
- ✅ CI/CD pipeline'larında çalışır

## 🔍 Sorun Giderme

### Metro Bundler Çalışmıyorsa
```bash
# Port'u kontrol et
netstat -ano | findstr :8081

# Çalışan process'i durdur
taskkill /PID <PID> /F

# Metro'yu yeniden başlat
npm start
```

### Build Hatası Alıyorsanız
```bash
# Android temizle
cd android
.\gradlew clean
cd ..

# node_modules temizle ve yeniden kur
Remove-Item -Recurse -Force node_modules
npm install

# Build
cd android
.\gradlew assembleDebug
```

### Düzeltmeler Uygulanmadıysa
```bash
# Manuel olarak uygula
node scripts/fix-dependencies.js
```

## 📝 Notlar

- Bu düzeltmeler React Native 0.78.0 için optimize edilmiştir
- Android Gradle Plugin 8.6.1 ile uyumludur
- Java 17 gerektirir
- Minimum Android SDK: 24

## 🆘 Yardım

Sorun yaşarsanız:
1. `node scripts/fix-dependencies.js` çalıştırın
2. `npm install` tekrar çalıştırın
3. Metro'yu yeniden başlatın
4. Gradle clean yapın

---

**Son Güncelleme**: 2025-10-20
**React Native Versiyon**: 0.78.0
**Android Gradle Plugin**: 8.6.1
