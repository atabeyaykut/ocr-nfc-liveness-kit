# 🧪 SDK Test Senaryoları ve Doğrulama Kılavuzu

## 📋 Test Kapsamı

Bu dokümanda Türkiye Kimlik SDK'nın tüm modüllerinin test senaryoları ve doğrulama adımları yer almaktadır.

---

## 1. OCR Modülü Test Senaryoları

### Test Senaryosu 1.1: Temel OCR Okuma

**Amaç**: Kimlik kartının ön yüzünden temel bilgileri okuma

**Ön Koşullar**:
- Kamera izni verilmiş
- İyi aydınlatma koşulları

**Test Adımları**:
```javascript
// Test kodu
const testBasicOCR = async () => {
  const ocrReader = new OCRReader();
  
  // 1. OCR başlatma
  await ocrReader.startOCR({ cardSide: 'front' });
  
  // 2. Test görüntüsü kullan
  const testImage = 'test-assets/id-card-front.jpg';
  
  // 3. Metin çıkarma
  const result = await ocrReader.extractText(testImage);
  
  // 4. Doğrulama
  assert(result.success === true);
  assert(result.extractedFields.tcNo !== null);
  assert(result.extractedFields.name !== null);
  assert(result.extractedFields.surname !== null);
  assert(result.confidence > 70);
  
  console.log('✅ Test 1.1 Başarılı');
};
```

**Beklenen Sonuç**:
- TC Kimlik No: 11 haneli sayı
- Ad ve Soyad: String
- Güven skoru: > %70

---

### Test Senaryosu 1.2: MRZ Okuma (Arka Yüz)

**Amaç**: Kimlik kartının arka yüzündeki MRZ alanını okuma

**Test Adımları**:
```javascript
const testMRZReading = async () => {
  const ocrReader = new OCRReaderModule();
  
  // 1. Arka yüz ayarı
  ocrReader.options = { cardSide: 'back' };
  
  // 2. MRZ içeren test görüntüsü
  const testImage = 'test-assets/id-card-back-mrz.jpg';
  
  // 3. İşleme
  const result = await ocrReader.processImage(testImage);
  
  // 4. MRZ doğrulama
  assert(result.fields.source === 'MRZ (Arka Yüz)');
  assert(result.fields.tcNo.length === 11);
  assert(result.fields.documentNo.length === 9);
  assert(result.fields.birthDate.match(/\d{2}\.\d{2}\.\d{4}/));
  
  // 5. Check digit doğrulama
  const checkDigitValid = validateMRZCheckDigit(result.fields.documentNo);
  assert(checkDigitValid === true);
  
  console.log('✅ Test 1.2 MRZ Okuma Başarılı');
};
```

---

### Test Senaryosu 1.3: Çift Taraflı Okuma ve Doğrulama

**Amaç**: Ön ve arka yüz verilerini birleştirme ve çapraz doğrulama

**Test Adımları**:
```javascript
const testDualSideValidation = async () => {
  const ocrModule = new OCRReaderModule();
  
  // 1. İki yüzü paralel okuma
  const result = await ocrModule.processBothSides(
    'test-assets/id-card-front.jpg',
    'test-assets/id-card-back.jpg'
  );
  
  // 2. Veri tutarlılığı kontrolü
  assert(result.success === true);
  
  // 3. Çapraz doğrulama
  const { frontSide, backSide, data } = result;
  
  // TC No eşleşmeli
  assert(frontSide.tcNo === backSide.tcNo);
  
  // İsimler eşleşmeli (normalize edilmiş)
  assert(normalizeText(frontSide.name) === normalizeText(backSide.name));
  
  // 4. Çakışma analizi
  if (data.conflicts.length > 0) {
    console.log('Çakışmalar tespit edildi:', data.conflicts);
    data.conflicts.forEach(conflict => {
      console.log(`  ${conflict.field}: Ön="${conflict.frontValue}" Arka="${conflict.backValue}"`);
    });
  }
  
  // 5. Tamamlılık kontrolü
  assert(data.completeness > 80);
  
  console.log('✅ Test 1.3 Çift Taraflı Okuma Başarılı');
};
```

---

### Test Senaryosu 1.4: Düşük Kaliteli Görüntü İşleme

**Amaç**: Bulanık, düşük ışıklı veya eğik görüntüleri işleme

**Test Adımları**:
```javascript
const testLowQualityImage = async () => {
  const ocrReader = new OCRReaderModule();
  
  const testCases = [
    { file: 'test-assets/blurry-id.jpg', name: 'Bulanık' },
    { file: 'test-assets/dark-id.jpg', name: 'Karanlık' },
    { file: 'test-assets/skewed-id.jpg', name: 'Eğik' }
  ];
  
  for (const testCase of testCases) {
    console.log(`Testing: ${testCase.name}`);
    
    // Görüntü iyileştirme aktif
    ocrReader.options = {
      enhanceImage: true,
      maxAttempts: 3
    };
    
    const result = await ocrReader.processImage(testCase.file);
    
    // En az bazı alanlar okunabilmeli
    assert(result.fields.tcNo || result.fields.name || result.fields.surname);
    
    console.log(`  Güven: ${result.confidence}%`);
    console.log(`  Okunan alanlar: ${Object.keys(result.fields).length}`);
  }
  
  console.log('✅ Test 1.4 Düşük Kalite İşleme Başarılı');
};
```

---

## 2. NFC Modülü Test Senaryoları

### Test Senaryosu 2.1: NFC Cihaz Desteği Kontrolü

**Amaç**: Cihazın NFC desteğini ve durumunu kontrol etme

**Test Adımları**:
```javascript
const testNFCSupport = async () => {
  // 1. NFC desteği kontrolü
  const isSupported = await NfcManager.isSupported();
  console.log('NFC Desteği:', isSupported);
  
  if (!isSupported) {
    console.log('⚠️ Bu cihaz NFC desteklemiyor');
    return;
  }
  
  // 2. NFC açık mı kontrolü
  const isEnabled = await NfcManager.isEnabled();
  console.log('NFC Durumu:', isEnabled ? 'Açık' : 'Kapalı');
  
  // 3. NFC teknolojileri kontrolü
  await NfcManager.start();
  
  // Test kartı ile teknoloji tespiti
  const tag = await NfcManager.getTag();
  if (tag) {
    console.log('Desteklenen teknolojiler:', tag.techTypes);
    assert(tag.techTypes.includes('IsoDep'));
  }
  
  console.log('✅ Test 2.1 NFC Destek Kontrolü Başarılı');
};
```

---

### Test Senaryosu 2.2: Türk Kimlik Kartı Okuma

**Amaç**: Gerçek TC kimlik kartından veri okuma

**Test Adımları**:
```javascript
const testTurkishIDCard = async () => {
  const nfcReader = new NFCReaderModule();
  let testResult = null;
  
  // 1. Callback ayarlama
  nfcReader.onNFCResult((result) => {
    testResult = result;
  });
  
  // 2. NFC başlatma
  await nfcReader.startNFC({
    cardType: 'tc_kimlik',
    readTimeout: 30000
  });
  
  console.log('📱 Kimlik kartını telefona yaklaştırın...');
  
  // 3. Kart okuma (30 saniye timeout)
  await new Promise((resolve) => {
    setTimeout(() => {
      if (!testResult) {
        console.log('⏱️ Timeout - Kart okunamadı');
      }
      resolve();
    }, 30000);
    
    // Kart okunduğunda erken çözümle
    const checkInterval = setInterval(() => {
      if (testResult) {
        clearInterval(checkInterval);
        resolve();
      }
    }, 100);
  });
  
  // 4. Sonuç doğrulama
  if (testResult) {
    assert(testResult.success === true);
    assert(testResult.parsedFields.tcNo?.length === 11);
    console.log('Okunan TC No:', testResult.parsedFields.tcNo);
    console.log('✅ Test 2.2 Kimlik Kartı Okuma Başarılı');
  } else {
    console.log('❌ Test 2.2 Başarısız - Kart okunamadı');
  }
  
  await nfcReader.stopNFC();
};
```

---

### Test Senaryosu 2.3: APDU Komut İletişimi

**Amaç**: Düşük seviye APDU komutlarını test etme

**Test Adımları**:
```javascript
const testAPDUCommands = async () => {
  await NfcManager.requestTechnology(NfcTech.IsoDep);
  
  try {
    // 1. Uygulama seçme (SELECT APP)
    const selectCmd = [0x00, 0xA4, 0x04, 0x00, 0x07, 0xA0, 0x00, 0x00, 0x02, 0x47, 0x10, 0x01];
    const selectResp = await NfcManager.transceive(selectCmd);
    
    // SW1=0x90, SW2=0x00 başarı kodu
    assert(selectResp[selectResp.length-2] === 0x90);
    assert(selectResp[selectResp.length-1] === 0x00);
    console.log('SELECT APP başarılı');
    
    // 2. Veri okuma (READ BINARY)
    const readCmd = [0x00, 0xB0, 0x01, 0x00, 0x00]; // P1=0x01 (DG1)
    const readResp = await NfcManager.transceive(readCmd);
    
    assert(readResp.length > 2);
    console.log('READ BINARY başarılı, veri uzunluğu:', readResp.length);
    
    // 3. Veri ayrıştırma
    const data = readResp.slice(0, -2); // Status bytes hariç
    const text = String.fromCharCode(...data);
    console.log('Ham veri (ilk 50 karakter):', text.substring(0, 50));
    
    console.log('✅ Test 2.3 APDU İletişimi Başarılı');
    
  } finally {
    await NfcManager.cancelTechnologyRequest();
  }
};
```

---

## 3. Canlılık Testi Modülü Test Senaryoları

### Test Senaryosu 3.1: Yüz Algılama

**Amaç**: Gerçek zamanlı yüz algılama ve takibi

**Test Adımları**:
```javascript
const testFaceDetection = async () => {
  const livenessDetector = new LivenessDetector({
    enableFaceDetection: true
  });
  
  // 1. Kamera başlatma
  await livenessDetector.captureFrontCamera();
  
  // 2. Yüz algılama başlatma
  const faceDetector = livenessDetector.faceDetector;
  await faceDetector.initialize();
  
  let faceDetected = false;
  let detectionCount = 0;
  
  // 3. 5 saniye boyunca yüz ara
  faceDetector.onFaceDetected = (faces) => {
    if (faces.length > 0) {
      faceDetected = true;
      detectionCount++;
      
      const face = faces[0];
      console.log('Yüz algılandı:', {
        position: face.bounds,
        leftEyeOpen: face.leftEyeOpenProbability,
        rightEyeOpen: face.rightEyeOpenProbability,
        smiling: face.smilingProbability
      });
    }
  };
  
  await faceDetector.startDetection();
  
  await new Promise(resolve => setTimeout(resolve, 5000));
  
  await faceDetector.stopDetection();
  
  // 4. Doğrulama
  assert(faceDetected === true);
  assert(detectionCount > 10); // 5 saniyede en az 10 algılama
  
  console.log(`✅ Test 3.1 Yüz Algılama Başarılı (${detectionCount} algılama)`);
};
```

---

### Test Senaryosu 3.2: Hareket Komutları

**Amaç**: Farklı hareket komutlarını test etme

**Test Adımları**:
```javascript
const testMotionCommands = async () => {
  const livenessDetector = new LivenessDetector();
  
  const commands = [
    { type: 'blink', text: 'Gözlerinizi kırpın' },
    { type: 'turn_left', text: 'Başınızı sola çevirin' },
    { type: 'turn_right', text: 'Başınızı sağa çevirin' },
    { type: 'smile', text: 'Gülümseyin' },
    { type: 'nod', text: 'Başınızı sallayın' }
  ];
  
  for (const command of commands) {
    console.log(`\nTest: ${command.text}`);
    
    // 1. Komut ver
    await livenessDetector.giveInstruction(command.type, command.text);
    
    // 2. Kullanıcı simülasyonu (gerçek testte manuel)
    const mockFaceData = generateMockFaceData(command.type);
    
    // 3. Doğrulama
    const isValid = validateMotion(command.type, mockFaceData);
    assert(isValid === true);
    
    console.log(`  ✓ ${command.type} doğrulandı`);
  }
  
  console.log('✅ Test 3.2 Hareket Komutları Başarılı');
};

// Mock veri üretici
function generateMockFaceData(commandType) {
  const baseData = {
    leftEyeOpenProbability: 0.95,
    rightEyeOpenProbability: 0.95,
    smilingProbability: 0.2,
    headEulerAngleY: 0,
    headEulerAngleZ: 0
  };
  
  switch (commandType) {
    case 'blink':
      return { ...baseData, leftEyeOpenProbability: 0.1, rightEyeOpenProbability: 0.1 };
    case 'turn_left':
      return { ...baseData, headEulerAngleY: -35 };
    case 'turn_right':
      return { ...baseData, headEulerAngleY: 35 };
    case 'smile':
      return { ...baseData, smilingProbability: 0.85 };
    case 'nod':
      return { ...baseData, headEulerAngleZ: 15 };
    default:
      return baseData;
  }
}
```

---

### Test Senaryosu 3.3: Anti-Spoofing (Sahtecilik Önleme)

**Amaç**: Fotoğraf veya video ile aldatma girişimlerini tespit etme

**Test Adımları**:
```javascript
const testAntiSpoofing = async () => {
  const detector = new LivenessDetector({
    enableMotionDetection: true
  });
  
  // 1. Derinlik takibi testi
  const depthTest = async () => {
    const frames = [];
    
    // 30 frame topla
    for (let i = 0; i < 30; i++) {
      const frame = await detector.captureFrame();
      frames.push(frame);
      await new Promise(r => setTimeout(r, 33)); // ~30 FPS
    }
    
    // Yüz boyutu değişimlerini analiz et
    const faceSizes = frames.map(f => f.faceSize);
    const variance = calculateVariance(faceSizes);
    
    // Gerçek yüz hareket ederse boyut değişir
    assert(variance > 0.01); // Minimum varyans
    console.log('  ✓ Derinlik testi geçti');
  };
  
  // 2. Doku analizi testi
  const textureTest = async () => {
    const frame = await detector.captureFrame();
    const textureScore = await detector.analyzeTexture(frame);
    
    // Gerçek yüz daha yüksek doku skoru verir
    assert(textureScore > 0.7);
    console.log('  ✓ Doku analizi geçti');
  };
  
  // 3. Hareket tutarlılığı testi
  const motionConsistencyTest = async () => {
    const sequence = await detector.recordMotionSequence(3000); // 3 saniye
    const consistency = detector.analyzeMotionConsistency(sequence);
    
    // Gerçek yüz hareketleri tutarlı olmalı
    assert(consistency > 0.8);
    console.log('  ✓ Hareket tutarlılığı geçti');
  };
  
  await depthTest();
  await textureTest();
  await motionConsistencyTest();
  
  console.log('✅ Test 3.3 Anti-Spoofing Başarılı');
};
```

---

## 4. Entegrasyon Test Senaryoları

### Test Senaryosu 4.1: OCR + NFC Çapraz Doğrulama

**Amaç**: OCR ve NFC verilerini karşılaştırma

**Test Adımları**:
```javascript
const testOCRNFCCrossValidation = async () => {
  // 1. OCR ile okuma
  const ocrReader = new OCRReader();
  const ocrResult = await ocrReader.extractText('test-assets/id-front.jpg');
  
  // 2. NFC ile okuma (simüle)
  const nfcResult = {
    tcNo: '12345678901',
    fullName: 'MEHMET YILMAZ',
    birthDate: '01.01.1990'
  };
  
  // 3. Verileri karşılaştır
  const validator = new CrossValidator();
  const validation = validator.validate(ocrResult.extractedFields, nfcResult);
  
  assert(validation.tcNoMatch === true);
  assert(validation.nameMatch === true);
  assert(validation.overallScore > 0.9);
  
  console.log('Doğrulama skoru:', validation.overallScore);
  console.log('✅ Test 4.1 OCR+NFC Doğrulama Başarılı');
};
```

---

### Test Senaryosu 4.2: Tam Kimlik Doğrulama Akışı

**Amaç**: Tüm modülleri kullanarak uçtan uca test

**Test Adımları**:
```javascript
const testCompleteVerification = async () => {
  const startTime = Date.now();
  const results = {};
  
  try {
    // 1. OCR ile kimlik okuma
    console.log('1. Adım: OCR ile kimlik okuma...');
    const ocr = new OCRReaderModule();
    const ocrData = await ocr.processBothSides(
      'test-assets/id-front.jpg',
      'test-assets/id-back.jpg'
    );
    results.ocr = ocrData.data;
    console.log('  ✓ OCR tamamlandı');
    
    // 2. NFC ile doğrulama (opsiyonel)
    console.log('2. Adım: NFC doğrulama...');
    if (await NfcManager.isSupported()) {
      // Gerçek test için kart gerekli
      console.log('  ⏭️ NFC atlandı (manuel test gerekli)');
    }
    
    // 3. Canlılık testi
    console.log('3. Adım: Canlılık testi...');
    const liveness = new LivenessDetector();
    const livenessResult = await liveness.startLivenessTest({
      maxRetries: 2,
      commands: ['blink', 'smile']
    });
    results.liveness = livenessResult;
    console.log('  ✓ Canlılık testi tamamlandı');
    
    // 4. Sonuçları birleştir
    const totalTime = Date.now() - startTime;
    
    console.log('\n📊 Test Sonucu:');
    console.log('  Süre:', totalTime, 'ms');
    console.log('  OCR Güven:', results.ocr.confidence, '%');
    console.log('  Canlılık:', results.liveness ? 'Başarılı' : 'Başarısız');
    console.log('  TC No:', results.ocr.tcNo);
    console.log('  Ad Soyad:', results.ocr.name, results.ocr.surname);
    
    assert(results.ocr.confidence > 70);
    assert(results.liveness === true);
    assert(totalTime < 30000); // 30 saniyeden az
    
    console.log('\n✅ Test 4.2 Tam Doğrulama Akışı Başarılı');
    
  } catch (error) {
    console.error('❌ Test başarısız:', error.message);
    throw error;
  }
};
```

---

## 5. Performans Test Senaryoları

### Test Senaryosu 5.1: OCR Performans Testi

**Test Adımları**:
```javascript
const testOCRPerformance = async () => {
  const ocr = new OCRReaderModule();
  const iterations = 10;
  const times = [];
  
  for (let i = 0; i < iterations; i++) {
    const start = Date.now();
    await ocr.processImage('test-assets/id-front.jpg');
    const time = Date.now() - start;
    times.push(time);
    console.log(`  İterasyon ${i+1}: ${time}ms`);
  }
  
  const avg = times.reduce((a,b) => a+b, 0) / times.length;
  const max = Math.max(...times);
  const min = Math.min(...times);
  
  console.log('\n📊 Performans Özeti:');
  console.log(`  Ortalama: ${avg.toFixed(0)}ms`);
  console.log(`  Min: ${min}ms`);
  console.log(`  Max: ${max}ms`);
  
  assert(avg < 2000); // Ortalama 2 saniyeden az
  console.log('✅ Test 5.1 OCR Performans Testi Başarılı');
};
```

---

### Test Senaryosu 5.2: Bellek Kullanımı Testi

**Test Adımları**:
```javascript
const testMemoryUsage = async () => {
  const getMemoryUsage = () => {
    if (global.performance && global.performance.memory) {
      return global.performance.memory.usedJSHeapSize / 1024 / 1024;
    }
    return 0;
  };
  
  const initialMemory = getMemoryUsage();
  console.log(`Başlangıç bellek: ${initialMemory.toFixed(2)} MB`);
  
  // Yoğun kullanım simülasyonu
  for (let i = 0; i < 5; i++) {
    const ocr = new OCRReaderModule();
    await ocr.processImage('test-assets/large-image.jpg');
    
    // Bellek temizliği
    await ocr.cleanupTempFiles();
    
    const currentMemory = getMemoryUsage();
    console.log(`  İterasyon ${i+1}: ${currentMemory.toFixed(2)} MB`);
  }
  
  // Garbage collection için bekle
  await new Promise(r => setTimeout(r, 1000));
  
  const finalMemory = getMemoryUsage();
  const memoryLeak = finalMemory - initialMemory;
  
  console.log(`\nSon bellek: ${finalMemory.toFixed(2)} MB`);
  console.log(`Bellek artışı: ${memoryLeak.toFixed(2)} MB`);
  
  assert(memoryLeak < 50); // 50 MB'dan az artış
  console.log('✅ Test 5.2 Bellek Kullanımı Testi Başarılı');
};
```

---

## 6. Hata Durumu Test Senaryoları

### Test Senaryosu 6.1: İzin Reddi Durumu

```javascript
const testPermissionDenied = async () => {
  // Kamera izni reddi simülasyonu
  const ocr = new OCRReader();
  
  try {
    // İzin reddini simüle et
    jest.spyOn(PermissionManager, 'requestCameraPermission')
      .mockResolvedValue(false);
    
    await ocr.startOCR();
    assert(false); // Buraya gelmemeli
  } catch (error) {
    assert(error.message.includes('CAMERA_PERMISSION_DENIED'));
    console.log('✅ İzin reddi düzgün yakalandı');
  }
};
```

---

## Test Çalıştırma

### Tüm Testleri Çalıştırma

```bash
# Unit testler
npm test

# Entegrasyon testleri
npm run test:integration

# E2E testler (gerçek cihaz gerekli)
npm run test:e2e

# Performans testleri
npm run test:performance

# Coverage raporu ile
npm test -- --coverage
```

### Platform Spesifik Testler

```bash
# iOS testleri
cd ios && xcodebuild test -workspace OCRMobileSDK.xcworkspace -scheme OCRMobileSDK

# Android testleri
cd android && ./gradlew test
```

---

## Test Raporlama

Test sonuçları `test-results/` dizininde saklanır:

- `junit.xml` - JUnit formatında test sonuçları
- `coverage/` - Kod kapsama raporu
- `performance/` - Performans metrikleri

---

## Continuous Testing

Azure Pipeline'da otomatik test:

```yaml
- script: |
    npm test -- --ci --coverage
    npm run test:integration
  displayName: 'Run Tests'
  
- task: PublishTestResults@2
  inputs:
    testResultsFormat: 'JUnit'
    testResultsFiles: '**/junit.xml'
```

---

*Test senaryoları düzenli olarak güncellenmektedir.*
