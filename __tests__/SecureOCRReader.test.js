/**
 * Unit tests for Secure OCR Reader
 * 
 * Tests for SEC-001 fix: Token-based data exchange
 */

import SecureOCRReader, { OCR_ERROR_CODES, OCR_STATUS } from '../modules/ocr/SecureOCRReader';
import { NativeModules } from 'react-native';

// Mock NativeModules
jest.mock('react-native', () => ({
  NativeModules: {
    OCRModule: {
      scan: jest.fn(),
      getResult: jest.fn(),
      isTokenValid: jest.fn(),
      cleanupExpiredTokens: jest.fn(),
    },
  },
  NativeEventEmitter: jest.fn(() => ({
    addListener: jest.fn(() => ({ remove: jest.fn() })),
  })),
}));

describe('SecureOCRReader', () => {
  let ocrReader;
  
  beforeEach(() => {
    jest.clearAllMocks();
    ocrReader = new SecureOCRReader();
  });
  
  afterEach(() => {
    ocrReader.destroy();
  });
  
  describe('scan()', () => {
    it('should return token response without PII data', async () => {
      const mockTokenResponse = {
        status: 'SUCCESS',
        sessionToken: '123e4567-e89b-12d3-a456-426614174000',
        confidence: 0.93,
        metadata: {
          processingTime: 1234,
          imageQuality: 0.88,
          hasGlare: false,
          isBlurry: false,
          lightingCondition: 'GOOD',
        },
      };
      
      NativeModules.OCRModule.scan.mockResolvedValue(mockTokenResponse);
      
      const result = await ocrReader.scan('file:///path/to/image.jpg');
      
      expect(result).toEqual(mockTokenResponse);
      expect(result.sessionToken).toBeDefined();
      expect(result.confidence).toBe(0.93);
      
      // Verify NO PII data in response
      expect(result.fields).toBeUndefined();
      expect(result.tcNo).toBeUndefined();
      expect(result.name).toBeUndefined();
    });
    
    it('should throw error for invalid image URI', async () => {
      await expect(ocrReader.scan(null)).rejects.toThrow('Invalid image URI');
      await expect(ocrReader.scan('')).rejects.toThrow('Invalid image URI');
      await expect(ocrReader.scan(123)).rejects.toThrow('Invalid image URI');
    });
    
    it('should handle low confidence error', async () => {
      const mockError = {
        code: 'OCR_001',
        message: 'Low confidence score: 0.75',
        userInfo: {
          confidence: 0.75,
          retryable: true,
        },
      };
      
      NativeModules.OCRModule.scan.mockRejectedValue(mockError);
      
      try {
        await ocrReader.scan('file:///path/to/image.jpg');
        fail('Should have thrown error');
      } catch (error) {
        expect(error.code).toBe('OCR_001');
        expect(error.confidence).toBe(0.75);
        expect(error.retryable).toBe(true);
      }
    });
  });
  
  describe('getResult()', () => {
    it('should return full OCR result with PII data', async () => {
      const mockFullResult = {
        status: 'SUCCESS',
        confidence: 0.93,
        fields: {
          tcNo: { value: '12345678901', confidence: 0.95 },
          name: { value: 'AHMET', confidence: 0.92 },
          surname: { value: 'YILMAZ', confidence: 0.93 },
          birthDate: { value: '01.01.1990', confidence: 0.91 },
          documentNo: { value: 'A12345678', confidence: 0.94 },
        },
        metadata: {
          processingTime: 1234,
          imageQuality: 0.88,
          hasGlare: false,
          isBlurry: false,
          lightingCondition: 'GOOD',
        },
      };
      
      NativeModules.OCRModule.getResult.mockResolvedValue(mockFullResult);
      
      const result = await ocrReader.getResult('123e4567-e89b-12d3-a456-426614174000');
      
      expect(result).toEqual(mockFullResult);
      expect(result.fields).toBeDefined();
      expect(result.fields.tcNo.value).toBe('12345678901');
      expect(result.fields.name.value).toBe('AHMET');
    });
    
    it('should throw error for invalid token', async () => {
      await expect(ocrReader.getResult(null)).rejects.toThrow('Invalid session token');
      await expect(ocrReader.getResult('')).rejects.toThrow('Invalid session token');
    });
    
    it('should handle expired token error', async () => {
      const mockError = {
        code: 'OCR_TOKEN_EXPIRED',
        message: 'Session token expired or invalid',
        userInfo: {
          confidence: 0,
          retryable: false,
        },
      };
      
      NativeModules.OCRModule.getResult.mockRejectedValue(mockError);
      
      try {
        await ocrReader.getResult('expired-token');
        fail('Should have thrown error');
      } catch (error) {
        expect(error.code).toBe('OCR_TOKEN_EXPIRED');
        expect(error.retryable).toBe(false);
      }
    });
  });
  
  describe('scanAndGetResult()', () => {
    it('should scan and immediately retrieve result', async () => {
      const mockTokenResponse = {
        status: 'SUCCESS',
        sessionToken: '123e4567-e89b-12d3-a456-426614174000',
        confidence: 0.93,
        metadata: {
          processingTime: 1234,
          imageQuality: 0.88,
          hasGlare: false,
          isBlurry: false,
          lightingCondition: 'GOOD',
        },
      };
      
      const mockFullResult = {
        status: 'SUCCESS',
        confidence: 0.93,
        fields: {
          tcNo: { value: '12345678901', confidence: 0.95 },
          name: { value: 'AHMET', confidence: 0.92 },
          surname: { value: 'YILMAZ', confidence: 0.93 },
          birthDate: { value: '01.01.1990', confidence: 0.91 },
          documentNo: { value: 'A12345678', confidence: 0.94 },
        },
        metadata: mockTokenResponse.metadata,
      };
      
      NativeModules.OCRModule.scan.mockResolvedValue(mockTokenResponse);
      NativeModules.OCRModule.getResult.mockResolvedValue(mockFullResult);
      
      const result = await ocrReader.scanAndGetResult('file:///path/to/image.jpg');
      
      expect(result).toEqual(mockFullResult);
      expect(NativeModules.OCRModule.scan).toHaveBeenCalledWith('file:///path/to/image.jpg');
      expect(NativeModules.OCRModule.getResult).toHaveBeenCalledWith(mockTokenResponse.sessionToken);
    });
  });
  
  describe('isTokenValid()', () => {
    it('should return true for valid token', async () => {
      NativeModules.OCRModule.isTokenValid.mockResolvedValue(true);
      
      const isValid = await ocrReader.isTokenValid('valid-token');
      
      expect(isValid).toBe(true);
    });
    
    it('should return false for invalid token', async () => {
      NativeModules.OCRModule.isTokenValid.mockResolvedValue(false);
      
      const isValid = await ocrReader.isTokenValid('invalid-token');
      
      expect(isValid).toBe(false);
    });
    
    it('should return false on error', async () => {
      NativeModules.OCRModule.isTokenValid.mockRejectedValue(new Error('Network error'));
      
      const isValid = await ocrReader.isTokenValid('token');
      
      expect(isValid).toBe(false);
    });
  });
  
  describe('cleanupExpiredTokens()', () => {
    it('should cleanup expired tokens successfully', async () => {
      NativeModules.OCRModule.cleanupExpiredTokens.mockResolvedValue(true);
      
      const result = await ocrReader.cleanupExpiredTokens();
      
      expect(result).toBe(true);
      expect(NativeModules.OCRModule.cleanupExpiredTokens).toHaveBeenCalled();
    });
    
    it('should return false on error', async () => {
      NativeModules.OCRModule.cleanupExpiredTokens.mockRejectedValue(new Error('Cleanup failed'));
      
      const result = await ocrReader.cleanupExpiredTokens();
      
      expect(result).toBe(false);
    });
  });
  
  describe('Security Tests', () => {
    it('should never expose PII data in scan() response', async () => {
      const mockTokenResponse = {
        status: 'SUCCESS',
        sessionToken: '123e4567-e89b-12d3-a456-426614174000',
        confidence: 0.93,
        metadata: {
          processingTime: 1234,
          imageQuality: 0.88,
          hasGlare: false,
          isBlurry: false,
          lightingCondition: 'GOOD',
        },
      };
      
      NativeModules.OCRModule.scan.mockResolvedValue(mockTokenResponse);
      
      const result = await ocrReader.scan('file:///path/to/image.jpg');
      
      // Verify NO PII fields present
      const piiFields = ['tcNo', 'name', 'surname', 'birthDate', 'documentNo', 'fields'];
      piiFields.forEach(field => {
        expect(result[field]).toBeUndefined();
      });
      
      // Verify only safe fields present
      expect(result.sessionToken).toBeDefined();
      expect(result.confidence).toBeDefined();
      expect(result.metadata).toBeDefined();
      expect(result.status).toBeDefined();
    });
    
    it('should only expose PII data through getResult()', async () => {
      const mockFullResult = {
        status: 'SUCCESS',
        confidence: 0.93,
        fields: {
          tcNo: { value: '12345678901', confidence: 0.95 },
          name: { value: 'AHMET', confidence: 0.92 },
          surname: { value: 'YILMAZ', confidence: 0.93 },
          birthDate: { value: '01.01.1990', confidence: 0.91 },
          documentNo: { value: 'A12345678', confidence: 0.94 },
        },
        metadata: {
          processingTime: 1234,
          imageQuality: 0.88,
          hasGlare: false,
          isBlurry: false,
          lightingCondition: 'GOOD',
        },
      };
      
      NativeModules.OCRModule.getResult.mockResolvedValue(mockFullResult);
      
      const result = await ocrReader.getResult('valid-token');
      
      // Verify PII fields ARE present
      expect(result.fields).toBeDefined();
      expect(result.fields.tcNo).toBeDefined();
      expect(result.fields.name).toBeDefined();
      expect(result.fields.surname).toBeDefined();
    });
  });
  
  describe('Event Listeners', () => {
    it('should setup event listeners on construction', () => {
      const onSuccess = jest.fn();
      const onError = jest.fn();
      const onProgress = jest.fn();
      
      const reader = new SecureOCRReader({
        onSuccess,
        onError,
        onProgress,
      });
      
      expect(reader.listeners.length).toBe(3);
      
      reader.destroy();
    });
    
    it('should cleanup event listeners on destroy', () => {
      const reader = new SecureOCRReader({
        onSuccess: jest.fn(),
        onError: jest.fn(),
      });
      
      expect(reader.listeners.length).toBe(2);
      
      reader.destroy();
      
      expect(reader.listeners.length).toBe(0);
    });
  });
});
