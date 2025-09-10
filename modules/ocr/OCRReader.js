// OCR Reader - Core OCR functionality
import { OCR_STATUS, OCR_ERROR_CODES, OCR_CONFIG } from './types';
import Logger from '../../utils/logger';
import PermissionManager from '../../utils/permissions';
import { ImageProcessor } from '../../utils/imageProcessor';
import TextRecognition from 'react-native-text-recognition';

class OCRReader {
  constructor(options = {}) {
    this.status = OCR_STATUS.IDLE;
    this.config = { ...OCR_CONFIG, ...options };
    this.currentImage = null;
    this.extractedText = null;
    this.onError = options.onError || null;
    this.onSuccess = options.onSuccess || null;
    this.onStatusChange = options.onStatusChange || null;
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
   * @param {object} options - OCR options {language, confidence, enhanceImage}
   * @returns {Promise<object>} - Extracted text data
   */
  async extractText(imageUri, options = {}) {
    try {
      if (!imageUri) {
        imageUri = this.currentImage;
      }

      if (!imageUri) {
        const error = new Error('No image available for text extraction');
        this._handleError(error);
        throw error;
      }

      Logger.info('Starting OCR text extraction process...');
      this._updateStatus(OCR_STATUS.PROCESSING);

      const ocrOptions = {
        language: options.language || this.config.DEFAULT_LANGUAGE,
        confidence: options.confidence || 0.7,
        enhanceImage: options.enhanceImage !== false // Default to true
      };

      let processedImageUri = imageUri;
      
      // Enhance image quality if requested
      if (ocrOptions.enhanceImage) {
        Logger.info('Enhancing image for better OCR results...');
        processedImageUri = await ImageProcessor.enhanceImage(imageUri);
      }

      // Perform OCR using react-native-text-recognition
      Logger.info('Performing text recognition...');
      const startTime = Date.now();
      
      const ocrResult = await TextRecognition.recognize(processedImageUri, {
        language: ocrOptions.language,
      });

      const processingTime = Date.now() - startTime;
      
      // Process and format OCR results
      const extractedTextData = this._formatOCRResult(ocrResult, ocrOptions, processingTime);
      
      // Filter results by confidence if specified
      if (ocrOptions.confidence > 0) {
        extractedTextData.blocks = extractedTextData.blocks.filter(
          block => block.confidence >= ocrOptions.confidence
        );
        
        // Recalculate overall text and confidence
        extractedTextData.text = extractedTextData.blocks.map(block => block.text).join(' ');
        extractedTextData.confidence = extractedTextData.blocks.length > 0 
          ? extractedTextData.blocks.reduce((sum, block) => sum + block.confidence, 0) / extractedTextData.blocks.length
          : 0;
      }

      this.extractedText = extractedTextData;
      this._updateStatus(OCR_STATUS.SUCCESS);
      
      Logger.info('OCR text extraction completed successfully', {
        textLength: extractedTextData.text.length,
        blocksCount: extractedTextData.blocks.length,
        confidence: extractedTextData.confidence,
        processingTime
      });
      
      // Call success callback if provided
      if (this.onSuccess) {
        this.onSuccess(extractedTextData);
      }
      
      return extractedTextData;

    } catch (error) {
      this._updateStatus(OCR_STATUS.ERROR);
      Logger.error('OCR text extraction failed:', error.message);
      
      const ocrError = new Error(`${OCR_ERROR_CODES.TEXT_EXTRACTION_FAILED}: ${error.message}`);
      this._handleError(ocrError);
      throw ocrError;
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
    this._updateStatus(OCR_STATUS.IDLE);
    this.currentImage = null;
    this.extractedText = null;
    Logger.info('OCR reader reset');
  }
  
  /**
   * Extract specific fields from OCR text (e.g., ID number, name)
   * @param {string} text - Extracted text
   * @param {string} fieldType - Type of field to extract ('tc_no', 'name', 'surname')
   * @returns {string|null} - Extracted field value
   */
  extractField(text, fieldType) {
    try {
      Logger.info(`Extracting field: ${fieldType} from text`);
      
      switch (fieldType) {
        case 'tc_no':
          // Turkish ID number pattern (11 digits)
          const tcMatch = text.match(/\b\d{11}\b/);
          return tcMatch ? tcMatch[0] : null;
          
        case 'name':
          // Extract name patterns (Turkish names)
          const nameMatch = text.match(/(?:AD[I\s]*|NAME[\s]*:?[\s]*)([A-ZÇĞıÖŞÜ][a-zçğıöşü]+(?:[\s][A-ZÇĞıÖŞÜ][a-zçğıöşü]+)*)/i);
          return nameMatch ? nameMatch[1].trim() : null;
          
        case 'surname':
          // Extract surname patterns
          const surnameMatch = text.match(/(?:SOYAD[I\s]*|SURNAME[\s]*:?[\s]*)([A-ZÇĞıÖŞÜ][a-zçğıöşü]+(?:[\s][A-ZÇĞıÖŞÜ][a-zçğıöşü]+)*)/i);
          return surnameMatch ? surnameMatch[1].trim() : null;
          
        default:
          Logger.warn(`Unknown field type: ${fieldType}`);
          return null;
      }
    } catch (error) {
      Logger.error(`Field extraction failed for ${fieldType}:`, error.message);
      return null;
    }
  }
  
  /**
   * Update status and notify listeners
   * @private
   */
  _updateStatus(newStatus) {
    const oldStatus = this.status;
    this.status = newStatus;
    
    if (this.onStatusChange && oldStatus !== newStatus) {
      this.onStatusChange(newStatus, oldStatus);
    }
  }
  
  /**
   * Handle errors and notify listeners
   * @private
   */
  _handleError(error) {
    if (this.onError) {
      this.onError(error);
    }
  }
  
  /**
   * Format OCR result into standardized structure
   * @private
   */
  _formatOCRResult(ocrResult, options, processingTime) {
    const blocks = [];
    let fullText = '';
    let totalConfidence = 0;
    
    // Process OCR blocks
    if (ocrResult.blocks && ocrResult.blocks.length > 0) {
      ocrResult.blocks.forEach(block => {
        if (block.text && block.text.trim()) {
          const blockData = {
            text: block.text.trim(),
            confidence: block.confidence || 0.8,
            boundingBox: block.boundingBox || { x: 0, y: 0, width: 0, height: 0 }
          };
          
          blocks.push(blockData);
          fullText += (fullText ? ' ' : '') + blockData.text;
          totalConfidence += blockData.confidence;
        }
      });
    } else if (ocrResult.text) {
      // Fallback for simple text result
      const blockData = {
        text: ocrResult.text.trim(),
        confidence: ocrResult.confidence || 0.8,
        boundingBox: { x: 0, y: 0, width: 0, height: 0 }
      };
      
      blocks.push(blockData);
      fullText = blockData.text;
      totalConfidence = blockData.confidence;
    }
    
    return {
      text: fullText,
      confidence: blocks.length > 0 ? totalConfidence / blocks.length : 0,
      blocks: blocks,
      language: options.language,
      processingTime: processingTime,
      timestamp: Date.now()
    };
  }
}

export default OCRReader;
