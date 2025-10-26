/**
 * Metro configuration for React Native
 * Supports Vision Camera, Worklets, and ML Kit
 * @format
 */

const { getDefaultConfig, mergeConfig } = require('@react-native/metro-config');

/**
 * Metro configuration
 * https://facebook.github.io/metro/docs/configuration
 *
 * @type {import('metro-config').MetroConfig}
 */
module.exports = (async () => {
  // Default Metro yapılandırmasını sadece bir kez alıyoruz
  const defaultConfig = await getDefaultConfig(__dirname);

  const config = {
    resolver: {
      assetExts: [
        ...defaultConfig.resolver.assetExts,
        // Text and data files
        'bin', 'txt', 'json', 'xml', 'csv',
        // Image formats for OCR
        'jpg', 'jpeg', 'png', 'gif', 'bmp', 'webp', 'svg', 'tiff', 'tif', 'ico', 'heic', 'heif',
        // Model files for ML
        'tflite', 'mlmodel', 'onnx',
        // Font files
        'ttf', 'otf', 'woff', 'woff2', 'eot',
        // Audio/Video
        'mp3', 'mp4', 'wav', 'mov', 'avi',
        // Archive files
        'zip', 'tar', 'gz',
        // Certificate and key files
        'pem', 'crt', 'key', 'p12', 'pfx',
      ],
      sourceExts: [
        ...defaultConfig.resolver.sourceExts,
        'worklet.js',
        'worklet.ts',
      ],
    },
  };

  // Varsayılan config ile senin config’ini birleştir
  return mergeConfig(defaultConfig, config);
})();
