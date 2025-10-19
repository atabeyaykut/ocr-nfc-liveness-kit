# 📱 Temiz Build, Deploy ve Log Takibi Komutları

## 🚀 Hızlı Başlangıç (Tek Komut)

### Otomatik Script (Önerilen)
```powershell
.\deploy-and-monitor.ps1
```

Bu script otomatik olarak:
- ✅ Cihaz kontrolü yapar
- ✅ Temiz build alır
- ✅ Telefona yükler
- ✅ Metro bundler başlatır
- ✅ Logları takip eder

---

## 📋 Manuel Adımlar

### 1. Cihaz Kontrolü
```powershell
# Bağlı cihazları listele
adb devices

# Beklenen çıktı:
# List of devices attached
# XXXXXXXX        device
```

### 2. Temiz Build (Clean)
```powershell
# Android temizleme
cd android
.\gradlew.bat clean
cd ..

# Metro cache temizleme
npx react-native start --reset-cache
# (Başladıktan sonra Ctrl+C ile durdurun)

# Tam temizlik (gerekirse)
Remove-Item -Recurse -Force android\app\build
Remove-Item -Recurse -Force android\build
```

### 3. Build ve Yükleme
```powershell
# Debug build (geliştirme)
npx react-native run-android --verbose

# Release build (production)
npx react-native run-android --variant=release
```

### 4. Metro Bundler Başlatma
```powershell
# Yeni terminal penceresi açın
npx react-native start

# veya cache temizleyerek
npx react-native start --reset-cache
```

### 5. Log Takibi

#### React Native Logları
```powershell
# React Native filtresiz loglar
npx react-native log-android

# ADB ile filtrelenmiş loglar (önerilen)
adb logcat -s ReactNative:V ReactNativeJS:V AndroidRuntime:E *:E
```

#### Detaylı Loglar
```powershell
# Tüm loglar
adb logcat

# Sadece hata logları
adb logcat *:E

# Belirli bir pakete ait loglar
adb logcat | Select-String "com.mobilesdkocrnfc"

# Log dosyasına kaydetme
adb logcat > logs_$(Get-Date -Format 'yyyyMMdd_HHmmss').txt
```

#### Native Modül Logları
```powershell
# OCR modülü
adb logcat -s OCRModule:V

# NFC modülü
adb logcat -s NFCModule:V

# Camera modülü
adb logcat -s CameraModule:V

# Tüm custom modüller
adb logcat -s OCRModule:V NFCModule:V CameraModule:V ReactNative:V ReactNativeJS:V
```

---

## 🔧 Sorun Giderme Komutları

### Metro Bundler Sorunları
```powershell
# Metro'yu durdur
Get-Process -Name "node" | Stop-Process -Force

# Port kontrolü (8081)
netstat -ano | Select-String "8081"

# Belirli bir process'i sonlandır
Stop-Process -Id <PID> -Force
```

### Uygulama Sorunları
```powershell
# Uygulamayı cihazdan kaldır
adb uninstall com.mobilesdkocrnfc

# Uygulamayı yeniden başlat
adb shell am force-stop com.mobilesdkocrnfc
adb shell monkey -p com.mobilesdkocrnfc 1

# APK'yı manuel yükle
adb install android\app\build\outputs\apk\debug\app-debug.apk
```

### Build Sorunları
```powershell
# Gradle daemon'ı durdur
cd android
.\gradlew.bat --stop
cd ..

# Gradle cache temizle
Remove-Item -Recurse -Force $env:USERPROFILE\.gradle\caches

# Node modules yeniden yükle
Remove-Item -Recurse -Force node_modules
Remove-Item package-lock.json
npm cache clean --force
npm install
```

### Cihaz Bağlantı Sorunları
```powershell
# ADB server'ı yeniden başlat
adb kill-server
adb start-server

# USB debugging kontrol
adb shell settings get global adb_enabled

# Cihaz yetkilerini sıfırla
adb kill-server
adb start-server
adb devices
# (Cihazda "USB debugging" iznini tekrar verin)
```

---

## 📊 Log Filtreleme İpuçları

### Özel Filtreler
```powershell
# Sadece kendi log'larınız (tag kullanarak)
adb logcat -s "MyTag:V"

# Birden fazla tag
adb logcat -s "MyTag1:V" "MyTag2:V" "ReactNative:V"

# Hariç tutma (grep ile)
adb logcat | Select-String -Pattern "ReactNative" -NotMatch

# Belirli bir kelime içeren loglar
adb logcat | Select-String "ERROR"

# Renkli çıktı için (git bash kullanın)
adb logcat -v color
```

### Log Seviyeleri
```
V - Verbose (en detaylı)
D - Debug
I - Info
W - Warning
E - Error (en kritik)
```

---

## 🎯 Gelişmiş Kullanım

### Birden Fazla Cihaz
```powershell
# Cihaz listesi
adb devices

# Belirli cihaza bağlan
adb -s <device_id> shell

# Belirli cihaza yükle
npx react-native run-android --deviceId=<device_id>
```

### Performance İzleme
```powershell
# CPU kullanımı
adb shell top -n 1 | Select-String "com.mobilesdkocrnfc"

# Bellek kullanımı
adb shell dumpsys meminfo com.mobilesdkocrnfc

# FPS izleme
adb shell dumpsys gfxinfo com.mobilesdkocrnfc
```

### APK Bilgisi
```powershell
# APK boyutu
Get-Item android\app\build\outputs\apk\debug\app-debug.apk | Select-Object Name, @{Name="Size(MB)";Expression={[math]::Round($_.Length/1MB, 2)}}

# APK içeriği
aapt dump badging android\app\build\outputs\apk\debug\app-debug.apk
```

---

## 💡 Faydalı Kısayollar

### package.json'a eklenmiş scriptler
```powershell
# Başlat
npm start

# Android'e yükle
npm run android

# Release build
npm run android:release

# Temizlik
npm run clean

# Test
npm test
```

### Batch Dosyası ile (Alternatif)
`quick-deploy.bat` dosyası oluşturun:
```batch
@echo off
echo Temiz build başlatılıyor...
cd android
call gradlew.bat clean
cd ..
echo Metro cache temizleniyor...
npx react-native start --reset-cache
timeout /t 3
taskkill /F /IM node.exe
echo Build ve yükleme...
npx react-native run-android --verbose
echo Log takibi başlatılıyor...
adb logcat -s ReactNative:V ReactNativeJS:V AndroidRuntime:E *:E
```

---

## 📝 Notlar

- **USB Debugging** cihazda açık olmalı
- **Developer Options** aktif olmalı
- İlk build 5-10 dakika sürebilir
- Log takibi sırasında **Ctrl+C** ile durdurun
- Metro bundler ayrı bir terminal'de çalışmalı
- Release build için **keystore** gerekli

## ⚠️ Önemli Uyarılar

1. Release build öncesi `android/app/build.gradle` içinde signing config kontrol edin
2. Production build öncesi tüm console.log'ları kaldırın veya strip edin
3. ProGuard/R8 ayarlarını kontrol edin
4. Cihazda yeterli alan olduğundan emin olun (min. 500MB)

---

## 🆘 Yardım

Sorun yaşarsanız:
1. Önce `deploy-and-monitor.ps1` scriptini çalıştırın
2. Hata mesajlarını tam olarak kaydedin
3. `adb logcat` çıktısını kontrol edin
4. `build_log.txt` dosyasını inceleyin
