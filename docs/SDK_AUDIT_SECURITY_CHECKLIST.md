# SDK Güvenlik & Gizlilik Checklist

**Versiyon:** 1.0  
**Tarih:** 2025-10-16  
**Uyumluluk:** KVKK, GDPR, ISO 27001

---

## 📋 Genel Durum

| Kategori | Tamamlanan | Toplam | Durum |
|----------|------------|--------|-------|
| **Veri Güvenliği** | 8/15 | 15 | 🟡 53% |
| **Şifreleme** | 5/10 | 10 | 🔴 50% |
| **Kimlik Doğrulama** | 6/8 | 8 | 🟢 75% |
| **İzin Yönetimi** | 7/8 | 8 | 🟢 88% |
| **Logging & Monitoring** | 4/10 | 10 | 🔴 40% |
| **KVKK/GDPR Uyumluluk** | 3/12 | 12 | 🔴 25% |
| **Kod Güvenliği** | 5/9 | 9 | 🟡 56% |
| **Network Güvenliği** | 4/8 | 8 | 🔴 50% |
| **TOPLAM** | **42/80** | **80** | **🟡 53%** |

---

## 1. VERİ GÜVENLİĞİ

### 1.1 PII (Personally Identifiable Information) Protection

- [x] **DS-001:** PII verileri native tarafta işleniyor
- [ ] **DS-002:** PII JavaScript heap'te tutulmuyor
- [ ] **DS-003:** Session token mekanizması implement edildi
- [x] **DS-004:** Token auto-expiration (5 dakika) aktif
- [ ] **DS-005:** PII verisi crash report'larda görünmüyor
- [ ] **DS-006:** Memory dump'ta PII tespit edilemiyor
- [x] **DS-007:** Debug build'de PII log'ları guard'lanmış
- [ ] **DS-008:** Third-party analytics PII göndermiy or

### 1.2 Data Storage

- [x] **DS-101:** Android Keystore kullanılıyor
- [x] **DS-102:** iOS Keychain kullanılıyor
- [ ] **DS-103:** Geçici dosyalar encrypted
- [ ] **DS-104:** Geçici dosyalar auto-cleanup (session bitince)
- [x] **DS-105:** SQLite veritabanı encrypted (SQLCipher)
- [ ] **DS-106:** SharedPreferences/UserDefaults encrypted
- [x] **DS-107:** Biometric data device-only (hiç sunucuya gönderilmiyor)

---

## 2. ŞİFRELEME

### 2.1 Data at Rest

- [x] **ENC-001:** AES-256-GCM kullanılıyor
- [x] **ENC-002:** Encryption key'ler hardware-backed (Keystore/Keychain)
- [ ] **ENC-003:** Key rotation mekanizması var
- [ ] **ENC-004:** Old key'lerle decrypt, new key'le re-encrypt

### 2.2 Data in Transit

- [x] **ENC-101:** TLS 1.2+ zorunlu
- [ ] **ENC-102:** TLS 1.3 tercih ediliyor
- [ ] **ENC-103:** Certificate pinning implement edildi
- [ ] **ENC-104:** Certificate pinning bypass detection var
- [ ] **ENC-105:** mTLS (mutual TLS) kritik endpoint'lerde kullanılıyor
- [x] **ENC-106:** WebSocket connections encrypted (WSS)

---

## 3. KİMLİK DOĞRULAMA & YETKİLENDİRME

### 3.1 NFC Chip Verification

- [ ] **AUTH-001:** SOD (Security Object Document) parse ediliyor
- [ ] **AUTH-002:** CSCA certificate chain doğrulaması yapılıyor
- [ ] **AUTH-003:** Data Group hash'leri verify ediliyor
- [ ] **AUTH-004:** Active Authentication (AA) destekleniyor (opsiyonel)
- [x] **AUTH-005:** Passive Authentication (PA) implement edildi
- [ ] **AUTH-006:** ICAO Master List güncel tutuluyor (auto-update)

### 3.2 Device Attestation

- [ ] **AUTH-101:** Android SafetyNet Attestation kullanılıyor
- [x] **AUTH-102:** iOS DeviceCheck kullanılıyor

---

## 4. İZİN YÖNETİMİ

### 4.1 Android

- [x] **PERM-001:** `CAMERA` izni AndroidManifest.xml'de tanımlı
- [x] **PERM-002:** `NFC` izni tanımlı
- [x] **PERM-003:** `INTERNET` izni tanımlı
- [x] **PERM-004:** Runtime permissions düzgün talep ediliyor
- [x] **PERM-005:** İzin reddi durumu handle ediliyor
- [ ] **PERM-006:** Android 13+ `POST_NOTIFICATIONS` izni talep ediliyor

### 4.2 iOS

- [x] **PERM-101:** `NSCameraUsageDescription` Info.plist'te var
- [x] **PERM-102:** `NSMicrophoneUsageDescription` var
- [ ] **PERM-103:** `NFCReaderUsageDescription` detaylı ve açıklayıcı
- [ ] **PERM-104:** Permission denial durumu UX'te iyi açıklanıyor

---

## 5. LOGGING & MONİTORİNG

### 5.1 Secure Logging

- [ ] **LOG-001:** Production'da PII log'lanmıyor
- [x] **LOG-002:** `__DEV__` guard'ları kullanılıyor
- [ ] **LOG-003:** Sensitive data masking implement edildi
- [ ] **LOG-004:** Log seviyeleri doğru ayarlanmış (ERROR, WARN, INFO)
- [ ] **LOG-005:** Crash reporting PII scrubbing yapıyor

### 5.2 Security Event Logging

- [ ] **LOG-101:** Failed authentication attempt'ler loglanıyor
- [ ] **LOG-102:** Root/jailbreak detection loglanıyor
- [ ] **LOG-103:** Certificate pinning failure loglanıyor
- [ ] **LOG-104:** Suspicious activity (repeated failures) tespit ediliyor
- [ ] **LOG-105:** Security events backend'e raporlanıyor

---

## 6. KVKK/GDPR UYUMLULUK

### 6.1 Consent & Transparency

- [ ] **GDPR-001:** Aydınlatma metni uygulamada gösteriliyor
- [ ] **GDPR-002:** Açık rıza (explicit consent) mekanizması var
- [ ] **GDPR-003:** Consent withdrawal (rıza geri çekme) mümkün
- [ ] **GDPR-004:** Privacy policy URL uygulamada ve store listing'de var

### 6.2 Data Minimization

- [x] **GDPR-101:** Sadece gerekli veri toplanıyor
- [ ] **GDPR-102:** Opsiyonel veriler açıkça belirtiliyor
- [x] **GDPR-103:** Facial recognition data local'de işleniyor

### 6.3 Data Retention

- [ ] **GDPR-201:** Veri saklama süreleri belirlenmiş
- [ ] **GDPR-202:** Auto-delete mekanizması implement edildi
- [ ] **GDPR-203:** Kullanıcı veri silme talebi endpoint'i var
- [ ] **GDPR-204:** Backup'larda veri silme uygulanıyor

### 6.4 Data Portability & Access

- [ ] **GDPR-301:** Kullanıcı kendi verisine erişebiliyor
- [ ] **GDPR-302:** Veri export (JSON/CSV) mümkün
- [ ] **GDPR-303:** Data breach notification planı var

---

## 7. KOD GÜVENLİĞİ

### 7.1 Code Obfuscation

- [ ] **CODE-001:** ProGuard/R8 (Android) aktif
- [ ] **CODE-002:** Code minification yapılıyor
- [ ] **CODE-003:** String encryption kullanılıyor (kritik string'ler için)
- [x] **CODE-004:** API keys hardcoded değil (environment variables)

### 7.2 Anti-Tampering

- [ ] **CODE-101:** Root/jailbreak detection implement edildi
- [ ] **CODE-102:** Debug detection var
- [ ] **CODE-103:** Emulator detection var
- [ ] **CODE-104:** Integrity check (app signature verification)
- [ ] **CODE-105:** Frida/Xposed framework detection

---

## 8. NETWORK GÜVENLİĞİ

### 8.1 API Security

- [x] **NET-001:** HTTPS zorunlu (HTTP kapalı)
- [ ] **NET-002:** Certificate pinning implement edildi
- [ ] **NET-003:** API rate limiting var
- [x] **NET-004:** API timeout'lar ayarlanmış
- [ ] **NET-005:** Request/response encryption (end-to-end)

### 8.2 Attack Prevention

- [ ] **NET-101:** MITM protection (cert pinning)
- [ ] **NET-102:** Replay attack prevention (nonce/timestamp)
- [ ] **NET-103:** SQL injection protection (prepared statements)
- [ ] **NET-104:** XSS protection (input sanitization)

---

## 9. ÜçÜNCÜ TARAF GÜVENLİĞİ

### 9.1 Dependencies

- [x] **DEP-001:** Dependency audit yapılıyor (`npm audit`)
- [ ] **DEP-002:** Vulnerable dependencies güncel
- [x] **DEP-003:** License compliance check yapıldı
- [ ] **DEP-004:** Third-party SDK'lar KVKK/GDPR compliant

### 9.2 SDK Permissions

- [ ] **DEP-101:** Third-party SDK'lar minimum permission kullanıyor
- [ ] **DEP-102:** Analytics SDK'sı PII göndermiyor
- [ ] **DEP-103:** Crash reporting SDK'sı PII scrubbing yapıyor

---

## 10. TEST & VALIDATION

### 10.1 Security Testing

- [ ] **TEST-001:** Penetration test yapıldı
- [ ] **TEST-002:** OWASP Mobile Top 10 test edildi
- [ ] **TEST-003:** Static code analysis (SonarQube, ESLint Security)
- [ ] **TEST-004:** Dynamic analysis (Frida, Objection)

### 10.2 Compliance Testing

- [ ] **TEST-101:** KVKK compliance audit yapıldı
- [ ] **TEST-102:** GDPR compliance checklist tamamlandı
- [ ] **TEST-103:** App store security guidelines karşılanıyor

---

## 11. ÖZEL GÜVENLİK KONTROLLERİ

### 11.1 OCR Güvenlik

- [x] **OCR-SEC-001:** OCR confidence threshold var (>85%)
- [ ] **OCR-SEC-002:** Server-side OCR re-verification yapılıyor
- [ ] **OCR-SEC-003:** Image hash verification var
- [x] **OCR-SEC-004:** TC No checksum validation yapılıyor

### 11.2 NFC Güvenlik

- [ ] **NFC-SEC-001:** Chip signature doğrulaması backend'de
- [ ] **NFC-SEC-002:** Replay attack detection var
- [ ] **NFC-SEC-003:** NFC raw data encrypted transfer
- [x] **NFC-SEC-004:** NFC timeout 10 saniye

### 11.3 Liveness Güvenlik

- [x] **LIVE-SEC-001:** Challenge randomization yapılıyor
- [ ] **LIVE-SEC-002:** Deepfake detection var
- [ ] **LIVE-SEC-003:** Screen replay detection var
- [x] **LIVE-SEC-004:** Video kayıtları encrypted
- [ ] **LIVE-SEC-005:** Video auto-delete (verification sonrası)

---

## 12. OPERASYONEL GÜVENLİK

### 12.1 CI/CD Security

- [x] **OPS-001:** Secrets environment variables'da (hardcoded değil)
- [ ] **OPS-002:** Code signing certificates güvenli saklanıyor
- [x] **OPS-003:** Automated security scans CI/CD'de
- [ ] **OPS-004:** Dependency vulnerability scan otomatik

### 12.2 Incident Response

- [ ] **OPS-101:** Security incident response planı var
- [ ] **OPS-102:** Data breach notification prosedürü belirlenmiş
- [ ] **OPS-103:** Emergency contact listesi güncel
- [ ] **OPS-104:** Backup & recovery planı test edilmiş

---

## 13. DOKÜMANTASYON

- [x] **DOC-001:** Security architecture dokümanı var
- [ ] **DOC-002:** Threat model dokümanı hazırlandı
- [ ] **DOC-003:** Privacy policy hazırlandı
- [ ] **DOC-004:** Security best practices rehberi var
- [x] **DOC-005:** API security documentation var

---

## ÖNCELİKLİ AKSIYON LİSTESİ

### 🔴 KRİTİK (1-2 Hafta)

1. **DS-002:** PII JavaScript heap'ten temizleme → 5 gün
2. **ENC-103:** Certificate pinning → 2 gün
3. **AUTH-001-003:** NFC signature validation → 5 gün
4. **GDPR-001-002:** Consent mechanism → 3 gün
5. **CODE-101:** Root/jailbreak detection → 2 gün

### 🟠 YÜKSEK (3-4 Hafta)

6. **LOG-001:** PII logging cleanup → 2 gün
7. **NET-102:** Replay attack prevention → 3 gün
8. **LIVE-SEC-002:** Deepfake detection → 5 gün
9. **TEST-001:** Penetration test → 3 gün
10. **GDPR-201-202:** Data retention policy → 2 gün

### 🟡 ORTA (5-6 Hafta)

11. **ENC-003-004:** Key rotation → 3 gün
12. **CODE-003:** String encryption → 2 gün
13. **TEST-003:** Static analysis integration → 2 gün
14. **DOC-002:** Threat model → 2 gün

---

## COMPLIANCE SCORECARD

| Standard | Uyumluluk | Eksik Alan | Target Date |
|----------|-----------|------------|-------------|
| **KVKK** | 25% 🔴 | Consent, data retention, privacy policy | Week 4 |
| **GDPR** | 30% 🔴 | Same as KVKK + data portability | Week 4 |
| **OWASP Mobile Top 10** | 60% 🟡 | Code obfuscation, root detection | Week 6 |
| **ISO 27001** | 50% 🟡 | Incident response, audit logs | Week 8 |
| **PCI DSS** | N/A | - | - |

---

## SIGN-OFF

**Security Team:** [ ] Approved  
**Privacy Officer:** [ ] Approved  
**Legal Team:** [ ] Approved  
**CTO:** [ ] Approved

**Notes:**  
Production deployment için minimum %80 completion gerekli.  
Kritik güvenlik maddeleri %100 tamamlanmalı.

---

**Son Güncelleme:** 2025-10-16  
**Sonraki Review:** 2025-11-16 (1 ay sonra)
