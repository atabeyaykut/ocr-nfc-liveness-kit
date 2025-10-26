/**
 * OCR Mobile SDK - Main Export
 * 
 * Kullanıcı uygulamalarına entegre edilebilir SDK modülleri
 * 
 * @module @turkiye/kimlik-sdk
 * @version 1.0.0
 * @author OCR Mobile SDK Team
 * 
 * KULLANIM:
 * const { OCRReader, NFCReader, LivenessDetector } = require('@turkiye/kimlik-sdk');
 */

// =============================================================================
// OCR MODÜLÜ - Kimlik Kartı Okuma
// =============================================================================
const OCRReader = require('./modules/ocr/OCRReader');
const SecureOCRReader = require('./modules/ocr/SecureOCRReader').default || require('./modules/ocr/SecureOCRReader');
const { OCR_STATUS, OCR_ERROR_CODES } = require('./modules/ocr/types');
const OCRCamera = require('./modules/ocr/OCRCamera').default || require('./modules/ocr/OCRCamera');
const OCRCameraCapture = require('./modules/ocr/OCRCameraCapture').default || require('./modules/ocr/OCRCameraCapture');
const OCRTypes = require('./modules/ocr/types');

// =============================================================================
// NFC MODÜLÜ - NFC ile Kimlik Okuma
// =============================================================================
const NFCReader = require('./modules/nfc/NFCReader');
const { NFC_STATUS, NFC_CONFIG } = require('./modules/nfc/NFCReader');

// =============================================================================
// LIVENESS MODÜLÜ - Canlılık Testi
// =============================================================================
const LivenessDetector = require('./modules/liveness/LivenessDetector');
const { 
  LIVENESS_STATUS, 
  LIVENESS_INSTRUCTIONS, 
  LIVENESS_CONFIG 
} = require('./modules/liveness/LivenessDetector');

// =============================================================================
// YARDIMCI MODÜLLER
// =============================================================================
const Logger = require('./utils/logger');
const { ImageProcessor } = require('./utils/imageProcessor');

// Optional Enhancement Utilities (Production-safe, opt-in)
const Analytics = require('./utils/analytics');
const { ErrorHandler, SDKError, ERROR_CODES, ERROR_MESSAGES, SUGGESTED_ACTIONS } = require('./utils/errorHandler');
const PerformanceMonitor = require('./utils/performanceMonitor');

// =============================================================================
// KOMPLEKSİYA MODÜLLER (React Component'leri - Opsiyonel)
// =============================================================================
// UI Component'leri isteğe bağlı olarak kullanılabilir
const OCRReaderModule = require('./modules/ocr/OCRReaderModule');
const OCRReaderScreen = OCRReaderModule.default || OCRReaderModule;

const NFCReaderModuleImport = require('./modules/nfc/NFCReaderModule');
const NFCReaderScreen = NFCReaderModuleImport.default || NFCReaderModuleImport;

const LivenessDetectionModuleImport = require('./modules/liveness/LivenessDetectionModule');
const LivenessDetectionScreen = LivenessDetectionModuleImport.default || LivenessDetectionModuleImport;

// =============================================================================
// DEMO SCREENS (Referans Implementasyonlar)
// =============================================================================
const DualSideOCRDemoImport = require('./examples/DualSideOCRDemo');
const DualSideOCRDemo = DualSideOCRDemoImport.default || DualSideOCRDemoImport;

const SecureOCRExampleImport = require('./examples/SecureOCRExample');
const SecureOCRExample = SecureOCRExampleImport.default || SecureOCRExampleImport;

// =============================================================================
// CONSTANTS & CONFIGURATION
// =============================================================================
const SDK_VERSION = '1.0.0';
const SDK_NAME = '@turkiye/kimlik-sdk';

/**
 * SDK Configuration Object
 */
const SDKConfig = {
  version: SDK_VERSION,
  name: SDK_NAME,
  supportedPlatforms: ['ios', 'android'],
  minReactNativeVersion: '0.63.0',
  minIOSVersion: '14.0',
  minAndroidSDK: 21,
  features: {
    ocr: true,
    nfc: true,
    liveness: true,
    secureStorage: true,
    dualSideReading: true,
    mrzSupport: true,
  }
};

// =============================================================================
// EXPORTS
// =============================================================================
module.exports = {
  // Main Modules
  OCRReader,
  SecureOCRReader,
  NFCReader,
  LivenessDetector,
  
  // Screens
  OCRReaderScreen,
  NFCReaderScreen,
  LivenessDetectionScreen,
  
  // Demo Screens
  DualSideOCRDemo,
  SecureOCRExample,
  
  // Utils
  Logger,
  ImageProcessor,
  
  // Enhancement Utilities (Opt-in)
  Analytics,
  ErrorHandler,
  SDKError,
  PerformanceMonitor,
  
  // Config
  SDKConfig,
  SDK_VERSION,
  SDK_NAME,
  
  // Constants
  OCR_STATUS,
  OCR_ERROR_CODES,
  NFC_STATUS,
  NFC_CONFIG,
  LIVENESS_STATUS,
  LIVENESS_INSTRUCTIONS,
  LIVENESS_CONFIG,
  ERROR_CODES,
  ERROR_MESSAGES,
  SUGGESTED_ACTIONS,
  
  // OCR Types
  ...OCRTypes,
};

// Named exports for destructuring
module.exports.OCRReader = OCRReader;
module.exports.SecureOCRReader = SecureOCRReader;
module.exports.NFCReader = NFCReader;
module.exports.LivenessDetector = LivenessDetector;
module.exports.OCRCamera = OCRCamera;
module.exports.OCRCameraCapture = OCRCameraCapture;
module.exports.Logger = Logger;
module.exports.ImageProcessor = ImageProcessor;
