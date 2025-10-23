# NFC PACE Fallback Implementation Guide

## Overview

PACE (Password Authenticated Connection Establishment) is a security protocol used by some ePassports and Turkish ID cards to establish a secure communication channel between the NFC chip and the reader.

## Current Status

**⚠️ PACE Implementation: NOT IMPLEMENTED**

- Basic NFC reading works for non-PACE cards
- PACE-required cards will fail with cryptographic errors
- No user-friendly fallback mechanism exists

## Problem

When a card requires PACE authentication:
1. APDU command sequence fails with SW1=0x69, SW2=0x82 (Security status not satisfied)
2. No clear error message shown to user
3. No alternative method provided

## Implementation Priority: HIGH

### Recommended Approach

**Phase 1: Immediate Fallback (2-4 hours)**
- Detect PACE requirement from APDU response codes
- Show user-friendly error with explanation
- Provide manual MRZ entry as fallback
- Document PACE status in app settings

**Phase 2: Full PACE Implementation (1-2 weeks)**
- Integrate PACE protocol library
- Implement BAC (Basic Access Control) as prerequisite
- Add MRZ key derivation
- Secure session establishment
- DG1-DG15 reading with PACE

## Phase 1: Quick Fallback Implementation

### 1. Error Detection

```javascript
// modules/nfc/NFCReaderModule.js

const NFC_ERROR_CODES = {
  PACE_REQUIRED: 'PACE_REQUIRED',
  SECURITY_NOT_SATISFIED: 'SECURITY_NOT_SATISFIED',
  BAC_REQUIRED: 'BAC_REQUIRED',
};

isSuccessResponse = (response) => {
  if (!response || response.length < 2) return false;
  const sw1 = response[response.length - 2];
  const sw2 = response[response.length - 1];
  
  // Check for PACE/BAC requirement
  if (sw1 === 0x69 && sw2 === 0x82) {
    throw new Error(NFC_ERROR_CODES.SECURITY_NOT_SATISFIED);
  }
  if (sw1 === 0x63 && sw2 === 0x00) {
    throw new Error(NFC_ERROR_CODES.BAC_REQUIRED);
  }
  
  return sw1 === 0x90 && sw2 === 0x00;
};
```

### 2. User-Friendly Error Handling

```javascript
handleError = (error) => {
  let errorMessage = error.message;
  let fallbackOption = null;
  
  if (error.message === NFC_ERROR_CODES.SECURITY_NOT_SATISFIED ||
      error.message === NFC_ERROR_CODES.PACE_REQUIRED) {
    errorMessage = 'Bu kimlik kartı gelişmiş güvenlik (PACE) gerektiriyor.';
    fallbackOption = {
      type: 'MANUAL_MRZ_ENTRY',
      message: 'MRZ bilgilerini manuel olarak girebilirsiniz.',
    };
  }
  
  const errorResponse = {
    success: false,
    error: errorMessage,
    code: error.message || 'NFC_READ_ERROR',
    fallback: fallbackOption,
  };

  if (this.callbacks.onError) {
    this.callbacks.onError(errorResponse);
  }
};
```

### 3. Manual MRZ Fallback UI

```javascript
// components/NFCFallbackModal.js

export const NFCFallbackModal = ({ visible, onMRZEntered, onCancel }) => {
  const [mrzLine1, setMrzLine1] = useState('');
  const [mrzLine2, setMrzLine2] = useState('');

  const handleSubmit = () => {
    // Validate MRZ format
    if (mrzLine1.length !== 30 || mrzLine2.length !== 30) {
      Alert.alert('Hata', 'MRZ satırları 30 karakter olmalıdır.');
      return;
    }
    
    // Parse MRZ
    const parsedData = parseMRZ(mrzLine1, mrzLine2);
    onMRZEntered(parsedData);
  };

  return (
    <Modal visible={visible} animationType="slide">
      <View style={styles.container}>
        <Text style={styles.title}>
          Manuel MRZ Girişi
        </Text>
        <Text style={styles.description}>
          Kimlik kartınızın arka yüzündeki iki satırlık MRZ kodunu girin.
        </Text>
        
        <TextInput
          style={styles.input}
          placeholder="MRZ Satır 1 (30 karakter)"
          value={mrzLine1}
          onChangeText={setMrzLine1}
          maxLength={30}
          autoCapitalize="characters"
        />
        
        <TextInput
          style={styles.input}
          placeholder="MRZ Satır 2 (30 karakter)"
          value={mrzLine2}
          onChangeText={setMrzLine2}
          maxLength={30}
          autoCapitalize="characters"
        />
        
        <View style={styles.buttons}>
          <TouchableOpacity style={styles.cancelButton} onPress={onCancel}>
            <Text style={styles.cancelText}>İptal</Text>
          </TouchableOpacity>
          
          <TouchableOpacity style={styles.submitButton} onPress={handleSubmit}>
            <Text style={styles.submitText}>Tamam</Text>
          </TouchableOpacity>
        </View>
        
        <Text style={styles.helpText}>
          ℹ️ MRZ kodu, kimliğin arka yüzünde iki satır halinde bulunan 
          makinece okunabilir alan kodudur.
        </Text>
      </View>
    </Modal>
  );
};
```

### 4. Integration Example

```javascript
// Usage in NFCReaderScreen

const [showFallback, setShowFallback] = useState(false);

nfcModule.onNFCError((error) => {
  if (error.fallback?.type === 'MANUAL_MRZ_ENTRY') {
    setShowFallback(true);
  } else {
    Alert.alert('NFC Hatası', error.error);
  }
});

const handleMRZEntered = (parsedData) => {
  setShowFallback(false);
  setNfcResult({
    success: true,
    parsedFields: parsedData,
    source: 'MANUAL_MRZ',
  });
};

// In render:
<NFCFallbackModal
  visible={showFallback}
  onMRZEntered={handleMRZEntered}
  onCancel={() => setShowFallback(false)}
/>
```

## Phase 2: Full PACE Implementation

### Libraries to Consider

1. **OpenEPassport** (Java/Kotlin for Android)
   - Full ICAO 9303 compliance
   - PACE, BAC, EAC support
   - Well-documented

2. **isoApplet** (Open-source)
   - ISO 7816 implementation
   - Can be adapted for React Native

3. **Custom Implementation**
   - Based on ICAO Doc 9303 Part 11
   - Requires cryptographic expertise
   - Development time: 2-3 weeks

### PACE Protocol Steps

1. **Chip Authentication**
   - Send SELECT application APDU
   - Select eMRTD application

2. **General Authenticate**
   - Send MSE:Set AT command
   - Negotiate cryptographic protocol

3. **Key Agreement**
   - Generate ephemeral key pair
   - Derive shared secret from MRZ
   - Establish secure messaging

4. **Secure Channel**
   - All subsequent APDUs encrypted
   - MAC (Message Authentication Code) verification
   - Read DG1-DG15 securely

### MRZ Key Derivation

```javascript
// Pseudocode for PACE key derivation

function deriveBAC_Keys(mrzInfo) {
  // Extract data from MRZ
  const documentNumber = mrzInfo.documentNumber;
  const dateOfBirth = mrzInfo.birthDate; // YYMMDD
  const dateOfExpiry = mrzInfo.expiryDate; // YYMMDD
  
  // Concatenate with check digits
  const mrzData = documentNumber + checkDigit(documentNumber) +
                  dateOfBirth + checkDigit(dateOfBirth) +
                  dateOfExpiry + checkDigit(dateOfExpiry);
  
  // Derive keys using SHA-1 and 3DES
  const kEnc = deriveKey(mrzData, 'ENC');
  const kMac = deriveKey(mrzData, 'MAC');
  
  return { kEnc, kMac };
}
```

## iOS Implementation Notes

The iOS Swift implementation already includes:
- Basic NFC tag reading
- ISO-DEP support
- APDU command sequencing

**Required additions for PACE:**
1. Add Security framework for crypto operations
2. Implement `CryptoUtils.swift` with:
   - SHA-1/SHA-256 hashing
   - 3DES/AES encryption
   - Diffie-Hellman key exchange
3. Update `NFCReaderModule.swift` with PACE flow

## Android Implementation Notes

Current implementation:
- Uses `android.nfc.tech.IsoDep`
- Basic APDU transceive

**Required additions:**
1. Add `javax.crypto` for cryptography
2. Implement `PACEManager.kt`
3. Handle secure messaging wrapper

## Testing Strategy

### Phase 1 Testing
- Test with PACE-required cards
- Verify fallback modal appears
- Test manual MRZ entry parsing
- Validate error messages

### Phase 2 Testing
- Test with various ePassport types
- Turkish ID cards (2021+ with PACE)
- Performance testing (session establishment time)
- Security audit of crypto implementation

## Timeline Estimate

| Phase | Task | Time | Priority |
|-------|------|------|----------|
| 1 | Error detection | 1 hour | HIGH |
| 1 | Fallback UI | 2 hours | HIGH |
| 1 | Manual MRZ parsing | 1 hour | HIGH |
| 1 | Integration & testing | 2 hours | HIGH |
| **Phase 1 Total** | | **6 hours** | |
| 2 | Research & design | 2 days | MEDIUM |
| 2 | Crypto implementation | 3 days | MEDIUM |
| 2 | PACE protocol | 4 days | MEDIUM |
| 2 | Testing & debugging | 2 days | MEDIUM |
| **Phase 2 Total** | | **2 weeks** | |

## Recommendations

1. **Implement Phase 1 immediately** (before production release)
   - Provides graceful degradation
   - Improves user experience
   - Minimal development time

2. **Plan Phase 2 for next sprint**
   - Research library options
   - Evaluate security requirements
   - Consider hiring crypto expert

3. **Document PACE status**
   - Add to user guide
   - Update API documentation
   - Set customer expectations

## References

- ICAO Doc 9303 Part 11 (Security Mechanisms)
- BSI TR-03110 (PACE Protocol Specification)
- ISO/IEC 7816-4 (Smart Cards - Interindustry Commands)
- RFC 5114 (Diffie-Hellman Groups for PACE)

## Contact

For PACE implementation assistance:
- Turkish e-Government Gateway (e-Devlet) technical support
- ICAO PKD (Public Key Directory) team
- Security consulting firms specializing in ePassport integration
