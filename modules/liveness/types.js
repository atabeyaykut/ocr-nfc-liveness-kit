/**
 * Liveness Detection Types and Constants
 * Type definitions for liveness detection module
 */

// Export status constants
export const LIVENESS_STATUS = {
  IDLE: 'idle',
  INITIALIZING: 'initializing',
  CAMERA_READY: 'camera_ready',
  INSTRUCTION_GIVEN: 'instruction_given',
  CAPTURING: 'capturing',
  PROCESSING: 'processing',
  SUCCESS: 'success',
  ERROR: 'error'
};

// Export instruction types
export const LIVENESS_INSTRUCTIONS = {
  LOOK_STRAIGHT: 'look_straight',
  BLINK: 'blink',
  TURN_LEFT: 'turn_left',
  TURN_RIGHT: 'turn_right',
  SMILE: 'smile',
  NOD: 'nod'
};

// Export configuration defaults
export const LIVENESS_CONFIG = {
  cameraType: 'front',
  captureQuality: 0.8,
  timeoutDuration: 30000,
  instructionDelay: 2000,
  maxRetries: 3,
  enableFaceDetection: true,
  enableMotionDetection: true
};
