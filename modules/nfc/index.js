/**
 * NFC Module Entry Point
 * Exports NFC Reader functionality for mobile SDK
 */

import NFCReader, { NFC_STATUS, NFC_CONFIG } from './NFCReader';

// Export main NFC Reader class
export { NFCReader, NFC_STATUS, NFC_CONFIG };

// Export default instance for quick usage
export default NFCReader;

// Legacy compatibility
export const NFCModule = {
  NFCReader,
  NFC_STATUS,
  NFC_CONFIG,
  // Quick initialization method
  createReader: (options) => new NFCReader(options),
  // Status constants for external use
  STATUS: NFC_STATUS,
  CONFIG: NFC_CONFIG,
};
