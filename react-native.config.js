/**
 * React Native Configuration
 * Standard autolinking configuration for all modules
 */

module.exports = {
  project: {
    ios: {
      sourceDir: './ios',
    },
  },
  dependencies: {
    // Temporarily exclude RNReanimated from iOS autolinking
    // due to FBReactNativeSpec dependency issue with RN 0.74.7
    'react-native-reanimated': {
      platforms: {
        ios: null, // Disable for iOS
      },
    },
    // CRITICAL FIX: Disable Vision Camera auto-linking for Android
    // Vision Camera's CameraDevicesManager starts before React Native bridge is ready
    // causing IllegalStateException crash on app startup
    'react-native-vision-camera': {
      platforms: {
        android: null, // Disable for Android - prevents native module loading
      },
    },
    'react-native-worklets-core': {
      platforms: {
        android: null, // Disable worklets too (required by Vision Camera)
      },
    },
  },
  assets: ['./assets/fonts/', './assets/images/'],
};
