// OCR Reader - Core OCR functionality
const { OCR_STATUS, OCR_ERROR_CODES, OCR_CONFIG } = require("./types");
const Logger = require("../../utils/logger");
const PermissionManager = require("../../utils/permissions");
const { ImageProcessor } = require("../../utils/imageProcessor");
const TextRecognition = require("react-native-text-recognition");

class OCRReader {
  constructor(options = {}) {
    this.status = OCR_STATUS.IDLE;
    this.config = { ...OCR_CONFIG, ...options };
    this.currentImage = null;
    this.extractedText = null;
    this.onError = options.onError || null;
    this.onSuccess = options.onSuccess || null;
    this.onStatusChange = options.onStatusChange || null;
    this.performanceMetrics = {
      totalProcessingTime: 0,
      imageProcessingTime: 0,
      ocrProcessingTime: 0,
      lastProcessedImageSize: null,
    };
  }

  /**
   * Initialize OCR system and request necessary permissions
   * @param {object} options - OCR options {cardSide, language, etc.}
   * @returns {Promise<boolean>} - Success status
   */
  async startOCR(options = {}) {
    try {
      Logger.info("Starting OCR initialization...", options);
      this.status = OCR_STATUS.INITIALIZING;

      // Merge options with existing config
      if (options.cardSide) {
        this.config = { ...this.config, cardSide: options.cardSide };
      }

      // Request camera permission
      const cameraPermission =
        await PermissionManager.requestCameraPermission();
      if (!cameraPermission) {
        throw new Error(OCR_ERROR_CODES.CAMERA_PERMISSION_DENIED);
      }

      // Request storage permission
      const storagePermission =
        await PermissionManager.requestStoragePermission();
      if (!storagePermission) {
        Logger.warn("Storage permission denied, some features may be limited");
      }

      this.status = OCR_STATUS.READY;
      Logger.info("OCR system initialized successfully with config:", this.config);
      return true;
    } catch (error) {
      this.status = OCR_STATUS.ERROR;
      Logger.error("OCR initialization failed:", error.message);
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
        throw new Error("OCR system not ready. Call startOCR() first.");
      }

      Logger.info("Capturing image for OCR...");
      this.status = OCR_STATUS.CAPTURING;

      const captureOptions = {
        quality: options.quality || this.config.IMAGE_QUALITY,
        maxWidth: options.maxWidth || this.config.MAX_IMAGE_SIZE,
        maxHeight: options.maxHeight || this.config.MAX_IMAGE_SIZE,
        includeBase64: false,
        mediaType: "photo",
      };

      // Placeholder implementation - will be replaced with actual camera integration
      const mockImageUri = "file:///mock/path/captured_image.jpg";

      this.currentImage = mockImageUri;
      this.status = OCR_STATUS.READY;

      Logger.info("Image captured successfully:", mockImageUri);
      return mockImageUri;
    } catch (error) {
      this.status = OCR_STATUS.ERROR;
      Logger.error("Image capture failed:", error.message);
      throw new Error(
        `${OCR_ERROR_CODES.IMAGE_CAPTURE_FAILED}: ${error.message}`
      );
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
        throw new Error("Image URI is required");
      }

      Logger.info("Cropping image for OCR processing...");

      const croppedImageUri = await ImageProcessor.cropImage(
        imageUri,
        cropData
      );
      this.currentImage = croppedImageUri;

      Logger.info("Image cropped successfully:", croppedImageUri);
      return croppedImageUri;
    } catch (error) {
      Logger.error("Image cropping failed:", error.message);
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
        const error = new Error("No image available for text extraction");
        this._handleError(error);
        throw error;
      }

      Logger.info("Starting OCR text extraction process...");
      this._updateStatus(OCR_STATUS.PROCESSING);

      const ocrOptions = {
        language: options.language || this.config.DEFAULT_LANGUAGE,
        confidence: options.confidence || 0.7,
        enhanceImage: options.enhanceImage !== false, // Default to true
      };

      let processedImageUri = imageUri;

      // Apply special preprocessing based on card side
      if (ocrOptions.enhanceImage) {
        if (this.config.cardSide === 'back') {
          Logger.info("Preprocessing for back side (MRZ)...");
          processedImageUri = await ImageProcessor.preprocessBackSide(imageUri);
        } else {
          Logger.info("Enhancing image for better OCR results...");
          processedImageUri = await ImageProcessor.enhanceImage(imageUri);
        }
      }

      // Perform OCR using react-native-text-recognition
      Logger.info("Performing text recognition...");
      const startTime = Date.now();

      const ocrResult = await TextRecognition.recognize(processedImageUri, {
        language: ocrOptions.language,
      });

      const processingTime = Date.now() - startTime;

      // Process and format OCR results
      const extractedTextData = this._formatOCRResult(
        ocrResult,
        ocrOptions,
        processingTime
      );

      // Filter results by confidence if specified
      if (ocrOptions.confidence > 0) {
        extractedTextData.blocks = extractedTextData.blocks.filter(
          (block) => block.confidence >= ocrOptions.confidence
        );

        // Recalculate overall text and confidence
        extractedTextData.text = extractedTextData.blocks
          .map((block) => block.text)
          .join(" ");
        extractedTextData.confidence =
          extractedTextData.blocks.length > 0
            ? extractedTextData.blocks.reduce(
                (sum, block) => sum + block.confidence,
                0
              ) / extractedTextData.blocks.length
            : 0;
      }

      this.extractedText = extractedTextData;
      this._updateStatus(OCR_STATUS.SUCCESS);

      Logger.info("OCR text extraction completed successfully", {
        textLength: extractedTextData.text.length,
        blocksCount: extractedTextData.blocks.length,
        confidence: extractedTextData.confidence,
        processingTime,
      });

      // Call success callback if provided
      if (this.onSuccess) {
        this.onSuccess(extractedTextData);
      }

      return extractedTextData;
    } catch (error) {
      this._updateStatus(OCR_STATUS.ERROR);
      Logger.error("OCR text extraction failed:", error.message);

      const ocrError = new Error(
        `${OCR_ERROR_CODES.TEXT_EXTRACTION_FAILED}: ${error.message}`
      );
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
   * Complete OCR workflow: camera → guidance → capture → crop → OCR → callback
   * @param {object} options - Workflow options {showCamera, autoEnhance, language}
   * @returns {Promise<object>} - Complete OCR result
   */
  async startCompleteOCRWorkflow(options = {}) {
    try {
      const workflowStartTime = Date.now();
      Logger.info("Starting complete OCR workflow...");

      const workflowOptions = {
        showCamera: options.showCamera !== false,
        autoEnhance: options.autoEnhance !== false,
        language: options.language || "tr",
        confidence: options.confidence || 0.7,
        ...options,
      };

      // Step 1: Initialize OCR system
      if (this.status === OCR_STATUS.IDLE) {
        await this.startOCR();
      }

      // Step 2: Capture image (this will be handled by camera component)
      // The camera component will call this.processImageFromWorkflow()

      return new Promise((resolve, reject) => {
        this._workflowResolve = resolve;
        this._workflowReject = reject;
        this._workflowOptions = workflowOptions;
        this._workflowStartTime = workflowStartTime;

        // Notify that workflow is ready for camera
        this._updateStatus(OCR_STATUS.READY);
        Logger.info("OCR workflow ready for image capture");
      });
    } catch (error) {
      Logger.error("OCR workflow initialization failed:", error.message);
      const workflowError = new Error(`OCR workflow failed: ${error.message}`);
      this._handleError(workflowError);
      throw workflowError;
    }
  }

  /**
   * Process image from complete workflow (called by camera component)
   * @param {object} imageData - Image data with URI and crop area
   * @returns {Promise<object>} - OCR result
   */
  async processImageFromWorkflow(imageData) {
    try {
      if (!this._workflowOptions) {
        throw new Error("No active workflow found");
      }

      Logger.info("Processing image from workflow", {
        imageUri: imageData.uri,
      });
      const imageProcessingStartTime = Date.now();

      let processedImageUri = imageData.uri;

      // Step 3: Optimize image for OCR
      if (this._workflowOptions.autoEnhance) {
        processedImageUri = await this._optimizeImageForOCR(imageData.uri);
      }

      // Step 4: Crop image if crop area is provided
      if (imageData.cropArea) {
        processedImageUri = await this.cropImage(
          processedImageUri,
          imageData.cropArea
        );
      }

      const imageProcessingTime = Date.now() - imageProcessingStartTime;
      this.performanceMetrics.imageProcessingTime = imageProcessingTime;

      // Step 5: Extract text using OCR
      const ocrStartTime = Date.now();
      const ocrResult = await this.extractText(processedImageUri, {
        language: this._workflowOptions.language,
        confidence: this._workflowOptions.confidence,
        enhanceImage: false, // Already enhanced
      });

      const ocrProcessingTime = Date.now() - ocrStartTime;
      this.performanceMetrics.ocrProcessingTime = ocrProcessingTime;
      this.performanceMetrics.totalProcessingTime =
        Date.now() - this._workflowStartTime;

      // Step 6: Extract specific fields
      const extractedFields = this._extractAllFields(ocrResult.text);

      // Step 7: Prepare final result
      const finalResult = {
        ...ocrResult,
        extractedFields,
        performanceMetrics: { ...this.performanceMetrics },
        workflow: {
          completed: true,
          totalTime: this.performanceMetrics.totalProcessingTime,
          steps: [
            "initialize",
            "capture",
            "optimize",
            "crop",
            "ocr",
            "extract_fields",
          ],
        },
      };

      Logger.info("OCR workflow completed successfully", {
        totalTime: this.performanceMetrics.totalProcessingTime,
        textLength: ocrResult.text.length,
        fieldsExtracted: Object.keys(extractedFields).length,
      });

      // Step 8: Call success callback and resolve workflow
      if (this.onSuccess) {
        this.onSuccess(finalResult);
      }

      if (this._workflowResolve) {
        this._workflowResolve(finalResult);
        this._cleanupWorkflow();
      }

      return finalResult;
    } catch (error) {
      Logger.error("Workflow image processing failed:", error.message);

      if (this._workflowReject) {
        this._workflowReject(error);
        this._cleanupWorkflow();
      }

      this._handleError(error);
      throw error;
    }
  }

  /**
   * Optimize image for OCR processing
   * @private
   */
  async _optimizeImageForOCR(imageUri) {
    try {
      Logger.info("Optimizing image for OCR processing");

      // Get original image dimensions
      const dimensions = await ImageProcessor.getImageDimensions(imageUri);
      this.performanceMetrics.lastProcessedImageSize = dimensions;

      // Resize if image is too large (optimal OCR width: 1200-1600px)
      let optimizedUri = imageUri;
      if (dimensions.width > 1600) {
        const aspectRatio = dimensions.height / dimensions.width;
        optimizedUri = await ImageProcessor.resizeImage(imageUri, {
          width: 1600,
          height: Math.round(1600 * aspectRatio),
        });
        Logger.info("Image resized for optimal OCR performance");
      }

      // Enhance image quality
      const enhancedUri = await ImageProcessor.enhanceImage(optimizedUri);

      Logger.info("Image optimization completed");
      return enhancedUri;

    } catch (error) {
      Logger.warn("Image optimization failed, using original:", error.message);
      return imageUri;
    }
  }

  /**
   * Extract all supported fields from text
   * @private
   */
  _extractAllFields(text) {
    return {
      tcNo: this.extractField(text, "tc_no"),
      name: this.extractField(text, "name"),
      surname: this.extractField(text, "surname"),
    };
  }

  /**
   * Clean up workflow state
   * @private
   */
  _cleanupWorkflow() {
    this._workflowResolve = null;
    this._workflowReject = null;
    this._workflowOptions = null;
    this._workflowStartTime = null;
  }

  /**
   * Get performance metrics
   * @returns {object} - Performance metrics
   */
  getPerformanceMetrics() {
    return { ...this.performanceMetrics };
  }

  /**
   * Reset OCR reader state
   */
  reset() {
    this._updateStatus(OCR_STATUS.IDLE);
    this.currentImage = null;
    this.extractedText = null;
    this._cleanupWorkflow();
    this.performanceMetrics = {
      totalProcessingTime: 0,
      imageProcessingTime: 0,
      ocrProcessingTime: 0,
      lastProcessedImageSize: null,
    };
    Logger.info("OCR reader reset");
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
        case "tc_no":
          // Turkish ID number pattern (11 digits)
          const tcMatch = text.match(/\b\d{11}\b/);
          return tcMatch ? tcMatch[0] : null;

        case "name":
          // Extract name patterns (Turkish names)
          const nameMatch = text.match(
            /(?:AD[I\s]*:?\s*)([A-Z]+)/i
          );
          return nameMatch ? nameMatch[1].trim() : null;

        case "surname":
          // Extract surname patterns
          const surnameMatch = text.match(
            /(?:SOYAD[I\s]*:?\s*)([A-Z]+)/i
          );
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
    let fullText = "";
    let totalConfidence = 0;

    // Process OCR blocks
    if (ocrResult.blocks && ocrResult.blocks.length > 0) {
      ocrResult.blocks.forEach((block) => {
        if (block.text && block.text.trim()) {
          const blockData = {
            text: block.text.trim(),
            confidence: block.confidence || 0.8,
            boundingBox: block.boundingBox || {
              x: 0,
              y: 0,
              width: 0,
              height: 0,
            },
          };

          blocks.push(blockData);
          fullText += (fullText ? " " : "") + blockData.text;
          totalConfidence += blockData.confidence;
        }
      });
    } else if (ocrResult.text) {
      // Fallback for simple text result
      const blockData = {
        text: ocrResult.text.trim(),
        confidence: ocrResult.confidence || 0.8,
        boundingBox: { x: 0, y: 0, width: 0, height: 0 },
      };

      blocks.push(blockData);
      fullText = blockData.text;
      totalConfidence = blockData.confidence;
    }

    return {
      text: fullText,
      confidence: blocks.length > 0 ? totalConfidence / blocks.length : 0,
      blocks,
      language: options.language,
      processingTime,
      timestamp: Date.now(),
    };
  }
}

module.exports = OCRReader;
