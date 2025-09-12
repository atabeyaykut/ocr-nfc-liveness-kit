// OCR Reader Unit Tests
const OCRReader = require("../modules/ocr/OCRReader");
const { OCR_STATUS, OCR_ERROR_CODES } = require("../modules/ocr/types");

// Mock dependencies
jest.mock("../utils/logger");
jest.mock("../utils/permissions");
jest.mock("../utils/imageProcessor");
jest.mock("react-native-text-recognition");

describe("OCRReader", () => {
  let ocrReader;

  beforeEach(() => {
    ocrReader = new OCRReader();
  });

  afterEach(() => {
    jest.clearAllMocks();
  });

  describe("Constructor", () => {
    test("should initialize with correct default state", () => {
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.IDLE);
      expect(ocrReader.getLastExtractedText()).toBeNull();
    });
  });

  describe("startOCR", () => {
    test("should initialize OCR successfully with permissions", async () => {
      // Mock permission manager
      const PermissionManager = require("../utils/permissions");
      PermissionManager.requestCameraPermission = jest.fn().mockResolvedValue(true);
      PermissionManager.requestStoragePermission = jest.fn().mockResolvedValue(true);

      const result = await ocrReader.startOCR();

      expect(result).toBe(true);
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.READY);
    });

    test("should throw error when camera permission denied", async () => {
      const PermissionManager = require("../utils/permissions");
      PermissionManager.requestCameraPermission = jest.fn().mockResolvedValue(false);

      await expect(ocrReader.startOCR()).rejects.toThrow(
        OCR_ERROR_CODES.CAMERA_PERMISSION_DENIED
      );
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.ERROR);
    });
  });

  describe("captureImage", () => {
    beforeEach(async () => {
      const PermissionManager = require("../utils/permissions");
      PermissionManager.requestCameraPermission = jest.fn().mockResolvedValue(true);
      PermissionManager.requestStoragePermission = jest.fn().mockResolvedValue(true);
      await ocrReader.startOCR();
    });

    test("should capture image successfully", async () => {
      const imageUri = await ocrReader.captureImage();

      expect(imageUri).toBeDefined();
      expect(typeof imageUri).toBe("string");
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.READY);
    });

    test("should throw error when OCR not ready", async () => {
      ocrReader.reset();

      await expect(ocrReader.captureImage()).rejects.toThrow(
        "OCR system not ready"
      );
    });

    test("should use custom options for image capture", async () => {
      const options = {
        quality: 0.9,
        maxWidth: 1080,
        maxHeight: 1080,
      };

      const imageUri = await ocrReader.captureImage(options);
      expect(imageUri).toBeDefined();
    });
  });

  describe("cropImage", () => {
    test("should crop image successfully", async () => {
      const mockImageUri = "file:///test/image.jpg";
      const cropData = { x: 10, y: 10, width: 100, height: 50 };

      const ImageProcessor = require("../utils/imageProcessor").ImageProcessor;
      ImageProcessor.cropImage.mockResolvedValue(
        "file:///test/cropped_image.jpg"
      );

      const croppedUri = await ocrReader.cropImage(mockImageUri, cropData);

      expect(croppedUri).toBe("file:///test/cropped_image.jpg");
      expect(ImageProcessor.cropImage).toHaveBeenCalledWith(
        mockImageUri,
        cropData
      );
    });

    test("should throw error when imageUri is missing", async () => {
      const cropData = { x: 10, y: 10, width: 100, height: 50 };

      await expect(ocrReader.cropImage(null, cropData)).rejects.toThrow(
        "Image URI is required"
      );
    });
  });

  describe("extractText", () => {
    beforeEach(async () => {
      const PermissionManager = require("../utils/permissions");
      const TextRecognition = require("react-native-text-recognition");
      const ImageProcessor = require("../utils/imageProcessor").ImageProcessor;

      PermissionManager.requestCameraPermission = jest.fn().mockResolvedValue(true);
      PermissionManager.requestStoragePermission = jest.fn().mockResolvedValue(true);

      // Mock TextRecognition
      TextRecognition.recognize = jest.fn().mockResolvedValue({
        text: "TÜRKIYE CUMHURIYETI KIMLIK KARTI\nAD: MEHMET\nSOYAD: YILMAZ\nT.C. KIMLIK NO: 12345678901",
        blocks: [
          {
            text: "TÜRKIYE CUMHURIYETI KIMLIK KARTI",
            confidence: 0.95,
            boundingBox: { x: 10, y: 10, width: 300, height: 30 },
          },
          {
            text: "AD: MEHMET",
            confidence: 0.92,
            boundingBox: { x: 10, y: 50, width: 150, height: 25 },
          },
          {
            text: "SOYAD: YILMAZ",
            confidence: 0.9,
            boundingBox: { x: 10, y: 80, width: 160, height: 25 },
          },
          {
            text: "T.C. KIMLIK NO: 12345678901",
            confidence: 0.88,
            boundingBox: { x: 10, y: 110, width: 250, height: 25 },
          }
        ],
      });

      // Mock ImageProcessor
      ImageProcessor.enhanceImage.mockResolvedValue(
        "file:///test/enhanced_image.jpg"
      );

      await ocrReader.startOCR();
    });

    test("should extract text successfully with real OCR integration", async () => {
      const mockImageUri = "file:///test/image.jpg";

      const result = await ocrReader.extractText(mockImageUri);

      expect(result).toBeDefined();
      expect(result.text).toContain("TÜRKIYE CUMHURIYETI");
      expect(result.confidence).toBeGreaterThan(0);
      expect(result.blocks).toBeDefined();
      expect(Array.isArray(result.blocks)).toBe(true);
      expect(result.blocks.length).toBe(4);
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.SUCCESS);
    });

    test("should enhance image before OCR processing", async () => {
      const ImageProcessor = require("../utils/imageProcessor").ImageProcessor;
      const mockImageUri = "file:///test/image.jpg";

      await ocrReader.extractText(mockImageUri, { enhanceImage: true });

      expect(ImageProcessor.enhanceImage).toHaveBeenCalledWith(mockImageUri);
    });

    test("should filter results by confidence threshold", async () => {
      const mockImageUri = "file:///test/image.jpg";
      const options = { confidence: 0.93 };

      const result = await ocrReader.extractText(mockImageUri, options);

      // Only blocks with confidence >= 0.93 should remain
      expect(result.blocks.length).toBe(1); // Only first block has 0.95 confidence
      expect(result.blocks[0].confidence).toBeGreaterThanOrEqual(0.93);
    });

    test("should call success callback when provided", async () => {
      const onSuccess = jest.fn();
      const ocrReaderWithCallback = new OCRReader({ onSuccess });

      const PermissionManager = require("../utils/permissions");
      PermissionManager.requestCameraPermission = jest.fn().mockResolvedValue(true);
      PermissionManager.requestStoragePermission = jest.fn().mockResolvedValue(true);

      await ocrReaderWithCallback.startOCR();
      await ocrReaderWithCallback.extractText("file:///test/image.jpg");

      expect(onSuccess).toHaveBeenCalled();
    });

    test("should call error callback on failure", async () => {
      const onError = jest.fn();
      const ocrReaderWithCallback = new OCRReader({ onError });

      // Mock TextRecognition to throw error
      const TextRecognition = require("react-native-text-recognition");
      TextRecognition.recognize = jest.fn().mockRejectedValue(
        new Error("OCR processing failed")
      );

      const PermissionManager = require("../utils/permissions");
      PermissionManager.requestCameraPermission = jest.fn().mockResolvedValue(true);
      PermissionManager.requestStoragePermission = jest.fn().mockResolvedValue(true);

      await ocrReaderWithCallback.startOCR();

      await expect(
        ocrReaderWithCallback.extractText("file:///test/image.jpg")
      ).rejects.toThrow();
      expect(onError).toHaveBeenCalled();
    });

    test("should use current image when no imageUri provided", async () => {
      await ocrReader.captureImage();
      const result = await ocrReader.extractText();
      expect(result).toBeDefined();
    });

    test("should throw error when no image available", async () => {
      await expect(ocrReader.extractText()).rejects.toThrow(
        "No image available for text extraction"
      );
    });
  });

  describe("extractField", () => {
    test("should extract Turkish ID number correctly", () => {
      const text = "T.C. KIMLIK NO: 12345678901 AD: MEHMET";
      const tcNo = ocrReader.extractField(text, "tc_no");
      expect(tcNo).toBe("12345678901");
    });

    test("should extract name correctly", () => {
      const text = "AD: MEHMET SOYAD: YILMAZ";
      const name = ocrReader.extractField(text, "name");
      expect(name).toBe("MEHMET");
    });

    test("should extract surname correctly", () => {
      const text = "AD: MEHMET SOYAD: YILMAZ";
      const surname = ocrReader.extractField(text, "surname");
      expect(surname).toBe("YILMAZ");
    });

    test("should return null for unknown field type", () => {
      const text = "Some random text";
      const result = ocrReader.extractField(text, "unknown_field");
      expect(result).toBeNull();
    });

    test("should return null when field not found", () => {
      const text = "Some text without ID number";
      const tcNo = ocrReader.extractField(text, "tc_no");
      expect(tcNo).toBeNull();
    });
  });

  describe("getStatus", () => {
    test("should return current status", () => {
      expect(ocrReader.getStatus()).toBe(OCR_STATUS.IDLE);
    });
  });

  describe("getLastExtractedText", () => {
    test("should return null initially", () => {
      expect(ocrReader.getLastExtractedText()).toBeNull();
    });

    test("should return extracted text after processing", async () => {
      const PermissionManager = require("../utils/permissions");
      const TextRecognition = require("react-native-text-recognition");
      
      PermissionManager.requestCameraPermission = jest.fn().mockResolvedValue(true);
      PermissionManager.requestStoragePermission = jest.fn().mockResolvedValue(true);
      
      TextRecognition.recognize = jest.fn().mockResolvedValue({
        text: "TÜRKIYE CUMHURIYETI KIMLIK KARTI",
        blocks: [
          {
            text: "TÜRKIYE CUMHURIYETI KIMLIK KARTI",
            confidence: 0.95,
            boundingBox: { x: 10, y: 10, width: 300, height: 30 },
          },
        ],
      });

      await ocrReader.startOCR();
      const result = await ocrReader.extractText("file:///test/image.jpg");

      expect(ocrReader.getLastExtractedText()).toEqual(result);
    });
  });

  describe("reset", () => {
    test("should reset OCR reader state", async () => {
      const PermissionManager = require("../utils/permissions");
      const TextRecognition = require("react-native-text-recognition");
      
      PermissionManager.requestCameraPermission = jest.fn().mockResolvedValue(true);
      PermissionManager.requestStoragePermission = jest.fn().mockResolvedValue(true);
      
      TextRecognition.recognize = jest.fn().mockResolvedValue({
        text: "TÜRKIYE CUMHURIYETI KIMLIK KARTI",
        blocks: [
          {
            text: "TÜRKIYE CUMHURIYETI KIMLIK KARTI",
            confidence: 0.95,
            boundingBox: { x: 10, y: 10, width: 300, height: 30 },
          },
        ],
      });

      await ocrReader.startOCR();
      await ocrReader.extractText("file:///test/image.jpg");

      ocrReader.reset();

      expect(ocrReader.getStatus()).toBe(OCR_STATUS.IDLE);
      expect(ocrReader.getLastExtractedText()).toBeNull();
    });
  });
});
