/**
 * TypeScript type definitions for Secure OCR Module
 * 
 * Fixes: SEC-001 - PII leakage through React Native bridge
 */

/**
 * OCR Token Response (NO PII DATA)
 * This is what scan() returns - only metadata and session token
 */
export interface OCRTokenResponse {
  status: 'SUCCESS' | 'FAILED' | 'LOW_CONFIDENCE' | 'RETRY_REQUIRED';
  sessionToken: string;  // UUID - use this to retrieve actual data
  confidence: number;    // 0.0 - 1.0
  metadata: OCRMetadata;
}

/**
 * Full OCR Result (CONTAINS PII DATA)
 * This is what getResult(token) returns
 */
export interface OCRResult {
  status: 'SUCCESS' | 'FAILED' | 'LOW_CONFIDENCE' | 'RETRY_REQUIRED';
  confidence: number;
  fields: OCRFields;
  metadata: OCRMetadata;
}

/**
 * Extracted OCR fields (PII DATA)
 */
export interface OCRFields {
  tcNo: FieldData;
  name: FieldData;
  surname: FieldData;
  birthDate: FieldData;
  documentNo: FieldData;
}

/**
 * Individual field data with confidence
 */
export interface FieldData {
  value: string;
  confidence: number;  // 0.0 - 1.0
}

/**
 * OCR metadata (no PII)
 */
export interface OCRMetadata {
  processingTime: number;      // milliseconds
  imageQuality: number;        // 0.0 - 1.0
  hasGlare: boolean;
  isBlurry: boolean;
  lightingCondition: 'GOOD' | 'LOW' | 'HIGH';
}

/**
 * OCR Error
 */
export interface OCRError {
  code: string;
  message: string;
  confidence: number;
  retryable: boolean;
}

/**
 * OCR Reader Options
 */
export interface OCRReaderOptions {
  onSuccess?: (event: { sessionToken: string; confidence: number }) => void;
  onError?: (error: OCRError) => void;
  onProgress?: (progress: { step: string; percentage: number }) => void;
}

/**
 * Secure OCR Reader Class
 */
export default class SecureOCRReader {
  constructor(options?: OCRReaderOptions);
  
  /**
   * Scan document and get session token
   * Returns only metadata and token (NO PII)
   */
  scan(imageUri: string): Promise<OCRTokenResponse>;
  
  /**
   * Retrieve OCR result using session token
   * ⚠️ This is the ONLY method that returns PII data
   * Token is deleted after retrieval (one-time use)
   */
  getResult(sessionToken: string): Promise<OCRResult>;
  
  /**
   * Scan and immediately retrieve result (convenience method)
   */
  scanAndGetResult(imageUri: string): Promise<OCRResult>;
  
  /**
   * Check if a session token is still valid
   */
  isTokenValid(sessionToken: string): Promise<boolean>;
  
  /**
   * Manually cleanup expired tokens
   */
  cleanupExpiredTokens(): Promise<boolean>;
  
  /**
   * Cleanup event listeners
   */
  destroy(): void;
}

/**
 * Error codes
 */
export const OCR_ERROR_CODES: {
  OCR_001: string;
  OCR_002: string;
  OCR_003: string;
  OCR_004: string;
  OCR_005: string;
  OCR_006: string;
  OCR_007: string;
  OCR_008: string;
  OCR_INVALID_TOKEN: string;
  OCR_TOKEN_EXPIRED: string;
  OCR_RETRIEVAL_ERROR: string;
  OCR_INVALID_IMAGE: string;
  OCR_999: string;
};

/**
 * Status codes
 */
export const OCR_STATUS: {
  SUCCESS: 'SUCCESS';
  FAILED: 'FAILED';
  LOW_CONFIDENCE: 'LOW_CONFIDENCE';
  RETRY_REQUIRED: 'RETRY_REQUIRED';
};
