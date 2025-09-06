// OCR Reader Unit Tests
import OCRReader from '../modules/ocr/OCRReader';
import { OCR_STATUS, OCR_ERROR_CODES } from '../modules/ocr/types';

// Mock dependencies
jest.mock('../utils/logger');
jest.mock('../utils/permissions');
jest.mock('../utils/imageProcessor');

describe('OCRReader', () => {
  let ocrReader;

  beforeEach(() => {
    ocrReader = new OCRReader();
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  describe('Constructor', () => {
    test('should initialize with correct default state', () => {
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.IDLE);
      expect(ocrReader.getLastExtractedText()).toBeNull();
    });
  });

  describe('startOCR', () => {
    test('should initialize OCR successfully with permissions', async () => {
      // Mock permission manager
      const PermissionManager = require('../utils/permissions').default;
      PermissionManager.requestCameraPermission.mockResolvedValue(true);
      PermissionManager.requestStoragePermission.mockResolvedValue(true);

      const result = await ocrReader.startOCR();

      expect(result).toBe(true);
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.READY);
    });

    test('should throw error when camera permission denied', async () => {
      const PermissionManager = require('../utils/permissions').default;
      PermissionManager.requestCameraPermission.mockResolvedValue(false);

      await expect(ocrReader.startOCR()).rejects.toThrow(OCR_ERROR_CODES.CAMERA_PERMISSION_DENIED);
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.ERROR);
    });
  });

  describe('captureImage', () => {
    beforeEach(async () => {
      const PermissionManager = require('../utils/permissions').default;
      PermissionManager.requestCameraPermission.mockResolvedValue(true);
      PermissionManager.requestStoragePermission.mockResolvedValue(true);
      await ocrReader.startOCR();
    });

    test('should capture image successfully', async () => {
      const imageUri = await ocrReader.captureImage();

      expect(imageUri).toBeDefined();
      expect(typeof imageUri).toBe('string');
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.READY);
    });

    test('should throw error when OCR not ready', async () => {
      ocrReader.reset();

      await expect(ocrReader.captureImage()).rejects.toThrow('OCR system not ready');
    });

    test('should use custom options for image capture', async () => {
      const options = {
        quality: 0.9,
        maxWidth: 1080,
        maxHeight: 1080
      };

      const imageUri = await ocrReader.captureImage(options);
      expect(imageUri).toBeDefined();
    });
  });

  describe('cropImage', () => {
    test('should crop image successfully', async () => {
      const mockImageUri = 'file:///test/image.jpg';
      const cropData = { x: 10, y: 10, width: 100, height: 50 };

      const ImageProcessor = require('../utils/imageProcessor').ImageProcessor;
      ImageProcessor.cropImage.mockResolvedValue('file:///test/cropped_image.jpg');

      const croppedUri = await ocrReader.cropImage(mockImageUri, cropData);

      expect(croppedUri).toBe('file:///test/cropped_image.jpg');
      expect(ImageProcessor.cropImage).toHaveBeenCalledWith(mockImageUri, cropData);
    });

    test('should throw error when imageUri is missing', async () => {
      const cropData = { x: 10, y: 10, width: 100, height: 50 };

      await expect(ocrReader.cropImage(null, cropData)).rejects.toThrow('Image URI is required');
    });
  });

  describe('extractText', () => {
    beforeEach(async () => {
      const PermissionManager = require('../utils/permissions').default;
      PermissionManager.requestCameraPermission.mockResolvedValue(true);
      PermissionManager.requestStoragePermission.mockResolvedValue(true);
      await ocrReader.startOCR();
    });

    test('should extract text successfully', async () => {
      const mockImageUri = 'file:///test/image.jpg';
      
      const result = await ocrReader.extractText(mockImageUri);

      expect(result).toBeDefined();
      expect(result.text).toBeDefined();
      expect(result.confidence).toBeGreaterThan(0);
      expect(result.blocks).toBeDefined();
      expect(Array.isArray(result.blocks)).toBe(true);
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.SUCCESS);
    });

    test('should use current image when no imageUri provided', async () => {
      // First capture an image
      await ocrReader.captureImage();
      
      const result = await ocrReader.extractText();
      expect(result).toBeDefined();
    });

    test('should throw error when no image available', async () => {
      await expect(ocrReader.extractText()).rejects.toThrow('No image available for text extraction');
    });

    test('should use custom OCR options', async () => {
      const mockImageUri = 'file:///test/image.jpg';
      const options = {
        language: 'tr',
        confidence: 0.8
      };

      const result = await ocrReader.extractText(mockImageUri, options);
      expect(result.language).toBe('tr');
    });
  });

  describe('getStatus', () => {
    test('should return current status', () => {
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.IDLE);
    });
  });

  describe('getLastExtractedText', () => {
    test('should return null initially', () => {
      expect(ocrReader.getLastExtractedText()).toBeNull();
    });

    test('should return extracted text after processing', async () => {
      const PermissionManager = require('../utils/permissions').default;
      PermissionManager.requestCameraPermission.mockResolvedValue(true);
      PermissionManager.requestStoragePermission.mockResolvedValue(true);
      
      await ocrReader.startOCR();
      const result = await ocrReader.extractText('file:///test/image.jpg');
      
      expect(ocrReader.getLastExtractedText()).toEqual(result);
    });
  });

  describe('reset', () => {
    test('should reset OCR reader state', async () => {
      const PermissionManager = require('../utils/permissions').default;
      PermissionManager.requestCameraPermission.mockResolvedValue(true);
      PermissionManager.requestStoragePermission.mockResolvedValue(true);
      
      await ocrReader.startOCR();
      await ocrReader.extractText('file:///test/image.jpg');
      
      ocrReader.reset();
      
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.IDLE);
      expect(ocrReader.getLastExtractedText()).toBeNull();
    });
  });
});
