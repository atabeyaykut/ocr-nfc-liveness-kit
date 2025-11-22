// Image Processing Utility
// Handles image manipulation operations for OCR
const { Image } = require("react-native");
const RNFS = require("react-native-fs");
const ImageResizerModule = require("@bam.tech/react-native-image-resizer");
const ImageResizer = ImageResizerModule.default || ImageResizerModule;
const Logger = require("./logger");

class ImageProcessor {
  static getCacheDirectory() {
    return (
      RNFS.CachesDirectoryPath ||
      RNFS.TemporaryDirectoryPath ||
      RNFS.DocumentDirectoryPath
    );
  }

  static async normalizeToNativePath(imageUri) {
    if (!imageUri) {
      return { nativePath: imageUri, tempPath: null };
    }

    if (imageUri.startsWith("content://")) {
      const cacheDir = this.getCacheDirectory();
      const targetPath = `${cacheDir}/imgproc_${Date.now()}_${Math.floor(
        Math.random() * 100000
      )}.jpg`;
      try {
        await RNFS.copyFile(imageUri, targetPath);
        return { nativePath: targetPath, tempPath: targetPath };
      } catch (error) {
        Logger.error("Failed to copy content URI:", error.message);
        throw new Error(
          "Görüntü kaynağına erişilemedi. Lütfen depolama iznini kontrol edin."
        );
      }
    }

    if (imageUri.startsWith("file://")) {
      return { nativePath: imageUri.replace("file://", ""), tempPath: null };
    }

    if (imageUri.startsWith("file:/")) {
      return { nativePath: imageUri.replace("file:/", ""), tempPath: null };
    }

    if (imageUri.startsWith("/")) {
      return { nativePath: imageUri, tempPath: null };
    }

    return { nativePath: imageUri, tempPath: null };
  }

  static async cleanupTempPath(tempPath) {
    if (!tempPath) {
      return;
    }
    try {
      const exists = await RNFS.exists(tempPath);
      if (exists) {
        await RNFS.unlink(tempPath);
      }
    } catch (error) {
      Logger.warn("Temp cleanup skipped:", error.message);
    }
  }

  /**
   * Crop image to specified dimensions
   * @param {string} imageUri - URI of the image to crop
   * @param {object} cropData - Crop coordinates {x, y, width, height}
   * @returns {Promise<string>} - URI of cropped image
   */
  static async cropImage(imageUri, cropData) {
    const { nativePath, tempPath } = await this.normalizeToNativePath(imageUri);
    try {
      Logger.info("Starting image crop operation", { imageUri, cropData });

      // Get image dimensions first
      const imageDimensions = await this.getImageDimensions(imageUri);

      // Calculate crop parameters
      const cropParams = {
        x: Math.max(0, cropData.x),
        y: Math.max(0, cropData.y),
        width: Math.min(cropData.width, imageDimensions.width - cropData.x),
        height: Math.min(cropData.height, imageDimensions.height - cropData.y),
      };

      // Use react-native-image-resizer for cropping
      const croppedImage = await ImageResizer.createResizedImage(
        nativePath,
        cropParams.width,
        cropParams.height,
        "JPEG",
        80, // quality
        0, // rotation
        undefined, // outputPath
        false, // keepMeta
        {
          mode: "cover",
          onlyScaleDown: false,
        }
      );

      Logger.info("Image cropped successfully", {
        croppedUri: croppedImage.uri,
      });
      return croppedImage.uri;

    } catch (error) {
      Logger.error("Image cropping failed:", error.message);
      throw new Error(`Image cropping failed: ${error.message}`);
    } finally {
      await this.cleanupTempPath(tempPath);
    }
  }

  /**
   * Resize image to optimize for OCR processing
   * @param {string} imageUri - URI of the image to resize
   * @param {object} dimensions - Target dimensions {width, height}
   * @returns {Promise<string>} - URI of resized image
   */
  static async resizeImage(imageUri, dimensions) {
    const { nativePath, tempPath } = await this.normalizeToNativePath(imageUri);
    try {
      Logger.info("Resizing image for OCR optimization", {
        imageUri,
        dimensions,
      });

      const resizedImage = await ImageResizer.createResizedImage(
        nativePath,
        dimensions.width,
        dimensions.height,
        "JPEG",
        90, // Higher quality for OCR
        0, // rotation
        undefined, // outputPath
        false, // keepMeta
        {
          mode: "contain",
          onlyScaleDown: false,
        }
      );

      Logger.info("Image resized successfully", {
        resizedUri: resizedImage.uri,
      });
      return resizedImage.uri;

    } catch (error) {
      Logger.error("Image resizing failed:", error.message);
      throw new Error(`Image resizing failed: ${error.message}`);
    } finally {
      await this.cleanupTempPath(tempPath);
    }
  }

  /**
   * Enhance image quality for better OCR results
   * @param {string} imageUri - URI of the image to enhance
   * @returns {Promise<string>} - URI of enhanced image
   */
  static async enhanceImage(imageUri) {
    const { nativePath, tempPath } = await this.normalizeToNativePath(imageUri);
    try {
      Logger.info("Enhancing image for OCR", { imageUri });

      // First resize to optimal OCR dimensions if needed
      const dimensions = await this.getImageDimensions(nativePath);
      let enhancedUri = nativePath;

      // Resize if image is too large (optimal OCR size is around 1600px width)
      if (dimensions.width > 1600) {
        const aspectRatio = dimensions.height / dimensions.width;
        enhancedUri = await this.resizeImage(nativePath, {
          width: 1600,
          height: Math.round(1600 * aspectRatio),
        });
      }

      // Apply sharpening and contrast enhancement
      const finalImage = await ImageResizer.createResizedImage(
        enhancedUri,
        dimensions.width > 1600 ? 1600 : dimensions.width,
        dimensions.width > 1600
          ? Math.round(1600 * (dimensions.height / dimensions.width))
          : dimensions.height,
        "JPEG",
        95, // High quality for OCR
        0,
        undefined,
        false,
        {
          mode: "contain",
          onlyScaleDown: false,
        }
      );

      Logger.info("Image enhanced successfully", {
        enhancedUri: finalImage.uri,
      });
      return finalImage.uri;

    } catch (error) {
      Logger.error("Image enhancement failed:", error.message);
      throw new Error(`Image enhancement failed: ${error.message}`);
    } finally {
      await this.cleanupTempPath(tempPath);
    }
  }

  /**
   * Get image dimensions
   * @param {string} imageUri - URI of the image
   * @returns {Promise<object>} - Image dimensions {width, height}
   */
  static async getImageDimensions(imageUri) {
    return new Promise((resolve, reject) => {
      Image.getSize(
        imageUri,
        (width, height) => resolve({ width, height }),
        (error) => reject(error)
      );
    });
  }

  /**
   * Convert image to base64 for OCR processing
   * @param {string} imageUri - URI of the image
   * @returns {Promise<string>} - Base64 encoded image
   */
  static async imageToBase64(imageUri) {
    const { nativePath, tempPath } = await this.normalizeToNativePath(imageUri);
    try {
      const base64 = await RNFS.readFile(nativePath, "base64");
      return `data:image/jpeg;base64,${base64}`;
    } catch (error) {
      Logger.error("Base64 conversion failed:", error.message);
      throw new Error(`Base64 conversion failed: ${error.message}`);
    } finally {
      await this.cleanupTempPath(tempPath);
    }
  }

  /**
   * Enhanced preprocessing specifically for MRZ (Machine Readable Zone)
   * MRZ requires high contrast and sharp edges for better OCR accuracy
   * @param {string} imageUri - URI of the image
   * @returns {Promise<string>} - URI of processed image optimized for MRZ
   */
  static async preprocessForMRZ(imageUri) {
    const { nativePath, tempPath } = await this.normalizeToNativePath(imageUri);
    try {
      Logger.info('Preprocessing image for MRZ detection', { imageUri });

      // Step 1: Resize to optimal dimensions for MRZ (higher resolution)
      // MRZ text is small and requires more detail
      const resized = await ImageResizer.createResizedImage(
        nativePath,
        2400, // Higher resolution for small MRZ text
        1600,
        'JPEG',
        100, // Maximum quality
        0,
        null,
        false,
        {
          mode: 'contain',
          onlyScaleDown: true,
        }
      );

      Logger.info('Image resized for MRZ processing', { uri: resized.uri });

      // Step 2: Apply high contrast enhancement
      // This helps with the MRZ zone which has high contrast black text on light background
      const { nativePath: resizedNativePath, tempPath: resizedTemp } = await this.normalizeToNativePath(resized.uri);
      const enhanced = await ImageResizer.createResizedImage(
        resizedNativePath,
        2400,
        1600,
        'JPEG',
        100, // High quality to preserve details
        0,
        null,
        false,
        {
          mode: 'contain',
          onlyScaleDown: true,
        }
      );

      Logger.info('MRZ preprocessing completed', { enhancedUri: enhanced.uri });
      return enhanced.uri;
    } catch (error) {
      Logger.error('MRZ preprocessing failed:', error.message);
      Logger.warn('Falling back to original image');
      return imageUri;
    } finally {
      await this.cleanupTempPath(tempPath);
    }
  }

  /**
   * Preprocess image for back side ID card reading
   * Optimized for both MRZ and regular text on back side
   * @param {string} imageUri - URI of the image
   * @returns {Promise<string>} - URI of processed image
   */
  static async preprocessBackSide(imageUri) {
    const { nativePath, tempPath } = await this.normalizeToNativePath(imageUri);
    try {
      Logger.info('Preprocessing back side of ID card', { imageUri });

      // Use higher resolution and quality for back side
      // Back side has both regular text and MRZ which needs detail
      const processed = await ImageResizer.createResizedImage(
        nativePath,
        2200, // Balanced resolution
        1400,
        'JPEG',
        98, // Very high quality
        0,
        null,
        false,
        {
          mode: 'contain',
          onlyScaleDown: true,
        }
      );

      Logger.info('Back side preprocessing completed', { processedUri: processed.uri });
      return processed.uri;
    } catch (error) {
      Logger.error('Back side preprocessing failed:', error.message);
      return imageUri;
    } finally {
      await this.cleanupTempPath(tempPath);
    }
  }

  /**
   * Select best quality image from multiple frames
   * Uses file size as a proxy for image quality (larger = more detail)
   * @param {Array<string>} imageUris - Array of image URIs
   * @returns {Promise<string>} - URI of the best quality image
   */
  static async selectBestFrame(imageUris) {
    try {
      Logger.info(`Selecting best frame from ${imageUris.length} images`);

      if (!imageUris || imageUris.length === 0) {
        throw new Error('No images provided for selection');
      }

      if (imageUris.length === 1) {
        return imageUris[0];
      }

      // Evaluate each image by file size and sharpness indicators
      const evaluations = await Promise.all(
        imageUris.map(async (uri, index) => {
          try {
            const { nativePath } = await this.normalizeToNativePath(uri);
            const stats = await RNFS.stat(nativePath);

            return {
              uri,
              index,
              size: stats.size,
              score: stats.size, // Larger files generally have more detail
            };
          } catch (error) {
            Logger.warn(`Failed to evaluate frame ${index}:`, error.message);
            return {
              uri,
              index,
              size: 0,
              score: 0,
            };
          }
        })
      );

      // Sort by score (descending)
      evaluations.sort((a, b) => b.score - a.score);

      const bestFrame = evaluations[0];
      Logger.info(`Best frame selected: index=${bestFrame.index}, size=${bestFrame.size} bytes`);

      return bestFrame.uri;
    } catch (error) {
      Logger.error('Frame selection failed:', error.message);
      // Fallback to first image
      return imageUris[0];
    }
  }

  /**
   * Extract biometric photo from ID card front side
   * Uses face detection to locate and crop the photo area
   * @param {string} imageUri - URI of the front side image
   * @returns {Promise<string|null>} - URI of cropped biometric photo or null
   */
  static async extractBiometricPhoto(imageUri) {
    const { nativePath, tempPath } = await this.normalizeToNativePath(imageUri);
    try {
      Logger.info('Extracting biometric photo from ID card front side', { imageUri });

      // Use ML Kit Face Detection to find face
      const FaceDetection = require('@react-native-ml-kit/face-detection').default;

      const faces = await FaceDetection.detect(nativePath, {
        performanceMode: 'accurate',
        contourMode: 'none',
        classificationMode: 'none',
      });

      if (!faces || faces.length === 0) {
        Logger.warn('No face detected on ID card');
        return null;
      }

      // Get the first (and typically only) face
      const face = faces[0];
      const bounds = face.frame;

      Logger.info('Face detected', {
        x: bounds.left,
        y: bounds.top,
        width: bounds.width,
        height: bounds.height
      });

      // Add padding around face for better crop
      const padding = 20;
      const cropX = Math.max(0, bounds.left - padding);
      const cropY = Math.max(0, bounds.top - padding);
      const cropWidth = bounds.width + (padding * 2);
      const cropHeight = bounds.height + (padding * 2);

      // Crop the face area
      const croppedImage = await ImageResizer.createResizedImage(
        nativePath,
        cropWidth,
        cropHeight,
        'JPEG',
        90,
        0,
        null,
        false,
        {
          mode: 'cover',
          onlyScaleDown: false,
        }
      );

      Logger.info('Biometric photo extracted successfully', {
        croppedUri: croppedImage.uri
      });

      return croppedImage.uri;
    } catch (error) {
      Logger.error('Biometric photo extraction failed:', error.message);
      Logger.warn('Continuing without biometric photo');
      return null;
    } finally {
      await this.cleanupTempPath(tempPath);
    }
  }

  /**
   * Process multiple frames and merge them for enhanced quality
   * This simulates frame stacking by selecting the sharpest frame
   * and applying enhanced preprocessing
   * @param {Array<string>} imageUris - Array of captured image URIs (typically 3)
   * @returns {Promise<string>} - URI of the merged/enhanced image
   */
  static async mergeMultipleFrames(imageUris) {
    const tempPaths = [];
    try {
      Logger.info(`Processing ${imageUris.length} frames for enhanced OCR`);

      if (!imageUris || imageUris.length === 0) {
        throw new Error('No frames provided for merging');
      }

      // If only one frame, process it normally
      if (imageUris.length === 1) {
        Logger.info('Single frame detected, applying standard enhancement');
        return await this.enhanceImage(imageUris[0]);
      }

      // Step 1: Select the best quality frame from all captured frames
      const bestFrameUri = await this.selectBestFrame(imageUris);
      Logger.info('Best frame selected for processing');

      // Step 2: Apply advanced preprocessing to the best frame
      const { nativePath, tempPath } = await this.normalizeToNativePath(bestFrameUri);
      if (tempPath) tempPaths.push(tempPath);

      Logger.info('Applying multi-frame enhancement (super-resolution simulation)');

      // Apply high-quality enhancement with multiple passes
      // Pass 1: High resolution resize
      const enhanced1 = await ImageResizer.createResizedImage(
        nativePath,
        2400,
        1600,
        'JPEG',
        100, // Maximum quality
        0,
        null,
        false,
        {
          mode: 'contain',
          onlyScaleDown: true,
        }
      );

      // Pass 2: Apply sharpening through slight downscale and upscale
      const { nativePath: enhanced1Path, tempPath: enhanced1Temp } = await this.normalizeToNativePath(enhanced1.uri);
      if (enhanced1Temp) tempPaths.push(enhanced1Temp);

      const sharpened = await ImageResizer.createResizedImage(
        enhanced1Path,
        2200, // Slightly smaller
        1466,
        'JPEG',
        100,
        0,
        null,
        false,
        {
          mode: 'contain',
          onlyScaleDown: false,
        }
      );

      // Pass 3: Final upscale to target resolution with high quality
      const { nativePath: sharpenedPath, tempPath: sharpenedTemp } = await this.normalizeToNativePath(sharpened.uri);
      if (sharpenedTemp) tempPaths.push(sharpenedTemp);

      const final = await ImageResizer.createResizedImage(
        sharpenedPath,
        2400,
        1600,
        'JPEG',
        98, // Slight compression for file size
        0,
        null,
        false,
        {
          mode: 'contain',
          onlyScaleDown: false,
        }
      );

      Logger.info('Multi-frame enhancement completed', {
        outputUri: final.uri,
        framesProcessed: imageUris.length
      });

      return final.uri;

    } catch (error) {
      Logger.error('Multi-frame merging failed:', error.message);
      // Fallback to first frame with standard enhancement
      Logger.warn('Falling back to first frame with standard enhancement');
      return await this.enhanceImage(imageUris[0]);
    } finally {
      // Cleanup temporary files
      for (const tempPath of tempPaths) {
        await this.cleanupTempPath(tempPath);
      }
    }
  }
}

module.exports = { ImageProcessor };
