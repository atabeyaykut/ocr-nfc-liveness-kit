/**
 * Secure OCR Reader - Token-based data exchange
 * 
 * Fixes: SEC-001 - PII leakage through React Native bridge
 * 
 * This implementation ensures that PII data never crosses the React Native bridge
 * in plain text. Instead, a session token is returned, and the actual data is
 * retrieved through a separate secure call.
 */

import { NativeModules, NativeEventEmitter } from 'react-native';

const { OCRModule } = NativeModules;
const ocrEventEmitter = new NativeEventEmitter(OCRModule);

class SecureOCRReader {
  constructor(options = {}) {
    this.options = options;
    this.listeners = [];
    
    // Setup event listeners
    if (options.onSuccess) {
      this.listeners.push(
        ocrEventEmitter.addListener('OCR_SUCCESS', options.onSuccess)
      );
    }
    
    if (options.onError) {
      this.listeners.push(
        ocrEventEmitter.addListener('OCR_ERROR', options.onError)
      );
    }
    
    if (options.onProgress) {
      this.listeners.push(
        ocrEventEmitter.addListener('OCR_PROGRESS', options.onProgress)
      );
    }
  }
  
  /**
   * Scan document and get session token
   * 
   * @param {string} imageUri - Path to image file
   * @returns {Promise<OCRTokenResponse>} Token response with metadata (NO PII)
   * 
   * @example
   * const tokenResponse = await ocrReader.scan('file:///path/to/image.jpg');
   * console.log(tokenResponse.sessionToken); // UUID
   * console.log(tokenResponse.confidence);   // 0.93
   * console.log(tokenResponse.status);       // 'SUCCESS'
   */
  async scan(imageUri) {
    try {
      if (!imageUri || typeof imageUri !== 'string') {
        throw new Error('Invalid image URI');
      }
      
      const response = await OCRModule.scan(imageUri);
      
      return {
        status: response.status,
        sessionToken: response.sessionToken,
        confidence: response.confidence,
        metadata: response.metadata
      };
    } catch (error) {
      throw this._formatError(error);
    }
  }
  
  /**
   * Retrieve OCR result using session token
   * 
   * ⚠️ SECURITY NOTE: This is the ONLY method that returns PII data.
   * The token is deleted after retrieval (one-time use).
   * 
   * @param {string} sessionToken - Session token from scan()
   * @returns {Promise<OCRResult>} Full OCR result including PII data
   * 
   * @example
   * const tokenResponse = await ocrReader.scan(imageUri);
   * const fullResult = await ocrReader.getResult(tokenResponse.sessionToken);
   * console.log(fullResult.fields.tcNo.value); // '12345678901'
   */
  async getResult(sessionToken) {
    try {
      if (!sessionToken || typeof sessionToken !== 'string') {
        throw new Error('Invalid session token');
      }
      
      const result = await OCRModule.getResult(sessionToken);
      
      return {
        status: result.status,
        confidence: result.confidence,
        fields: result.fields,
        metadata: result.metadata
      };
    } catch (error) {
      throw this._formatError(error);
    }
  }
  
  /**
   * Scan and immediately retrieve result (convenience method)
   * 
   * Use this when you need the full result immediately.
   * For better security, use scan() + getResult() separately.
   * 
   * @param {string} imageUri - Path to image file
   * @returns {Promise<OCRResult>} Full OCR result including PII data
   */
  async scanAndGetResult(imageUri) {
    const tokenResponse = await this.scan(imageUri);
    return await this.getResult(tokenResponse.sessionToken);
  }
  
  /**
   * Check if a session token is still valid
   * 
   * @param {string} sessionToken - Session token to validate
   * @returns {Promise<boolean>} True if token is valid and not expired
   */
  async isTokenValid(sessionToken) {
    try {
      return await OCRModule.isTokenValid(sessionToken);
    } catch (error) {
      return false;
    }
  }
  
  /**
   * Manually cleanup expired tokens
   * 
   * This is called automatically by the native module periodically,
   * but you can call it manually if needed.
   * 
   * @returns {Promise<boolean>} True if cleanup succeeded
   */
  async cleanupExpiredTokens() {
    try {
      return await OCRModule.cleanupExpiredTokens();
    } catch (error) {
      console.warn('Failed to cleanup expired tokens:', error);
      return false;
    }
  }
  
  /**
   * Cleanup event listeners
   */
  destroy() {
    this.listeners.forEach(listener => listener.remove());
    this.listeners = [];
  }
  
  // Private helper methods
  
  _formatError(error) {
    if (error.code) {
      return {
        code: error.code,
        message: error.message,
        confidence: error.userInfo?.confidence || 0,
        retryable: error.userInfo?.retryable || false
      };
    }
    
    return {
      code: 'OCR_UNKNOWN_ERROR',
      message: error.message || 'Unknown error occurred',
      confidence: 0,
      retryable: false
    };
  }
}

/**
 * Error codes
 */
export const OCR_ERROR_CODES = {
  // Confidence & Quality
  OCR_001: 'Low confidence score (<85%)',
  OCR_002: 'Low light condition',
  OCR_003: 'Glare detected',
  OCR_004: 'Blurry image',
  
  // Validation
  OCR_005: 'TC No format invalid',
  OCR_006: 'Timeout (>30s)',
  
  // Permissions
  OCR_007: 'Camera permission denied',
  OCR_008: 'Memory insufficient',
  
  // Token errors
  OCR_INVALID_TOKEN: 'Invalid session token',
  OCR_TOKEN_EXPIRED: 'Session token expired (5 minute TTL)',
  OCR_RETRIEVAL_ERROR: 'Failed to retrieve result',
  
  // General
  OCR_INVALID_IMAGE: 'Invalid image',
  OCR_999: 'Unexpected error'
};

/**
 * Status codes
 */
export const OCR_STATUS = {
  SUCCESS: 'SUCCESS',
  FAILED: 'FAILED',
  LOW_CONFIDENCE: 'LOW_CONFIDENCE',
  RETRY_REQUIRED: 'RETRY_REQUIRED'
};

export default SecureOCRReader;
