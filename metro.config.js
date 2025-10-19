/**
 * Metro configuration for React Native
 * Supports Vision Camera, Worklets, and ML Kit
 * @format
 */

const {getDefaultConfig, mergeConfig} = require('@react-native/metro-config');

/**
 * Metro configuration
 * https://facebook.github.io/metro/docs/configuration
 *
 * @type {import('metro-config').MetroConfig}
 */
const config = {
  resolver: {
    assetExts: [
      ...require('@react-native/metro-config').getDefaultConfig(__dirname).resolver.assetExts,
      // Text and data files
      'bin',
      'txt',
      'json',
      'xml',
      'csv',
      // Image formats for OCR
      'jpg',
      'jpeg',
      'png',
      'gif',
      'bmp',
      'webp',
      'svg',
      'tiff',
      'tif',
      'ico',
      'heic',
      'heif',
      // Model files for ML
      'tflite',
      'mlmodel',
      'onnx',
      // Font files
      'ttf',
      'otf',
      'woff',
      'woff2',
      'eot',
      // Audio/Video
      'mp3',
      'mp4',
      'wav',
      'mov',
      'avi',
      // Archive files
      'zip',
      'tar',
      'gz',
      // Certificate and key files
      'pem',
      'crt',
      'key',
      'p12',
      'pfx',
    ],
    sourceExts: [
      ...require('@react-native/metro-config').getDefaultConfig(__dirname).resolver.sourceExts,
      'worklet.js',
      'worklet.ts',
    ],
  },
};

module.exports = mergeConfig(getDefaultConfig(__dirname), config);
