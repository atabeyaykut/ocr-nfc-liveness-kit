# 🔐 NFC BAC/PACE Sorunu ve Çözümü

## 🎯 Sorun Nedir?

**Durum:** Tablet NFC kartı algılıyor (titreşim ve ses geliyor) ancak okuma tamamlanamıyor.

**Kök Neden:** Modern Türk kimlik kartları **BAC (Basic Access Control)** veya **PACE (Password Authenticated Connection Establishment)** güvenlik protokolü gerektiriyor.

## 🔍 Teknik Detaylar

### Ne Oluyor?

1. ✅ Kart algılanıyor (IsoDep teknolojisi)
2. ✅ SELECT APPLICATION komutu başarılı (9000 response)
3. ❌ Veri okuma komutları **0x6982** (Security not satisfied) hatası veriyor
4. ⏸️ İşlem askıda kalıyor

### Neden Oluyor?

Türk kimlik kartları 2020 sonrası yeni güvenlik standartlarına geçti:

```
Eski Kartlar (2020 öncesi):
├─ NFC aktif
├─ Direkt okuma mümkün
└─ Güvenlik: Yok/Minimal

Yeni Kartlar (2020 sonrası):
├─ NFC aktif  
├─ BAC/PACE güvenlik katmanı
├─ MRZ bilgisi ile kimlik doğrulama gerekli
└─ Güvenlik: Kriptografi (3DES + SHA-1)
```

## 🛠️ Çözüm Yolları

### 1️⃣ BAC Implementasyonu (Kalıcı Çözüm)

**Gereksinimler:**
- MRZ bilgisi (OCR'dan alındı ✅)
- Kriptografi kütüphanesi (3DES, SHA-1)
- ICAO 9303 standardına uygun implementasyon

**Adımlar:**

```javascript
// 1. MRZ'den BAC Key türet
const bacKeys = deriveBACKeys({
  documentNumber: "U12345678",
  birthDate: "900101",
  expiryDate: "301231"
});

// 2. GET CHALLENGE komutu gönder
const challenge = await sendAPDU([0x00, 0x84, 0x00, 0x00, 0x08]);

// 3. Challenge'ı şifrele (3DES)
const encryptedChallenge = encrypt3DES(challenge, bacKeys.kEnc);

// 4. EXTERNAL AUTHENTICATE
const authResponse = await sendAPDU([0x00, 0x82, 0x00, 0x00, ...encryptedChallenge]);

// 5. Secure Messaging kanalı kuruldu ✅
// Artık veri okuyabilirsiniz
```

**Gerekli Kütüphaneler:**
```bash
npm install crypto-js
npm install node-forge
# veya
npm install react-native-crypto
```

### 2️⃣ Geçici Çözüm: Manuel Veri Girişi

Kullanıcıdan MRZ kodunu manuel olarak girmesini isteyebilirsiniz (fallback option).

### 3️⃣ Eski Kart Testi

Eğer 2020 öncesi basılmış bir kimlik kartınız varsa, o kartla test edebilirsiniz (BAC gerektirmez).

## 📊 Log Analizi

Şu logları kontrol edin:

```bash
# Başarılı algılama
[NFC] DiscoverTag event yakalandı
[NFC][IsoDep] Technology requested successfully
[NFC][IsoDep] SELECT_APP response: 9000  ✅

# BAC eksikliği
[NFC][IsoDep] No MRZ seed provided, skipping BAC
[NFC][IsoDep] READ_PERSONAL...
# Error: 6982 (Security not satisfied) ❌

# Beklenen akış (BAC implementasyonundan sonra):
[NFC][BAC] Starting BAC authentication...
[NFC][BAC] Challenge received: [random bytes]
[NFC][BAC] Authentication successful ✅
[NFC][IsoDep] READ_PERSONAL response length: 64 ✅
```

## 🔧 Hızlı Test

### Test 1: MRZ Verisi Kontrolü

```javascript
// VerificationFlowScreen.js içinde
console.log('[Test] MRZ Seed:', {
  tcNo: ocrFields.tcNo,
  birthDate: ocrFields.birthDate,
  documentNo: ocrFields.documentNo
});
```

Eğer `undefined` görüyorsanız → OCR sorun var
Eğer veri varsa → BAC implementasyonu gerekli

### Test 2: NFC Komut Testi

```javascript
// NFCReaderModule.js - readIsoDep içine ekleyin
console.log('[Test] Sending test READ without BAC...');
try {
  const testRead = await NfcManager.transceive([0x00, 0xB0, 0x01, 0x00, 0x00]);
  console.log('[Test] Response:', this.bytesToHex(testRead));
} catch (error) {
  console.error('[Test] Error:', error.message);
  // Eğer "6982" görüyorsanız → BAC gerekli
}
```

## 📚 Referanslar

### ICAO 9303 Standardı
- **Part 11:** Security mechanisms for MRTDs
- **BAC Protocol:** Bölüm 4.3
- **PACE Protocol:** Bölüm 4.4

### Türkçe Kimlik Kartı Spesifikasyonu
- NFC Chip: NXP JCOP (JavaCard)
- Standard: ICAO 9303 compliant
- Güvenlik: BAC (2020+) veya PACE (2022+)

### Örnek BAC Implementasyonları

**Python:**
```python
# pypassport kütüphanesi
from pypassport.doc9303 import bac

keys = bac.computeKeys(documentNumber, dateOfBirth, dateOfExpiry)
```

**Java/Kotlin:**
```kotlin
// JMRTD kütüphanesi
import org.jmrtd.BACKeySpec
import org.jmrtd.PassportService

val bacKey = BACKeySpec(documentNumber, dateOfBirth, dateOfExpiry)
passportService.open(bacKey)
```

**JavaScript:**
```javascript
// Gerekli: crypto kütüphanesi
import CryptoJS from 'crypto-js';

function computeBAC(mrzInfo) {
  // MRZ string oluştur
  const mrzString = mrzInfo.documentNumber + 
                    checkDigit(mrzInfo.documentNumber) +
                    mrzInfo.birthDate + 
                    checkDigit(mrzInfo.birthDate) +
                    mrzInfo.expiryDate + 
                    checkDigit(mrzInfo.expiryDate);
  
  // SHA-1 hash
  const hash = CryptoJS.SHA1(mrzString);
  
  // Key türetme
  const kEnc = hash.slice(0, 16);
  const kMac = hash.slice(16, 32);
  
  return { kEnc, kMac };
}
```

## 🚀 Sonraki Adımlar

### Kısa Vadeli (Bu hafta)
1. ✅ Detaylı log eklendi
2. ✅ Kullanıcı dostu hata mesajları
3. ⏳ Manuel veri girişi fallback (opsiyonel)

### Orta Vadeli (1-2 hafta)
1. ⏳ BAC implementasyonu
2. ⏳ Kriptografi kütüphanesi entegrasyonu
3. ⏳ Unit test'ler

### Uzun Vadeli (1 ay+)
1. ⏳ PACE desteği
2. ⏳ Pasaport okuma
3. ⏳ Diğer ülke kimlik kartları

## 💡 Hemen Yapılabilecekler

### 1. Timeout'u Artır
```javascript
// VerificationFlowScreen.js
await nfcModuleRef.current.startNFC({
  cardType: 'tc_kimlik',
  readTimeout: 60000, // 30s → 60s
  mrzSeed: {
    tcNo: ocrFields.tcNo,
    birthDate: ocrFields.birthDate,
    documentNo: ocrFields.documentNo,
  },
});
```

### 2. Retry Mekanizması
```javascript
let retryCount = 0;
const maxRetries = 3;

while (retryCount < maxRetries) {
  try {
    const result = await nfcModuleRef.current.startNFC(options);
    break;
  } catch (error) {
    retryCount++;
    if (retryCount >= maxRetries) throw error;
    await sleep(1000);
  }
}
```

### 3. Kullanıcıya Bilgi Ver
```javascript
Alert.alert(
  'NFC Okuma Sorunu',
  'Modern kimlik kartları güvenlik protokolü gerektiriyor.\n\n' +
  'Geliştirme devam ediyor.\n\n' +
  'Şimdilik manuel veri girişi kullanabilirsiniz.',
  [
    { text: 'Manuel Giriş', onPress: () => showManualEntry() },
    { text: 'Tekrar Dene' }
  ]
);
```

## 📞 Destek

Sorularınız için:
- 📖 [NFC_PACE_FALLBACK.md](./docs/NFC_PACE_FALLBACK.md)
- 🔗 ICAO 9303 Documentation
- 💬 GitHub Issues

---

**Son Güncelleme:** 19 Kasım 2025
**Durum:** 🟡 Geliştirme Aşamasında (BAC implementasyonu bekleniyor)
