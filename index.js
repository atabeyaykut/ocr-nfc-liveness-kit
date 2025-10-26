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
  
  // Suppress ML Kit preload errors (non-critical)
  if (error?.message?.includes('ml_kit_preload') || error?.message?.includes('No content provider')) {
    console.log('[App] ML Kit preload warning suppressed (non-critical)');
    return;
  }
  
  // For other errors, use original handler
  if (originalHandler) {
    originalHandler(error, isFatal);
  }
});

// Handle unhandled promise rejections
const PromiseRejectionTracking = require('react-native/Libraries/Promise');
if (PromiseRejectionTracking && PromiseRejectionTracking.enable) {
  PromiseRejectionTracking.enable({
    allRejections: true,
    onUnhandled: (id, error) => {
      // Suppress known non-critical errors
      if (error?.message?.includes('TTS') || 
          error?.message?.includes('No TTS engine') ||
          error?.message?.includes('ml_kit_preload') ||
          error?.message?.includes('No content provider')) {
        console.log('[App] Non-critical promise rejection suppressed:', error?.message);
        return;
      }
      console.warn('[App] Unhandled promise rejection:', id, error);
    },
    onHandled: () => {},
  });
}

// Register the React Native root component for Android/iOS launcher
// Must match MainActivity#getMainComponentName()
AppRegistry.registerComponent('mobile-sdk-ocr-nfc-liveness', () => App);
