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
    '@react-native-ml-kit/face-detection': {
      platforms: {
        android: {
          packageImportPath:
            'import com.rnmlkit.facedetection.FaceDetectionPackage;',
          packageInstance: 'new FaceDetectionPackage()',
        },
        ios: null,
      },
    },
    '@react-native-ml-kit/text-recognition': {
      platforms: {
        android: {
          packageImportPath:
            'import com.rnmlkit.textrecognition.TextRecognitionPackage;',
          packageInstance: 'new TextRecognitionPackage()',
        },
        ios: null,
      },
    },
  },
  assets: ['./assets/fonts/', './assets/images/'],
};
