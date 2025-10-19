# 🔴 KAPSAMLI HATA VE POTANSİYEL SORUN RAPORU
## React Native OCR/NFC/Liveness Detection Projesi

**Tarih:** 17 Ekim 2025  
**Analiz Eden:** Senior Developer  
**Platform:** Android (iOS hariç)  
**React Native Versiyon:** 0.74.7  
**Java Versiyon:** 17  
**Gradle Versiyon:** 8.4.2

---

## 📊 ÖZET

**Toplam Tespit Edilen Sorun:** 15  
- 🔴 **Kritik Hatalar:** 4  
- 🟠 **Yüksek Öncelikli:** 5  
- 🟡 **Orta Öncelikli:** 4  
- 🟢 **Düşük Öncelikli:** 2  

---

## 🔴 KRİTİK HATALAR (Uygulamayı Çalıştırmayı Engelleyen)

### 1. react-native-vision-camera Native Modül Eksik ❌

**Hata Mesajı:**
```
system/camera-module-not-found: Failed to initialize VisionCamera: 
The native Camera Module (`NativeModules.CameraView`) could not be found.
* Make sure react-native-vision-camera is correctly autolinked
* Make sure gradle is synced
* Make sure you rebuilt the app
```

**Konum:** `CameraTestScreen.js` - react-native-vision-camera import

**Neden:**
- `react-native-vision-camera` package.json'da var (v4.7.2)
- Ancak native modül Android projesine link edilmemiş
- `MainApplication.java` içinde VisionCameraPackage yok
- Autolinking çalışmamış

**Çözüm:**
```java
// MainApplication.java - getPackages() metodunu güncelle
import com.mrousavy.camera.CameraPackage;

@Override
protected List<ReactPackage> getPackages() {
  return Arrays.<ReactPackage>asList(
      new MainReactPackage(),
      new OCRSDKPackage(),
      new CameraPackage()  // EKLE
  );
}
```

**Alternatif Çözüm (Autolinking):**
```gradle
// android/settings.gradle - En alta ekle
apply from: file("../node_modules/@react-native-community/cli-platform-android/native_modules.gradle")
applyNativeModulesSettingsGradle(settings)

// android/app/build.gradle - dependencies bölümüne ekle
apply from: file("../../node_modules/@react-native-community/cli-platform-android/native_modules.gradle")
applyNativeModulesAppBuildGradle(project)
```

**Etki:** Kamera tamamen çalışmıyor, OCR ve Liveness testleri başarısız

---

### 2. ML Kit Face Detection Native Modül Eksik ❌

**Hata Potansiyeli:**
```
@react-native-ml-kit/face-detection configure is not a function
```

**Konum:** `modules/liveness/detector.js`

**Neden:**
- `@react-native-ml-kit/face-detection` package.json'da var (v1.0.1)
- Native modül link edilmemiş
- MainApplication.java'da eksik

**Çözüm:**
```java
// MainApplication.java
import com.google.mlkit.vision.face.FaceDetection;

// Veya package import et
import com.google.mlkit.vision.face.FaceDetectionPackage;

@Override
protected List<ReactPackage> getPackages() {
  return Arrays.<ReactPackage>asList(
      new MainReactPackage(),
      new OCRSDKPackage(),
      new CameraPackage(),
      new FaceDetectionPackage()  // EKLE
  );
}
```

**Etki:** Canlılık tespiti çalışmıyor

---

### 3. Gesture Handler Native Modül Eksik ⚠️

**Konum:** `react-native-gesture-handler` (v2.14.1)

**Neden:**
- Package.json'da var
- Native modül link edilmemiş
- MainActivity.java'da initialization eksik

**Çözüm:**
```java
// MainActivity.java
import com.facebook.react.ReactActivityDelegate;
import com.facebook.react.defaults.DefaultReactActivityDelegate;
import com.swmansion.gesturehandler.react.RNGestureHandlerEnabledRootView;

@Override
protected ReactActivityDelegate createReactActivityDelegate() {
  return new DefaultReactActivityDelegate(
    this,
    getMainComponentName(),
    DefaultNewArchitectureEntryPoint.getFabricEnabled()
  );
}
```

**Etki:** Touch gesture'lar düzgün çalışmayabilir

---

### 4. Worklets Core Native Modül Eksik ⚠️

**Konum:** `react-native-worklets-core` (v1.3.3)

**Neden:**
- Vision Camera için gerekli dependency
- Native modül link edilmemiş

**Çözüm:**
```java
// MainApplication.java
import com.margelo.nitro.NitroModulesPackage;

@Override
protected List<ReactPackage> getPackages() {
  return Arrays.<ReactPackage>asList(
      new MainReactPackage(),
      new OCRSDKPackage(),
      new CameraPackage(),
      new NitroModulesPackage()  // EKLE
  );
}
```

**Etki:** Vision Camera frame processing çalışmaz

---

## 🟠 YÜKSEK ÖNCELİKLİ SORUNLAR

### 5. Autolinking Yapılandırması Eksik 🔧

**Konum:** `android/settings.gradle` ve `android/app/build.gradle`

**Sorun:**
- React Native 0.74+ autolinking kullanmalı
- settings.gradle'da native_modules.gradle import yok
- app/build.gradle'da native_modules.gradle apply yok

**Mevcut Durum:**
```gradle
// settings.gradle - SADECE
rootProject.name = "OCRMobileSDK"
include(":app")
```

**Olması Gereken:**
```gradle
// settings.gradle - EN ALTA EKLE
apply from: file("../node_modules/@react-native-community/cli-platform-android/native_modules.gradle")
applyNativeModulesSettingsGradle(settings)

rootProject.name = "OCRMobileSDK"
include(":app")
```

```gradle
// app/build.gradle - EN ALTA EKLE
apply from: file("../../node_modules/@react-native-community/cli-platform-android/native_modules.gradle")
applyNativeModulesAppBuildGradle(project)
```

**Etki:** Tüm third-party native modüller otomatik link edilmez

---

### 6. Image Crop Picker Native Modül Eksik 📷

**Konum:** `react-native-image-crop-picker` (v0.51.0)

**Sorun:**
- Package.json'da var
- Native modül link edilmemiş
- OCR için gerekli

**Çözüm:**
```java
// MainApplication.java
import com.reactnative.ivpusic.imagepicker.PickerPackage;

@Override
protected List<ReactPackage> getPackages() {
  return Arrays.<ReactPackage>asList(
      new MainReactPackage(),
      new OCRSDKPackage(),
      new CameraPackage(),
      new PickerPackage()  // EKLE
  );
}
```

**AndroidManifest.xml Kontrol:**
```xml
<!-- Gerekli izinler var mı? -->
<uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
<uses-permission android:name="android.permission.READ_EXTERNAL_STORAGE" />
```

**Etki:** Galeri'den resim seçme çalışmaz

---

### 7. NFC Manager Native Modül Eksik 📡

**Konum:** `react-native-nfc-manager` (v3.15.1)

**Sorun:**
- Package.json'da var
- Native modül link edilmemiş
- NFC testi için kritik

**Çözüm:**
```java
// MainApplication.java
import community.revteltech.nfc.NfcManagerPackage;

@Override
protected List<ReactPackage> getPackages() {
  return Arrays.<ReactPackage>asList(
      new MainReactPackage(),
      new OCRSDKPackage(),
      new CameraPackage(),
      new NfcManagerPackage()  // EKLE
  );
}
```

**AndroidManifest.xml Kontrol:**
```xml
<!-- NFC izni var ama feature kontrolü eksik olabilir -->
<uses-permission android:name="android.permission.NFC" />
<uses-feature android:name="android.hardware.nfc" android:required="false" />

<!-- NFC intent filter MainActivity'de var mı? -->
<intent-filter>
    <action android:name="android.nfc.action.TECH_DISCOVERED" />
</intent-filter>
```

**Etki:** NFC okuma tamamen çalışmaz

---

### 8. Permissions Module Native Modül Eksik 🔐

**Konum:** `react-native-permissions` (v5.4.2)

**Sorun:**
- Package.json'da var
- Native modül link edilmemiş
- Runtime permissions için gerekli

**Çözüm:**
```java
// MainApplication.java
import com.zoontek.rnpermissions.RNPermissionsPackage;

@Override
protected List<ReactPackage> getPackages() {
  return Arrays.<ReactPackage>asList(
      new MainReactPackage(),
      new OCRSDKPackage(),
      new CameraPackage(),
      new RNPermissionsPackage()  // EKLE
  );
}
```

**Etki:** İzin yönetimi düzgün çalışmaz

---

### 9. React Native FS Native Modül Eksik 📁

**Konum:** `react-native-fs` (v2.20.0)

**Sorun:**
- Package.json'da var
- Native modül link edilmemiş
- Dosya işlemleri için gerekli

**Çözüm:**
```java
// MainApplication.java
import com.rnfs.RNFSPackage;

@Override
protected List<ReactPackage> getPackages() {
  return Arrays.<ReactPackage>asList(
      new MainReactPackage(),
      new OCRSDKPackage(),
      new CameraPackage(),
      new RNFSPackage()  // EKLE
  );
}
```

**Etki:** Dosya okuma/yazma çalışmaz, OCR sonuçları kaydedilemez

---

## 🟡 ORTA ÖNCELİKLİ SORUNLAR

### 10. ProGuard Yapılandırması Eksik 🛡️

**Konum:** `android/app/proguard-rules.pro`

**Sorun:**
- Release build için ProGuard rules eksik
- React Native, Hermes, ML Kit için keep rules yok

**Çözüm:**
```proguard
# android/app/proguard-rules.pro OLUŞTUR

# React Native
-keep class com.facebook.react.** { *; }
-keep class com.facebook.hermes.** { *; }

# Vision Camera
-keep class com.mrousavy.camera.** { *; }

# ML Kit
-keep class com.google.mlkit.** { *; }
-keep class com.google.android.gms.** { *; }

# NFC
-keep class android.nfc.** { *; }

# Hermes
-keep class com.facebook.jni.** { *; }
```

**Etki:** Release build'de crash'ler olabilir

---

### 11. BuildConfig Sınıfı Eksik Alanlar ⚙️

**Konum:** `android/app/build.gradle`

**Sorun:**
- BuildConfig'de IS_HERMES_ENABLED tanımlı
- Ancak IS_NEW_ARCHITECTURE_ENABLED eksik olabilir

**Kontrol:**
```gradle
// android/app/build.gradle
android {
    defaultConfig {
        buildConfigField "boolean", "IS_NEW_ARCHITECTURE_ENABLED", "false"
        buildConfigField "boolean", "IS_HERMES_ENABLED", "true"
    }
}
```

**Etki:** New Architecture kontrolü çalışmaz

---

### 12. Metro Config Eksik Ayarlar 📦

**Konum:** `metro.config.js`

**Sorun:**
- Vision Camera için worklets transformer gerekli
- Metro config'de transformer ayarı eksik olabilir

**Çözüm:**
```javascript
// metro.config.js
const { getDefaultConfig } = require('@react-native/metro-config');

module.exports = (async () => {
  const defaultConfig = await getDefaultConfig(__dirname);
  
  return {
    ...defaultConfig,
    transformer: {
      ...defaultConfig.transformer,
      babelTransformerPath: require.resolve('react-native-worklets-core/plugin'),
    },
  };
})();
```

**Etki:** Vision Camera frame processors çalışmaz

---

### 13. Babel Config Worklets Plugin Eksik 🔧

**Konum:** `babel.config.js`

**Sorun:**
- Worklets için babel plugin gerekli
- babel.config.js'de plugin tanımı yok

**Çözüm:**
```javascript
// babel.config.js
module.exports = {
  presets: ['module:@react-native/babel-preset'],
  plugins: [
    'react-native-worklets-core/plugin',  // EKLE
  ],
};
```

**Etki:** Worklets syntax error verir

---

## 🟢 DÜŞÜK ÖNCELİKLİ SORUNLAR

### 14. AndroidManifest.xml - Gereksiz İzinler 📋

**Konum:** `android/app/src/main/AndroidManifest.xml`

**Sorun:**
- WRITE_EXTERNAL_STORAGE Android 10+ için gereksiz
- requestLegacyExternalStorage flag eksik

**Öneri:**
```xml
<!-- Android 10+ için -->
<application
    android:requestLegacyExternalStorage="true"
    ...>
```

**Etki:** Minimal, Android 10+ cihazlarda dosya erişimi sorunları olabilir

---

### 15. Gradle Wrapper Versiyonu Uyumsuzluğu ⚠️

**Konum:** `android/gradle/wrapper/gradle-wrapper.properties`

**Sorun:**
- Gradle 8.4.2 kullanılıyor
- React Native 0.74 için önerilen: 8.3

**Kontrol:**
```properties
# gradle-wrapper.properties
distributionUrl=https\://services.gradle.org/distributions/gradle-8.3-all.zip
```

**Etki:** Minimal, bazı plugin uyumsuzlukları olabilir

---

## 🔧 HIZLI ÇÖZÜM PLANI

### Adım 1: Autolinking'i Aktif Et (En Kritik)

```bash
# 1. settings.gradle düzenle
echo "apply from: file(\"../node_modules/@react-native-community/cli-platform-android/native_modules.gradle\")" >> android/settings.gradle
echo "applyNativeModulesSettingsGradle(settings)" >> android/settings.gradle

# 2. app/build.gradle düzenle (en alta ekle)
echo "apply from: file(\"../../node_modules/@react-native-community/cli-platform-android/native_modules.gradle\")" >> android/app/build.gradle
echo "applyNativeModulesAppBuildGradle(project)" >> android/app/build.gradle
```

### Adım 2: MainApplication.java'yı Güncelle

```java
package com.ocrmobilesdk;

import android.app.Application;
import androidx.multidex.MultiDexApplication;

import com.facebook.react.ReactApplication;
import com.facebook.react.ReactNativeHost;
import com.facebook.react.ReactPackage;
import com.facebook.react.shell.MainReactPackage;
import com.facebook.react.defaults.DefaultNewArchitectureEntryPoint;
import com.facebook.react.defaults.DefaultReactNativeHost;
import com.facebook.soloader.SoLoader;

import com.ocrmobilesdk.BuildConfig;
import com.ocr.OCRSDKPackage;

// NATIVE MODÜL IMPORTS
import com.mrousavy.camera.CameraPackage;
import com.zoontek.rnpermissions.RNPermissionsPackage;
import com.rnfs.RNFSPackage;
import community.revteltech.nfc.NfcManagerPackage;
import com.reactnative.ivpusic.imagepicker.PickerPackage;
import com.swmansion.gesturehandler.RNGestureHandlerPackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class MainApplication extends MultiDexApplication implements ReactApplication {

  private final ReactNativeHost mReactNativeHost = new DefaultReactNativeHost(this) {
    @Override
    public boolean isNewArchEnabled() {
      return BuildConfig.IS_NEW_ARCHITECTURE_ENABLED;
    }

    @Override
    public Boolean isHermesEnabled() {
      return BuildConfig.IS_HERMES_ENABLED;
    }

    @Override
    public boolean getUseDeveloperSupport() {
      return BuildConfig.DEBUG;
    }

    @Override
    protected String getJSMainModuleName() {
      return "index";
    }

    @Override
    protected List<ReactPackage> getPackages() {
      List<ReactPackage> packages = new ArrayList<>();
      
      // React Native Core
      packages.add(new MainReactPackage());
      
      // Custom SDK
      packages.add(new OCRSDKPackage());
      
      // Third-party Native Modules
      packages.add(new CameraPackage());
      packages.add(new RNPermissionsPackage());
      packages.add(new RNFSPackage());
      packages.add(new NfcManagerPackage());
      packages.add(new PickerPackage());
      packages.add(new RNGestureHandlerPackage());
      
      return packages;
    }
  };

  @Override
  public ReactNativeHost getReactNativeHost() {
    return mReactNativeHost;
  }

  @Override
  public void onCreate() {
    super.onCreate();
    SoLoader.init(this, false);
    if (BuildConfig.IS_NEW_ARCHITECTURE_ENABLED) {
      DefaultNewArchitectureEntryPoint.load();
    }
  }
}
```

### Adım 3: Babel ve Metro Config Ekle

```javascript
// babel.config.js
module.exports = {
  presets: ['module:@react-native/babel-preset'],
  plugins: [
    'react-native-worklets-core/plugin',
    'react-native-reanimated/plugin',
  ],
};
```

```javascript
// metro.config.js
const { getDefaultConfig } = require('@react-native/metro-config');

module.exports = (async () => {
  const defaultConfig = await getDefaultConfig(__dirname);
  
  return {
    ...defaultConfig,
    transformer: {
      ...defaultConfig.transformer,
      babelTransformerPath: require.resolve('react-native-worklets-core/plugin'),
    },
  };
})();
```

### Adım 4: Clean Build

```bash
cd android
.\gradlew.bat clean
cd ..
npx react-native bundle --platform android --dev false --entry-file index.js --bundle-output android/app/src/main/assets/index.android.bundle --assets-dest android/app/src/main/res --reset-cache
cd android
.\gradlew.bat assembleDebug
cd ..
adb install -r android/app/build/outputs/apk/debug/app-universal-debug.apk
```

---

## 📊 SORUN ÖNCELİK MATRİSİ

| # | Sorun | Öncelik | Etki | Çözüm Süresi |
|---|-------|---------|------|--------------|
| 1 | Vision Camera Native Modül | 🔴 Kritik | Kamera çalışmıyor | 15 dk |
| 2 | ML Kit Native Modül | 🔴 Kritik | Canlılık çalışmıyor | 10 dk |
| 3 | Gesture Handler | 🔴 Kritik | Touch sorunları | 5 dk |
| 4 | Worklets Core | 🔴 Kritik | Frame processing yok | 5 dk |
| 5 | Autolinking Eksik | 🟠 Yüksek | Tüm modüller etkilenir | 10 dk |
| 6 | Image Crop Picker | 🟠 Yüksek | Galeri çalışmaz | 5 dk |
| 7 | NFC Manager | 🟠 Yüksek | NFC çalışmaz | 5 dk |
| 8 | Permissions Module | 🟠 Yüksek | İzinler çalışmaz | 5 dk |
| 9 | React Native FS | 🟠 Yüksek | Dosya işlemleri yok | 5 dk |
| 10 | ProGuard Rules | 🟡 Orta | Release crash | 10 dk |
| 11 | BuildConfig | 🟡 Orta | Arch kontrolü yok | 2 dk |
| 12 | Metro Config | 🟡 Orta | Worklets yok | 5 dk |
| 13 | Babel Plugin | 🟡 Orta | Syntax error | 2 dk |
| 14 | Manifest İzinler | 🟢 Düşük | Android 10+ sorun | 2 dk |
| 15 | Gradle Versiyon | 🟢 Düşük | Plugin uyumsuzluk | 5 dk |

**Toplam Tahmini Çözüm Süresi:** ~90 dakika

---

## ✅ DOĞRULAMA KONTROL LİSTESİ

Build sonrası kontrol edilmesi gerekenler:

- [ ] `adb logcat` - Hiç "module not found" hatası yok
- [ ] `adb logcat` - Hiç "native module" hatası yok
- [ ] OCR Test - Kamera açılıyor
- [ ] OCR Test - Fotoğraf çekiliyor
- [ ] NFC Test - NFC okuyucu başlatılıyor
- [ ] Canlılık Test - Kamera açılıyor
- [ ] İzinler - Android dialog gösteriliyor
- [ ] İzinler - İzin verildikten sonra çalışıyor
- [ ] Uygulama - Crash olmuyor
- [ ] Uygulama - ANR (Application Not Responding) yok
- [ ] Loglar - Hermes engine çalışıyor
- [ ] Loglar - React Native core modüller yüklü

---

## 📝 NOTLAR

1. **Autolinking en kritik çözüm** - Tüm native modülleri otomatik link eder
2. **MainApplication.java manuel link** - Autolinking çalışmazsa fallback
3. **Clean build şart** - Her değişiklikten sonra clean build gerekli
4. **Metro cache** - Bundle oluştururken `--reset-cache` kullan
5. **Gradle sync** - Android Studio'da "Sync Project with Gradle Files"

---

## 🔗 KAYNAKLAR

- [React Native Autolinking](https://github.com/react-native-community/cli/blob/main/docs/autolinking.md)
- [Vision Camera Setup](https://react-native-vision-camera.com/docs/guides/setup)
- [ML Kit Android Setup](https://developers.google.com/ml-kit/vision/face-detection/android)
- [React Native 0.74 Migration](https://reactnative.dev/docs/new-architecture-intro)

---

**Rapor Sonu**  
*Bu rapor tüm Android native modül entegrasyonlarını, build yapılandırmalarını ve potansiyel sorunları kapsar.*
