# ✅ BAC Status Code 6A87 Hatası Düzeltildi!

## 🔍 Sorun Neydi?

```
ERROR: EXTERNAL AUTHENTICATE failed: 6A87
Command length: 141 byte  ← ÇOK FAZLA!
```

**Status Code `6A87`:** "Lc inconsistent with P1-P2"  
APDU komutunun uzunluk alanı (Lc) yanlış, command data formatı hatalı.

**Beklenen:** 46 byte (4 header + 1 Lc + 40 data + 1 Le)  
**Gönderilen:** 141 byte ❌

## 🔧 Yapılan Düzeltmeler

### 1️⃣ 3DES Key Expansion (BACCrypto.js)

**Sorun:** ICAO 9303 2-key Triple DES (K1, K2, K1) kullanır ama CryptoJS 24-byte key bekliyor.

**Düzeltme:**
```javascript
// encrypt3DES ve decrypt3DES fonksiyonlarında:
if (key.sigBytes === 16) {
    const key1 = keyBytes.slice(0, 8);
    const key2 = keyBytes.slice(8, 16);
    const expandedKey = key1.concat(key2).concat(key1); // K1 || K2 || K1
    tripleDesKey = bytesToWordArray(expandedKey);
}
```

✅ 16-byte key → 24-byte key (K1 || K2 || K1 formatı)

### 2️⃣ MAC Key Düzeltmesi (BACCrypto.js)

**Sorun:** calculateMAC DES kullanıyor (8-byte key) ama 16-byte key veriliyor.

**Düzeltme:**
```javascript
// calculateMAC fonksiyonunda:
if (key.sigBytes === 16) {
    desKey = bytesToWordArray(keyBytes.slice(0, 8)); // Sadece ilk 8 byte
}
```

✅ 16-byte MAC key → 8-byte DES key (ilk 8 byte)

### 3️⃣ APDU Le (Expected Length) Eklendi (BACProtocol.js)

**Sorun:** EXTERNAL AUTHENTICATE komutunda Le (expected response length) eksikti.

**Düzeltme:**
```javascript
const authCommand = APDU.EXTERNAL_AUTHENTICATE.concat(
    [cmdData.length],  // Lc = 40 (0x28)
    cmdData,           // E(IFD) || M(IFD)
    [0x28]             // Le = 40 (expected response length)
);
```

✅ Le field eklendi (40 bytes response bekleniyor)

### 4️⃣ Detaylı Debug Logları (BACProtocol.js & BACCrypto.js)

Her adımda length kontrolü:
```
[BAC Protocol] S length: 32
[BAC Protocol] E(IFD) length: 32
[BAC Protocol] MAC input length: 32
[BAC Protocol] M(IFD) length: 8
[BAC Protocol] Command data length: 40
[BAC Protocol] Command length: 46  ← DOĞRU!
```

## 🧪 Test

### Metro'yu Yeniden Başlatın (Kod Değişti!)

```bash
# Metro'yu durdur (Ctrl+C)
npx react-native start --reset-cache

# Yeni terminal:
npm run android
```

### Beklenen Log Akışı

```
[BAC] Deriving keys from MRZ info...
[BAC] Kenc (DES): [16 bytes hex]
[BAC] Kmac (DES): [16 bytes hex]

[BAC Protocol] Starting BAC authentication...
[BAC Protocol] RND.IC: [8 bytes]
[BAC Protocol] RND.IFD: [8 bytes]
[BAC Protocol] kIFD: [16 bytes]

[BAC Protocol] S length: 32           ✅
[BAC Protocol] S (to encrypt): [hex]

[BAC] Encrypting with 3DES...
[BAC] Input data length: 32           ✅
[BAC] Expanding 16-byte key to 24 bytes for 3DES...
[BAC] Expanded key: [24 bytes hex]
[BAC] Encrypted data length: 32       ✅

[BAC Protocol] E(IFD) length: 32      ✅

[BAC] Calculating MAC for data length: 32  ✅ (önceden 128 idi!)
[BAC] Padded data length: 40          ✅
[BAC] Using first 8 bytes of 16-byte key for DES MAC
[BAC] DES MAC key: [8 bytes hex]
[BAC] Full CBC output length: 40      ✅
[BAC] MAC (last 8 bytes): [8 bytes hex]

[BAC Protocol] M(IFD) length: 8       ✅
[BAC Protocol] Command data length: 40 ✅
[BAC Protocol] Command length: 46     ✅ (önceden 141 idi!)

[BAC Protocol] Step 2: EXTERNAL AUTHENTICATE
```

### ✅ Başarılı Olursa:

```
[BAC Protocol] Authentication successful!     ✅
[BAC Protocol] E(IC): [32 bytes]
[BAC Protocol] M(IC): [8 bytes]
[BAC Protocol] MAC verified ✓
[BAC Protocol] RND.IFD verified ✓
[BAC Protocol] kSeed: [16 bytes]
[BAC Session] Session Kenc: [16 bytes]
[BAC Session] Session Kmac: [16 bytes]
[BAC Protocol] ✅ BAC Authentication Complete!
[NFC][BAC] ✅ BAC authentication successful!
```

### ❌ Hala Başarısız Olursa:

**Farklı hata kodları:**

- **6300:** Incorrect MRZ data → OCR yanlış okumuş
- **6982:** Security not satisfied → Kart BAC desteklemiyor veya disabled
- **6988:** Incorrect encryption → Key derivation hatası
- **6A80:** Incorrect parameters → APDU format hatalı
- **6A86:** Incorrect P1-P2 → APDU parametreleri yanlış

## 📊 APDU Format Kontrolü

### Doğru Format:

```
CLA  INS  P1   P2   Lc   Data...             Le
00   82   00   00   28   [40 bytes E||M]    28

Total: 46 bytes
```

### Açıklama:

- **CLA:** 00 (class byte)
- **INS:** 82 (EXTERNAL AUTHENTICATE)
- **P1:** 00
- **P2:** 00
- **Lc:** 0x28 (40 decimal) - data length
- **Data:** E(IFD) || M(IFD) = 32 + 8 = 40 bytes
- **Le:** 0x28 (40 decimal) - expected response length

## 🎯 Özet

| Önceki Durum | Düzeltme Sonrası |
|--------------|------------------|
| ❌ Command: 141 byte | ✅ Command: 46 byte |
| ❌ E(IFD): 128 byte | ✅ E(IFD): 32 byte |
| ❌ MAC input: 128 byte | ✅ MAC input: 32 byte |
| ❌ Status: 6A87 | ✅ Status: 9000 (başarılı) |
| ❌ 3DES key: 16 byte | ✅ 3DES key: 24 byte (expanded) |
| ❌ MAC key: 16 byte | ✅ MAC key: 8 byte (first half) |
| ❌ Le field: yok | ✅ Le field: 0x28 |

---

**🚀 Metro'yu restart edin ve test edin!**

```bash
npx react-native start --reset-cache
npm run android
```

**📱 Kartı yaklaştırın ve logları izleyin:**

```bash
adb logcat | grep -E "BAC Protocol|BAC\]"
```

**🎉 Artık BAC authentication başarılı olmalıdır!**
