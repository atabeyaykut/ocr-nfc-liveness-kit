# 🔧 Windows Build Sorunları - Hızlı Çözüm

## ⚡ HEMEN YAPILACAKLAR

### 1️⃣ Gradle Daemon'u Temizle (PowerShell)
```powershell
# Android dizininde çalıştır
cd C:\Users\aslib\Desktop\Kantlori\ocr\android

# Gradle daemon'u durdur
.\gradlew --stop

# Gradle cache'i temizle
Remove-Item -Recurse -Force $env:USERPROFILE\.gradle\caches
Remove-Item -Recurse -Force $env:USERPROFILE\.gradle\daemon

# Build klasörlerini temizle
.\gradlew clean
```

### 2️⃣ Yeniden Build Et
```powershell
# Temiz build
.\gradlew assembleDebug --no-daemon --stacktrace
```

## 🛠️ Yapılan Düzeltmeler

### ✅ gradle.properties Optimizasyonu
- **Bellek**: 4GB → 2GB (Windows için daha güvenli)
- **Parallel Build**: Kapatıldı (bellek crash'i önleme)
- **Worker Sayısı**: 2 ile sınırlandı
- **MetaSpace**: 512MB limit eklendi

### ✅ settings.gradle Repository Modu
- **PREFER_SETTINGS** → **PREFER_PROJECT**
- react-native-reanimated uyarıları düzeltildi
- mavenLocal() eklendi

## 🚀 Alternatif Çözümler

### Çözüm A: Daemon Kullanmadan Build
```powershell
.\gradlew assembleDebug --no-daemon
```

### Çözüm B: Daha Az Bellek
`gradle.properties` dosyasında:
```properties
org.gradle.jvmargs=-Xmx1536m -XX:MaxMetaspaceSize=384m
```

### Çözüm C: Debug Mode'da Çalıştır
```powershell
.\gradlew assembleDebug --debug > build-log.txt 2>&1
```

## 🔍 Bellek Sorununu Anlamak

Daemon log'da görülen:
```
848747724 physical memory requested, 556871680 free
```

**Çözüm**: 
- Sistem RAM'i yetersiz veya başka uygulamalar çok bellek kullanıyor
- Gradle 2GB ile çalışacak şekilde optimize edildi

## 📋 Build Öncesi Kontrol Listesi

- [ ] Tüm uygulamaları kapat (Chrome, VS Code vb.)
- [ ] Gradle daemon'u durdur: `.\gradlew --stop`
- [ ] Cache temizle
- [ ] `--no-daemon` ile build dene

## 🐛 Hala Sorun mu var?

### JVM Heap Dump Olursa
```powershell
# Heap dump dosyasını bul
Get-ChildItem -Path . -Filter "*.hprof" -Recurse

# Sil
Remove-Item *.hprof
```

### Port Çakışması
```powershell
# Gradle daemon portunu kontrol et
netstat -ano | findstr "8080"

# Process'i öldür
taskkill /PID [PID_NUMBER] /F
```

### Node Modules Sorunu
```powershell
# Proje root'a git
cd C:\Users\aslib\Desktop\Kantlori\ocr

# Node modules'u temizle
Remove-Item -Recurse -Force node_modules
npm install

# Tekrar dene
cd android
.\gradlew assembleDebug --no-daemon
```

## 💡 Pro İpuçları

1. **Anti-virüs**: Geçici olarak kapat (Gradle dosyalarını tararken yavaşlatır)
2. **Windows Defender**: Build klasörlerini exception'a ekle
3. **SSD**: Projeyi SSD'de tut (HDD çok yavaş)
4. **RAM**: Minimum 8GB önerilir, 16GB ideal
5. **Java 17**: Doğru versiyonu kullandığınızdan emin olun

## 🔄 Tam Temizlik Scripti

```powershell
# BUILD_CLEAN.ps1
Write-Host "🧹 Gradle temizliği başlıyor..."

# Gradle daemon durdur
.\gradlew --stop

# Cache temizle
Remove-Item -Recurse -Force $env:USERPROFILE\.gradle\caches -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force $env:USERPROFILE\.gradle\daemon -ErrorAction SilentlyContinue

# Local build temizle
.\gradlew clean

# Android build klasörlerini temizle
Remove-Item -Recurse -Force .\app\build -ErrorAction SilentlyContinue
Remove-Item -Recurse -Force .\build -ErrorAction SilentlyContinue

Write-Host "✅ Temizlik tamamlandı!"
Write-Host "🚀 Şimdi build edebilirsiniz: .\gradlew assembleDebug --no-daemon"
```

Bu scripti kaydet ve çalıştır: `.\BUILD_CLEAN.ps1`

## ⚠️ Önemli Notlar

- **İlk build 10-15 dakika** sürebilir
- **--no-daemon** her zaman daha yavaş ama daha stabil
- **Internet bağlantısı** gerekli (dependencies için)
- **Disk alanı**: Minimum 10GB boş alan

---

**Başarılar! 🎉**
