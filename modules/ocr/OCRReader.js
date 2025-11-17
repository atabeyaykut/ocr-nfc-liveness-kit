/**
 * Legacy OCRReader shim
 * ---------------------
 * This file previously contained the standalone OCRReader class. To keep a
 * single source of truth, any CommonJS import of `modules/ocr/OCRReader`
 * is now proxied to the React-based `OCRReaderModule` implementation.
 */

const {
  OCRReaderScreen,
  default: OCRReaderModule,
} = require('./OCRReaderModule');

module.exports = OCRReaderModule;
module.exports.OCRReaderScreen = OCRReaderScreen;
