# 🧪 Test Senaryoları ve Manuel Test Talimatları

## Mobil Kimlik Doğrulama Modülleri
**Platform:** Android 11 (Fiziksel Cihaz)  
**Versiyon:** 1.0.0  
**Tarih:** 18 Ekim 2024

---

## 📱 Ön Hazırlık

### Gereksinimler

- [x] Android 11 veya üzeri fiziksel cihaz
- [x] USB Debugging aktif
- [x] NFC özelliği olan cihaz
- [x] Ön ve arka kamera
- [x] Türkiye Cumhuriyeti Kimlik Kartı (çipli)
- [x] İyi aydınlatılmış ortam
- [x] Stabil internet bağlantısı (ilk kurulum için)

### APK Kurulumu

1. **USB ile bağlantı:**
```bash
# Cihazın bağlı olduğunu kontrol et
adb devices

# APK'yı yükle
adb install -r app-debug.apk
```

2. **Manuel kurulum:**
   - APK dosyasını telefona kopyala
   - Dosya yöneticisinden APK'ya tıkla
   - "Bilinmeyen kaynaklardan yükleme" iznini ver
   - Kurulumu tamamla

---

## 🔍 Test Senaryosu 1: OCR Reader

### Test Amacı
Kimlik kartından optik karakter tanıma ile veri okuma.

### ✅ Başarılı Senaryo

**Adımlar:**

1. **Uygulamayı Aç**
   - Ana menüde "OCR Okuma" modülüne tıkla

2. **Kamera İzni**
   - İlk kullanımda kamera izni isteyecek
   - "İzin Ver" seçeneğine tıkla

3. **Kimlik Kartını Hazırla**
   - Kimlik kartının ön yüzünü hazırla
   - Kartı düz bir yüzeye koy

4. **Fotoğraf Çek**
   - Kamera ekranında beyaz çerçeve görünecek
   - Kimlik kartını çerçeve içine yerleştir
   - Tüm yazılar net görünmeli
   - Ortadaki büyük beyaz butona bas

5. **Sonuç Kontrolü**
   - OCR işlemi 2-3 saniye sürecek
   - Sonuç ekranında kontrol et:
     - TC Kimlik No (11 haneli)
     - Ad
     - Soyad
     - Doğum Tarihi
     - Güven Skoru (%60 üzeri başarılı)

**Beklenen Sonuç:**
```json
{
  "tcNo": "12345678901",
  "name": "MEHMET",
  "surname": "YILMAZ",
  "birthDate": "01.01.1990",
  "confidence": 85
}
```

### ❌ Hata Senaryoları

#### Senaryo 1.1: Bulanık Fotoğraf

**Adımlar:**
1. Kamerayı hızlıca hareket ettir
2. Fotoğraf çek

**Beklenen:**
- Hata mesajı: "Metin algılanamadı. Lütfen daha net bir fotoğraf çekin."
- Tekrar deneme butonu görünmeli

#### Senaryo 1.2: Yetersiz Işık

**Adımlar:**
1. Karanlık ortamda fotoğraf çek
2. Flaşı kapat

**Beklenen:**
- Düşük güven skoru (%30-50)
- Eksik veya hatalı alanlar

#### Senaryo 1.3: Kısmi Görüntü

**Adımlar:**
1. Kimliğin sadece yarısını çerçeveye al
2. Fotoğraf çek

**Beklenen:**
- Eksik alanlar
- Düşük güven skoru

### 📷 Galeri Testi

**Adımlar:**
1. Ana OCR ekranında galeri simgesine tıkla (sağ alt)
2. Önceden çekilmiş kimlik fotoğrafı seç
3. Kırpma aracıyla düzenle
4. "Seç" butonuna bas

**Beklenen:**
- Galeri fotoğrafından OCR yapılmalı
- Sonuçlar kamera ile aynı formatta

---

## 📡 Test Senaryosu 2: NFC Reader

### Test Amacı
Kimlik kartının NFC çipinden veri okuma.

### ✅ Başarılı Senaryo

**Adımlar:**

1. **NFC Kontrolü**
   - Ayarlar > Bağlantılar > NFC açık olmalı
   - Ana menüde "NFC Okuma" modülüne tıkla

2. **Okuma Başlat**
   - "Okumaya Başla" butonuna bas
   - Ekranda animasyonlu NFC simgesi görünecek

3. **Kimlik Kartını Yaklaştır**
   - Kimlik kartını telefonun arkasına yaklaştır
   - Genellikle kameranın 2-3 cm altı en iyi nokta
   - Kartı telefonun üst-orta kısmına denk getir

4. **Okuma İşlemi**
   - 2-3 saniye sabit tut
   - Telefon titreyecek (başarılı okuma)
   - Ekranda sonuçlar görünecek

**Beklenen Sonuç:**
```json
{
  "tcNo": "12345678901",
  "fullName": "MEHMET YILMAZ",
  "birthDate": "01.01.1990",
  "cardId": "04:A1:B2:C3:D4:E5:F6"
}
```

### ❌ Hata Senaryoları

#### Senaryo 2.1: NFC Kapalı

**Adımlar:**
1. NFC'yi kapat
2. Modüle gir

**Beklenen:**
- Uyarı: "NFC kapalı. Ayarlardan açmak ister misiniz?"
- "Ayarlara Git" butonu NFC ayarlarına yönlendirmeli

#### Senaryo 2.2: Kart Uzaklaştırma

**Adımlar:**
1. Okuma başlat
2. Kartı yaklaştır
3. Hemen uzaklaştır

**Beklenen:**
- Hata: "Kart bağlantısı kesildi"
- Yeniden deneme seçeneği

#### Senaryo 2.3: Yanlış Kart

**Adımlar:**
1. Banka kartı veya ulaşım kartı kullan
2. Okumaya çalış

**Beklenen:**
- Hata: "Desteklenmeyen kart tipi"
- Doğru kart kullanma talimatı

### 📍 NFC Nokta Bulma

**Test Adımları:**
1. NFC okuma ekranını aç
2. Kartı telefonun farklı noktalarına yaklaştır:
   - Üst sol
   - Üst orta ✅ (genellikle en iyi)
   - Üst sağ
   - Orta
   - Alt
3. Titreme hissedilen nokta optimal NFC noktası

---

## 🎭 Test Senaryosu 3: Liveness Detection

### Test Amacı
Canlılık testi ile gerçek kişi doğrulaması.

### ✅ Başarılı Senaryo

**Adımlar:**

1. **Test Başlat**
   - Ana menüde "Canlılık Testi" modülüne tıkla
   - "Teste Başla" butonuna bas

2. **Hazırlık**
   - 3-2-1 geri sayım başlayacak
   - Yüzünüzü çerçeve içine yerleştirin
   - Çerçeve yeşil olana kadar ayarlayın

3. **Talimatları Takip Et**

   **Talimat 1: Göz Kırpma**
   - Sesli komut: "Lütfen gözlerinizi kırpın"
   - 2-3 kez göz kırpın
   - ✅ işareti görünecek

   **Talimat 2: Gülümseme**
   - Sesli komut: "Lütfen gülümseyin"
   - Doğal bir gülümseme yapın
   - ✅ işareti görünecek

   **Talimat 3: Başı Sola Çevir**
   - Sesli komut: "Lütfen başınızı sola çevirin"
   - Başınızı yavaşça sola çevirin (30-45 derece)
   - ✅ işareti görünecek

   **Talimat 4: Başı Sağa Çevir**
   - Sesli komut: "Lütfen başınızı sağa çevirin"
   - Başınızı yavaşça sağa çevirin
   - ✅ işareti görünecek

4. **Sonuç**
   - Tüm testler tamamlandığında sonuç ekranı
   - Başarı skoru %60 üzeri olmalı

**Beklenen Sonuç:**
```json
{
  "passed": true,
  "score": 75,
  "totalChallenges": 4,
  "successfulChallenges": 3,
  "failedChallenges": 1
}
```

### ❌ Hata Senaryoları

#### Senaryo 3.1: Yüz Algılanamıyor

**Adımlar:**
1. Yüzü çerçeve dışında tut
2. Teste başla

**Beklenen:**
- Çerçeve kırmızı görünmeli
- Uyarı: "Yüzünüzü çerçeve içine yerleştirin"
- Test başlamayacak

#### Senaryo 3.2: Birden Fazla Yüz

**Adımlar:**
1. İki kişi kamera önünde dursun
2. Teste başla

**Beklenen:**
- Hata: "Birden fazla yüz algılandı"
- Test başlamayacak

#### Senaryo 3.3: Hareket Yapmama

**Adımlar:**
1. Talimatları takip etme
2. Sabit dur

**Beklenen:**
- 5 saniye sonra zaman aşımı
- İlgili challenge başarısız
- Sonraki challenge'a geçiş

### 🔊 Ses Testi

**Adımlar:**
1. Telefon sesini aç
2. Canlılık testini başlat
3. Sesli komutları dinle

**Kontrol Listesi:**
- [ ] Türkçe sesli komutlar anlaşılır mı?
- [ ] Ses seviyesi yeterli mi?
- [ ] Her komut doğru zamanda mı?

---

## ⚠️ Edge Case Testleri

### Test 4.1: İzin Reddi

**Adımlar:**
1. Uygulamayı temiz kur
2. Kamera iznini reddet
3. OCR veya Liveness modülüne gir

**Beklenen:**
- Bilgilendirme mesajı
- İzin isteme butonu
- Ana menüye dönüş

### Test 4.2: Bellek Yetersizliği

**Adımlar:**
1. Birçok uygulama aç (bellek doldur)
2. Canlılık testini başlat

**Beklenen:**
- Uygulama crash olmamalı
- Uyarı mesajı veya yavaş çalışma

### Test 4.3: Arka Plan Geçişi

**Adımlar:**
1. OCR işlemi sırasında Home tuşuna bas
2. Uygulamaya geri dön

**Beklenen:**
- Uygulama kaldığı yerden devam etmeli
- Veri kaybı olmamalı

---

## 📊 Test Kontrol Listesi

### OCR Modülü
- [ ] Kamera açılıyor
- [ ] Çerçeve görünüyor
- [ ] Fotoğraf çekiliyor
- [ ] OCR işlemi başarılı
- [ ] TC No doğru okunuyor
- [ ] İsim doğru okunuyor
- [ ] Soyisim doğru okunuyor
- [ ] Doğum tarihi doğru okunuyor
- [ ] Güven skoru hesaplanıyor
- [ ] Galeri seçimi çalışıyor
- [ ] Hata mesajları anlaşılır

### NFC Modülü
- [ ] NFC durumu kontrol ediliyor
- [ ] Animasyon görünüyor
- [ ] Kart algılanıyor
- [ ] Titreşim çalışıyor
- [ ] Veri okunuyor
- [ ] TC No doğru
- [ ] İsim doğru
- [ ] Hata durumları yakalanıyor
- [ ] İptal butonu çalışıyor

### Liveness Modülü
- [ ] Ön kamera açılıyor
- [ ] Yüz algılanıyor
- [ ] Çerçeve renk değiştiriyor
- [ ] Sesli komutlar çalışıyor
- [ ] Göz kırpma algılanıyor
- [ ] Gülümseme algılanıyor
- [ ] Baş hareketleri algılanıyor
- [ ] Skor hesaplanıyor
- [ ] Sonuç ekranı doğru
- [ ] Tekrar deneme çalışıyor

### Genel
- [ ] Ana menü yükleniyor
- [ ] İzinler kontrol ediliyor
- [ ] Modüller arası geçiş sorunsuz
- [ ] Geri tuşu çalışıyor
- [ ] Uygulama crash olmuyor
- [ ] Bellek sızıntısı yok
- [ ] UI responsive
- [ ] Türkçe metinler doğru

---

## 🐛 Bilinen Sorunlar ve Çözümleri

### Sorun 1: NFC Okuma Başarısız

**Belirtiler:**
- Kart yaklaştırılıyor ama tepki yok
- "Kart okunamadı" hatası

**Çözüm:**
1. NFC'nin açık olduğundan emin ol
2. Kartı farklı açılardan dene
3. Telefon kılıfını çıkar
4. Metal yüzeylerden uzak dur

### Sorun 2: OCR Düşük Doğruluk

**Belirtiler:**
- Yanlış karakterler
- Eksik bilgiler

**Çözüm:**
1. Daha iyi ışık kullan
2. Kartı düz tut
3. Kamerayı temizle
4. Daha yakından çek

### Sorun 3: Canlılık Testi Başarısız

**Belirtiler:**
- Hareketler algılanmıyor
- Düşük skor

**Çözüm:**
1. İyi aydınlatılmış ortam kullan
2. Arka plan düz olmalı
3. Hareketleri yavaş yap
4. Kameraya doğrudan bak

---

## 📈 Performans Metrikleri

### Hedef Değerler

| Metrik | Hedef | Kabul Edilebilir | Kritik |
|--------|-------|------------------|--------|
| OCR Süre | <2s | 2-4s | >4s |
| OCR Doğruluk | >90% | 70-90% | <70% |
| NFC Okuma | <1s | 1-3s | >3s |
| Liveness Süre | <20s | 20-30s | >30s |
| Bellek Kullanımı | <100MB | 100-150MB | >150MB |
| CPU Kullanımı | <30% | 30-50% | >50% |
| Pil Tüketimi | Düşük | Orta | Yüksek |

### Test Cihazları

Minimum test edilmesi gereken cihazlar:

1. **Samsung Galaxy A52** - Android 11
2. **Xiaomi Redmi Note 10** - Android 11
3. **Oppo Reno 6** - Android 11
4. **OnePlus Nord 2** - Android 11
5. **Google Pixel 4a** - Android 12

---

## 📝 Test Raporu Şablonu

```markdown
## Test Raporu

**Tarih:** [Tarih]
**Test Eden:** [İsim]
**Cihaz:** [Model - Android Versiyon]
**APK Versiyon:** 1.0.0

### OCR Modülü
- Başarı Oranı: [%]
- Ortalama Süre: [saniye]
- Notlar: [...]

### NFC Modülü
- Başarı Oranı: [%]
- Ortalama Süre: [saniye]
- Notlar: [...]

### Liveness Modülü
- Başarı Oranı: [%]
- Ortalama Süre: [saniye]
- Notlar: [...]

### Genel Notlar
[...]

### Öneriler
[...]
```

---

## 🚀 Deployment Checklist

### APK Yayınlama Öncesi

- [ ] Tüm testler başarılı
- [ ] ProGuard rules aktif
- [ ] Debug logları kapalı
- [ ] API anahtarları güvenli
- [ ] Versiyon numarası güncellendi
- [ ] Release notes hazır
- [ ] İmza sertifikası hazır
- [ ] Backup alındı

### Son Kontroller

- [ ] Farklı cihazlarda test edildi
- [ ] Farklı Android versiyonlarında test edildi
- [ ] NFC'siz cihazda test edildi
- [ ] Düşük ışıkta test edildi
- [ ] Offline modda test edildi
- [ ] Bellek/CPU profiling yapıldı
- [ ] Güvenlik taraması yapıldı

---

**Test Dokümantasyonu Sonu**  
Versiyon: 1.0.0  
Güncelleme: 18 Ekim 2024
