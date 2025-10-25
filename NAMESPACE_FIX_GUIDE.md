# 🔧 ANDROID NAMESPACE HATALARI - TAM ÇÖZÜM REHBERİ

## ❌ SORUN

```
Namespace not specified. Specify a namespace in the module's build file
```

**Sebep**: Android Gradle Plugin 7.0+ tüm modüllerde `namespace` zorunlu. ML Kit ve diğer paketlerde eksik.

---

## ✅ OTOMATIK ÇÖZÜM (ÖNERİLEN)

### Windows PowerShell:

```powershell
# Proje ana dizinine git
cd C:\Users\aslib\Desktop\Kantlori\ocr

# Fix script'ini çalıştır
.\FIX_NAMESPACES.ps1
```

### macOS/Linux:

```bash
# Proje ana dizinine git
cd ~/Desktop/Kantlori/ocr

# Script'i çalıştırılabilir yap
chmod +x FIX_NAMESPACES.sh

# Fix script'ini çalıştır
./FIX_NAMESPACES.sh
```

**Bu script**:
1. ✅ node_modules'ü temizleyip yeniden yükler
2. ✅ Tüm paketlere namespace ekler
3. ✅ AndroidManifest.xml'lerden package attribute'u kaldırır
4. ✅ Patch dosyaları oluşturur (gelecek için)
5. ✅ Gradle clean yapar

---

## 🔧 MANUEL ÇÖZÜM (İsteğe Bağlı)

Eğer otomatik script çalışmazsa, manuel olarak düzeltebilirsin:

### 1. ML Kit Text Recognition

**Dosya**: `node_modules\@react-native-ml-kit\text-recognition\android\build.gradle`

```gradle
android {
    namespace "com.rnmlkit.textrecognition"  // ← BU SATIRI EKLE
    compileSdkVersion safeExtGet('compileSdkVersion', DEFAULT_COMPILE_SDK_VERSION)
    // ... geri kalan
}
```

**Dosya**: `node_modules\@react-native-ml-kit\text-recognition\android\src\main\AndroidManifest.xml`

```xml
<!-- ÖNCE (YANLIŞ) -->
<manifest xmlns:android="http://schemas.android.com/apk/res/android"
          package="com.rnmlkit.textrecognition">
</manifest>

<!-- SONRA (DOĞRU) -->
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
</manifest>
```

---

### 2. ML Kit Face Detection

**Dosya**: `node_modules\@react-native-ml-kit\face-detection\android\build.gradle`

```gradle
android {
    namespace "com.rnmlkit.facedetection"  // ← BU SATIRI EKLE
    compileSdkVersion safeExtGet('compileSdkVersion', DEFAULT_COMPILE_SDK_VERSION)
    // ... geri kalan
}
```

**Dosya**: `node_modules\@react-native-ml-kit\face-detection\android\src\main\AndroidManifest.xml`

```xml
<!-- package attribute'u kaldır -->
<manifest xmlns:android="http://schemas.android.com/apk/res/android">
</manifest>
```

---

### 3. NFC Manager

**Dosya**: `node_modules\react-native-nfc-manager\android\build.gradle`

```gradle
android {
    namespace "community.revteltech.nfc"  // ← BU SATIRI EKLE
    compileSdkVersion rootProject.ext.compileSdkVersion
    // ... geri kalan
}
```

---

### 4. Vision Camera

**Dosya**: `node_modules\react-native-vision-camera\android\build.gradle`

```gradle
android {
    namespace "com.mrousavy.camera"  // ← BU SATIRI EKLE
    compileSdkVersion safeExtGet("compileSdkVersion", 33)
    // ... geri kalan
}
```

---

### 5. Image Crop Picker

**Dosya**: `node_modules\react-native-image-crop-picker\android\build.gradle`

```gradle
android {
    namespace "com.reactnative.ivpusic.imagepicker"  // ← BU SATIRI EKLE
    compileSdkVersion rootProject.ext.compileSdkVersion
    // ... geri kalan
}
```

---

## 📦 PATCH DOSYALARI (Kalıcı Çözüm)

Manuel düzeltme yaptıysan, değişiklikleri patch olarak kaydet:

```powershell
# Windows
npm install --save-dev patch-package
npx patch-package @react-native-ml-kit/text-recognition
npx patch-package @react-native-ml-kit/face-detection
npx patch-package react-native-nfc-manager
npx patch-package react-native-vision-camera
npx patch-package react-native-image-crop-picker
```

Bu, `patches/` klasöründe patch dosyaları oluşturur. Bir sonraki `npm install`'de otomatik uygulanır.

---

## 🎯 NAMESPACE LİSTESİ (Referans)

| Paket | Namespace | Dosya Yolu |
|-------|-----------|------------|
| **Ana App** | `com.ocrmobilesdk` | `android/app/build.gradle` ✅ |
| **ML Kit Text Recognition** | `com.rnmlkit.textrecognition` | `node_modules/@react-native-ml-kit/text-recognition/android/build.gradle` |
| **ML Kit Face Detection** | `com.rnmlkit.facedetection` | `node_modules/@react-native-ml-kit/face-detection/android/build.gradle` |
| **NFC Manager** | `community.revteltech.nfc` | `node_modules/react-native-nfc-manager/android/build.gradle` |
| **Vision Camera** | `com.mrousavy.camera` | `node_modules/react-native-vision-camera/android/build.gradle` |
| **Image Crop Picker** | `com.reactnative.ivpusic.imagepicker` | `node_modules/react-native-image-crop-picker/android/build.gradle` |
| **Image Resizer** | `fr.bamlab.rnimageresizer` | `node_modules/@bam.tech/react-native-image-resizer/android/build.gradle` |
| **Reanimated** | `com.swmansion.reanimated` | `node_modules/react-native-reanimated/android/build.gradle` |
| **Gesture Handler** | `com.swmansion.gesturehandler` | `node_modules/react-native-gesture-handler/android/build.gradle` |
| **Safe Area Context** | `com.th3rdwave.safeareacontext` | `node_modules/react-native-safe-area-context/android/build.gradle` |
| **Screens** | `com.swmansion.rnscreens` | `node_modules/react-native-screens/android/build.gradle` |
| **TTS** | `net.no_mad.tts` | `node_modules/react-native-tts/android/build.gradle` |
| **FS** | `com.rnfs` | `node_modules/react-native-fs/android/build.gradle` |
| **Permissions** | `com.zoontek.rnpermissions` | `node_modules/react-native-permissions/android/build.gradle` |

---

## 🚀 ÇÖZÜM SONRASI BUILD

```powershell
# 1. Proje dizinine git
cd C:\Users\aslib\Desktop\Kantlori\ocr

# 2. Gradle clean
cd android
.\gradlew clean

# 3. Build
.\gradlew assembleDebug

# 4. Run
cd ..
npx react-native run-android
```

---

## ⚠️ ÖNEMLİ NOTLAR

### 1. node_modules Her Silindiğinde
Patch dosyaları varsa otomatik uygulanır. Yoksa tekrar düzeltmen gerekir.

```json
// package.json'a ekle
{
  "scripts": {
    "postinstall": "patch-package"
  }
}
```

### 2. Patch Dosyaları Git'e Ekle
```bash
git add patches/
git commit -m "Add namespace patches for Android modules"
```

### 3. CI/CD için
```yaml
# azure-pipelines.yml veya .github/workflows/build.yml
- script: npm install
  displayName: 'Install dependencies'
- script: npm run postinstall  # patch-package otomatik çalışır
  displayName: 'Apply patches'
```

---

## 🔍 HATA KONTROLÜ

### Namespace eklenmiş mi kontrol et:

```powershell
# Text Recognition
findstr /C:"namespace" node_modules\@react-native-ml-kit\text-recognition\android\build.gradle

# Face Detection
findstr /C:"namespace" node_modules\@react-native-ml-kit\face-detection\android\build.gradle

# NFC Manager
findstr /C:"namespace" node_modules\react-native-nfc-manager\android\build.gradle
```

Çıktı olmalı:
```
namespace "com.rnmlkit.textrecognition"
namespace "com.rnmlkit.facedetection"
namespace "community.revteltech.nfc"
```

---

## 📋 CHECKLIST

- [ ] `npm install` çalıştırıldı
- [ ] Tüm paketlerde `namespace` eklendi
- [ ] AndroidManifest.xml'lerden `package` kaldırıldı
- [ ] Patch dosyaları oluşturuldu (`patches/` klasörü)
- [ ] `package.json`'da `postinstall: patch-package` var
- [ ] `gradlew clean` başarılı
- [ ] `gradlew assembleDebug` başarılı

---

## 🎉 SONUÇ

**Otomatik çözüm**: `.\FIX_NAMESPACES.ps1` çalıştır

**Manuel çözüm**: Yukarıdaki adımları takip et

**Kalıcı çözüm**: Patch dosyalarını git'e ekle

---

**Script Dosyaları**:
- `FIX_NAMESPACES.ps1` - Windows PowerShell
- `FIX_NAMESPACES.sh` - macOS/Linux Bash
- `patches/@react-native-ml-kit+text-recognition+2.0.0.patch` - Text Recognition patch
- `patches/@react-native-ml-kit+face-detection+2.0.1.patch` - Face Detection patch

**Şimdi çalıştır**:
```powershell
cd C:\Users\aslib\Desktop\Kantlori\ocr
.\FIX_NAMESPACES.ps1
```

BUILD BAŞARILI OLACAK! 🚀
