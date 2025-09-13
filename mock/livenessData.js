/**
 * Mock Liveness Data for Testing
 * Contains sample liveness detection results for testing
 */

const mockLivenessData = {
  default: {
    isLive: true,
    confidence: 0.92,
    details: {
      movements: {
        'Düz Bakma': true,
        'Göz Kırpma': true,
        'Sola Bakma': true,
        'Sağa Bakma': true,
        'Gülümseme': true
      },
      faceMetrics: {
        'Yüz Algılama': 0.95,
        'Göz Algılama': 0.88,
        'Ağız Algılama': 0.91,
        'Yüz Kalitesi': 0.89,
        'Işık Durumu': 0.85
      },
      qualityChecks: {
        'Yeterli Işık': true,
        'Yüz Merkezi': true,
        'Uygun Mesafe': true,
        'Hareket Algılama': true,
        'Canlılık Kontrolü': true
      },
      testDuration: 8500,
      frameCount: 45,
      successfulMovements: 5,
      totalMovements: 5
    },
    metadata: {
      testType: 'standard',
      algorithm: 'face_detection_v2',
      deviceInfo: {
        camera: 'front',
        resolution: '1280x720',
        fps: 30
      }
    }
  },

  advanced: {
    isLive: true,
    confidence: 0.87,
    details: {
      movements: {
        'Düz Bakma': true,
        'Göz Kırpma': true,
        'Sola Bakma': true,
        'Sağa Bakma': true,
        'Gülümseme': true,
        'Başı Sallama': true,
        'Kaş Çatma': false
      },
      faceMetrics: {
        'Yüz Algılama': 0.93,
        'Göz Algılama': 0.85,
        'Ağız Algılama': 0.88,
        'Yüz Kalitesi': 0.86,
        'Işık Durumu': 0.82,
        'Hareket Tutarlılığı': 0.89
      },
      qualityChecks: {
        'Yeterli Işık': true,
        'Yüz Merkezi': true,
        'Uygun Mesafe': true,
        'Hareket Algılama': true,
        'Canlılık Kontrolü': true,
        'Çoklu Hareket': true,
        'Zaman Tutarlılığı': true
      },
      testDuration: 12300,
      frameCount: 68,
      successfulMovements: 6,
      totalMovements: 7
    },
    metadata: {
      testType: 'advanced',
      algorithm: 'face_detection_v2_advanced',
      deviceInfo: {
        camera: 'front',
        resolution: '1920x1080',
        fps: 30
      }
    }
  },

  strict: {
    isLive: true,
    confidence: 0.95,
    details: {
      movements: {
        'Düz Bakma': true,
        'Göz Kırpma': true,
        'Sola Bakma': true,
        'Sağa Bakma': true,
        'Gülümseme': true,
        'Başı Sallama': true,
        'Kaş Çatma': true,
        'Ağız Açma': true
      },
      faceMetrics: {
        'Yüz Algılama': 0.97,
        'Göz Algılama': 0.94,
        'Ağız Algılama': 0.93,
        'Yüz Kalitesi': 0.95,
        'Işık Durumu': 0.91,
        'Hareket Tutarlılığı': 0.96,
        'Derinlik Algılama': 0.89,
        'Doku Analizi': 0.92
      },
      qualityChecks: {
        'Yeterli Işık': true,
        'Yüz Merkezi': true,
        'Uygun Mesafe': true,
        'Hareket Algılama': true,
        'Canlılık Kontrolü': true,
        'Çoklu Hareket': true,
        'Zaman Tutarlılığı': true,
        'Derinlik Kontrolü': true,
        'Anti-Spoofing': true,
        'Doku Kontrolü': true
      },
      testDuration: 15800,
      frameCount: 89,
      successfulMovements: 8,
      totalMovements: 8
    },
    metadata: {
      testType: 'strict',
      algorithm: 'face_detection_v3_strict',
      deviceInfo: {
        camera: 'front',
        resolution: '1920x1080',
        fps: 60
      }
    }
  },

  fail: {
    isLive: false,
    confidence: 0.23,
    details: {
      movements: {
        'Düz Bakma': true,
        'Göz Kırpma': false,
        'Sola Bakma': false,
        'Sağa Bakma': true,
        'Gülümseme': false
      },
      faceMetrics: {
        'Yüz Algılama': 0.45,
        'Göz Algılama': 0.32,
        'Ağız Algılama': 0.28,
        'Yüz Kalitesi': 0.35,
        'Işık Durumu': 0.41
      },
      qualityChecks: {
        'Yeterli Işık': false,
        'Yüz Merkezi': true,
        'Uygun Mesafe': false,
        'Hareket Algılama': false,
        'Canlılık Kontrolü': false
      },
      testDuration: 6200,
      frameCount: 28,
      successfulMovements: 2,
      totalMovements: 5,
      failureReasons: [
        'Yetersiz hareket algılama',
        'Düşük yüz kalitesi',
        'Işık koşulları uygun değil',
        'Canlılık belirtileri yetersiz'
      ]
    },
    metadata: {
      testType: 'fail_simulation',
      algorithm: 'face_detection_v2',
      deviceInfo: {
        camera: 'front',
        resolution: '640x480',
        fps: 15
      }
    }
  }
};

module.exports = mockLivenessData;
