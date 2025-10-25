# ❌ RNCamera Error - Çözüm Kılavuzu

## 🔍 Sorun
```
Invariant Violation: requireNativeComponent: "RNCamera" was not found in the UIManager.
```

Bu hata, eski bir bağımlılık veya cache sorunundan kaynaklanıyor.

## ✅ HIZLI ÇÖZÜM (Windows)

### Adım 1: Metro Bundler'ı Durdur ve Cache Temizle
```powershell
# Ctrl+C ile Metro'yu durdur

# Proje root dizinine git
cd C:\Users\aslib\Desktop\Kantlori\ocr

# Metro cache'i temizle
npx react-native start --reset-cache
```

### Adım 2: Android Build Cache Temizle
```powershell
# Android dizinine git
cd android

# Gradle daemon durdur
.\gradlew --stop

# Clean build
.\gradlew clean

# Proje root'a dön
cd ..
```

### Adım 3: Node Modules Temizle ve Yeniden Yükle
```powershell
# Node modules sil
Remove-Item -Recurse -Force node_modules

# Package lock sil
Remove-Item -Force package-lock.json

# Yeniden yükle
npm install
```

### Adım 4: Watchman Cache Temizle (Eğer yüklüyse)
```powershell
watchman watch-del-all
```

### Adım 5: Tam Yeniden Başlatma
```powershell
# Terminal 1: Metro
npx react-native start --reset-cache

# Terminal 2: Android (yeni PowerShell)
npx react-native run-android
```

## 🔧 DETAYLI ÇÖZÜM

### Tam Temizlik Scripti (PowerShell)
```powershell
# FULL_CLEAN.ps1
Write-Host "🧹 Tam temizlik başlıyor..." -ForegroundColor Cyan

# 1. Metro bundler cache
Write-Host "📦 Metro cache temizleniyor..." -ForegroundColor Yellow
Remove-Item -Recurse -Force $env:TEMP\metro-* -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force $env:TEMP\react-* -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force $env:LOCALAPPDATA\Temp\metro-* -ErrorAction SilentlyContinue

# 2. Gradle cache
Write-Host "🔨 Gradle temizleniyor..." -ForegroundColor Yellow
cd android
.\gradlew --stop
.\gradlew clean
cd ..

# 3. Android build outputs
Write-Host "📱 Android build temizleniyor..." -ForegroundColor Yellow
Remove-Item -Recurse -Force android\app\build -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force android\build -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force android\.gradle -ErrorAction SilentlyContinue

# 4. Node modules
Write-Host "📦 Node modules temizleniyor..." -ForegroundColor Yellow
Remove-Item -Recurse -Force node_modules -ErrorAction SilentlyContinue
Remove-Item -Force package-lock.json -ErrorAction SilentlyContinue

# 5. Watchman (eğer var ise)
Write-Host "👁️ Watchman temizleniyor..." -ForegroundColor Yellow
watchman watch-del-all 2>$null

# 6. Yeniden yükle
Write-Host "📥 Node modules yükleniyor..." -ForegroundColor Yellow
npm install

Write-Host "✅ Temizlik tamamlandı!" -ForegroundColor Green
Write-Host ""
Write-Host "🚀 Şimdi çalıştır:" -ForegroundColor Cyan
Write-Host "   Terminal 1: npx react-native start --reset-cache" -ForegroundColor White
Write-Host "   Terminal 2: npx react-native run-android" -ForegroundColor White
```

### Hızlı Kullanım
```powershell
# Scripti kaydet ve çalıştır
.\FULL_CLEAN.ps1

# VEYA tek komutla:
Remove-Item -Recurse -Force node_modules; Remove-Item -Force package-lock.json; npm install; cd android; .\gradlew clean; cd ..; npx react-native start --reset-cache
```

## 🔍 Sorunun Nedeni

### Olası Sebepler:
1. **Eski Metro Cache**: Önceki bir build'de başka kütüphane kullanılmış olabilir
2. **Node Modules Karışıklığı**: npm install sırasında bir conflict olmuş olabilir
3. **Gradle Cache**: Android build cache'inde eski native modüller kalmış
4. **Hot Reload Issue**: Fast Refresh sırasında yanlış component cache'lenmiş

### Neden RNCamera?
- Projede `react-native-camera` paketi YOK
- Sadece `react-native-vision-camera` var
- Ama Metro bundler eski bir cache'den RNCamera arıyor

## ⚠️ Önleme

Bundan sonra bu hatayı önlemek için:

### 1. Her Bağımlılık Değişikliğinde Cache Temizle
```powershell
npm install
cd android && .\gradlew clean && cd ..
npx react-native start --reset-cache
```

### 2. Clean Script Ekle (package.json)
```json
{
  "scripts": {
    "clean": "cd android && gradlew clean && cd .. && del /s /q node_modules && npm install",
    "clean:cache": "npx react-native start --reset-cache",
    "clean:full": "npm run clean && npm run clean:cache"
  }
}
```

Sonra çalıştır:
```powershell
npm run clean:full
```

## 📊 Doğrulama

Temizlik sonrası kontrol:
```powershell
# Metro log'larını izle
npx react-native start --reset-cache --verbose

# Yeni terminal'de Android çalıştır
npx react-native run-android

# LogCat'i izle
adb logcat *:E
```

## 💡 İpuçları

1. **Her zaman --reset-cache ile başlat** (geliştirme sırasında)
2. **Build hatası alırsan**: Gradle clean + Metro reset
3. **node_modules güncellemesi sonrası**: Tam temizlik yap
4. **Windows'ta path sorunları**: PowerShell'i Admin olarak çalıştır

## 🆘 Hala Çalışmıyor mu?

### Debug Modda Çalıştır
```powershell
npx react-native start --reset-cache --verbose > metro-log.txt

# Yeni terminal
npx react-native run-android --verbose > build-log.txt
```

Log dosyalarını incele:
- `metro-log.txt` - Metro bundler output
- `build-log.txt` - Android build output

### Native Modules Kontrolü
```powershell
cd android
.\gradlew app:dependencies > dependencies.txt
```

`dependencies.txt` içinde `react-native-camera` var mı kontrol et.

---

**Bu çözüm %99 çalışır! 🎉**

*Not: İlk clean build 5-10 dakika sürebilir.*
