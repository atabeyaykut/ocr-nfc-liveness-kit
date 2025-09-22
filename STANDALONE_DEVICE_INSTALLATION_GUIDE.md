# 📱 Standalone Android Cihazda APK Kurulum Rehberi

## Gereksinimler
- Android 10+ (API 23+) cihaz
- APK dosyası: `app-universal-release.apk` (45.3MB)
- Cihazda en az 100MB boş alan

## Kurulum Adımları

### 1. APK Dosyasını Cihaza Aktarma

#### Yöntem A: USB Kablo ile
1. APK dosyasını bilgisayardan USB kablo ile cihaza kopyalayın
2. Dosyayı `Downloads` veya `Documents` klasörüne yerleştirin

#### Yöntem B: Cloud Depolama
1. APK'yı Google Drive, Dropbox veya OneDrive'a yükleyin
2. Cihazdan cloud uygulaması ile indirin

#### Yöntem C: Email/Messaging
1. APK'yı kendinize email ile gönderin
2. Cihazdan email'i açıp APK'yı indirin

### 2. Bilinmeyen Kaynaklardan Kuruluma İzin Verme

#### Android 8+ için:
1. **Ayarlar** > **Güvenlik** > **Bilinmeyen kaynaklar**
2. Kurulum yapacağınız uygulamayı seçin (örn: Dosya Yöneticisi, Chrome)
3. **"Bu kaynaktan kuruluma izin ver"** seçeneğini aktifleştirin

#### Android 7 ve altı için:
1. **Ayarlar** > **Güvenlik** 
2. **"Bilinmeyen kaynaklardan kurulum"** seçeneğini aktifleştirin

### 3. APK Kurulumu

1. **Dosya Yöneticisi** uygulamasını açın
2. APK dosyasının bulunduğu klasöre gidin
3. `app-universal-release.apk` dosyasına dokunun
4. **"Kur"** butonuna basın
5. Kurulum tamamlanana kadar bekleyin (30-60 saniye)

### 4. Uygulama İzinlerini Verme

Uygulama ilk açıldığında şu izinleri isteyecek:
- **Kamera**: OCR özelliği için gerekli
- **Depolama**: Dosya okuma/yazma için
- **NFC**: NFC okuma özelliği için (varsa)

Her izin için **"İzin Ver"** seçeneğini seçin.

### 5. Uygulama Başlatma

1. Ana ekranda **"OCR Mobile SDK"** ikonunu bulun
2. Uygulamaya dokunarak başlatın
3. İlk açılış 2-3 saniye sürebilir

## ⚠️ Olası Sorunlar ve Çözümler

### "Uygulama kurulamadı" Hatası
- **Çözüm**: Bilinmeyen kaynaklardan kurulum izni verildiğinden emin olun
- **Alternatif**: Cihazı yeniden başlatıp tekrar deneyin

### "Yetersiz depolama alanı" Hatası  
- **Çözüm**: En az 100MB boş alan açın
- **Kontrol**: Ayarlar > Depolama'dan boş alanı kontrol edin

### "Paket ayrıştırılamadı" Hatası
- **Çözüm**: APK dosyasının tam olarak indirildiğinden emin olun
- **Kontrol**: Dosya boyutu 45.3MB olmalı

### Uygulama açılmıyor
- **Çözüm**: Cihazı yeniden başlatın
- **Kontrol**: Android sürümünün 10+ olduğunu doğrulayın

## 🔧 Test Adımları

Kurulum sonrası şu testleri yapın:

1. **Uygulama Başlatma**: Ana ekrandan uygulamayı açın
2. **Kamera Testi**: OCR özelliğini test edin
3. **NFC Testi**: NFC özelliğini test edin (varsa)
4. **Genel Kullanım**: Tüm ana özellikleri kontrol edin

## 📋 Teknik Bilgiler

- **Paket Adı**: `com.ocrmobilesdk`
- **Sürüm**: 1.0.0
- **APK Boyutu**: 45.3MB
- **Desteklenen Mimariler**: ARM64, ARM32, x86, x86_64
- **Minimum Android**: 10 (API 23)
- **Hedef Android**: 14 (API 34)

## 🚀 Başarılı Kurulum Göstergeleri

✅ Uygulama ana ekranda görünür  
✅ İlk açılış 3 saniyeden kısa sürer  
✅ Kamera izni verildiğinde OCR özelliği çalışır  
✅ Uygulama çökmeden çalışır  
✅ Tüm özellikler erişilebilir durumda  

## 📞 Destek

Kurulum sırasında sorun yaşarsanız:
- APK dosyasının bozuk olmadığından emin olun
- Cihaz uyumluluğunu kontrol edin
- Gerekirse cihazı fabrika ayarlarına sıfırlayıp tekrar deneyin
