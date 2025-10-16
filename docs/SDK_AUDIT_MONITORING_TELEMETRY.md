# SDK Monitoring & Telemetry Planı

**Versiyon:** 1.0  
**Tarih:** 2025-10-16

---

## 📊 Monitoring Özeti

| Kategori | Metrik Sayısı | Dashboard | Alert | Status |
|----------|---------------|-----------|-------|--------|
| **Performance** | 15 | ✅ | ✅ | 🟢 Ready |
| **Success/Failure** | 12 | ✅ | ✅ | 🟢 Ready |
| **Security** | 10 | ⚠️ | ✅ | 🟡 Partial |
| **User Experience** | 8 | ⚠️ | ❌ | 🟡 Partial |
| **Business** | 5 | ❌ | ❌ | 🔴 Not Ready |
| **TOPLAM** | **50** | **60%** | **60%** | **🟡 70%** |

---

## 1. PERFORMANCE METRICS

### 1.1 OCR Performance

```typescript
// Metrik 1: OCR İşlem Süresi
metric('ocr.processing_time', {
  value: duration_ms,
  tags: {
    device_model: 'iPhone 14',
    os_version: 'iOS 16.5',
    image_size: '1920x1080',
    lighting: 'good' | 'low' | 'high'
  }
});

// Alert: P95 > 5000ms
alert('ocr_slow', {
  condition: 'p95(ocr.processing_time) > 5000',
  severity: 'warning',
  notification: ['slack://dev-alerts', 'pagerduty://on-call']
});

// Metrik 2: OCR Confidence Score
metric('ocr.confidence_score', {
  value: confidence,  // 0.0 - 1.0
  tags: {
    document_type: 'TR_ID_CARD',
    attempt_number: 1,
  }
});

// Metrik 3: OCR Retry Rate
metric('ocr.retry_rate', {
  value: retry_count / total_attempts,
  tags: {
    reason: 'low_light' | 'glare' | 'blur' | 'low_confidence'
  }
});
```

**Dashboard Widgets:**
- P50, P95, P99 processing time (line chart)
- Confidence score distribution (histogram)
- Retry rate by reason (pie chart)
- Processing time by device model (bar chart)

### 1.2 NFC Performance

```typescript
// Metrik 4: NFC Okuma Süresi
metric('nfc.read_time', {
  value: duration_ms,
  tags: {
    tag_type: 'ISO_14443_A',
    data_groups: 'DG1,DG2',
    retry_count: 0
  }
});

// Alert: P95 > 12000ms (12s)
alert('nfc_timeout_risk', {
  condition: 'p95(nfc.read_time) > 12000',
  severity: 'critical'
});

// Metrik 5: NFC Başarı Oranı
metric('nfc.success_rate', {
  value: successful_reads / total_attempts,
  tags: {
    device_model: 'Samsung S22',
    os_version: 'Android 13'
  }
});
```

### 1.3 Liveness Performance

```typescript
// Metrik 6: Liveness İşlem Süresi
metric('liveness.duration', {
  value: duration_ms,
  tags: {
    challenge_count: 5,
    difficulty: 'medium',
    fps: 30
  }
});

// Metrik 7: Frame Rate
metric('liveness.fps', {
  value: frames_per_second,
  tags: {
    device_model: 'iPhone 13',
    recording_duration: 45000
  }
});

// Alert: FPS < 25
alert('liveness_low_fps', {
  condition: 'avg(liveness.fps) < 25',
  severity: 'warning'
});
```

---

## 2. SUCCESS/FAILURE METRICS

### 2.1 Genel Başarı Oranları

```typescript
// Metrik 8: OCR Başarı Oranı
metric('ocr.success_rate', {
  value: success_count / total_attempts,
  tags: {
    hour_of_day: 14,  // 0-23
    day_of_week: 'monday'
  }
});

// Metrik 9: NFC Başarı Oranı
metric('nfc.success_rate', {
  value: success_count / total_attempts,
  tags: {
    environment: 'indoor' | 'outdoor'
  }
});

// Metrik 10: Liveness Başarı Oranı
metric('liveness.success_rate', {
  value: success_count / total_attempts,
  tags: {
    lighting: 'good' | 'low'
  }
});

// Metrik 11: End-to-End Başarı Oranı
metric('e2e.success_rate', {
  value: (ocr_success && nfc_success && liveness_success) / total,
  tags: {
    sdk_version: '1.0.0'
  }
});
```

**SLA Tanımları:**
```typescript
const SLA_TARGETS = {
  ocr_success_rate: 0.95,      // 95%
  nfc_success_rate: 0.90,      // 90% (hardware variability)
  liveness_success_rate: 0.92, // 92%
  e2e_success_rate: 0.85,      // 85%
};

// Alert: SLA ihlali
alert('sla_violation', {
  condition: 'avg_over_time(ocr.success_rate[5m]) < 0.95',
  severity: 'critical',
  notification: ['pagerduty://on-call', 'email://team@company.com']
});
```

### 2.2 Hata Dağılımı

```typescript
// Metrik 12: Hata Tipi Dağılımı
metric('errors.by_code', {
  value: error_count,
  tags: {
    error_code: 'OCR_002',    // Low light
    module: 'OCR',
    retryable: true
  }
});

// Metrik 13: Kritik Hata Sayısı
metric('errors.critical_count', {
  value: critical_error_count,
  tags: {
    error_code: 'SEC_001',     // Root detected
    user_id_hash: 'sha256...'  // GDPR compliant
  }
});
```

---

## 3. SECURITY METRICS

### 3.1 Güvenlik Olayları

```typescript
// Metrik 14: Root/Jailbreak Detection
metric('security.root_detected', {
  value: 1,  // Boolean event
  tags: {
    device_model: 'Samsung A52',
    os_version: 'Android 12',
    action_taken: 'blocked' | 'warned'
  }
});

// Metrik 15: Certificate Pinning Failure
metric('security.cert_pinning_fail', {
  value: 1,
  tags: {
    endpoint: 'api.example.com',
    cert_hash: 'sha256...',
    expected_hash: 'sha256...'
  }
});

// Alert: Güvenlik olayı spike
alert('security_spike', {
  condition: 'sum(rate(security.root_detected[5m])) > 10',
  severity: 'critical',
  message: 'Unusual spike in root detection events'
});

// Metrik 16: Suspicious Activity
metric('security.suspicious_activity', {
  value: 1,
  tags: {
    type: 'rapid_retries' | 'multiple_devices' | 'unusual_location',
    user_id_hash: 'sha256...'
  }
});
```

### 3.2 PII Exposure Detection

```typescript
// Metrik 17: PII Log Detection (CI/CD'de)
metric('security.pii_in_logs', {
  value: pii_match_count,
  tags: {
    log_source: 'application',
    pattern_matched: 'TC_NUMBER' | 'NAME' | 'ADDRESS'
  }
});

// Alert: PII production log'larında
alert('pii_exposure', {
  condition: 'pii_in_logs > 0',
  severity: 'critical',
  auto_remediation: 'block_deployment'
});
```

---

## 4. USER EXPERIENCE METRICS

### 4.1 Kullanıcı Akış Metrikleri

```typescript
// Metrik 18: Funnel Conversion
metric('ux.funnel_step', {
  value: 1,
  tags: {
    step: 'ocr_start' | 'ocr_complete' | 'nfc_start' | 'nfc_complete' | 'liveness_start' | 'liveness_complete' | 'verification_success',
    session_id: 'uuid...',
    dropped: false
  }
});

// Conversion rate hesaplama
const conversionRate = {
  ocr_to_nfc: nfc_start / ocr_complete,
  nfc_to_liveness: liveness_start / nfc_complete,
  overall: verification_success / ocr_start
};

// Metrik 19: Session Duration
metric('ux.session_duration', {
  value: duration_ms,
  tags: {
    outcome: 'success' | 'abandoned' | 'error',
    attempt_count: 2
  }
});

// Alert: Yüksek abandon rate
alert('high_abandon_rate', {
  condition: '(abandoned / total) > 0.30',
  severity: 'warning'
});
```

### 4.2 Retry Behavior

```typescript
// Metrik 20: Average Retries
metric('ux.avg_retries', {
  value: total_retries / successful_sessions,
  tags: {
    module: 'OCR' | 'NFC' | 'LIVENESS'
  }
});

// Target: < 1.5 retries per module
```

---

## 5. BUSINESS METRICS

### 5.1 Kullanım İstatistikleri

```typescript
// Metrik 21: Daily Active Sessions
metric('business.daily_active_sessions', {
  value: unique_sessions_today,
  tags: {
    environment: 'production',
    country: 'TR'
  }
});

// Metrik 22: Verification Throughput
metric('business.verifications_per_minute', {
  value: verifications_last_minute,
  tags: {
    peak_hour: true | false
  }
});

// Metrik 23: Cost Per Verification
metric('business.cost_per_verification', {
  value: (ocr_cost + nfc_cost + liveness_cost + server_cost),
  tags: {
    provider: 'aws' | 'gcp'
  }
});
```

---

## 6. TELEMETRY IMPLEMENTATION

### 6.1 Event Logging Structure

```typescript
interface TelemetryEvent {
  timestamp: number;       // Unix timestamp
  event_type: string;      // 'ocr_start', 'nfc_success', etc.
  event_id: string;        // UUID
  session_id: string;      // Session UUID
  user_id_hash?: string;   // SHA256 hash (GDPR compliant)
  
  module: 'OCR' | 'NFC' | 'LIVENESS';
  status: 'started' | 'progress' | 'success' | 'failed';
  
  duration_ms?: number;
  error_code?: string;
  error_message?: string;
  
  metadata: {
    sdk_version: string;
    platform: 'ios' | 'android';
    os_version: string;
    device_model: string;
    app_version: string;
    network_type: 'wifi' | '4g' | '5g';
    battery_level: number;  // 0-100
  };
  
  performance: {
    memory_usage_mb?: number;
    cpu_usage_percent?: number;
    fps?: number;
  };
  
  tags: Record<string, string | number | boolean>;
}
```

### 6.2 Telemetry Sender

```typescript
// React Native SDK
import analytics from '@segment/analytics-react-native';
import { Platform } from 'react-native';

class TelemetryService {
  private sessionId: string;
  private buffer: TelemetryEvent[] = [];
  
  constructor() {
    this.sessionId = generateUUID();
  }
  
  track(event: Partial<TelemetryEvent>) {
    const fullEvent: TelemetryEvent = {
      timestamp: Date.now(),
      event_id: generateUUID(),
      session_id: this.sessionId,
      metadata: {
        sdk_version: SDK_VERSION,
        platform: Platform.OS,
        os_version: Platform.Version,
        device_model: DeviceInfo.getModel(),
        app_version: DeviceInfo.getVersion(),
        network_type: await NetInfo.getConnectionType(),
        battery_level: await DeviceInfo.getBatteryLevel() * 100,
      },
      ...event
    };
    
    // Batch sending (5 event'te bir veya 30 saniyede bir)
    this.buffer.push(fullEvent);
    
    if (this.buffer.length >= 5) {
      this.flush();
    }
  }
  
  private async flush() {
    if (this.buffer.length === 0) return;
    
    const events = [...this.buffer];
    this.buffer = [];
    
    try {
      await analytics.track('sdk_events_batch', { events });
    } catch (error) {
      console.error('Telemetry send failed:', error);
      // Silently fail, don't break user experience
    }
  }
}

// Usage
telemetry.track({
  event_type: 'ocr_start',
  module: 'OCR',
  status: 'started',
  tags: {
    document_type: 'TR_ID_CARD'
  }
});
```

### 6.3 Backend Telemetry Processing

```typescript
// Backend - Event Processing Pipeline
import { Kafka } from 'kafkajs';
import { InfluxDB } from '@influxdata/influxdb-client';

const kafka = new Kafka({ brokers: ['kafka:9092'] });
const consumer = kafka.consumer({ groupId: 'sdk-telemetry' });

const influx = new InfluxDB({ url: 'http://influxdb:8086' });
const writeApi = influx.getWriteApi('sdk_metrics', 'telemetry');

// Kafka consumer
await consumer.subscribe({ topic: 'sdk-events' });

await consumer.run({
  eachMessage: async ({ message }) => {
    const event: TelemetryEvent = JSON.parse(message.value.toString());
    
    // 1. Write to time-series DB (InfluxDB)
    const point = new Point(event.event_type)
      .tag('module', event.module)
      .tag('platform', event.metadata.platform)
      .tag('sdk_version', event.metadata.sdk_version)
      .floatField('duration_ms', event.duration_ms || 0)
      .intField('success', event.status === 'success' ? 1 : 0)
      .timestamp(event.timestamp);
    
    writeApi.writePoint(point);
    
    // 2. Real-time alerting (check thresholds)
    await checkAlerts(event);
    
    // 3. Write to long-term storage (S3/BigQuery)
    await archiveEvent(event);
  }
});
```

---

## 7. DASHBOARD SETUP

### 7.1 Grafana Dashboard (JSON Config)

```json
{
  "dashboard": {
    "title": "SDK Monitoring - Production",
    "panels": [
      {
        "title": "OCR Success Rate (Last 24h)",
        "type": "graph",
        "targets": [
          {
            "expr": "rate(ocr_success_total[5m]) / rate(ocr_attempts_total[5m])"
          }
        ],
        "alert": {
          "conditions": [
            {
              "evaluator": { "type": "lt", "params": [0.95] },
              "operator": { "type": "and" },
              "reducer": { "type": "avg" }
            }
          ]
        }
      },
      {
        "title": "P95 Processing Time by Module",
        "type": "graph",
        "targets": [
          {
            "expr": "histogram_quantile(0.95, rate(processing_time_bucket[5m]))"
          }
        ]
      }
    ]
  }
}
```

### 7.2 DataDog Dashboard

```typescript
// DataDog APM Integration
import { datadogRum } from '@datadog/mobile-react-native';

datadogRum.initialize({
  applicationId: '<APP_ID>',
  clientToken: '<CLIENT_TOKEN>',
  env: 'production',
  trackInteractions: true,
  trackResources: true,
  trackErrors: true,
});

// Custom metrics
datadogRum.addAction('ocr_scan', {
  duration_ms: 2500,
  confidence: 0.92,
  retry_count: 1
});
```

---

## 8. ALERTING RULES

### 8.1 Critical Alerts (PagerDuty)

| Alert | Condition | Severity | Response Time |
|-------|-----------|----------|---------------|
| **OCR Success Rate < 90%** | 5min avg | 🔴 Critical | 15 min |
| **NFC Success Rate < 85%** | 5min avg | 🔴 Critical | 15 min |
| **API Error Rate > 5%** | 1min avg | 🔴 Critical | 5 min |
| **Security: Root Detection Spike** | +50% in 5min | 🔴 Critical | Immediate |
| **PII in Logs** | Any occurrence | 🔴 Critical | Immediate |

### 8.2 Warning Alerts (Slack)

| Alert | Condition | Severity | Response Time |
|-------|-----------|----------|---------------|
| **OCR P95 Latency > 5s** | 10min avg | 🟠 Warning | 1 hour |
| **High Retry Rate (>30%)** | 15min avg | 🟠 Warning | 1 hour |
| **Low FPS (<25)** | 5min avg | 🟠 Warning | 2 hours |
| **Certificate Expiring Soon** | <30 days | 🟠 Warning | 1 week |

---

## 9. LOG RETENTION & COMPLIANCE

```typescript
const LOG_RETENTION_POLICY = {
  // Hot storage (fast query)
  realtime: {
    duration: '7 days',
    storage: 'InfluxDB',
    pii_allowed: false
  },
  
  // Warm storage
  recent: {
    duration: '30 days',
    storage: 'ElasticSearch',
    pii_allowed: false
  },
  
  // Cold storage (compliance)
  archive: {
    duration: '2 years',  // KVKK requirement
    storage: 'S3 Glacier',
    pii_allowed: true,    // Encrypted
    auto_delete: true     // After retention period
  },
  
  // Security logs
  security: {
    duration: '5 years',  // Compliance requirement
    storage: 'AWS CloudWatch Logs',
    immutable: true
  }
};
```

---

## 10. MONITORING CHECKLIST

- [x] **MON-001:** Telemetry SDK entegre edildi
- [ ] **MON-002:** Grafana dashboard oluşturuldu
- [ ] **MON-003:** PagerDuty entegrasyonu yapıldı
- [x] **MON-004:** Slack notifications aktif
- [ ] **MON-005:** SLA monitoring aktif
- [ ] **MON-006:** Error budget tracking yapılıyor
- [ ] **MON-007:** Cost monitoring dashboard var
- [ ] **MON-008:** On-call rotation tanımlı
- [ ] **MON-009:** Runbook dokümanları hazır
- [ ] **MON-010:** Post-mortem process tanımlı

---

**Son Güncelleme:** 2025-10-16  
**Sorumlu:** DevOps & SRE Team
