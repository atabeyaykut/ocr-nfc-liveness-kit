# 📸 OCR TEST KILAVUZU

## ✅ HAZIRLIK TAMAMLANDI

### Yapılan İyileştirmeler:
1. ✅ **Debug logging eklendi** - Her adımı görebileceksiniz
2. ✅ **ML Kit Text Recognition** - Google ML Kit v19.0.0 mevcut
3. ✅ **Turkish ID patterns** - TC No, Ad, Soyad otomatik çıkarılıyor
4. ✅ **RNCamera entegrasyonu** - Fotoğraf çekme hazır

---

## 🚀 KULLANIM ADIMLARI

### 1. Uygulamayı Aç
```bash
# APK build bitince otomatik yüklenecek
# Veya manuel olarak:
adb install -r android/app/build/outputs/apk/debug/app-universal-debug.apk
adb shell am start -n com.ocrmobilesdk.debug/com.ocrmobilesdk.MainActivity
```

### 2. OCR Ekranına Git
- Ana menüden **"OCR Okuma"** kartına tıklayın
- Kamera otomatik açılacak
- Ekranda çerçeve göreceksiniz

### 3. Kimlik Kartı Fotoğrafı Çekin

**ÖNEMLİ İPUÇLARI:**
- 📋 Kimlik kartını çerçeve içine yerleştirin
- 💡 Yeterli ışık altında çekin
- 🔆 Yansıma/parlama olmamasına dikkat
- 📐 Kartın tamamı görünür olmalı
- 🎯 Net ve bulanık olmayan bir fotoğraf çekin

### 4. Sonuçları Görüntüleyin
OCR işlemi otomatik başlayacak ve şu bilgileri çıkaracak:
- ✅ TC Kimlik Numarası (11 haneli)
- ✅ Ad
- ✅ Soyad
- ✅ Doğum Tarihi
- ✅ Seri No
- ✅ Geçerlilik Tarihi
- ✅ Güven Skoru (%)

---

## 🔍 LOGLAR NASIL KONTROL EDİLİR?

### Başka Bir Terminal Açın ve Logları İzleyin:
```bash
# Logları temizle
adb logcat -c

# OCR loglarını izle
adb logcat | findstr /C:"[OCR]"
```

### Göreceğiniz Log Örnekleri:

**✅ BAŞARILI:**
```
[OCR] Step 1: Taking picture...
[OCR] Step 2: Picture taken successfully: file:///storage/...
[OCR] Step 3: Starting OCR processing...
[OCR] Step 4: Calling processImage...
[OCR] Calling TextRecognition.recognize...
[OCR] TextRecognition result: "TC KIMLIK KARTI..."
[OCR] Parsing ID fields...
[OCR] Parsed fields: {"tcNo":"12345678901","name":"AHMET",...}
[OCR] Confidence score: 85
[OCR] Step 5: OCR Complete!
```

**❌ HATA:**
```
[OCR] processImage ERROR: Metin algılanamadı
```
veya
```
[OCR] TextRecognition result: 
[OCR] processImage ERROR: Metin algılanamadı. Lütfen daha net bir fotoğraf çekin.
```

---

## ⚠️ SORUN GİDERME

### Hata 1: "Metin algılanamadı"

**Sebepler:**
- Fotoğraf bulanık
- Işık yetersiz
- Kart tam görünmüyor
- Yansıma var

**Çözüm:**
- Daha net bir fotoğraf çekin
- Işığı artırın (Flash açabilirsiniz)
- Kartı düzgün çerçeveleyin
- Parlama olmayan bir açıda çekin

### Hata 2: "TextRecognition module bulunamadı"

**Sebep:** Native module link edilmemiş

**Çözüm:**
```bash
cd android
./gradlew clean
cd ..
npm run android
```

### Hata 3: Bazı alanlar boş

**Sebep:** Pattern matching bulamadı

**Çözüm:**
- TC Kimlik Kartı kullanın (Pasaport vs. değil)
- Kartın ön yüzünü çekin
- Türkçe karakterler düzgün görünsün

---

## 📋 PATTERN MATCHING

OCR modülü şu pattern'leri arar:

```javascript
TC_NO:        /\b\d{11}\b/                          // 11 haneli sayı
NAME:         /(?:AD[I]?\s*[:\-]?\s*)([A-ZÇĞİÖŞÜ\s]+)/i
SURNAME:      /(?:SOYAD[I]?\s*[:\-]?\s*)([A-ZÇĞİÖŞÜ\s]+)/i
BIRTH_DATE:   /(?:D\.TAR[İI]H[İI]?\s*[:\-]?\s*)(\d{2}[\.\/]\d{2}[\.\/]\d{4})/i
SERIAL_NO:    /([A-Z]\d{2}[A-Z]\d{5})/              // Örn: A12B34567
VALID_UNTIL:  /(?:GEÇERLİLİK\s*[:\-]?\s*)(\d{2}[\.\/]\d{2}[\.\/]\d{4})/i
```

---

## 💡 TEST İPUÇLARI

### İyi Fotoğraf Örneği:
```
✅ Net ve berrak
✅ Tüm kart görünüyor
✅ Işık yeterli
✅ Düz açı (15-30 derece arası tilt olabilir)
✅ Yansıma yok
✅ Gölge yok
```

### Kötü Fotoğraf Örneği:
```
❌ Bulanık
❌ Kartın bir kısmı kesilmiş
❌ Çok karanlık veya çok parlak
❌ Aşırı eğik
❌ Parlama/yansıma var
❌ Gölge düşüyor
```

---

## 🎯 BEKLENTİLER

### Güven Skoru:
- **%80-100:** Mükemmel - Tüm alanlar okundu
- **%60-79:** İyi - Ana alanlar okundu (TC No, Ad, Soyad)
- **%40-59:** Orta - Bazı alanlar eksik
- **<%40:** Zayıf - Tekrar fotoğraf çekin

### Okuma Süresi:
- Ortalama: 2-4 saniye
- Maksimum: 10 saniye

---

## 📱 CİHAZ GEREKSİNİMLERİ

- ✅ Android 4.4+ (API 19+)
- ✅ Kamera izni
- ✅ Google Play Services (ML Kit için)
- ⚠️ Samsung Note 3: Eski cihaz, ML Kit sınırlı olabilir

---

## 🔄 YENİDEN DENEME

Sonuç tatmin edici değilse:
1. **"Yeniden Tara"** butonuna basın
2. Daha iyi bir açıdan çekin
3. Işığı ayarlayın
4. Flash'ı deneyin

---

## ✅ BAŞARILI TEST SENARYOSU

```
1. Uygulamayı aç                    → Ana menü görünecek
2. "OCR Okuma"ya tıkla              → Kamera açılacak
3. Kimlik kartını çerçevele         → Çerçeve yeşil yanıp sönecek
4. Fotoğrafı çek (orta butona bas)  → "Çekiliyor..." yazacak
5. 2-3 saniye bekle                 → OCR işleniyor
6. Sonuçları gör                    → TC No, Ad, Soyad vs. görünecek
```

**SONUÇ EKRANINDAKİ BİLGİLER:**
```
TC Kimlik No:     12345678901
Ad:               AHMET
Soyad:            YILMAZ
Doğum Tarihi:     01.01.1990
Güven Skoru:      %85
```

---

## 🚨 ACİL DURUMLAR

### "Cannot find module 'TextRecognition'" Hatası

**Hızlı Çözüm:**
```bash
cd android
./gradlew clean
cd ..
rm -rf node_modules
npm install
npm run android
```

### Kamera açılmıyor

**Çözüm:**
```bash
# İzin ver
adb shell pm grant com.ocrmobilesdk.debug android.permission.CAMERA

# Uygulamayı yeniden başlat
adb shell am force-stop com.ocrmobilesdk.debug
adb shell am start -n com.ocrmobilesdk.debug/com.ocrmobilesdk.MainActivity
```

---

## 📞 DESTEK

Sorun yaşarsanız logları kontrol edin:
```bash
adb logcat -s ReactNativeJS:* RNCamera:* TextRecognition:* OCR:*
```

**Tüm hata mesajlarını ve logları kopyalayıp bana gösterin!**

---

**🎉 BAŞARILAR! KİMLİK KARTINIZI TARATMAYA HAZIRSINIZ!**
