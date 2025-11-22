# PACE Authentication Deadlock - Analysis & Solution

## 🔴 Problem: PACE Authentication Deadlock

Modern Türk kimlik kartları (2017+) **PACE (Password Authenticated Connection Establishment)** protokolü gerektiriyor, ancak bir deadlock durumu var:

### Deadlock Zinciri

```
1. Kart APPLICATION SELECT yapıldı → ✅ 9000
2. EF.CardAccess SELECT denendi → ❌ 6982 (PACE gerekli)
3. MSE:Set AT denendi (3 format) → ❌ Hepsi başarısız
   - Minimal (OID only): 6A80 (Wrong parameters)
   - With reference: 6A88 (Referenced data not found)
   - Alternative P1/P2: 6982 (Security status not satisfied)
4. BAC Fallback denendi:
   - GET_CHALLENGE → ✅ 9000 (RND.IC alındı)
   - EXTERNAL_AUTHENTICATE → ❌ 6982 (Kart PACE istiyor)
```

### Deadlock Sebebi

- **Kart PACE istiyor** → MSE:Set AT başarılı olmalı
- **MSE:Set AT için** → Doğru OID/parametreler gerekli
- **Doğru OID/parametreler için** → EF.CardAccess'i okumak gerekli  
- **EF.CardAccess okumak için** → PACE authentication gerekli ← **BAŞA DÖNÜYOR**

## 🎯 Durum Özeti

| Adım | Sonuç | Status Word | Açıklama |
|------|-------|-------------|----------|
| SELECT APP | ✅ Başarılı | 9000 | Uygulama seçildi |
| SELECT EF.CardAccess | ❌ Başarısız | 6982 | PACE olmadan erişim yok |
| MSE:Set AT (Minimal) | ❌ Başarısız | 6A80 | Yanlış parametreler |
| MSE:Set AT (With Ref) | ❌ Başarısız | 6A88 | Veri bulunamadı |
| MSE:Set AT (Alt P1/P2) | ❌ Başarısız | 6982 | Güvenlik durumu sağlanmadı |
| BAC GET_CHALLENGE | ✅ Başarılı | 9000 | RND.IC alındı |
| BAC EXTERNAL_AUTH | ❌ Başarısız | 6982 | PACE gerekli |

## 💡 Muhtemel Çözümler

### 1. CAN (Card Access Number) Tabanlı PACE

Bazı modern kartlar **CAN (Kart Erişim Numarası)** ile PACE authentication yapılmasını gerektiriyor. CAN, kartın üzerinde yazılı 6 haneli bir numaradır.

**Avantaj**: EF.CardAccess'e erişim olmadan PACE yapılabiliyor  
**Dezavantaj**: Kullanıcıdan CAN'ı manuel girmesi gerekiyor

```javascript
// CAN tabanlı PACE için MRZ yerine CAN kullanılır
const canPassword = derivePACEPasswordFromCAN(canNumber); // 6 haneli
```

### 2. Farklı PACE OID'leri Deneme ⭐ **UYGULANMIŞ**

~~Şu an denenen OID: `0.4.0.127.0.7.2.2.4.2.2` (PACE ECDH-GM-AES128)~~

**YENİ**: Artık 5 farklı PACE OID otomatik olarak sırayla deneniyor:

1. `0.4.0.127.0.7.2.2.4.2.2` - PACE ECDH-GM-AES128 (default)
2. `0.4.0.127.0.7.2.2.4.6.2` - PACE ECDH-IM-AES128 (Integrated Mapping)
3. `0.4.0.127.0.7.2.2.4.1.2` - PACE DH-GM-AES128 (Diffie-Hellman)
4. `0.4.0.127.0.7.2.2.4.2.3` - PACE ECDH-GM-AES192
5. `0.4.0.127.0.7.2.2.4.2.4` - PACE ECDH-GM-AES256 (P-384 curve)

**Nasıl Çalışıyor**:
```javascript
// PACEProtocol.js
const session = await performPACEAuthentication(mrzData);
// OID parametresi yok → Tüm varyantları otomatik dener
// İlk başarılı olan kullanılır

// Loglar:
// [PACE Protocol] 🔄 Auto-detecting PACE variant...
// [PACE Protocol] === Attempt 1/5: ECDH-GM-AES128 (default) ===
// [PACE Protocol] MSE:Set AT failed, trying next...
// [PACE Protocol] === Attempt 2/5: ECDH-IM-AES128 (Integrated) ===
// [PACE Protocol] ✅ MSE:Set AT successful with ECDH-IM-AES128!
```

Her varyant için:
- MSE:Set AT 3 farklı formatta deneniyor
- Başarısız olursa sonraki varyanta geçiliyor
- İlk başarılı olan ile General Authenticate devam ediyor

### 3. MSE:Set AT Farklı Formatlar

Denenen formatlar:
```
✅ Format 1: 00 22 C1 A4 0C 80 0A [OID]
✅ Format 2: 00 22 C1 A4 0F 80 0A [OID] 83 01 01
✅ Format 3: 00 22 41 A4 0C 80 0A [OID]
```

Denenmemiş formatlar:
- Password Reference (0x83) değişik değerlerle
- Farklı CLA baytları (0x00 yerine 0x0C vb.)
- Domain parameters (0x84) ile

### 4. Terminal Authentication

Bazı kartlar önce **Terminal Authentication (TA)** yapılmasını gerektiriyor. Bu durumda:
1. TA Certificate'lerini okumak gerekli
2. Terminal Authentication yapılır
3. Sonra PACE denenebilir

## 📊 Test Edilen MRZ Verisi

```json
{
  "documentNo": "A43D64618",
  "birthDate": "17.09.1998",
  "expiryDate": "06.08.2033",
  "mrzCheckDigits": {
    "documentNo": "1",
    "birthDate": "0",
    "expiryDate": "2",
    "composite": "4"
  }
}
```

**MRZ Information String**: `A43D64618198091703308062` (24 chars) ✅  
**SHA-1 Hash**: `af77705a884a995712c01d8e552d2aef5a5df092` ✅  
**Kenc/Kmac**: Doğru türetildi ✅

## 🔧 Mevcut Implementasyon Durumu

### ✅ Tamamlanan

- [x] Protocol detection (EF.CardAccess varlığı)
- [x] PACE crypto altyapısı (elliptic, ECDH, AES, CMAC)
- [x] MSE:Set AT multi-format deneme (3 format)
- [x] **Alternatif PACE OID'leri otomatik deneme (5 varyant)** ⭐ YENİ
- [x] BAC fallback mekanizması
- [x] Uint8Array/array uyumluluk düzeltmesi
- [x] Detaylı logging ve error handling

### ⚠️ Tamamlanmamış / Sorunlu

- [ ] CAN tabanlı PACE implementasyonu
- [ ] Terminal Authentication
- [ ] PACE secure messaging wrap/unwrap
- [ ] Gerçek kartla başarılı PACE authentication

## 🎯 Önerilen Sonraki Adımlar

### Adım 1: CAN Desteği Ekle

```javascript
// NFCReaderModule.js
startNFC = async (options) => {
  this.options = {
    ...options,
    canNumber: options.canNumber // 6 haneli CAN
  };
};

// PACECrypto.js
export function derivePACEPasswordFromCAN(canString) {
  // CAN: 6 haneli → SHA-1 hash
  const canFormatted = canString.padStart(6, '0');
  const hash = CryptoJS.SHA1(canFormatted);
  return wordArrayToBytes(hash);
}
```

### Adım 2: Alternatif OID'ler Dene

```javascript
// PACEProtocol.js
const PACE_OIDS_TO_TRY = [
  '0.4.0.127.0.7.2.2.4.2.2', // ECDH-GM-AES128 (default)
  '0.4.0.127.0.7.2.2.4.1.2', // DH-GM-AES128
  '0.4.0.127.0.7.2.2.4.6.2', // ECDH-IM-AES128
  '0.4.0.127.0.7.2.2.4.2.3', // ECDH-GM-AES192
];

for (const oid of PACE_OIDS_TO_TRY) {
  const success = await mseSetAT(oid, curve);
  if (success) break;
}
```

### Adım 3: EF.COM Okumaya Çalış

Bazı kartlar EF.COM'u (FID 0x011E) PACE olmadan okutabilir ve içinde desteklenen authentication yöntemleri olabilir:

```javascript
const selectCOM = [0x00, 0xA4, 0x02, 0x0C, 0x02, 0x01, 0x1E];
const response = await NfcManager.transceive(selectCOM);
// Eğer 9000 dönerse READ BINARY ile okuyabiliriz
```

## 📝 Notlar

- Modern Türk kimlik kartları (2017+ üretim) %100 PACE gerektiriyor
- BAC protokolü artık desteklenmiyor (EXTERNAL_AUTH 6982 veriyor)
- Kart muhtemelen **CAN tabanlı PACE** veya **farklı bir PACE varyantı** kullanıyor
- EF.CardAccess okumak için PACE gerektiğinden doğru OID'yi tahmin etmek gerekiyor

## 🔗 İlgili Dökümanlar

- [BAC_FIX_SUMMARY.md](./BAC_FIX_SUMMARY.md) - BAC implementation
- [TROUBLESHOOTING_6982.md](./TROUBLESHOOTING_6982.md) - 6982 hatası
- [ICAO 9303 Part 11](https://www.icao.int/publications/Documents/9303_p11_cons_en.pdf) - PACE spec
- [BSI TR-03110](https://www.bsi.bund.de/SharedDocs/Downloads/EN/BSI/Publications/TechGuidelines/TR03110/BSI-TR-03110.pdf) - PACE technical guideline

## ⚡ Hızlı Test Senaryosu

Eğer CAN numarası varsa:

```javascript
await nfcReader.startNFC({
  cardType: 'tc_kimlik',
  canNumber: '123456', // Kart üzerindeki 6 haneli CAN
  mrzSeed: {
    documentNo: 'A43D64618',
    birthDate: '17.09.1998'
  }
});
```

CAN yoksa:
- Eski bir Türk kimlik kartı (2010-2017 üretim) ile test et (BAC destekli)
- Veya kartın teknik spesifikasyonlarını öğren

## 🏁 Sonuç

**Durum**: PACE authentication deadlock - MSE:Set AT başarısız  
**Kök Neden**: Kart PACE gerektiriyor ancak doğru OID/CAN bilinmiyor  
**Çözüm**: CAN tabanlı PACE veya alternatif OID'ler denenmeli

**Geçici Çözüm**: BAC destekli eski kartlarla test edilebilir.
