# NFC PACE Fallback - Kullanım Kılavuzu

## 🎯 Hızlı Başlangıç

NFC PACE fallback sistemi artık otomatik çalışıyor. Hiçbir ek konfigurasyon gerekmez.

### Kullanıcı Deneyimi

**Senaryo 1: Modern Kart (PACE gerekli)**
```
1. Kullanıcı kartı okutmaya çalışır
2. Sistem PACE gereksinimini algılar
3. Kullanıcıya açıklayıcı mesaj gösterilir:
   "Bu kimlik kartı gelişmiş güvenlik protokolü (PACE) gerektiriyor."
4. İki seçenek sunulur:
   - İptal
   - Manuel Giriş
5. "Manuel Giriş" seçilirse MRZ girişi ekranı açılır
6. Kullanıcı 3 satır MRZ kodunu girer
7. Sistem verileri parse eder ve gösterir
```

**Senaryo 2: Eski Kart (PACE yok)**
```
1. Kullanıcı kartı okutmaya çalışır
2. Normal NFC okuma başarılı olur
3. Veriler gösterilir
```

---

## 📱 Manuel MRZ Girişi

### MRZ Nedir?

MRZ (Machine Readable Zone), kimlik kartının arka yüzünde bulunan makinece okunabilir koddur. 3 satırdan oluşur ve her satır **tam 30 karakter**dir.

### MRZ Örneği

```
I<TUR123456789<12345678901<<<
8501015M2512315TUR<<<<<<<<<<5
YILMAZ<<AHMET<<<<<<<<<<<<<<<<
```

**Açıklama:**
- **Satır 1:** Belge tipi (I), ülke (TUR), belge no, TC No
- **Satır 2:** Doğum tarihi, cinsiyet, geçerlilik, uyruğu
- **Satır 3:** Soyadı << Adı

**Önemli:** `<` işareti boşluk anlamına gelir!

### Adım Adım Giriş

1. **Kimlik kartınızın arka yüzüne bakın**
2. **En alttaki 3 satırlık kodu bulun**
3. **Her satırı sırayla girin:**
   - Satır 1: 30 karakter
   - Satır 2: 30 karakter
   - Satır 3: 30 karakter
4. **Karakterler otomatik büyük harfe dönüşür**
5. **30 karakter dolunca yeşil border görünür**
6. **"Onayla" butonuna basın**

### Dikkat Edilecekler

- ✅ Tam 30 karakter girin (eksik kabul edilmez)
- ✅ `<` işaretlerini atlama, boşluk olarak gir
- ✅ Sayı ile harf karışımına dikkat et (0 vs O, 1 vs I)
- ✅ Büyük/küçük harf önemli değil (otomatik düzeltilir)
- ❌ Boşluk bırakma (yerine `<` kullan)
- ❌ Fazla karakter ekleme

---

## 👨‍💻 Developer Kullanımı

### Import

```javascript
import { NFCReaderScreen, NFC_ERROR_CODES } from './modules/nfc/NFCReaderModule';
import { NFCFallbackModal } from './components/NFCFallbackModal';
```

### Temel Kullanım

```javascript
// Ekrana yerleştir
<NFCReaderScreen 
  navigation={navigation} 
  route={route} 
/>
```

Fallback otomatik çalışır, ekstra kod gerekmez!

### Manuel Modal Kontrolü

```javascript
const [showFallback, setShowFallback] = useState(false);

const handleMRZData = (parsedData) => {
  console.log('TC No:', parsedData.tcNo);
  console.log('Ad:', parsedData.name);
  console.log('Soyad:', parsedData.surname);
  console.log('Doğum:', parsedData.birthDate);
  console.log('Cinsiyet:', parsedData.gender);
  
  setShowFallback(false);
};

<NFCFallbackModal
  visible={showFallback}
  onMRZEntered={handleMRZData}
  onCancel={() => setShowFallback(false)}
  errorInfo={{
    title: 'NFC Okuma Başarısız',
    message: 'Kartınız PACE protokolü gerektiriyor.',
  }}
/>
```

### Error Code Kontrolü

```javascript
nfcModule.onNFCError((error) => {
  switch(error.code) {
    case NFC_ERROR_CODES.PACE_REQUIRED:
      // PACE gerekli - fallback göster
      setShowFallback(true);
      break;
      
    case NFC_ERROR_CODES.BAC_REQUIRED:
      // BAC gerekli - fallback göster
      setShowFallback(true);
      break;
      
    case NFC_ERROR_CODES.TIMEOUT:
      // Zaman aşımı - tekrar dene
      Alert.alert('Zaman Aşımı', 'Lütfen tekrar deneyin.');
      break;
      
    case NFC_ERROR_CODES.TAG_LOST:
      // Kart hareket etti
      Alert.alert('Kart Hareket Etti', 'Kartı sabit tutun.');
      break;
      
    default:
      // Genel hata
      Alert.alert('NFC Hatası', error.error);
  }
});
```

### Parsed Data Structure

```javascript
{
  tcNo: "12345678901",           // 11 haneli TC No
  name: "AHMET",                  // Ad
  surname: "YILMAZ",              // Soyad
  birthDate: "15.01.1985",        // DD.MM.YYYY
  gender: "Erkek",                // Erkek/Kadın
  expiryDate: "15.03.2025",       // DD.MM.YYYY
  nationality: "TUR",             // Ülke kodu
  source: "MANUAL_MRZ"            // Veri kaynağı
}
```

---

## 🧪 Test Senaryoları

### Test 1: PACE Kartı
**Amaç:** PACE detection ve fallback akışı

**Adımlar:**
1. Modern TC Kimlik kartı (2021+) kullan
2. NFC okuma başlat
3. PACE hata mesajını kontrol et
4. "Manuel Giriş" butonunu bas
5. MRZ modal açıldığını doğrula
6. 3 satır MRZ gir
7. Parse edilen veriyi kontrol et

**Beklenen:**
- ✅ Alert: "Bu kimlik kartı gelişmiş güvenlik protokolü (PACE) gerektiriyor."
- ✅ Modal açılır
- ✅ Veriler doğru parse edilir
- ✅ `source: "MANUAL_MRZ"`

### Test 2: Normal Kart
**Amaç:** Normal akış bozulmamış

**Adımlar:**
1. Eski TC Kimlik kartı (pre-2021) kullan
2. NFC okuma başlat
3. Kartı oku

**Beklenen:**
- ✅ Normal NFC okuma başarılı
- ✅ Veriler gösterilir
- ✅ `source: "NFC"`
- ❌ Fallback modal gösterilmez

### Test 3: Invalid MRZ
**Amaç:** Validation kontrolü

**Adımlar:**
1. Fallback modal aç
2. 25 karakter gir (eksik)
3. "Onayla" butonuna bas

**Beklenen:**
- ❌ Buton disabled
- ✅ Karakter sayacı: "25/30"
- ❌ Submit edilmez

### Test 4: Valid MRZ
**Amaç:** Başarılı parse

**Adımlar:**
1. Fallback modal aç
2. Gerçek MRZ verisi gir (30+30+30 karakter)
3. "Onayla" butonuna bas

**Beklenen:**
- ✅ TC No çıkarılır
- ✅ Ad/Soyad parse edilir
- ✅ Tarih formatlanır (DD.MM.YYYY)
- ✅ Success mesajı gösterilir

---

## 🐛 Troubleshooting

### "MRZ kodu okunamadı" hatası

**Sebep:** MRZ formatı yanlış  
**Çözüm:** 
- Her satır tam 30 karakter olmalı
- Boşluklar `<` ile gösterilmeli
- TC No 11 haneli olmalı

### Modal açılmıyor

**Sebep:** State güncellenmiyor  
**Çözüm:**
```javascript
// Kontrol et
console.log('showFallbackModal:', showFallbackModal);
console.log('fallbackErrorInfo:', fallbackErrorInfo);
```

### Parse edilen veriler yanlış

**Sebep:** MRZ satırları yer değiştirmiş  
**Çözüm:**
- Satır 1: `I<TUR...` ile başlamalı
- Satır 2: Rakamlarla başlamalı (doğum tarihi)
- Satır 3: Soyadı ile başlamalı (büyük harf)

---

## 📊 Error Codes Reference

| Code | SW1/SW2 | Anlamı | Fallback |
|------|---------|--------|----------|
| `PACE_REQUIRED` | 69/82 | PACE protokolü gerekli | ✅ MRZ entry |
| `BAC_REQUIRED` | 63/00 | BAC gerekli | ✅ MRZ entry |
| `AUTHENTICATION_FAILED` | 69/88 | Auth başarısız | ❌ Retry |
| `CARD_NOT_SUPPORTED` | 6A/82 | Kart desteklenmiyor | ❌ - |
| `TIMEOUT` | - | Zaman aşımı | ❌ Retry |
| `TAG_LOST` | - | Kart hareket etti | ❌ Retry |

---

## 📈 Metrics & Analytics

### Track Edilmesi Gereken Metrikler

```javascript
// NFC başarı oranı
Analytics.track('nfc_read_success', {
  source: 'NFC',
  duration: readTime,
});

// Fallback kullanım oranı
Analytics.track('nfc_fallback_used', {
  source: 'MANUAL_MRZ',
  error_code: 'PACE_REQUIRED',
});

// Parse başarı oranı
Analytics.track('mrz_parse_success', {
  tc_no_found: true,
  name_found: true,
  valid_format: true,
});
```

### Önemli KPI'lar

- **NFC Success Rate:** % kaç kart başarıyla okundu
- **Fallback Usage Rate:** % kaç kullanıcı fallback kullandı
- **MRZ Parse Success Rate:** % kaç MRZ doğru parse edildi
- **Combined Success Rate:** NFC + Fallback toplam başarı

---

## 🔐 Security Notes

### PII Handling

MRZ verileri TC No gibi hassas bilgiler içerir:

```javascript
// ✅ GOOD - Sadece gerektiğinde log
if (__DEV__) {
  console.log('[Dev] TC No:', parsedData.tcNo);
}

// ❌ BAD - Production'da log etme
console.log('TC No:', parsedData.tcNo); // NEVER!
```

### Data Storage

```javascript
// ✅ GOOD - Secure storage kullan
await SecureStorage.setItem('nfc_data', JSON.stringify(data), {
  ttl: 300, // 5 dakika
});

// ❌ BAD - AsyncStorage kullanma
await AsyncStorage.setItem('nfc_data', JSON.stringify(data));
```

---

## 🎓 Best Practices

### 1. User Feedback
```javascript
// Her adımda kullanıcıyı bilgilendir
Alert.alert('İşlem Başarılı', 'MRZ verileri işlendi.');
Vibration.vibrate([100, 200, 100]); // Haptic feedback
```

### 2. Error Recovery
```javascript
// Kullanıcıya alternatif sun
if (error.code === 'PACE_REQUIRED') {
  // Option 1: Manuel MRZ
  // Option 2: OCR ile arka yüz tara
  // Option 3: İptal et
}
```

### 3. Progressive Enhancement
```javascript
// Önce NFC dene, fallback'i yedek tut
try {
  await readNFC();
} catch (error) {
  if (error.code === 'PACE_REQUIRED') {
    showManualMRZEntry();
  }
}
```

---

## 📚 Additional Resources

- **MRZ Format:** ICAO Doc 9303 Part 4
- **PACE Protocol:** BSI TR-03110
- **Turkish ID Spec:** Nüfus ve Vatandaşlık İşleri Genel Müdürlüğü

---

## ✅ Production Checklist

- [x] PACE detection implemented
- [x] User-friendly error messages
- [x] Fallback modal created
- [x] MRZ parsing tested
- [ ] Physical device testing (CRITICAL)
- [ ] Analytics integration
- [ ] Error tracking (Sentry/Crashlytics)
- [ ] User acceptance testing
- [ ] Performance monitoring

---

**Son Güncelleme:** 2025-10-23  
**Versiyon:** 1.0.0  
**Status:** ✅ Production Ready (pending device tests)
