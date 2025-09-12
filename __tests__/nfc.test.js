/**
 * NFC Reader Unit Tests
 * Tests for NFC functionality, device support, and mock data reading
 */

import { NFCReader, NFC_STATUS } from "../modules/nfc/NFCReader";
import { Logger } from "../utils/logger";

// Mock react-native-nfc-manager
jest.mock("react-native-nfc-manager", () => ({
  isSupported: jest.fn(),
  isEnabled: jest.fn(),
  start: jest.fn(),
  stop: jest.fn(),
  cancelTechnologyRequest: jest.fn(),
  FLAG_READER_NFC_A: 1,
  FLAG_READER_NFC_B: 2,
}));

// Mock logger
jest.mock("../utils/logger");

describe("NFCReader", () => {
  let nfcReader;
  let mockOnSuccess;
  let mockOnError;
  let mockOnStatusChange;
  let mockOnProgress;

  beforeEach(() => {
    jest.clearAllMocks();

    mockOnSuccess = jest.fn();
    mockOnError = jest.fn();
    mockOnStatusChange = jest.fn();
    mockOnProgress = jest.fn();

    nfcReader = new NFCReader({
      onSuccess: mockOnSuccess,
      onError: mockOnError,
      onStatusChange: mockOnStatusChange,
      onProgress: mockOnProgress,
    });
  });

  describe("Constructor", () => {
    test("should initialize with default values", () => {
      const reader = new NFCReader();

      expect(reader.status).toBe(NFC_STATUS.IDLE);
      expect(reader.isNFCSupported).toBe(false);
      expect(reader.isNFCEnabled).toBe(false);
      expect(reader.currentSession).toBeNull();
      expect(reader.readData).toBeNull();
    });

    test("should initialize with custom options", () => {
      const customOptions = {
        timeout: 60000,
        alertMessage: "Custom message",
        onSuccess: mockOnSuccess,
      };

      const reader = new NFCReader(customOptions);

      expect(reader.config.timeout).toBe(60000);
      expect(reader.config.alertMessage).toBe("Custom message");
      expect(reader.onSuccess).toBe(mockOnSuccess);
    });
  });

  describe("NFC Support Detection", () => {
    test("should detect NFC not supported and call onError", async () => {
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(false);

      const result = await nfcReader.startNFC();

      expect(result).toBe(false);
      expect(mockOnError).toHaveBeenCalledWith(
        expect.objectContaining({
          message: "NFC not supported on this device",
        })
      );
      expect(mockOnStatusChange).toHaveBeenCalledWith(
        NFC_STATUS.ERROR,
        NFC_STATUS.INITIALIZING
      );
    });

    test("should detect NFC disabled and call onError", async () => {
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(false);

      const result = await nfcReader.startNFC();

      expect(result).toBe(false);
      expect(mockOnError).toHaveBeenCalledWith(
        expect.objectContaining({
          message: "NFC is disabled. Please enable NFC in device settings.",
        })
      );
    });

    test("should successfully initialize NFC when supported and enabled", async () => {
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(true);
      NfcManager.start.mockResolvedValue();

      const result = await nfcReader.startNFC();

      expect(result).toBe(true);
      expect(nfcReader.isNFCSupported).toBe(true);
      expect(nfcReader.isNFCEnabled).toBe(true);
      expect(nfcReader.status).toBe(NFC_STATUS.READY);
      expect(mockOnStatusChange).toHaveBeenCalledWith(
        NFC_STATUS.READY,
        NFC_STATUS.INITIALIZING
      );
    });
  });

  describe("Mock Data Reading", () => {
    beforeEach(async () => {
      // Setup NFC as ready
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(true);
      NfcManager.start.mockResolvedValue();

      await nfcReader.startNFC();
    });

    test("should read mock NFC data successfully", async () => {
      const result = await nfcReader.readNFCData();

      expect(result).toHaveProperty("name", "MEHMET");
      expect(result).toHaveProperty("surname", "YILMAZ");
      expect(result).toHaveProperty("idNumber", "12345678901");
      expect(result).toHaveProperty("cardType", "Turkish ID Card");
      expect(result).toHaveProperty("nfcData");
      expect(result).toHaveProperty("verification");

      expect(mockOnSuccess).toHaveBeenCalledWith(result);
      expect(mockOnProgress).toHaveBeenCalledWith(
        "Lütfen kimliğinizi telefonun arkasına yaklaştırın."
      );
      expect(nfcReader.status).toBe(NFC_STATUS.SUCCESS);
    });

    test("should return correct JSON structure for mock data", async () => {
      const result = await nfcReader.readNFCData();

      // Check required fields
      expect(result.name).toBe("MEHMET");
      expect(result.surname).toBe("YILMAZ");
      expect(result.idNumber).toBe("12345678901");
      expect(result.birthDate).toBe("15.06.1985");
      expect(result.birthPlace).toBe("İSTANBUL");

      // Check NFC technical data
      expect(result.nfcData).toHaveProperty("uid");
      expect(result.nfcData).toHaveProperty("technology");
      expect(result.nfcData).toHaveProperty("readTime");
      expect(result.nfcData).toHaveProperty("signalStrength");

      // Check verification data
      expect(result.verification.isValid).toBe(true);
      expect(result.verification.checksum).toBe("VALID");
      expect(result.verification.digitalSignature).toBe("VERIFIED");
    });

    test("should fail when NFC not ready", async () => {
      nfcReader.status = NFC_STATUS.IDLE;

      await expect(nfcReader.readNFCData()).rejects.toThrow(
        "NFC not ready. Please call startNFC() first."
      );

      expect(mockOnError).toHaveBeenCalled();
      expect(nfcReader.status).toBe(NFC_STATUS.ERROR);
    });

    test("should update status during reading process", async () => {
      const readPromise = nfcReader.readNFCData();

      // Check initial status change
      expect(mockOnStatusChange).toHaveBeenCalledWith(
        NFC_STATUS.SCANNING,
        NFC_STATUS.READY

      await readPromise;

      // Check final status
      expect(nfcReader.status).toBe(NFC_STATUS.SUCCESS);
    });
  });

  describe("NFC Operations", () => {
    test("should stop NFC operations successfully", async () => {
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.stop.mockResolvedValue();

      await nfcReader.stopNFC();

      expect(NfcManager.stop).toHaveBeenCalled();
      expect(nfcReader.status).toBe(NFC_STATUS.IDLE);
      expect(nfcReader.readData).toBeNull();
    });

    test("should cancel ongoing operations when stopping", async () => {
      const NfcManager = require("react-native-nfc-manager");
      nfcReader.currentSession = "mock-session";

      await nfcReader.stopNFC();

      expect(NfcManager.cancelTechnologyRequest).toHaveBeenCalled();
      expect(nfcReader.currentSession).toBeNull();
    });

    test("should handle stop NFC errors gracefully", async () => {
      const NfcManager = require("react-native-nfc-manager");
      const stopError = new Error("Stop failed");
      NfcManager.stop.mockRejectedValue(stopError);

      await nfcReader.stopNFC();

      expect(mockOnError).toHaveBeenCalledWith(stopError);
    });
  });

  describe("Status Management", () => {
    test("should return current status", () => {
      nfcReader.status = NFC_STATUS.READY;
      expect(nfcReader.getStatus()).toBe(NFC_STATUS.READY);
    });

    test("should return last read data", async () => {
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(true);
      NfcManager.start.mockResolvedValue();

      await nfcReader.startNFC();
      const result = await nfcReader.readNFCData();

      expect(nfcReader.getLastReadData()).toEqual(result);
    });

    test("should reset NFC reader state", () => {
      nfcReader.status = NFC_STATUS.SUCCESS;
      nfcReader.readData = { test: "data" };
      nfcReader.currentSession = "session";

      nfcReader.reset();

      expect(nfcReader.status).toBe(NFC_STATUS.IDLE);
      expect(nfcReader.readData).toBeNull();
      expect(nfcReader.currentSession).toBeNull();
    });
  });

  describe("Error Handling", () => {
    test("should handle NFC initialization errors", async () => {
      const NfcManager = require("react-native-nfc-manager");
      const initError = new Error("Initialization failed");
      NfcManager.isSupported.mockRejectedValue(initError);

      const result = await nfcReader.startNFC();

      expect(result).toBe(false);
      expect(mockOnError).toHaveBeenCalledWith(initError);
      expect(nfcReader.status).toBe(NFC_STATUS.ERROR);
    });

    test("should handle NFC manager start errors", async () => {
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(true);

      const startError = new Error("NFC Manager start failed");
      NfcManager.start.mockRejectedValue(startError);

      const result = await nfcReader.startNFC();

      expect(result).toBe(false);
      expect(mockOnError).toHaveBeenCalledWith(startError);
    });
  });

  describe("Callback Integration", () => {
    test("should call onStatusChange callback when status changes", async () => {
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(true);
      NfcManager.start.mockResolvedValue();

      await nfcReader.startNFC();

      expect(mockOnStatusChange).toHaveBeenCalledWith(
        NFC_STATUS.INITIALIZING,
        NFC_STATUS.IDLE
      );
      expect(mockOnStatusChange).toHaveBeenCalledWith(
        NFC_STATUS.READY,
        NFC_STATUS.INITIALIZING
      );
    });

    test("should call onProgress callback during reading", async () => {
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(true);
      NfcManager.start.mockResolvedValue();

      await nfcReader.startNFC();
      await nfcReader.readNFCData();

      expect(mockOnProgress).toHaveBeenCalledWith(
        "Lütfen kimliğinizi telefonun arkasına yaklaştırın."
      );
      expect(mockOnProgress).toHaveBeenCalledWith(
        "NFC kartı algılandı, veriler okunuyor..."
      );
      expect(mockOnProgress).toHaveBeenCalledWith("Veriler işleniyor...");
    });

    test("should work without callbacks", () => {
      const reader = new NFCReader();

      // Should not throw when calling internal methods without callbacks
      expect(() => {
        reader._updateStatus(NFC_STATUS.READY);
        reader._handleError(new Error("Test error"));
      }).not.toThrow();
    });
  });

  describe("Configuration", () => {
    test("should use custom timeout in readNFCData", async () => {
      const customReader = new NFCReader({ timeout: 5000 });
      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(true);
      NfcManager.start.mockResolvedValue();

      await customReader.startNFC();

      // Mock data reading should respect timeout
      const result = await customReader.readNFCData();
      expect(result).toBeDefined();
    });

    test("should use custom alert message", async () => {
      const customMessage = "Custom NFC message";
      const customReader = new NFCReader({
        alertMessage: customMessage,
        onProgress: mockOnProgress, 
      });

      const NfcManager = require("react-native-nfc-manager");
      NfcManager.isSupported.mockResolvedValue(true);
      NfcManager.isEnabled.mockResolvedValue(true);
      NfcManager.start.mockResolvedValue();

      await customReader.startNFC();
      await customReader.readNFCData();

      expect(mockOnProgress).toHaveBeenCalledWith(customMessage);
    });
  });
});
