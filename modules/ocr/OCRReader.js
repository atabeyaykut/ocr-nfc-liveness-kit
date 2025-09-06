// OCR Reader - Core OCR functionality
import { OCR_STATUS, OCR_ERROR_CODES, OCR_CONFIG } from './types';
import Logger from '../../utils/logger';
import PermissionManager from '../../utils/permissions';
import { ImageProcessor } from '../../utils/imageProcessor';

class OCRReader {
  constructor() {
    this.status = OCR_STATUS.IDLE;
    this.config = { ...OCR_CONFIG };
    this.currentImage = null;
    this.extractedText = null;
  }

  /**
   * Initialize OCR system and request necessary permissions
   * @returns {Promise<boolean>} - Success status
   */
  async startOCR() {
    try {
      Logger.info('Starting OCR initialization...');
      this.status = OCR_STATUS.INITIALIZING;

      // Request camera permission
      const cameraPermission = await PermissionManager.requestCameraPermission();
      if (!cameraPermission) {
        throw new Error(OCR_ERROR_CODES.CAMERA_PERMISSION_DENIED);
      }

      // Request storage permission
      const storagePermission = await PermissionManager.requestStoragePermission();
      if (!storagePermission) {
        Logger.warn('Storage permission denied, some features may be limited');
      }

      this.status = OCR_STATUS.READY;
      Logger.info('OCR system initialized successfully');
      return true;

    } catch (error) {
      this.status = OCR_STATUS.ERROR;
      Logger.error('OCR initialization failed:', error.message);
      throw error;
    }
  }

  /**
   * Capture image from camera for OCR processing
   * @param {object} options - Camera options {quality, maxWidth, maxHeight}
   * @returns {Promise<string>} - Image URI
   */
  async captureImage(options = {}) {
    try {
      if (this.status !== OCR_STATUS.READY) {
        throw new Error('OCR system not ready. Call startOCR() first.');
      }

      Logger.info('Capturing image for OCR...');
      this.status = OCR_STATUS.CAPTURING;

      const captureOptions = {
        quality: options.quality || this.config.IMAGE_QUALITY,
        maxWidth: options.maxWidth || this.config.MAX_IMAGE_SIZE,
        maxHeight: options.maxHeight || this.config.MAX_IMAGE_SIZE,
        includeBase64: false,
        mediaType: 'photo'
      };

      // Placeholder implementation - will be replaced with actual camera integration
      const mockImageUri = 'file:///mock/path/captured_image.jpg';
      
      this.currentImage = mockImageUri;
      this.status = OCR_STATUS.READY;
      
      Logger.info('Image captured successfully:', mockImageUri);
      return mockImageUri;

    } catch (error) {
      this.status = OCR_STATUS.ERROR;
      Logger.error('Image capture failed:', error.message);
      throw new Error(`${OCR_ERROR_CODES.IMAGE_CAPTURE_FAILED}: ${error.message}`);
    }
  }

  /**
   * Crop captured image to focus on text area
   * @param {string} imageUri - URI of image to crop
   * @param {object} cropData - Crop coordinates {x, y, width, height}
   * @returns {Promise<string>} - URI of cropped image
   */
  async cropImage(imageUri, cropData) {
    try {
      if (!imageUri) {
        throw new Error('Image URI is required');
      }

      Logger.info('Cropping image for OCR processing...');
      
      const croppedImageUri = await ImageProcessor.cropImage(imageUri, cropData);
      this.currentImage = croppedImageUri;
      
      Logger.info('Image cropped successfully:', croppedImageUri);
      return croppedImageUri;

    } catch (error) {
      Logger.error('Image cropping failed:', error.message);
      throw error;
    }
  }

  /**
   * Extract text from image using OCR
   * @param {string} imageUri - URI of image to process
   * @param {object} options - OCR options {language, confidence}
   * @returns {Promise<object>} - Extracted text data
   */
  async extractText(imageUri, options = {}) {
    try {
      if (!imageUri) {
        imageUri = this.currentImage;
      }

      if (!imageUri) {
        throw new Error('No image available for text extraction');
      }

      Logger.info('Extracting text from image...');
      this.status = OCR_STATUS.PROCESSING;

      const ocrOptions = {
        language: options.language || this.config.DEFAULT_LANGUAGE,
        confidence: options.confidence || 0.7
      };

      // Placeholder implementation - will be replaced with actual OCR library
      const mockExtractedText = {
        text: 'Sample extracted text from OCR processing',
        confidence: 0.95,
        blocks: [
          {
            text: 'Sample extracted text',
            confidence: 0.98,
            boundingBox: { x: 10, y: 10, width: 200, height: 30 }
          },
          {
            text: 'from OCR processing',
            confidence: 0.92,
            boundingBox: { x: 10, y: 45, width: 180, height: 25 }
          }
        ],
        language: ocrOptions.language,
        processingTime: Date.now()
      };

      this.extractedText = mockExtractedText;
      this.status = OCR_STATUS.SUCCESS;
      
      Logger.info('Text extraction completed successfully');
      return mockExtractedText;

    } catch (error) {
      this.status = OCR_STATUS.ERROR;
      Logger.error('Text extraction failed:', error.message);
      throw new Error(`${OCR_ERROR_CODES.TEXT_EXTRACTION_FAILED}: ${error.message}`);
    }
  }

  /**
   * Get current OCR status
   * @returns {string} - Current status
   */
  getStatus() {
    return this.status;
  }

  /**
   * Get last extracted text
   * @returns {object|null} - Last extracted text data
   */
  getLastExtractedText() {
    return this.extractedText;
  }

  /**
   * Reset OCR reader state
   */
  reset() {
    this.status = OCR_STATUS.IDLE;
    this.currentImage = null;
    this.extractedText = null;
    Logger.info('OCR reader reset');
  }
}

export default OCRReader;
