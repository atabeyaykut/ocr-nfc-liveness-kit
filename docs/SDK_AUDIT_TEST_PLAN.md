# SDK Test Planı

**Versiyon:** 1.0  
**Tarih:** 2025-10-16

---

## Test Özeti

| Kategori | Test Sayısı | Otomatik | Manuel | Durum |
|----------|-------------|----------|--------|-------|
| Unit Tests | 150 | 150 | 0 | 🟢 85% |
| Integration | 45 | 40 | 5 | 🟡 60% |
| E2E | 30 | 20 | 10 | 🟡 50% |
| Security | 25 | 15 | 10 | 🔴 30% |
| Performance | 20 | 20 | 0 | 🟢 90% |
| **TOPLAM** | **270** | **245** | **25** | **70%** |

---

## 1. UNIT TESTS (150)

### OCR Module (40 tests)

```javascript
// ✅ OCR-UT-001: Text Recognition
describe('OCR Basic', () => {
  it('should recognize clear text >90% confidence', async () => {
    const result = await ocrReader.scan(clearImage);
    expect(result.confidence).toBeGreaterThan(0.90);
  });
  
  it('should reject low confidence', async () => {
    const result = await ocrReader.scan(blurryImage);
    expect(result.status).toBe('LOW_CONFIDENCE');
  });
});

// ✅ OCR-UT-002: TC No Validation
test.each([
  ['10000000146', true],  // Valid
  ['00000000000', false], // Invalid
])('TC No validation: %s', (tcNo, expected) => {
  expect(validateTCNo(tcNo)).toBe(expected);
});

// ✅ OCR-UT-003: Image Preprocessing
it('should correct perspective distortion', async () => {
  const corrected = await preprocessor.correctPerspective(distorted);
  expect(detectCorners(corrected)).toBeRectangular();
});

// ✅ OCR-UT-004: Glare Detection
it('should detect glare and retry', () => {
  const analysis = preprocessor.analyzeQuality(glareImage);
  expect(analysis.hasGlare).toBe(true);
});
```

### NFC Module (35 tests)

```javascript
// ✅ NFC-UT-001: Chip Reading
it('should read DG1 (MRZ)', async () => {
  const dg1 = await nfcReader.readDataGroup(1);
  expect(dg1).toBeDefined();
});

// ✅ NFC-UT-002: Timeout Handling
it('should timeout after 10s', async () => {
  await expect(nfcReader.read({ timeout: 10000 }))
    .rejects.toThrow('NFC_TIMEOUT');
});

// ✅ NFC-UT-003: Platform Detection
it('should detect NFC support', () => {
  expect(nfcReader.isSupported()).toBe(true);
});
```

### Liveness Module (45 tests)

```javascript
// ✅ LIVE-UT-001: Face Detection
it('should detect single face', async () => {
  const faces = await detector.detect(singleFaceImage);
  expect(faces).toHaveLength(1);
});

// ✅ LIVE-UT-002: Blink Detection
it('should detect blink', async () => {
  const result = await motion.detectBlink(blinkFrames);
  expect(result.detected).toBe(true);
});

// ✅ LIVE-UT-003: Anti-Spoofing
it('should detect photo attack', async () => {
  const result = await antiSpoof.analyze(photoAttack);
  expect(result.isSpoofed).toBe(true);
});
```

---

## 2. INTEGRATION TESTS (45)

### OCR + NFC Integration (15 tests)

```javascript
// ✅ INT-001: Data Matching
it('should match OCR and NFC TC No', async () => {
  const ocr = await ocrReader.scan(idCard);
  const nfc = await nfcReader.read();
  expect(ocr.tcNo).toBe(nfc.tcNo);
});

// ✅ INT-002: Mismatch Detection
it('should reject data mismatch', () => {
  const isValid = compareData(ocrData, nfcData);
  expect(isValid).toBe(false);
});
```

### Full Workflow (10 tests)

```javascript
// ✅ WORKFLOW-001: Complete Verification
it('should complete full flow', async () => {
  const ocr = await ocrReader.scan();
  const nfc = await nfcReader.read();
  const liveness = await livenessDetector.verify();
  const result = await backend.verify({ ocr, nfc, liveness });
  expect(result.verified).toBe(true);
});
```

---

## 3. E2E TESTS (30)

```javascript
// ✅ E2E-001: Happy Path
describe('E2E Success Flow', () => {
  it('should verify identity end-to-end', async () => {
    await device.launchApp();
    await element(by.id('start-btn')).tap();
    // ... OCR -> NFC -> Liveness
    await waitFor(element(by.id('success'))).toBeVisible();
  });
});

// ✅ E2E-ERR-001: Low Light Error
it('should show retry on low light', async () => {
  await takePhotoLowLight();
  await expect(element(by.id('error')))
    .toHaveText('Fotoğraf karanlık');
});
```

---

## 4. SECURITY TESTS (25)

```javascript
// ✅ SEC-001: Memory Dump
it('PII should not appear in heap dump', async () => {
  await performOCR();
  const heap = await captureHeapDump();
  expect(heap).not.toContain('TC:');
});

// ✅ SEC-002: MITM Protection
it('should reject invalid certificate', async () => {
  setupMITMProxy();
  await expect(api.call()).rejects.toThrow('CERT_PINNING_FAILED');
});

// ✅ SEC-003: Root Detection
it('should detect rooted device', async () => {
  mockRootedDevice();
  expect(await security.isRooted()).toBe(true);
});
```

---

## 5. PERFORMANCE TESTS (20)

```javascript
// ✅ PERF-001: OCR Speed
it('should process in <3s', async () => {
  const start = Date.now();
  await ocrReader.scan(image);
  expect(Date.now() - start).toBeLessThan(3000);
});

// ✅ PERF-002: Memory Stability
it('should maintain <100MB increase', async () => {
  const initial = getMemory();
  for (let i = 0; i < 100; i++) await scan();
  expect(getMemory() - initial).toBeLessThan(100 * 1024 * 1024);
});

// ✅ PERF-003: Frame Rate
it('should maintain 30+ FPS', async () => {
  const fps = await measureFPS(5000);
  expect(fps).toBeGreaterThan(30);
});
```

---

## TEST EXECUTION SCHEDULE

| Sprint | Tests | Duration | Team |
|--------|-------|----------|------|
| Sprint 1 | Unit (OCR, NFC, Liveness) | 2 weeks | QA + Dev |
| Sprint 2 | Integration + Error | 2 weeks | QA |
| Sprint 3 | E2E + Security | 2 weeks | QA + Security |
| Sprint 4 | Performance | 1 week | Performance Team |

---

## TEST DATA

**Mock TC Numbers:**
- Valid: 10000000146, 10000000154
- Invalid: 00000000000, 12345678901

**Test Images:**
- clear_id_card.jpg
- blurry_id_card.jpg
- low_light.jpg
- with_glare.jpg

---

Detaylı test senaryoları için:
- [Security Test Plan](./SDK_AUDIT_SECURITY_TEST_PLAN.md)
- [Performance Benchmarks](./SDK_AUDIT_PERFORMANCE_BENCHMARKS.md)
