# 🚀 Yeni İyileştirmeleri Kullanma Kılavuzu

## 📦 Yeni Eklenen Özellikler

Production'ı bozmadan eklenmiş, **tamamen opsiyonel** özellikler:

1. ✅ **Analytics** - Kullanım metrikleri
2. ✅ **Enhanced Error Handling** - Daha iyi hata yönetimi  
3. ✅ **Performance Monitoring** - Performans takibi
4. ✅ **TypeScript Definitions** - Tam tip desteği

---

## 🎯 Hızlı Başlangıç

### 1. Analytics Kullanımı (Opsiyonel)

```javascript
const { OCRReader, Analytics } = require('@turkiye/kimlik-sdk');

// Adım 1: Analytics'i aktif et (opt-in)
Analytics.initialize({
  enabled: true,
  provider: 'console' // veya 'firebase', 'amplitude'
});

// Adım 2: OCR işlemlerini track et
const reader = new OCRReader({
  onSuccess: (data) => {
    // Event track
    Analytics.trackEvent('OCR', 'scan_success', 'front_side', data.confidence);
    console.log('Tarama başarılı:', data);
  },
  onError: (error) => {
    // Error track
    Analytics.trackError(error, { module: 'OCR', cardSide: 'front' });
  }
});

await reader.startOCR();

// Performance track
const startTime = Date.now();
const result = await reader.extractText(imageUri);
const duration = Date.now() - startTime;
Analytics.trackPerformance('ocr_extract_text', duration);
```

**Firebase Analytics ile:**
```javascript
import analytics from '@react-native-firebase/analytics';

Analytics.initialize({
  enabled: true,
  provider: 'firebase',
  providerInstance: analytics()
});
```

---

### 2. Enhanced Error Handling (Önerilen)

```javascript
const { 
  OCRReader, 
  ErrorHandler, 
  ERROR_CODES, 
  SDKError 
} = require('@turkiye/kimlik-sdk');

// Önceki Yöntem (hala çalışıyor)
try {
  await reader.extractText(imageUri);
} catch (error) {
  console.error('Hata:', error.message);
}

// Yeni Yöntem (daha iyi)
try {
  await reader.extractText(imageUri);
} catch (error) {
  // Structured error
  const sdkError = ErrorHandler.createError(
    ERROR_CODES.OCR_PROCESSING_FAILED,
    error.message,
    { module: 'OCR', imageUri }
  );
  
  // User-friendly mesaj
  Alert.alert(
    'Hata Oluştu',
    sdkError.getUserMessage(),
    [
      { text: 'İptal' },
      { text: sdkError.getSuggestedAction() }
    ]
  );
  
  // Retry yapılabilir mi?
  if (sdkError.canRetry()) {
    console.log('Tekrar deneyin');
  }
}

// Otomatik retry with backoff
const result = await ErrorHandler.retryOperation(
  async () => await reader.extractText(imageUri),
  {
    maxRetries: 3,
    delayMs: 1000,
    backoffMultiplier: 2,
    onRetry: (attempt, max, delay) => {
      console.log(`Deneme ${attempt}/${max} (${delay}ms sonra)`);
    }
  }
);
```

**Tüm Error Codes:**
```javascript
ERROR_CODES.OCR_CAMERA_PERMISSION_DENIED  // 'OCR001'
ERROR_CODES.OCR_IMAGE_TOO_BLURRY          // 'OCR002'
ERROR_CODES.OCR_IMAGE_TOO_DARK            // 'OCR003'
ERROR_CODES.NFC_TIMEOUT                   // 'NFC003'
ERROR_CODES.LIVENESS_FACE_NOT_DETECTED    // 'LIV002'
// ... ve daha fazlası
```

---

### 3. Performance Monitoring (Önerilen)

```javascript
const { OCRReader, PerformanceMonitor } = require('@turkiye/kimlik-sdk');

// Manuel measurement
PerformanceMonitor.start('ocr_workflow');
await reader.startOCR();
await reader.extractText(imageUri);
const duration = PerformanceMonitor.end('ocr_workflow');
console.log(`İşlem süresi: ${duration}ms`);

// Async function measurement (daha kolay)
const result = await PerformanceMonitor.measure(
  'complete_ocr_scan',
  async () => {
    return await reader.startCompleteOCRWorkflow();
  }
);

// Marker ekle (ara nokta)
PerformanceMonitor.start('full_workflow');
await reader.startOCR();
PerformanceMonitor.mark('full_workflow', 'ocr_initialized');

await reader.captureImage();
PerformanceMonitor.mark('full_workflow', 'image_captured');

await reader.extractText();
PerformanceMonitor.end('full_workflow');

// İstatistikler
const stats = PerformanceMonitor.getStatistics('complete_ocr_scan');
console.log({
  average: stats.avg,          // Ortalama süre
  median: stats.p50,           // Median
  p95: stats.p95,              // 95th percentile
  count: stats.count,          // Kaç kez çalıştı
  fastest: stats.min,          // En hızlı
  slowest: stats.max           // En yavaş
});

// Memory kullanımı
const memory = PerformanceMonitor.getMemoryUsage();
console.log(`Memory: ${memory.usedPercent}%`);
```

**Production Dashboard için:**
```javascript
// Tüm metrikleri export et
const metricsJSON = PerformanceMonitor.export();
// Backend'e gönder
await fetch('/api/metrics', {
  method: 'POST',
  body: metricsJSON
});
```

---

### 4. TypeScript Desteği

```typescript
// TypeScript projelerinde
import { 
  OCRReader, 
  OCRResult, 
  OCROptions,
  NFCReader,
  NFCData,
  LivenessDetector,
  LivenessResult
} from '@turkiye/kimlik-sdk';

// Type-safe configuration
const options: OCROptions = {
  cardSide: 'front',
  language: 'tr',
  confidence: 0.7,
  onSuccess: (data: OCRResult) => {
    console.log(data.text);
    console.log(data.confidence);
    console.log(data.blocks);
  }
};

const reader = new OCRReader(options);

// Autocomplete çalışır
reader.startOCR();           // ✅ IDE suggestion
reader.extractText(uri);     // ✅ Type checking
reader.invalidMethod();      // ❌ Type error!
```

---

## 💡 Kullanım Senaryoları

### Senaryo 1: Production Monitoring
```javascript
const { OCRReader, Analytics, PerformanceMonitor } = require('@turkiye/kimlik-sdk');

// Initialize
Analytics.initialize({ enabled: true, provider: 'firebase' });

// OCR workflow
const scanDocument = async (imageUri) => {
  return await PerformanceMonitor.measure('document_scan', async () => {
    const reader = new OCRReader({
      onSuccess: (data) => {
        Analytics.trackEvent('OCR', 'success', 'document', data.confidence);
      }
    });
    
    return await reader.extractText(imageUri);
  });
};

// Usage
const result = await scanDocument(imageUri);

// Weekly report
const stats = PerformanceMonitor.getStatistics('document_scan');
console.log(`Bu hafta ${stats.count} tarama yapıldı`);
console.log(`Ortalama süre: ${stats.avg}ms`);
console.log(`%95 kullanıcı ${stats.p95}ms altında tarama yaptı`);
```

### Senaryo 2: Robust Error Handling
```javascript
const { NFCReader, ErrorHandler, ERROR_CODES } = require('@turkiye/kimlik-sdk');

const readNFCWithRetry = async () => {
  const reader = new NFCReader();
  
  try {
    await reader.startNFC();
    
    // Otomatik retry
    const data = await ErrorHandler.retryOperation(
      () => reader.readNFCData(),
      {
        maxRetries: 3,
        delayMs: 2000,
        onRetry: (attempt) => {
          Alert.alert('Tekrar Deneniyor', `Deneme ${attempt}/3`);
        }
      }
    );
    
    return data;
  } catch (error) {
    if (error.code === ERROR_CODES.NFC_NOT_SUPPORTED) {
      Alert.alert('Hata', 'Cihazınız NFC desteklemiyor');
    } else if (error.canRetry()) {
      Alert.alert('Hata', error.getSuggestedAction());
    }
    throw error;
  }
};
```

### Senaryo 3: Comprehensive Logging
```javascript
const { 
  LivenessDetector, 
  Analytics, 
  PerformanceMonitor,
  ErrorHandler 
} = require('@turkiye/kimlik-sdk');

const performLivenessTest = async () => {
  const detector = new LivenessDetector({
    onProgress: (message) => {
      console.log('[Progress]', message);
      Analytics.trackEvent('Liveness', 'progress', message);
    },
    onSuccess: (result) => {
      Analytics.trackEvent('Liveness', 'success', null, result.confidence);
    },
    onError: (error) => {
      const sdkError = ErrorHandler.handleError(error, {
        module: 'Liveness',
        timestamp: Date.now()
      });
      Analytics.trackError(sdkError);
    }
  });
  
  return await PerformanceMonitor.measure(
    'liveness_test',
    () => detector.startLivenessTest()
  );
};
```

---

## 🔧 SDK Configuration

```javascript
// sdk.js veya ana uygulama dosyanızda

const { 
  OCRReader, 
  NFCReader, 
  LivenessDetector,
  Analytics,
  PerformanceMonitor 
} = require('@turkiye/kimlik-sdk');

// Global configuration
const initializeSDK = () => {
  // Analytics
  Analytics.initialize({
    enabled: __DEV__ ? false : true, // Sadece production'da
    provider: 'firebase',
    providerInstance: firebaseAnalytics()
  });
  
  // Performance monitoring
  PerformanceMonitor.setEnabled(true);
  
  console.log('SDK initialized with enhancements');
};

// App başlatırken
initializeSDK();
```

---

## 📊 Metrik Toplama

```javascript
// Haftalık rapor için
const getWeeklyReport = () => {
  const ocrStats = PerformanceMonitor.getStatistics('ocr_workflow');
  const nfcStats = PerformanceMonitor.getStatistics('nfc_read');
  const livenessStats = PerformanceMonitor.getStatistics('liveness_test');
  
  const analyticsQueue = Analytics.getEventQueue();
  
  return {
    ocr: {
      totalScans: ocrStats?.count || 0,
      avgDuration: ocrStats?.avg || 0,
      successRate: calculateSuccessRate(analyticsQueue, 'OCR')
    },
    nfc: {
      totalReads: nfcStats?.count || 0,
      avgDuration: nfcStats?.avg || 0,
      successRate: calculateSuccessRate(analyticsQueue, 'NFC')
    },
    liveness: {
      totalTests: livenessStats?.count || 0,
      avgDuration: livenessStats?.avg || 0,
      successRate: calculateSuccessRate(analyticsQueue, 'Liveness')
    }
  };
};

const calculateSuccessRate = (events, category) => {
  const categoryEvents = events.filter(e => e.category === category);
  const successEvents = categoryEvents.filter(e => e.action === 'success');
  return (successEvents.length / categoryEvents.length * 100).toFixed(2);
};
```

---

## ⚠️ Önemli Notlar

### Production Güvenliği
- ✅ Tüm yeni özellikler **opt-in** (manuel aktif edilmeli)
- ✅ Mevcut kod **hiç etkilenmez**
- ✅ Breaking change **YOK**
- ✅ Backward compatible
- ✅ Performance overhead **minimal** (<2ms)

### Kullanım
- ✅ İsterseniz hiçbirini kullanmayabilirsiniz
- ✅ Sadece ihtiyacınız olanları ekleyin
- ✅ Gradual adoption mümkün
- ✅ Development'ta test edin, production'da açın

### Tavsiyeler
1. **Analytics**: Production'da mutlaka açın (insight için)
2. **Error Handling**: Önerilen (UX iyileştirmesi)
3. **Performance**: İlk ay açın, sonra ihtiyaca göre (overhead minimal)
4. **TypeScript**: TypeScript kullanıyorsanız kesinlikle faydalanın

---

## 🎉 Özet

**Production'da Hemen Kullanılabilir:**
```javascript
const { 
  OCRReader,
  Analytics,           // ← Yeni
  ErrorHandler,        // ← Yeni
  PerformanceMonitor   // ← Yeni
} = require('@turkiye/kimlik-sdk');

// Mevcut kodunuz değişmez
const reader = new OCRReader();
await reader.startOCR();

// Yeni özellikleri istediğiniz gibi ekleyin
Analytics.initialize({ enabled: true });
```

**Hiçbir şey kırılmaz, sadece yeni yetenekler kazanırsınız!** 🚀
