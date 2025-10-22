// Mobile SDK - Main Entry Point
// React Native SDK for OCR, NFC and Liveness Detection

import { AppRegistry } from 'react-native';
import App from './App';

// 🔧 FIX: Global unhandled promise rejection handler
// Catches TTS and other library errors that don't bubble up properly
const originalHandler = ErrorUtils.getGlobalHandler();
ErrorUtils.setGlobalHandler((error, isFatal) => {
  // Suppress TTS-related errors (non-critical)
  if (error?.message?.includes('TTS') || error?.message?.includes('No TTS engine')) {
    console.log('[App] TTS error suppressed:', error.message);
    return;
  }
  
  // For other errors, use original handler
  if (originalHandler) {
    originalHandler(error, isFatal);
  }
});

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

// Register the React Native root component for Android/iOS launcher
// Must match MainActivity#getMainComponentName()
AppRegistry.registerComponent('mobile-sdk-ocr-nfc-liveness', () => App);
