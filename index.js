// Mobile SDK - Main Entry Point
// React Native SDK for OCR, NFC and Liveness Detection

// OCR Module
export * from './modules/ocr';

// NFC Module  
export * from './modules/nfc';

// Liveness Detection Module
export * from './modules/liveness';

// Utilities
export { default as Logger } from './utils/logger';
export { default as PermissionManager } from './utils/permissions';
export { ImageProcessor } from './utils/imageProcessor';

// SDK Version
export const SDK_VERSION = '1.0.0';
