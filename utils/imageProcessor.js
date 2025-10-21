// Image Processing Utility
// Handles image manipulation operations for OCR
const { Image } = require("react-native");
const RNFS = require("react-native-fs");
const ImageResizer = require("react-native-image-resizer");
const Logger = require("./logger");

class ImageProcessor {
  /**
   * Crop image to specified dimensions
   * @param {string} imageUri - URI of the image to crop
   * @param {object} cropData - Crop coordinates {x, y, width, height}
   * @returns {Promise<string>} - URI of cropped image
   */
  static async cropImage(imageUri, cropData) {
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
        imageUri,
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
    }
  }

  /**
   * Resize image to optimize for OCR processing
   * @param {string} imageUri - URI of the image to resize
   * @param {object} dimensions - Target dimensions {width, height}
   * @returns {Promise<string>} - URI of resized image
   */
  static async resizeImage(imageUri, dimensions) {
    try {
      Logger.info("Resizing image for OCR optimization", {
        imageUri,
        dimensions,
      });

      const resizedImage = await ImageResizer.createResizedImage(
        imageUri,
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
    }
  }

  /**
   * Enhance image quality for better OCR results
   * @param {string} imageUri - URI of the image to enhance
   * @returns {Promise<string>} - URI of enhanced image
   */
  static async enhanceImage(imageUri) {
    try {
      Logger.info("Enhancing image for OCR", { imageUri });

      // First resize to optimal OCR dimensions if needed
      const dimensions = await this.getImageDimensions(imageUri);
      let enhancedUri = imageUri;

      // Resize if image is too large (optimal OCR size is around 1600px width)
      if (dimensions.width > 1600) {
        const aspectRatio = dimensions.height / dimensions.width;
        enhancedUri = await this.resizeImage(imageUri, {
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
    try {
      const base64 = await RNFS.readFile(
        imageUri.replace("file://", ""),
        "base64"
      );
      return `data:image/jpeg;base64,${base64}`;
    } catch (error) {
      Logger.error("Base64 conversion failed:", error.message);
      throw new Error(`Base64 conversion failed: ${error.message}`);
    }
  }

  /**
   * Enhanced preprocessing specifically for MRZ (Machine Readable Zone)
   * MRZ requires high contrast and sharp edges for better OCR accuracy
   * @param {string} imageUri - URI of the image
   * @returns {Promise<string>} - URI of processed image optimized for MRZ
   */
  static async preprocessForMRZ(imageUri) {
    try {
      Logger.info('Preprocessing image for MRZ detection', { imageUri });

      // Remove file:// prefix for processing
      const nativePath = imageUri.replace('file://', '');

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
      const enhanced = await ImageResizer.createResizedImage(
        resized.uri.replace('file://', ''),
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
    }
  }

  /**
   * Preprocess image for back side ID card reading
   * Optimized for both MRZ and regular text on back side
   * @param {string} imageUri - URI of the image
   * @returns {Promise<string>} - URI of processed image
   */
  static async preprocessBackSide(imageUri) {
    try {
      Logger.info('Preprocessing back side of ID card', { imageUri });

      const nativePath = imageUri.replace('file://', '');

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
    }
  }
}

module.exports = { ImageProcessor };
