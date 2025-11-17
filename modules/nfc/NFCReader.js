/**
 * Legacy NFCReader shim
 * ---------------------
 * This file used to contain a standalone NFCReader class. To avoid
 * bundling two different NFC implementations, we proxy all CommonJS
 * imports to the modern `NFCReaderModule` (React component + hooks).
 */

const {
  NFCReaderScreen,
  NFC_ERROR_CODES,
  default: NFCReaderModule,
} = require('./NFCReaderModule');

module.exports = NFCReaderModule;
module.exports.NFCReaderScreen = NFCReaderScreen;
module.exports.NFC_ERROR_CODES = NFC_ERROR_CODES;
