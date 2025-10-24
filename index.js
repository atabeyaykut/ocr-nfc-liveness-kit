/**
 * OCR Mobile App - Main Entry Point
 * Stand-alone React Native application for Turkish ID card verification
 * Features: OCR, NFC, and Liveness Detection
 */

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

// Register the React Native root component for Android/iOS launcher
// Must match MainActivity#getMainComponentName()
AppRegistry.registerComponent('mobile-sdk-ocr-nfc-liveness', () => App);
