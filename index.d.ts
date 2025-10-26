/**
 * TypeScript Type Definitions for @turkiye/kimlik-sdk
 * Complete type definitions for all SDK modules
 * Version: 1.0.0
 */

// ============================================================================
// OCR Module Types
// ============================================================================

export interface OCRConfig {
  cardSide?: 'front' | 'back';
  DEFAULT_LANGUAGE?: string;
  IMAGE_QUALITY?: number;
  MIN_CONFIDENCE?: number;
}

export interface OCROptions {
  cardSide?: 'front' | 'back';
  language?: string;
  confidence?: number;
  enhanceImage?: boolean;
  onSuccess?: (data: OCRResult) => void;
  onError?: (error: Error) => void;
  onStatusChange?: (newStatus: OCRStatus, oldStatus: OCRStatus) => void;
}

export type OCRStatus = 
  | 'idle'
  | 'initializing'
  | 'ready'
  | 'capturing'
  | 'processing'
  | 'success'
  | 'error';

export interface OCRResult {
  text: string;
  confidence: number;
  blocks: TextBlock[];
  language: string;
  processingTime: number;
  timestamp: number;
  extractedFields?: {
    tcNo?: string;
    name?: string;
    surname?: string;
  };
}

export interface TextBlock {
  text: string;
  confidence: number;
  boundingBox: {
    x: number;
    y: number;
    width: number;
    height: number;
  };
}

export interface PerformanceMetrics {
  totalProcessingTime: number;
  imageProcessingTime: number;
  ocrProcessingTime: number;
  lastProcessedImageSize: {
    width: number;
    height: number;
  } | null;
}

declare class OCRReader {
  constructor(options?: OCROptions);
  
  startOCR(options?: OCROptions): Promise<boolean>;
  captureImage(options?: CameraOptions): Promise<string>;
  cropImage(imageUri: string, cropData: CropData): Promise<string>;
  extractText(imageUri: string, options?: OCROptions): Promise<OCRResult>;
  startCompleteOCRWorkflow(options?: WorkflowOptions): Promise<OCRResult>;
  
  getStatus(): OCRStatus;
  getLastExtractedText(): OCRResult | null;
  getPerformanceMetrics(): PerformanceMetrics;
  extractField(text: string, fieldType: 'tc_no' | 'name' | 'surname'): string | null;
  reset(): void;
}

declare class SecureOCRReader {
  constructor(options?: OCROptions);
  
  scan(imageUri: string): Promise<OCRTokenResponse>;
  getResult(sessionToken: string): Promise<OCRResult>;
  scanAndGetResult(imageUri: string): Promise<OCRResult>;
  isTokenValid(sessionToken: string): Promise<boolean>;
  cleanupExpiredTokens(): Promise<boolean>;
  destroy(): void;
}

// ============================================================================
// NFC Module Types
// ============================================================================

export interface NFCConfig {
  timeout?: number;
  alertMessage?: string;
  technologies?: string[];
  enableReaderMode?: boolean;
  readRetries?: number;
  enablePerformanceLogging?: boolean;
}

export interface NFCOptions extends NFCConfig {
  useRealNFC?: boolean;
  onSuccess?: (data: NFCData) => void;
  onError?: (error: Error) => void;
  onStatusChange?: (newStatus: NFCStatus, oldStatus: NFCStatus) => void;
  onProgress?: (message: string) => void;
}

export type NFCStatus =
  | 'idle'
  | 'initializing'
  | 'ready'
  | 'scanning'
  | 'reading'
  | 'processing'
  | 'success'
  | 'error';

export interface NFCData {
  cardType: string;
  firstName: string;
  lastName: string;
  name: string;
  surname: string;
  idNumber: string;
  birthDate: string;
  birthPlace?: string;
  nationality: string;
  gender: string;
  motherName?: string;
  fatherName?: string;
  serialNumber?: string;
  documentNumber: string;
  issueDate?: string;
  expiryDate?: string;
  issuingAuthority?: string;
  nfcData: {
    uid: string;
    technology: string;
    readTime: string;
    signalStrength?: number;
    tagType?: string;
  };
  verification: {
    isValid: boolean;
    checksum?: string;
    digitalSignature?: string;
    readMethod: 'NFC_REAL' | 'NFC_MOCK';
  };
}

export interface PerformanceLog {
  timestamp: string;
  operation: string;
  duration: number;
  dataSize?: number;
  useRealNFC?: boolean;
  success: boolean;
  error?: string;
}

declare class NFCReader {
  constructor(options?: NFCOptions);
  
  startNFC(): Promise<boolean>;
  readNFCData(options?: NFCOptions): Promise<NFCData>;
  stopNFC(): Promise<void>;
  
  getStatus(): NFCStatus;
  getLastReadData(): NFCData | null;
  getPerformanceLogs(): PerformanceLog[];
  clearPerformanceLogs(): void;
}

// ============================================================================
// Liveness Module Types
// ============================================================================

export interface LivenessConfig {
  cameraType?: 'front' | 'back';
  captureQuality?: number;
  timeoutDuration?: number;
  instructionDelay?: number;
  maxRetries?: number;
  enableFaceDetection?: boolean;
  enableMotionDetection?: boolean;
  realTimeMode?: boolean;
}

export interface LivenessOptions extends LivenessConfig {
  commands?: LivenessInstruction[];
  enableVoice?: boolean;
  difficulty?: 'easy' | 'medium' | 'hard';
  commandCount?: number;
  onStatusChange?: (newStatus: LivenessStatus, oldStatus: LivenessStatus) => void;
  onInstructionGiven?: (instruction: InstructionEvent) => void;
  onCaptureComplete?: (data: any) => void;
  onSuccess?: (result: LivenessResult) => void;
  onError?: (error: Error) => void;
  onProgress?: (message: string) => void;
  onMotionDetected?: (motion: MotionData) => void;
}

export type LivenessStatus =
  | 'idle'
  | 'initializing'
  | 'camera_ready'
  | 'instruction_given'
  | 'capturing'
  | 'processing'
  | 'success'
  | 'error';

export type LivenessInstruction =
  | 'look_straight'
  | 'blink'
  | 'turn_left'
  | 'turn_right'
  | 'smile'
  | 'nod';

export interface Command {
  type: LivenessInstruction;
  instruction: string;
  message: string;
  icon: string;
  duration: number;
  timeout: number;
  sequenceId?: number;
}

export interface InstructionEvent {
  command: Command;
  instruction: string;
  message: string;
  icon: string;
  duration: number;
  timestamp: string;
}

export interface LivenessResult {
  status: 'completed';
  capturedImages: number;
  duration: number;
  instructions: string[];
  realTimeMode: boolean;
  confidence?: number;
}

export interface ValidationResult {
  isValid: boolean;
  confidence: number;
  error?: string;
  details?: any;
}

export interface MotionData {
  type: string;
  confidence: number;
  timestamp: number;
}

declare class LivenessDetector {
  constructor(config?: LivenessConfig);
  
  startLivenessTest(options?: LivenessOptions): Promise<boolean>;
  captureFrontCamera(options?: any): Promise<any>;
  giveInstruction(instruction: LivenessInstruction | Command, options?: any): Promise<any>;
  validateResponse(captureData: any, expectedInstruction: LivenessInstruction | Command): Promise<ValidationResult>;
  stopLivenessTest(): Promise<void>;
  
  reset(): void;
  getStatus(): LivenessStatus;
  getCapturedImagesCount(): number;
}

// ============================================================================
// Utility Types
// ============================================================================

export interface CameraOptions {
  quality?: number;
  flash?: 'on' | 'off' | 'auto';
  cameraPosition?: 'front' | 'back';
  showGuide?: boolean;
}

export interface CropData {
  x: number;
  y: number;
  width: number;
  height: number;
}

export interface WorkflowOptions {
  showCamera?: boolean;
  autoEnhance?: boolean;
  language?: string;
  confidence?: number;
}

export interface OCRTokenResponse {
  status: 'SUCCESS' | 'FAILED' | 'LOW_CONFIDENCE' | 'RETRY_REQUIRED';
  sessionToken: string;
  confidence: number;
  metadata: {
    processingTime: number;
    imageQuality: number;
    hasGlare: boolean;
    isBlurry: boolean;
    lightingCondition: 'GOOD' | 'LOW' | 'HIGH';
  };
}

// ============================================================================
// Analytics Types
// ============================================================================

export interface AnalyticsConfig {
  enabled: boolean;
  provider?: 'console' | 'firebase' | 'amplitude' | 'custom';
  providerInstance?: any;
}

export interface AnalyticsEvent {
  category: string;
  action: string;
  label?: string;
  value?: number;
  timestamp: string;
}

declare class Analytics {
  initialize(config: AnalyticsConfig): void;
  trackEvent(category: string, action: string, label?: string, value?: number): void;
  trackPerformance(metric: string, duration: number, metadata?: any): void;
  trackError(error: Error, context?: any): void;
  getEventQueue(): AnalyticsEvent[];
  clearEventQueue(): void;
  disable(): void;
}

// ============================================================================
// Error Handling Types
// ============================================================================

export interface ErrorOptions {
  recoverable?: boolean;
  retryable?: boolean;
  module?: string;
  context?: any;
}

declare class SDKError extends Error {
  code: string;
  recoverable: boolean;
  retryable: boolean;
  timestamp: number;
  module: string;
  context: any;
  
  constructor(code: string, message: string, options?: ErrorOptions);
  
  getUserMessage(): string;
  isRecoverable(): boolean;
  canRetry(): boolean;
  getSuggestedAction(): string;
  toJSON(): any;
}

export interface RetryOptions {
  maxRetries?: number;
  delayMs?: number;
  backoffMultiplier?: number;
  onRetry?: (attempt: number, maxRetries: number, delay: number, error: Error) => void;
}

declare class ErrorHandler {
  static createError(code: string, customMessage?: string, options?: ErrorOptions): SDKError;
  static handleError(error: Error, context?: any): Error;
  static retryOperation<T>(operation: () => Promise<T>, options?: RetryOptions): Promise<T>;
}

export const ERROR_CODES: {
  // OCR
  OCR_CAMERA_PERMISSION_DENIED: string;
  OCR_IMAGE_TOO_BLURRY: string;
  OCR_IMAGE_TOO_DARK: string;
  OCR_NO_TEXT_FOUND: string;
  OCR_INVALID_IMAGE: string;
  OCR_PROCESSING_FAILED: string;
  OCR_TIMEOUT: string;
  
  // NFC
  NFC_NOT_SUPPORTED: string;
  NFC_NOT_ENABLED: string;
  NFC_TIMEOUT: string;
  NFC_TAG_LOST: string;
  NFC_READ_FAILED: string;
  NFC_INVALID_CARD: string;
  NFC_CONNECTION_LOST: string;
  
  // Liveness
  LIVENESS_CAMERA_PERMISSION_DENIED: string;
  LIVENESS_FACE_NOT_DETECTED: string;
  LIVENESS_MULTIPLE_FACES: string;
  LIVENESS_GESTURE_FAILED: string;
  LIVENESS_TIMEOUT: string;
  LIVENESS_POOR_LIGHTING: string;
  LIVENESS_SPOOF_DETECTED: string;
  
  // General
  NETWORK_ERROR: string;
  STORAGE_ERROR: string;
  PERMISSION_DENIED: string;
  DEVICE_NOT_SUPPORTED: string;
  UNKNOWN_ERROR: string;
};

// ============================================================================
// Performance Monitor Types
// ============================================================================

export interface PerformanceMetricData {
  name: string;
  duration: number;
  startTime: number;
  endTime: number;
  markers: Array<{
    name: string;
    timestamp: number;
    timeFromStart: number;
  }>;
  metadata: any;
}

export interface PerformanceStatistics {
  name: string;
  count: number;
  avg: number;
  min: number;
  max: number;
  sum: number;
  p50: number;
  p95: number;
  p99: number;
}

declare class PerformanceMonitor {
  setEnabled(enabled: boolean): void;
  start(name: string): any;
  mark(name: string, markerName: string): void;
  end(name: string): number | null;
  measure<T>(name: string, fn: () => Promise<T>): Promise<T>;
  getMetric(name: string): PerformanceMetricData | null;
  getAllMetrics(): PerformanceMetricData[];
  getMetricsByPattern(pattern: string | RegExp): PerformanceMetricData[];
  getStatistics(name: string): PerformanceStatistics | null;
  getMemoryUsage(): any;
  clear(): void;
  export(): string;
}

// ============================================================================
// Logger Types
// ============================================================================

export const LOG_LEVELS: {
  ERROR: number;
  WARN: number;
  INFO: number;
  DEBUG: number;
};

declare class Logger {
  constructor(level?: number);
  error(message: string, ...args: any[]): void;
  warn(message: string, ...args: any[]): void;
  info(message: string, ...args: any[]): void;
  debug(message: string, ...args: any[]): void;
}

// ============================================================================
// SDK Configuration
// ============================================================================

export interface SDKConfig {
  version: string;
  name: string;
  supportedPlatforms: string[];
  minReactNativeVersion: string;
  minIOSVersion: string;
  minAndroidSDK: number;
  features: {
    ocr: boolean;
    nfc: boolean;
    liveness: boolean;
    secureStorage: boolean;
    dualSideReading: boolean;
    mrzSupport: boolean;
  };
}

// ============================================================================
// Main SDK Export
// ============================================================================

export {
  OCRReader,
  SecureOCRReader,
  NFCReader,
  LivenessDetector,
  Analytics,
  ErrorHandler,
  SDKError,
  Logger,
  PerformanceMonitor,
};

export const SDK_VERSION: string;
export const SDK_NAME: string;
export const SDKConfig: SDKConfig;

declare const sdk: {
  OCRReader: typeof OCRReader;
  SecureOCRReader: typeof SecureOCRReader;
  NFCReader: typeof NFCReader;
  LivenessDetector: typeof LivenessDetector;
  SDKConfig: SDKConfig;
  SDK_VERSION: string;
  SDK_NAME: string;
};

export default sdk;
