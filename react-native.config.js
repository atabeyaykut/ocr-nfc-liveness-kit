/**
 * React Native Configuration
 * Standard autolinking configuration for all modules
 */

module.exports = {
  dependencies: {
    // Temporarily exclude RNReanimated from iOS autolinking
    // due to FBReactNativeSpec dependency issue with RN 0.74.7
    'react-native-reanimated': {
      platforms: {
        ios: null, // Disable for iOS
      },
    },
  },
  assets: ['./assets/fonts/', './assets/images/'],
};
