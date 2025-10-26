/**
 * Error Handler Utility
 * Standardized error handling with recovery mechanisms
 * Production-safe: Backward compatible, doesn't break existing error handling
 */

/**
 * SDK Error Class with enhanced metadata
 */
class SDKError extends Error {
  constructor(code, message, options = {}) {
    super(message);
    this.name = 'SDKError';
    this.code = code;
    this.recoverable = options.recoverable || false;
    this.retryable = options.retryable || false;
    this.timestamp = Date.now();
    this.module = options.module || 'SDK';
    this.context = options.context || {};
    
    // Maintain stack trace
    if (Error.captureStackTrace) {
      Error.captureStackTrace(this, SDKError);
    }
  }

  /**
   * Get user-friendly error message
   */
  getUserMessage() {
    return ERROR_MESSAGES[this.code] || this.message;
  }

  /**
   * Check if error is recoverable
   */
  isRecoverable() {
    return this.recoverable;
  }

  /**
   * Check if operation can be retried
   */
  canRetry() {
    return this.retryable;
  }

  /**
   * Get suggested action
   */
  getSuggestedAction() {
    return SUGGESTED_ACTIONS[this.code] || 'Lütfen tekrar deneyin';
  }

  /**
   * Convert to JSON for logging
   */
  toJSON() {
    return {
      name: this.name,
      code: this.code,
      message: this.message,
      recoverable: this.recoverable,
      retryable: this.retryable,
      module: this.module,
      context: this.context,
      timestamp: this.timestamp,
    };
  }
}

/**
 * Error Codes
 */
const ERROR_CODES = {
  // OCR Errors (OCR0xx)
  OCR_CAMERA_PERMISSION_DENIED: 'OCR001',
  OCR_IMAGE_TOO_BLURRY: 'OCR002',
  OCR_IMAGE_TOO_DARK: 'OCR003',
  OCR_NO_TEXT_FOUND: 'OCR004',
  OCR_INVALID_IMAGE: 'OCR005',
  OCR_PROCESSING_FAILED: 'OCR006',
  OCR_TIMEOUT: 'OCR007',

  // NFC Errors (NFC0xx)
  NFC_NOT_SUPPORTED: 'NFC001',
  NFC_NOT_ENABLED: 'NFC002',
  NFC_TIMEOUT: 'NFC003',
  NFC_TAG_LOST: 'NFC004',
  NFC_READ_FAILED: 'NFC005',
  NFC_INVALID_CARD: 'NFC006',
  NFC_CONNECTION_LOST: 'NFC007',

  // Liveness Errors (LIV0xx)
  LIVENESS_CAMERA_PERMISSION_DENIED: 'LIV001',
  LIVENESS_FACE_NOT_DETECTED: 'LIV002',
  LIVENESS_MULTIPLE_FACES: 'LIV003',
  LIVENESS_GESTURE_FAILED: 'LIV004',
  LIVENESS_TIMEOUT: 'LIV005',
  LIVENESS_POOR_LIGHTING: 'LIV006',
  LIVENESS_SPOOF_DETECTED: 'LIV007',

  // General Errors (GEN0xx)
  NETWORK_ERROR: 'GEN001',
  STORAGE_ERROR: 'GEN002',
  PERMISSION_DENIED: 'GEN003',
  DEVICE_NOT_SUPPORTED: 'GEN004',
  UNKNOWN_ERROR: 'GEN999',
};

/**
 * User-friendly error messages (Turkish)
 */
const ERROR_MESSAGES = {
  // OCR
  OCR001: 'Kamera izni gerekli. Lütfen ayarlardan kamera erişimini etkinleştirin.',
  OCR002: 'Görüntü çok bulanık. Lütfen daha net bir fotoğraf çekin.',
  OCR003: 'Görüntü çok karanlık. Lütfen daha aydınlık bir ortamda çekin.',
  OCR004: 'Metin bulunamadı. Lütfen kimliğin doğru bölümünü çektiğinizden emin olun.',
  OCR005: 'Geçersiz görüntü formatı.',
  OCR006: 'Metin işleme başarısız. Lütfen tekrar deneyin.',
  OCR007: 'İşlem zaman aşımına uğradı. Lütfen tekrar deneyin.',

  // NFC
  NFC001: 'Cihazınız NFC desteklemiyor.',
  NFC002: 'NFC kapalı. Lütfen cihaz ayarlarından NFC özelliğini açın.',
  NFC003: 'NFC okuma zaman aşımı. Lütfen kartı daha yakın tutun.',
  NFC004: 'Kart çok hızlı uzaklaştırıldı. Lütfen kartı sabit tutun.',
  NFC005: 'NFC verisi okunamadı. Lütfen tekrar deneyin.',
  NFC006: 'Geçersiz kart türü. Lütfen Türk kimlik kartı kullanın.',
  NFC007: 'NFC bağlantısı kesildi. Lütfen kartı sabit tutun.',

  // Liveness
  LIV001: 'Kamera izni gerekli. Lütfen ayarlardan kamera erişimini etkinleştirin.',
  LIV002: 'Yüz algılanamadı. Lütfen kameraya doğru bakın.',
  LIV003: 'Birden fazla yüz algılandı. Lütfen tek kişi olduğunuzdan emin olun.',
  LIV004: 'Hareket algılanamadı. Lütfen komutu tekrar gerçekleştirin.',
  LIV005: 'Canlılık testi zaman aşımı. Lütfen tekrar deneyin.',
  LIV006: 'Aydınlatma yetersiz. Lütfen daha aydınlık bir ortamda deneyin.',
  LIV007: 'Canlılık doğrulaması başarısız. Lütfen gerçek bir kişi olarak katılın.',

  // General
  GEN001: 'Ağ bağlantısı hatası. Lütfen internet bağlantınızı kontrol edin.',
  GEN002: 'Veri kaydetme hatası. Lütfen cihaz hafızanızı kontrol edin.',
  GEN003: 'İzin reddedildi. Lütfen gerekli izinleri verin.',
  GEN004: 'Cihazınız desteklenmiyor.',
  GEN999: 'Bilinmeyen bir hata oluştu. Lütfen tekrar deneyin.',
};

/**
 * Suggested actions for each error
 */
const SUGGESTED_ACTIONS = {
  OCR001: 'Ayarlar → Uygulamalar → Kamera İzinleri',
  OCR002: 'Telefonu sabit tutun ve flash kullanmayı deneyin',
  OCR003: 'Daha aydınlık bir ortama geçin veya flash açın',
  OCR004: 'Kimliğin ön/arka yüzünü tam olarak çerçeve içine alın',
  OCR007: 'Daha hızlı bir internet bağlantısı kullanın',
  
  NFC002: 'Ayarlar → Bağlantılar → NFC',
  NFC003: 'Kartı telefonun arkasına 3-5 saniye sabit tutun',
  NFC004: 'Kartı okuma tamamlanana kadar sabit tutun',
  
  LIV001: 'Ayarlar → Uygulamalar → Kamera İzinleri',
  LIV002: 'Kameraya doğru bakın ve yüzünüzü tam gösterin',
  LIV003: 'Çevrenizde başka kimse olmadığından emin olun',
  LIV006: 'Pencere kenarına yaklaşın veya ışığı açın',
};

/**
 * Error Handler Class
 */
class ErrorHandler {
  /**
   * Create SDK Error
   * @param {string} code - Error code
   * @param {string} customMessage - Optional custom message
   * @param {object} options - Error options
   */
  static createError(code, customMessage = null, options = {}) {
    const message = customMessage || ERROR_MESSAGES[code] || 'Bilinmeyen hata';
    
    // Determine if error is recoverable/retryable based on code
    const errorConfig = this._getErrorConfig(code);
    
    return new SDKError(code, message, {
      ...errorConfig,
      ...options,
    });
  }

  /**
   * Handle error with logging and analytics
   * @param {Error} error - Error object
   * @param {object} context - Error context
   */
  static handleError(error, context = {}) {
    // Log error
    console.error('[ErrorHandler]', {
      error: error instanceof SDKError ? error.toJSON() : error.message,
      context,
      timestamp: new Date().toISOString(),
    });

    // Track error in analytics (if enabled)
    try {
      const analytics = require('./analytics');
      analytics.trackError(error, context);
    } catch (e) {
      // Analytics not available, ignore
    }

    return error;
  }

  /**
   * Retry operation with exponential backoff
   * @param {Function} operation - Operation to retry
   * @param {object} options - Retry options
   */
  static async retryOperation(operation, options = {}) {
    const {
      maxRetries = 3,
      delayMs = 1000,
      backoffMultiplier = 2,
      onRetry = null,
    } = options;

    let lastError;
    
    for (let attempt = 0; attempt < maxRetries; attempt++) {
      try {
        return await operation();
      } catch (error) {
        lastError = error;
        
        // Don't retry if error is not retryable
        if (error instanceof SDKError && !error.canRetry()) {
          throw error;
        }

        // Last attempt, throw error
        if (attempt === maxRetries - 1) {
          throw error;
        }

        // Calculate delay with exponential backoff
        const delay = delayMs * Math.pow(backoffMultiplier, attempt);
        
        // Notify retry callback
        if (onRetry) {
          onRetry(attempt + 1, maxRetries, delay, error);
        }

        // Wait before retry
        await new Promise(resolve => setTimeout(resolve, delay));
      }
    }

    throw lastError;
  }

  /**
   * Get error configuration
   * @private
   */
  static _getErrorConfig(code) {
    // Retryable errors
    const retryableErrors = [
      'OCR007', 'NFC003', 'NFC007', 'LIV005', 'GEN001'
    ];

    // Recoverable errors (user can fix)
    const recoverableErrors = [
      'OCR001', 'OCR002', 'OCR003', 'OCR004',
      'NFC002', 'NFC003', 'NFC004',
      'LIV001', 'LIV002', 'LIV004', 'LIV006'
    ];

    return {
      retryable: retryableErrors.includes(code),
      recoverable: recoverableErrors.includes(code),
    };
  }
}

module.exports = {
  SDKError,
  ErrorHandler,
  ERROR_CODES,
  ERROR_MESSAGES,
  SUGGESTED_ACTIONS,
};
