/**
 * Camera Module - Wrapper for Vision Camera v3
 * Provides simplified camera access for OCR and face detection
 */

import { Camera, useCameraDevices } from 'react-native-vision-camera';

/**
 * Request camera permissions
 * @returns {Promise<boolean>} - True if permissions granted
 */
export const requestCameraPermission = async () => {
  try {
    const permission = await Camera.requestCameraPermission();
    return permission === 'authorized';
  } catch (error) {
    console.error('Camera permission error:', error);
    return false;
  }
};

/**
 * Get camera permission status
 * @returns {Promise<string>} - Permission status: 'authorized', 'denied', 'not-determined'
 */
export const getCameraPermissionStatus = async () => {
  try {
    const status = await Camera.getCameraPermissionStatus();
    return status;
  } catch (error) {
    console.error('Get camera permission status error:', error);
    return 'denied';
  }
};

/**
 * Check if camera is available
 * @returns {Promise<boolean>} - True if camera is available
 */
export const isCameraAvailable = async () => {
  try {
    const devices = await Camera.getAvailableCameraDevices();
    return devices && devices.length > 0;
  } catch (error) {
    console.error('Camera availability check error:', error);
    return false;
  }
};

/**
 * Get available camera devices
 * @returns {Promise<Array>} - Array of available camera devices
 */
export const getCameraDevices = async () => {
  try {
    const devices = await Camera.getAvailableCameraDevices();
    return devices;
  } catch (error) {
    console.error('Get camera devices error:', error);
    return [];
  }
};

/**
 * Take a photo and return the file path
 * @param {Object} camera - Camera reference from useCamera hook
 * @param {Object} options - Photo options (flash, quality, etc.)
 * @returns {Promise<Object>} - Photo object with path
 */
export const takePhoto = async (camera, options = {}) => {
  if (!camera || !camera.current) {
    throw new Error('Camera reference is not available');
  }

  const defaultOptions = {
    flash: 'off',
    qualityPrioritization: 'balanced',
    skipMetadata: false,
    ...options,
  };

  try {
    const photo = await camera.current.takePhoto(defaultOptions);
    return photo;
  } catch (error) {
    console.error('Take photo error:', error);
    throw error;
  }
};

/**
 * Format camera device info for display
 * @param {Object} device - Camera device object
 * @returns {Object} - Formatted device info
 */
export const formatDeviceInfo = (device) => {
  if (!device) return null;

  return {
    id: device.id,
    name: device.name || 'Unknown',
    position: device.position,
    hasFlash: device.hasFlash || false,
    hasTorch: device.hasTorch || false,
    isMultiCam: device.isMultiCam || false,
    supportsRawCapture: device.supportsRawCapture || false,
    supportsFocus: device.supportsFocus || false,
  };
};

/**
 * Custom hook for camera setup
 * @returns {Object} - Camera devices and utilities
 */
export const useCameraSetup = () => {
  const devices = useCameraDevices();
  
  const backCamera = devices.find(d => d.position === 'back');
  const frontCamera = devices.find(d => d.position === 'front');

  return {
    devices,
    backCamera,
    frontCamera,
    hasCamera: devices && devices.length > 0,
  };
};

export default {
  requestCameraPermission,
  getCameraPermissionStatus,
  isCameraAvailable,
  getCameraDevices,
  takePhoto,
  formatDeviceInfo,
  useCameraSetup,
  Camera,
};
