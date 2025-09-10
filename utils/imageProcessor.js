// Image Processing Utility
// Handles image manipulation operations for OCR
import { Image } from 'react-native';
import RNFS from 'react-native-fs';
import ImageResizer from 'react-native-image-resizer';
import Logger from './logger';

export class ImageProcessor {
  /**
   * Crop image to specified dimensions
   * @param {string} imageUri - URI of the image to crop
   * @param {object} cropData - Crop coordinates {x, y, width, height}
   * @returns {Promise<string>} - URI of cropped image
   */
  static async cropImage(imageUri, cropData) {
    try {
      Logger.info('Starting image crop operation', { imageUri, cropData });
      
      // Get image dimensions first
      const imageDimensions = await this.getImageDimensions(imageUri);
      
      // Calculate crop parameters
      const cropParams = {
        x: Math.max(0, cropData.x),
        y: Math.max(0, cropData.y),
        width: Math.min(cropData.width, imageDimensions.width - cropData.x),
        height: Math.min(cropData.height, imageDimensions.height - cropData.y)
      };
      
      // Use react-native-image-resizer for cropping
      const croppedImage = await ImageResizer.createResizedImage(
        imageUri,
        cropParams.width,
        cropParams.height,
        'JPEG',
        80, // quality
        0, // rotation
        undefined, // outputPath
        false, // keepMeta
        {
          mode: 'cover',
          onlyScaleDown: false,
        }
      );
      
      Logger.info('Image cropped successfully', { croppedUri: croppedImage.uri });
      return croppedImage.uri;
      
    } catch (error) {
      Logger.error('Image cropping failed:', error.message);
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
      Logger.info('Resizing image for OCR optimization', { imageUri, dimensions });
      
      const resizedImage = await ImageResizer.createResizedImage(
        imageUri,
        dimensions.width,
        dimensions.height,
        'JPEG',
        90, // Higher quality for OCR
        0, // rotation
        undefined, // outputPath
        false, // keepMeta
        {
          mode: 'contain',
          onlyScaleDown: false,
        }
      );
      
      Logger.info('Image resized successfully', { resizedUri: resizedImage.uri });
      return resizedImage.uri;
      
    } catch (error) {
      Logger.error('Image resizing failed:', error.message);
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
      Logger.info('Enhancing image for OCR', { imageUri });
      
      // First resize to optimal OCR dimensions if needed
      const dimensions = await this.getImageDimensions(imageUri);
      let enhancedUri = imageUri;
      
      // Resize if image is too large (optimal OCR size is around 1600px width)
      if (dimensions.width > 1600) {
        const aspectRatio = dimensions.height / dimensions.width;
        enhancedUri = await this.resizeImage(imageUri, {
          width: 1600,
          height: Math.round(1600 * aspectRatio)
        });
      }
      
      // Apply sharpening and contrast enhancement
      const finalImage = await ImageResizer.createResizedImage(
        enhancedUri,
        dimensions.width > 1600 ? 1600 : dimensions.width,
        dimensions.width > 1600 ? Math.round(1600 * (dimensions.height / dimensions.width)) : dimensions.height,
        'JPEG',
        95, // High quality for OCR
        0,
        undefined,
        false,
        {
          mode: 'contain',
          onlyScaleDown: false,
        }
      );
      
      Logger.info('Image enhanced successfully', { enhancedUri: finalImage.uri });
      return finalImage.uri;
      
    } catch (error) {
      Logger.error('Image enhancement failed:', error.message);
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
      const base64 = await RNFS.readFile(imageUri.replace('file://', ''), 'base64');
      return `data:image/jpeg;base64,${base64}`;
    } catch (error) {
      Logger.error('Base64 conversion failed:', error.message);
      throw new Error(`Base64 conversion failed: ${error.message}`);
    }
  }
}
