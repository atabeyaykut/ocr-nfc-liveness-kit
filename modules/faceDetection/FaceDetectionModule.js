/**
 * Face Detection Module - JavaScript Wrapper
 * Provides face detection and liveness detection using Google ML Kit
 */

import { NativeModules } from 'react-native';

const { FaceDetectionModule } = NativeModules;

if (!FaceDetectionModule) {
  console.error('FaceDetectionModule native module is not available');
}

/**
 * Detect faces in an image file
 * @param {string} imagePath - Path to the image file
 * @returns {Promise<Object>} - Object containing detected faces and face count
 */
export const detectFaces = async (imagePath) => {
  if (!FaceDetectionModule) {
    throw new Error('FaceDetectionModule is not available');
  }
  
  try {
    const result = await FaceDetectionModule.detectFaces(imagePath);
    return result;
  } catch (error) {
    console.error('Face detection error:', error);
    throw error;
  }
};

/**
 * Detect faces from base64 encoded image
 * @param {string} base64Image - Base64 encoded image string
 * @returns {Promise<Object>} - Object containing detected faces and face count
 */
export const detectFacesFromBase64 = async (base64Image) => {
  if (!FaceDetectionModule) {
    throw new Error('FaceDetectionModule is not available');
  }
  
  try {
    const result = await FaceDetectionModule.detectFacesFromBase64(base64Image);
    return result;
  } catch (error) {
    console.error('Face detection error:', error);
    throw error;
  }
};

/**
 * Check if the face in the image is live (anti-spoofing)
 * @param {string} imagePath - Path to the image file
 * @returns {Promise<Object>} - Object with isLive boolean and reason
 */
export const checkLiveness = async (imagePath) => {
  if (!FaceDetectionModule) {
    throw new Error('FaceDetectionModule is not available');
  }
  
  try {
    const result = await FaceDetectionModule.checkLiveness(imagePath);
    return result;
  } catch (error) {
    console.error('Liveness check error:', error);
    throw error;
  }
};

/**
 * Analyze face quality for verification
 * @param {Object} face - Face object from detectFaces
 * @returns {Object} - Quality analysis result
 */
export const analyzeFaceQuality = (face) => {
  const quality = {
    isFrontal: true,
    hasGoodLighting: true,
    eyesOpen: true,
    score: 0,
  };

  // Check head angle (should be relatively straight)
  const headAngleY = Math.abs(face.headEulerAngleY || 0);
  const headAngleZ = Math.abs(face.headEulerAngleZ || 0);
  
  if (headAngleY > 15 || headAngleZ > 15) {
    quality.isFrontal = false;
    quality.score -= 30;
  }

  // Check eye openness
  const leftEyeOpen = face.leftEyeOpenProbability || 0;
  const rightEyeOpen = face.rightEyeOpenProbability || 0;
  
  if (leftEyeOpen < 0.5 || rightEyeOpen < 0.5) {
    quality.eyesOpen = false;
    quality.score -= 20;
  } else {
    quality.score += 30;
  }

  // Check face size
  const faceArea = face.boundingBox.width * face.boundingBox.height;
  if (faceArea < 10000) {
    quality.score -= 20;
  } else {
    quality.score += 20;
  }

  // Normalize score to 0-100
  quality.score = Math.max(0, Math.min(100, quality.score + 50));

  return quality;
};

/**
 * Compare two faces for similarity
 * @param {Object} face1 - First face object
 * @param {Object} face2 - Second face object
 * @returns {Object} - Comparison result with similarity score
 */
export const compareFaces = (face1, face2) => {
  // Simple comparison based on face features
  // Note: For production, use proper face recognition ML model
  
  let similarity = 0;
  let matches = 0;
  let total = 0;

  // Compare face angles
  const angleDiffY = Math.abs((face1.headEulerAngleY || 0) - (face2.headEulerAngleY || 0));
  const angleDiffZ = Math.abs((face1.headEulerAngleZ || 0) - (face2.headEulerAngleZ || 0));
  
  if (angleDiffY < 10) matches++;
  if (angleDiffZ < 10) matches++;
  total += 2;

  // Compare face size ratio
  const ratio1 = face1.boundingBox.width / face1.boundingBox.height;
  const ratio2 = face2.boundingBox.width / face2.boundingBox.height;
  const ratioDiff = Math.abs(ratio1 - ratio2);
  
  if (ratioDiff < 0.15) matches++;
  total++;

  similarity = (matches / total) * 100;

  return {
    similarity: Math.round(similarity),
    isMatch: similarity > 70,
    confidence: similarity > 85 ? 'high' : similarity > 70 ? 'medium' : 'low',
  };
};

export default {
  detectFaces,
  detectFacesFromBase64,
  checkLiveness,
  analyzeFaceQuality,
  compareFaces,
};
