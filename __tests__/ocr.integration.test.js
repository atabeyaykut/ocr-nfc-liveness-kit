/**
 * OCR Integration Tests
 * Tests the complete OCR workflow with mock ID card data
 */

import { OCRReader } from '../modules/ocr/OCRReader';
import { ImageProcessor } from '../utils/imageProcessor';
import { Logger } from '../utils/logger';

// Mock react-native-text-recognition
jest.mock('react-native-text-recognition', () => ({
  TextRecognition: {
    recognize: jest.fn(),
  },
}));

// Mock image processor
jest.mock('../utils/imageProcessor');
jest.mock('../utils/logger');

// Mock ID card data for testing
const MOCK_ID_CARD_DATA = {
  // Turkish ID card OCR text sample
  turkishId: {
    text: `TÜRKİYE CUMHURİYETİ
    KİMLİK KARTI
    
    T.C. KİMLİK NO
    12345678901
    
    ADI
    MEHMET
    
    SOYADI
    YILMAZ
    
    DOĞUM TARİHİ
    15.06.1985
    
    DOĞUM YERİ
    İSTANBUL`,
    expectedFields: {
      tcNo: '12345678901',
      name: 'MEHMET',
      surname: 'YILMAZ'
    }
  },
  
  // Low quality OCR text (with noise)
  noisyText: {
    text: `TÜRK1YE CUMHUR1YET1
    K1ML1K KART1
    
    T.C. K1ML1K NO
    12345678901
    
    AD1
    M3HM3T
    
    SOYAD1
    Y1LMAZ`,
    expectedFields: {
      tcNo: '12345678901',
      name: 'M3HM3T', // Will be cleaned by extraction logic
      surname: 'Y1LMAZ'
    }
  },
  
  // Incomplete data
  incompleteData: {
    text: `TÜRKİYE CUMHURİYETİ
    
    T.C. KİMLİK NO
    12345678901
    
    ADI
    MEHMET`,
    expectedFields: {
      tcNo: '12345678901',
      name: 'MEHMET',
      surname: null // Missing surname
    }
  }
};

describe('OCR Integration Tests', () => {
  let ocrReader;
  let mockOnSuccess;
  let mockOnError;
  let mockOnStatusChange;

  beforeEach(() => {
    jest.clearAllMocks();
    
    mockOnSuccess = jest.fn();
    mockOnError = jest.fn();
    mockOnStatusChange = jest.fn();
    
    ocrReader = new OCRReader({
      onSuccess: mockOnSuccess,
      onError: mockOnError,
      onStatusChange: mockOnStatusChange
    });

    // Setup default mocks
    ImageProcessor.getImageDimensions.mockResolvedValue({
      width: 1200,
      height: 800
    });
    ImageProcessor.enhanceImage.mockResolvedValue('enhanced_image_uri');
    ImageProcessor.cropImage.mockResolvedValue('cropped_image_uri');
  });

  describe('Complete OCR Workflow Tests', () => {
    test('should complete full workflow with Turkish ID card', async () => {
      // Mock OCR recognition
      const { TextRecognition } = require('react-native-text-recognition');
      TextRecognition.recognize.mockResolvedValue({
        text: MOCK_ID_CARD_DATA.turkishId.text,
        confidence: 0.85
      });

      // Start workflow
      const workflowPromise = ocrReader.startCompleteOCRWorkflow({
        language: 'tr',
        confidence: 0.7,
        autoEnhance: true
      });

      // Simulate image capture and processing
      const imageData = {
        uri: 'test_image_uri',
        cropArea: { x: 0, y: 0, width: 100, height: 100 },
        timestamp: Date.now()
      };

      const result = await ocrReader.processImageFromWorkflow(imageData);

      // Verify workflow completion
      expect(result.workflow.completed).toBe(true);
      expect(result.workflow.steps).toEqual([
        'initialize', 'capture', 'optimize', 'crop', 'ocr', 'extract_fields'
      ]);

      // Verify extracted fields
      expect(result.extractedFields.tcNo).toBe(MOCK_ID_CARD_DATA.turkishId.expectedFields.tcNo);
      expect(result.extractedFields.name).toBe(MOCK_ID_CARD_DATA.turkishId.expectedFields.name);
      expect(result.extractedFields.surname).toBe(MOCK_ID_CARD_DATA.turkishId.expectedFields.surname);

      // Verify performance metrics
      expect(result.performanceMetrics.totalProcessingTime).toBeGreaterThan(0);
      expect(result.performanceMetrics.imageProcessingTime).toBeGreaterThan(0);
      expect(result.performanceMetrics.ocrProcessingTime).toBeGreaterThan(0);

      // Verify callbacks were called
      expect(mockOnSuccess).toHaveBeenCalledWith(result);
      expect(mockOnStatusChange).toHaveBeenCalled();
    });

    test('should handle noisy OCR text and extract fields correctly', async () => {
      const { TextRecognition } = require('react-native-text-recognition');
      TextRecognition.recognize.mockResolvedValue({
        text: MOCK_ID_CARD_DATA.noisyText.text,
        confidence: 0.65
      });

      const workflowPromise = ocrReader.startCompleteOCRWorkflow();
      
      const imageData = {
        uri: 'noisy_image_uri',
        cropArea: null // No cropping
      };

      const result = await ocrReader.processImageFromWorkflow(imageData);

      // Should still extract TC number correctly
      expect(result.extractedFields.tcNo).toBe(MOCK_ID_CARD_DATA.noisyText.expectedFields.tcNo);
      
      // Name and surname might be noisy but should be extracted
      expect(result.extractedFields.name).toBeTruthy();
      expect(result.extractedFields.surname).toBeTruthy();
    });

    test('should handle incomplete ID card data gracefully', async () => {
      const { TextRecognition } = require('react-native-text-recognition');
      TextRecognition.recognize.mockResolvedValue({
        text: MOCK_ID_CARD_DATA.incompleteData.text,
        confidence: 0.75
      });

      const workflowPromise = ocrReader.startCompleteOCRWorkflow();
      
      const imageData = {
        uri: 'incomplete_image_uri'
      };

      const result = await ocrReader.processImageFromWorkflow(imageData);

      // Should extract available fields
      expect(result.extractedFields.tcNo).toBe(MOCK_ID_CARD_DATA.incompleteData.expectedFields.tcNo);
      expect(result.extractedFields.name).toBe(MOCK_ID_CARD_DATA.incompleteData.expectedFields.name);
      expect(result.extractedFields.surname).toBeNull();

      // Should still complete workflow successfully
      expect(result.workflow.completed).toBe(true);
    });
  });

  describe('OCR Accuracy Tests', () => {
    test('should extract Turkish ID number correctly', async () => {
      const testCases = [
        { input: 'T.C. KİMLİK NO\n12345678901', expected: '12345678901' },
        { input: 'TC NO: 98765432109', expected: '98765432109' },
        { input: 'KİMLİK NUMARASI 11111111110', expected: '11111111110' },
        { input: 'T.C. 55555555555 NUMARA', expected: '55555555555' }
      ];

      testCases.forEach(testCase => {
        const result = ocrReader.extractField(testCase.input, 'tc_no');
        expect(result).toBe(testCase.expected);
      });
    });

    test('should extract name field correctly', async () => {
      const testCases = [
        { input: 'ADI\nMEHMET', expected: 'MEHMET' },
        { input: 'AD: AYŞE', expected: 'AYŞE' },
        { input: 'İSİM AHMET ALİ', expected: 'AHMET ALİ' },
        { input: 'ADI: FATMA NUR', expected: 'FATMA NUR' }
      ];

      testCases.forEach(testCase => {
        const result = ocrReader.extractField(testCase.input, 'name');
        expect(result).toBe(testCase.expected);
      });
    });

    test('should extract surname field correctly', async () => {
      const testCases = [
        { input: 'SOYADI\nYILMAZ', expected: 'YILMAZ' },
        { input: 'SOYAD: ÖZKAN', expected: 'ÖZKAN' },
        { input: 'SOYİSİM DEMİR', expected: 'DEMİR' },
        { input: 'SOYADI: KAYA OĞLU', expected: 'KAYA OĞLU' }
      ];

      testCases.forEach(testCase => {
        const result = ocrReader.extractField(testCase.input, 'surname');
        expect(result).toBe(testCase.expected);
      });
    });

    test('should return null for invalid or missing fields', async () => {
      const invalidInputs = [
        '', // Empty string
        'RANDOM TEXT WITHOUT FIELDS',
        'T.C. INVALID_NUMBER',
        'ADI\n', // Empty name
        'SOYADI\n   ' // Whitespace only
      ];

      invalidInputs.forEach(input => {
        expect(ocrReader.extractField(input, 'tc_no')).toBeNull();
        expect(ocrReader.extractField(input, 'name')).toBeNull();
        expect(ocrReader.extractField(input, 'surname')).toBeNull();
      });
    });
  });

  describe('Performance Tests', () => {
    test('should complete OCR workflow within acceptable time limits', async () => {
      const { TextRecognition } = require('react-native-text-recognition');
      TextRecognition.recognize.mockResolvedValue({
        text: MOCK_ID_CARD_DATA.turkishId.text,
        confidence: 0.85
      });

      const startTime = Date.now();
      
      const workflowPromise = ocrReader.startCompleteOCRWorkflow();
      
      const imageData = {
        uri: 'performance_test_image',
        cropArea: { x: 0, y: 0, width: 100, height: 100 }
      };

      const result = await ocrReader.processImageFromWorkflow(imageData);
      const totalTime = Date.now() - startTime;

      // Should complete within 5 seconds (generous limit for testing)
      expect(totalTime).toBeLessThan(5000);
      
      // Performance metrics should be recorded
      expect(result.performanceMetrics.totalProcessingTime).toBeGreaterThan(0);
      expect(result.performanceMetrics.totalProcessingTime).toBeLessThan(totalTime);
    });

    test('should optimize large images for better performance', async () => {
      // Mock large image dimensions
      ImageProcessor.getImageDimensions.mockResolvedValue({
        width: 3000,
        height: 2000
      });
      ImageProcessor.resizeImage.mockResolvedValue('resized_image_uri');

      const { TextRecognition } = require('react-native-text-recognition');
      TextRecognition.recognize.mockResolvedValue({
        text: MOCK_ID_CARD_DATA.turkishId.text,
        confidence: 0.85
      });

      const workflowPromise = ocrReader.startCompleteOCRWorkflow({
        autoEnhance: true
      });
      
      const imageData = {
        uri: 'large_image_uri'
      };

      await ocrReader.processImageFromWorkflow(imageData);

      // Should have resized the image
      expect(ImageProcessor.resizeImage).toHaveBeenCalledWith(
        'large_image_uri',
        { width: 1600, height: 1067 } // Maintains aspect ratio
      );
    });
  });

  describe('Error Handling Tests', () => {
    test('should handle OCR recognition failures gracefully', async () => {
      const { TextRecognition } = require('react-native-text-recognition');
      TextRecognition.recognize.mockRejectedValue(new Error('OCR service unavailable'));

      const workflowPromise = ocrReader.startCompleteOCRWorkflow();
      
      const imageData = {
        uri: 'failing_image_uri'
      };

      await expect(ocrReader.processImageFromWorkflow(imageData))
        .rejects.toThrow('OCR service unavailable');

      expect(mockOnError).toHaveBeenCalled();
    });

    test('should handle image processing failures', async () => {
      ImageProcessor.enhanceImage.mockRejectedValue(new Error('Image processing failed'));

      const { TextRecognition } = require('react-native-text-recognition');
      TextRecognition.recognize.mockResolvedValue({
        text: MOCK_ID_CARD_DATA.turkishId.text,
        confidence: 0.85
      });

      const workflowPromise = ocrReader.startCompleteOCRWorkflow({
        autoEnhance: true
      });
      
      const imageData = {
        uri: 'processing_fail_image'
      };

      // Should fallback to original image when enhancement fails
      const result = await ocrReader.processImageFromWorkflow(imageData);
      expect(result.workflow.completed).toBe(true);
    });

    test('should handle workflow without active session', async () => {
      const imageData = {
        uri: 'no_workflow_image'
      };

      await expect(ocrReader.processImageFromWorkflow(imageData))
        .rejects.toThrow('No active workflow found');
    });
  });

  describe('Callback Integration Tests', () => {
    test('should call all callbacks in correct sequence', async () => {
      const { TextRecognition } = require('react-native-text-recognition');
      TextRecognition.recognize.mockResolvedValue({
        text: MOCK_ID_CARD_DATA.turkishId.text,
        confidence: 0.85
      });

      const workflowPromise = ocrReader.startCompleteOCRWorkflow();
      
      const imageData = {
        uri: 'callback_test_image'
      };

      await ocrReader.processImageFromWorkflow(imageData);

      // Verify callback sequence
      expect(mockOnStatusChange).toHaveBeenCalled();
      expect(mockOnSuccess).toHaveBeenCalledTimes(1);
      expect(mockOnError).not.toHaveBeenCalled();

      // Verify success callback data structure
      const successCallArgs = mockOnSuccess.mock.calls[0][0];
      expect(successCallArgs).toHaveProperty('text');
      expect(successCallArgs).toHaveProperty('extractedFields');
      expect(successCallArgs).toHaveProperty('performanceMetrics');
      expect(successCallArgs).toHaveProperty('workflow');
    });
  });
});
