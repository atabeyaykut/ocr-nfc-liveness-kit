# 🔍 NFC Debug - Kart Hiç Algılanmıyor

## 🎯 Sorun
Kartı tabletin arkasına yaklaştırıyorsunuz ama:
- ❌ Titreşim yok
- ❌ Ses yok  
- ❌ Herhangi bir tepki yok

## 🔧 Eklenen Debug Logları

Tüm kritik noktalara detaylı loglar eklendi:

### 1️⃣ MRZ Algılama
```
[MRZ Check] Kontrol edildi. MRZ bulundu mu? true/false
[MRZ Check] Bulunan satırlar: [...]
[MRZ Check] ✅ MRZ ALGILANDI!
```

### 2️⃣ OCR Tamamlanma
```
[OCR] === OCR TAMAMLANDI ===
[OCR] Başarılı çekim sayısı: 3
[OCR] En iyi sonuç: {...}
[OCR] NFC flow 1 saniye sonra başlatılacak...
```

### 3️⃣ NFC Flow Başlatma
```
[NFC Flow] === NFC FLOW BAŞLADI ===
[NFC Flow] OCR Fields: {...}
[NFC Flow] Checking NFC support...
[NFC Flow] NFC Supported: true/false
[NFC Flow] NFC Enabled: true/false
[NFC Flow] ✅ NFC hazır, callbacks kuruluyor...
[NFC Flow] startNFC çağrılıyor...
```

### 4️⃣ NFC Listener
```
[NFC] registerTagEvent registered successfully
[NFC] DiscoverTag event yakalandı
```

## 🚀 TEST ADIMLARI

### Adım 1: Metro'yu Yeniden Başlat
```bash
# Metro'yu durdur (Ctrl+C)
# Temizleyerek başlat:
npx react-native start --reset-cache
```

### Adım 2: Uygulamayı Derle
```bash
# Yeni terminal
yarn android
```

### Adım 3: Logları İzle
```bash
# Başka bir terminal
adb logcat | grep -E "MRZ Check|OCR|NFC Flow|NFC\]"
```

### Adım 4: Test Et

**Senario 1: MRZ Algılanıyor mu?**

1. Uygulamayı aç
2. Kimlik kartının ARKA YÜZÜNÜ kameraya göster
3. Logları kontrol et:

✅ **BAŞARILI:**
```
[MRZ Check] ✅ MRZ ALGILANDI!
[MRZ Check] takePhotoAndProcess çağrılıyor...
[OCR] === OCR TAMAMLANDI ===
```

❌ **BAŞARISIZ:**
```
[MRZ Check] Kontrol edildi. MRZ bulundu mu? false
[MRZ Check] Bulunan satırlar: []
```

→ **Çözüm:** Kartı daha yakın tutun, ışık yeterli olsun, MRZ bölgesi net görünsün.

---

**Senario 2: OCR Tamamlanıyor mu?**

MRZ algılandıktan sonra:

✅ **BAŞARILI:**
```
[OCR] Başarılı çekim sayısı: 3
[OCR] En iyi sonuç: { tcNo: "...", birthDate: "...", ... }
[OCR] NFC flow 1 saniye sonra başlatılacak...
[OCR] Timeout tamamlandı, startNfcFlow çağrılıyor...
```

❌ **BAŞARISIZ:**
```
[Verification] Hata: Hiçbir çekimden MRZ verisi elde edilemedi
```

→ **Çözüm:** Kart kaliteli olmalı, MRZ bölgesi hasarsız olmalı, ışık yeterli olmalı.

---

**Senario 3: NFC Başlatılıyor mu?**

OCR'dan sonra:

✅ **BAŞARILI:**
```
[NFC Flow] === NFC FLOW BAŞLADI ===
[NFC Flow] OCR Fields: { tcNo: "...", birthDate: "...", documentNo: "..." }
[NFC Flow] NFC Supported: true
[NFC Flow] NFC Enabled: true
[NFC Flow] ✅ NFC hazır, callbacks kuruluyor...
[NFC Flow] startNFC çağrılıyor...
```

❌ **BAŞARISIZ 1 - NFC Desteklenmiyor:**
```
[NFC Flow] ❌ NFC desteklenmiyor!
```
→ **Çözüm:** Cihaz NFC desteklemiyor. Farklı tablet/telefon deneyin.

❌ **BAŞARISIZ 2 - NFC Kapalı:**
```
[NFC Flow] ❌ NFC kapalı!
```
→ **Çözüm:** Ayarlar → NFC açın.

❌ **BAŞARISIZ 3 - Hata:**
```
[NFC Flow] ❌ HATA: ...
```
→ **Çözüm:** Hatayı inceleyin, stack trace kontrol edin.

---

**Senario 4: NFC Listener Çalışıyor mu?**

startNFC çağrıldıktan sonra:

✅ **BAŞARILI:**
```
[NFC] registerTagEvent registered successfully
[NFC] DiscoverTag event yakalandı
```

❌ **BAŞARISIZ:**
```
(Hiçbir log yok)
```

→ **Çözüm:** NFCReaderModule.js içindeki registerNfcDiscovery kontrol edilmeli.

---

**Senario 5: Kart Algılanıyor mu?**

Kartı yaklaştırdıktan sonra:

✅ **BAŞARILI:**
```
[NFC] DiscoverTag event yakalandı: [tag id]
[NFC][IsoDep] Starting NFC read...
```

❌ **BAŞARISIZ:**
```
(Hiçbir log yok - tablet titremiyor)
```

## 🔍 OLASI SORUNLAR VE ÇÖZÜMLER

### 1. MRZ Algılanmıyor

**Sebep:**
- Kart çok uzak
- Işık yetersiz
- MRZ bölgesi hasarlı/kirli
- Kamera odaklanma sorunu

**Çözüm:**
- Kartı 10-15cm mesafede tutun
- Işık altında deneyin
- Kartı temizleyin
- Elle odaklanma için karta dokunun

### 2. OCR Başarısız

**Sebep:**
- MRZ bölgesi okunmuyor
- Fotoğraf kalitesi düşük
- ML Kit hatası

**Çözüm:**
- Daha yavaş hareket edin
- Kartı sabit tutun
- Temiz/yeni kart deneyin

### 3. NFC Başlamıyor

**Sebep:**
- OCR tamamlanmadı
- OCR fields boş
- startNfcFlow çağrılmadı

**Çözüm:**
```javascript
// Logları kontrol edin:
[OCR] En iyi sonuç: {...} // Boş mu?
[NFC Flow] === NFC FLOW BAŞLADI === // Bu log var mı?
```

### 4. NFC Kapalı/Desteklenmiyor

**Sebep:**
- Tablet NFC desteklemiyor
- NFC ayarlardan kapalı
- Uçak modu açık

**Çözüm:**
- Ayarlar → Bağlantılar → NFC → AÇ
- Uçak modunu kapat
- Farklı cihaz dene

### 5. Kart Algılanmıyor

**Sebep:**
- NFC listener kurulmadı
- registerTagEvent başarısız
- Kart NFC yongası bozuk

**Çözüm:**
```bash
# NFC modülünü kontrol et:
adb logcat | grep NFC

# Beklenen:
[NFC] registerTagEvent registered successfully
[NFC] DiscoverTag event yakalandı
```

## 📊 TÜM AKIŞ - BAŞARILIDA GÖRÜLMESİ GEREKENLER

```
1. [MRZ Check] Kontrol edildi. MRZ bulundu mu? false
   (Kart gösterilmeden önce her 500ms)

2. [MRZ Check] ✅ MRZ ALGILANDI!
   (Kart kameraya gösterilince)

3. [MRZ Check] takePhotoAndProcess çağrılıyor...
   (200ms sonra)

4. [OCR] === OCR TAMAMLANDI ===
   [OCR] Başarılı çekim sayısı: 3
   [OCR] En iyi sonuç: { tcNo: "...", birthDate: "...", documentNo: "..." }
   (3 fotoğraf çekildikten sonra)

5. [OCR] NFC flow 1 saniye sonra başlatılacak...
   [OCR] Timeout tamamlandı, startNfcFlow çağrılıyor...
   (1 saniye sonra)

6. [NFC Flow] === NFC FLOW BAŞLADI ===
   [NFC Flow] OCR Fields: {...}
   [NFC Flow] NFC Supported: true
   [NFC Flow] NFC Enabled: true
   [NFC Flow] ✅ NFC hazır, callbacks kuruluyor...
   [NFC Flow] startNFC çağrılıyor...
   (NFC başlatma)

7. [NFC] registerTagEvent registered successfully
   (NFC listener kuruldu)

8. [NFC Flow] ✅ NFC Started callback çağrıldı!
   (NFC aktif, kart bekliyor)

9. [NFC] DiscoverTag event yakalandı: [tag id]
   (Kart yaklaştırıldı - TABLET TİTRİYOR!)

10. [NFC][IsoDep] Starting NFC read...
    (Okuma başladı)

11. [NFC][BAC] Starting BAC authentication...
    (BAC başladı)

12. [NFC][BAC] ✅ BAC authentication successful!
    (BAC tamamlandı)

13. [NFC][IsoDep] READ_PERSONAL response: 64 bytes
    [NFC][IsoDep] READ_ID response: 32 bytes
    (Veri okundu)

14. [NFC] NFC başarılı
    (Tamamlandı!)
```

## 🧪 HIZLI TEST KOMUTLARİ

```bash
# Terminal 1: Metro (reset cache)
npx react-native start --reset-cache

# Terminal 2: Build & Run
yarn android

# Terminal 3: Logları izle
adb logcat | grep -E "MRZ Check|OCR\]|NFC Flow|NFC\]|BAC\]"

# Log filtreleme (sadece önemli):
adb logcat | grep -E "✅|❌|===|BAŞLADI|TAMAMLANDI"
```

## ✅ BAŞARILI LOG ÖRNEĞİ

```
[MRZ Check] ✅ MRZ ALGILANDI!
[OCR] === OCR TAMAMLANDI ===
[OCR] Başarılı çekim sayısı: 3
[NFC Flow] === NFC FLOW BAŞLADI ===
[NFC Flow] ✅ NFC hazır, callbacks kuruluyor...
[NFC] registerTagEvent registered successfully
[NFC Flow] ✅ NFC Started callback çağrıldı!
[NFC] DiscoverTag event yakalandı        ← TABLET TİTRİYOR
[NFC][BAC] ✅ BAC authentication successful!
[NFC] NFC başarılı
```

---

**🎯 ŞİMDİ NE YAPMALI?**

1. Metro'yu yeniden başlat (`npx react-native start --reset-cache`)
2. Uygulamayı derle (`yarn android`)
3. Logları izle (`adb logcat | grep -E "MRZ|OCR|NFC"`)
4. Kartın arka yüzünü göster
5. Logları takip et, hangi adımda takıldığını bul
6. Yukarıdaki çözümleri uygula

**🔧 Sonuç:** Loglar tam olarak neyin çalışmadığını gösterecek!
