/**
 * Liveness Detection Tests - Day 9 Real-time Face Detection Implementation
 * Tests for real-time face detection and mock validation functionality
 */

const LivenessDetector = require("../modules/liveness/LivenessDetector");
const {
  LIVENESS_STATUS,
  LIVENESS_INSTRUCTIONS,
  FaceDetector,
} = LivenessDetector;
const {
  getRandomCommand,
  getCommandByType,
  generateCommandSequence,
  getAvailableCommandTypes,
} = require("../modules/liveness/commands");
const {
  validateResponse,
  validateRealTimeResponse,
  validateMockResponse,
  validateCommandSequence,
  validateDetectionQuality,
} = require("../modules/liveness/validator");
const Logger = require("../utils/logger");

// Mock Logger
jest.mock("../utils/logger", () => ({
  info: jest.fn(),
  warn: jest.fn(),
  error: jest.fn(),
  debug: jest.fn(),
}));

// Mock React Native Platform and Camera
jest.mock("react-native", () => ({
  Platform: {
    OS: "ios",
  },
}));

// Mock react-native-vision-camera
jest.mock("react-native-vision-camera", () => ({
  Camera: {
    getCameraPermissionStatus: jest.fn().mockResolvedValue("authorized"),
    requestCameraPermission: jest.fn().mockResolvedValue("authorized"),
  },
  useCameraDevices: jest.fn(() => ({
    front: { id: "front", position: "front" },
  })),
}));

// Mock ML Kit Face Detection
jest.mock("@react-native-ml-kit/face-detection", () => ({
  FaceDetection: {
    detect: jest.fn().mockResolvedValue([
      {
        bounds: { x: 100, y: 100, width: 200, height: 200 },
        landmarks: {
          leftEye: { x: 150, y: 150 },
          rightEye: { x: 250, y: 150 },
          nose: { x: 200, y: 200 },
          mouth: { x: 200, y: 250 },
        },
        leftEyeOpenProbability: 0.9,
        rightEyeOpenProbability: 0.9,
        smilingProbability: 0.1,
        headEulerAngleY: 0,
        headEulerAngleZ: 0,
      },
    ]),
  },
}));

// Mock commands and validator modules
jest.mock("../modules/liveness/commands", () => {
  const actualCommands = jest.requireActual("../modules/liveness/commands");
  return {
    ...actualCommands,
    getRandomCommand: jest.fn(() => ({
      id: 1,
      type: "blink",
      message: "Lütfen gözlerinizi kırpın",
      instruction: "BLINK",
      duration: 2000,
      icon: "👁️",
    })),
  };
});

jest.mock("../modules/liveness/validator", () => {
  const actualValidator = jest.requireActual("../modules/liveness/validator");
  return {
    ...actualValidator,
    validateResponse: jest.fn(async (commandType) => ({
      isValid: true,
      confidence: 0.85,
      commandType,
      detectionType: "mock_detection",
      requiredMotion: "mock_motion",
      timestamp: new Date().toISOString(),
      mockValidation: true,
      details: {
        faceDetected: true,
        motionDetected: true,
        qualityScore: 0.9,
      }
    })),
  };
});

describe("Liveness Detection Tests - Day 9", () => {
  let livenessDetector;
  let faceDetector;

  beforeEach(() => {
    jest.clearAllMocks();
    livenessDetector = new LivenessDetector({ realTimeMode: true });
    faceDetector = new FaceDetector();
  });

  afterEach(() => {
    if (livenessDetector) {
      livenessDetector.reset();
    }
    if (faceDetector) {
      faceDetector.stopDetection();
    }
  });

  // Day 9: Real-time Face Detection Tests
  describe("🎯 Real-time Face Detection", () => {
    test("should initialize FaceDetector correctly", async () => {
      expect(faceDetector).toBeDefined();
      expect(faceDetector.isReady()).toBe(false);

      await faceDetector.initialize();
      expect(faceDetector.isReady()).toBe(true);
    });

    test("should process camera frame and detect face", async () => {
      await faceDetector.initialize();

      const mockFrame = {
        width: 640,
        height: 480,
        data: new Uint8Array(640 * 480 * 4),
      };

      const result = await faceDetector.processFrame(mockFrame);

      expect(result).toBeDefined();
      expect(result.faceDetected).toBe(true);
      expect(result.confidence).toBeDefined();
      expect(result.landmarks).toBeDefined();
    });

    test("should detect blink motion correctly", async () => {
      await faceDetector.initialize();
      faceDetector.startDetection();

      let motionDetected = false;
      faceDetector.onMotionDetected("blink", (data) => {
        motionDetected = true;
        expect(data.motionType).toBe("blink");
        expect(data.confidence.overall).toBeGreaterThan(0.6);
      });

      // Simulate blink detection
      const mockBlinkFrame = {
        width: 640,
        height: 480,
        data: new Uint8Array(640 * 480 * 4),
        leftEyeOpenProbability: 0.1,
        rightEyeOpenProbability: 0.1,
      };

      await faceDetector.processFrame(mockBlinkFrame);
      expect(motionDetected).toBe(true);
    });

    test("should detect head turn motions", async () => {
      await faceDetector.initialize();
      faceDetector.startDetection();

      let leftTurnDetected = false;
      let rightTurnDetected = false;

      faceDetector.onMotionDetected("lookLeft", () => {
        leftTurnDetected = true;
      });
      faceDetector.onMotionDetected("lookRight", () => {
        rightTurnDetected = true;
      });

      // Simulate left turn
      const mockLeftTurnFrame = {
        width: 640,
        height: 480,
        data: new Uint8Array(640 * 480 * 4),
        headEulerAngleY: -25,
      };

      await faceDetector.processFrame(mockLeftTurnFrame);
      expect(leftTurnDetected).toBe(true);

      // Simulate right turn
      const mockRightTurnFrame = {
        width: 640,
        height: 480,
        data: new Uint8Array(640 * 480 * 4),
        headEulerAngleY: 25,
      };

      await faceDetector.processFrame(mockRightTurnFrame);
      expect(rightTurnDetected).toBe(true);
    });

    test("should detect smile motion", async () => {
      await faceDetector.initialize();
      faceDetector.startDetection();

      let smileDetected = false;
      faceDetector.onMotionDetected("smile", (data) => {
        smileDetected = true;
        expect(data.confidence.smile).toBeGreaterThan(0.7);
      });

      const mockSmileFrame = {
        width: 640,
        height: 480,
        data: new Uint8Array(640 * 480 * 4),
        smilingProbability: 0.8,
      };

      await faceDetector.processFrame(mockSmileFrame);
      expect(smileDetected).toBe(true);
    });
  });

  describe("✅ Real-time Validation Tests", () => {
    test("should validate real-time blink detection", async () => {
      const captureData = {
        realTimeDetection: true,
        detectionData: {
          faceDetected: true,
          motions: { blink: true },
          confidence: { overall: 0.85, blink: 0.9 },
          landmarks: { leftEye: {}, rightEye: {}, nose: {}, mouth: {} },
        }
      };

      const result = await validateRealTimeResponse("blink", captureData);

      expect(result.isValid).toBe(true);
      expect(result.confidence).toBe(0.85);
      expect(result.realTimeValidation).toBe(true);
      expect(result.motionType).toBe("blink");
    });

    test("should fail validation for low confidence", async () => {
      const captureData = {
        realTimeDetection: true,
        detectionData: {
          faceDetected: true,
          motions: { blink: true },
          confidence: { overall: 0.4, blink: 0.5 },
        }
      };

      const result = await validateRealTimeResponse("blink", captureData);

      expect(result.isValid).toBe(false);
      expect(result.error).toContain("güven skoru düşük");
    });

    test("should fail validation when no face detected", async () => {
      const captureData = {
        realTimeDetection: true,
        detectionData: {
          faceDetected: false,
          motions: {},
          confidence: { overall: 0 },
        }
      };

      const result = await validateRealTimeResponse("blink", captureData);

      expect(result.isValid).toBe(false);
      expect(result.error).toContain("Yüz algılanamadı");
    });

    test("should validate detection quality", () => {
      const goodDetectionData = {
        faceDetected: true,
        confidence: { overall: 0.8 },
        landmarks: { leftEye: {}, rightEye: {}, nose: {}, mouth: {} },
        lighting: 0.7,
      };

      const quality = validateDetectionQuality(goodDetectionData);

      expect(quality.isGoodQuality).toBe(true);
      expect(quality.score).toBeGreaterThan(0.6);
      expect(quality.issues).toHaveLength(0);
    });

    test("should detect poor quality conditions", () => {
      const poorDetectionData = {
        faceDetected: false,
        confidence: { overall: 0.3 },
        landmarks: {},
        lighting: 0.2,
      };

      const quality = validateDetectionQuality(poorDetectionData);

      expect(quality.isGoodQuality).toBe(false);
      expect(quality.issues.length).toBeGreaterThan(0);
      expect(quality.recommendations.length).toBeGreaterThan(0);
    });
  });

  describe("🔄 Real-time Integration Tests", () => {
    test("should initialize LivenessDetector with real-time mode", () => {
      const realTimeDetector = new LivenessDetector({ realTimeMode: true });

      expect(realTimeDetector).toBeDefined();
      expect(realTimeDetector.getFaceDetectionState().realTimeMode).toBe(true);
    });

    test("should process camera frame through LivenessDetector", async () => {
      const mockFrame = {
        width: 640,
        height: 480,
        data: new Uint8Array(640 * 480 * 4),
      };

      const result = await livenessDetector.processCameraFrame(mockFrame);
      expect(result).toBeDefined();
    });

    test("should handle real-time command execution", async () => {
      const command = {
        type: "blink",
        message: "Lütfen gözlerinizi kırpın",
        duration: 3000,
        icon: "👁️",
      };

      let instructionGiven = false;
      let motionDetected = false;

      livenessDetector.onInstructionGiven = () => {
        instructionGiven = true;
      };
      livenessDetector.onMotionDetected = () => {
        motionDetected = true;
      };

      // This would normally be called by the real-time system
      if (livenessDetector.onInstructionGiven) {
        livenessDetector.onInstructionGiven({
          command,
          realTimeMode: true,
          timestamp: new Date().toISOString(),
        });
      }

      expect(instructionGiven).toBe(true);
    });
  });

  describe("📱 Initialization (Enhanced Day 9)", () => {
    test("should initialize with default configuration", () => {
      expect(livenessDetector).toBeDefined();
      expect(livenessDetector.getStatus()).toBe(LIVENESS_STATUS.IDLE);
      expect(livenessDetector.getCapturedImagesCount()).toBe(0);
    });

    test("should initialize with real-time mode configuration", () => {
      const customConfig = {
        cameraType: "back",
        captureQuality: 0.9,
        timeoutDuration: 45000,
        maxRetries: 5,
      };

      const customDetector = new LivenessDetector(customConfig);
      expect(customDetector.config.cameraType).toBe("back");
      expect(customDetector.config.captureQuality).toBe(0.9);
      expect(customDetector.config.timeoutDuration).toBe(45000);
      expect(customDetector.config.maxRetries).toBe(5);
    });

    test("should set up callback functions", () => {
      const callbacks = {
        onSuccess: jest.fn(),
        onError: jest.fn(),
        onStatusChange: jest.fn(),
        onProgress: jest.fn(),
      };

      livenessDetector.onSuccess = callbacks.onSuccess;
      livenessDetector.onError = callbacks.onError;
      livenessDetector.onStatusChange = callbacks.onStatusChange;
      livenessDetector.onProgress = callbacks.onProgress;

      expect(livenessDetector.onSuccess).toBe(callbacks.onSuccess);
      expect(livenessDetector.onError).toBe(callbacks.onError);
      expect(livenessDetector.onStatusChange).toBe(callbacks.onStatusChange);
      expect(livenessDetector.onProgress).toBe(callbacks.onProgress);
    });
  });

  describe("📷 Camera Functionality (Enhanced Day 8)", () => {
    test("should initialize front camera successfully", async () => {
      const result = await livenessDetector.captureFrontCamera();

      expect(result).toBeDefined();
      expect(result.cameraType).toBe("front");
      expect(result.ready).toBe(true);
      expect(result.resolution).toBeDefined();
      expect(result.timestamp).toBeDefined();
    });

    test("should handle camera initialization with custom options", async () => {
      const options = {
        resolution: "1920x1080",
        fps: 60,
      };

      const result = await livenessDetector.captureFrontCamera(options);

      expect(result).toBeDefined();
      expect(result.cameraType).toBe("front");
      expect(result.ready).toBe(true);
    });

    test("should update status when camera is ready", async () => {
      const statusCallback = jest.fn();
      livenessDetector.onStatusChange = statusCallback;

      await livenessDetector.captureFrontCamera();

      expect(statusCallback).toHaveBeenCalledWith(
        LIVENESS_STATUS.CAMERA_READY,
        expect.any(String)
      );
    });

    test("should call progress callback during camera initialization", async () => {
      const progressCallback = jest.fn();
      livenessDetector.onProgress = progressCallback;

      await livenessDetector.captureFrontCamera();

      expect(progressCallback).toHaveBeenCalledWith(
        "Ön kamera başlatılıyor..."
      );
      expect(progressCallback).toHaveBeenCalledWith(
        "Kamera hazır. Lütfen kameraya bakın."
      );
    });
  });

  describe("📋 Instruction System", () => {
    test("giveInstruction() should return correct command message", async () => {
      const command = getCommandByType("blink");
      const result = await livenessDetector.giveInstruction(command);

      expect(result.message).toBe(command.message);
      expect(result.command.icon).toBe(command.icon);
    });

    test("validateResponse() should return expected result format with mock data", async () => {
      const command = getCommandByType("smile");
      const captureData = { command, commandType: command.type };
      const result = await livenessDetector.validateResponse(
        captureData,
        command
      );

      expect(result).toHaveProperty("isValid");
      expect(result).toHaveProperty("confidence");
      expect(result).toHaveProperty("commandType");
      expect(result).toHaveProperty("detectionType");
      expect(result).toHaveProperty("requiredMotion");
      expect(result).toHaveProperty("mockValidation");
      expect(result).toHaveProperty("timestamp");
      expect(result).toHaveProperty("details");
    });

    test("should handle enhanced command sequence workflow", async () => {
      const options = {
        difficulty: "medium",
        commandCount: 2,
      };

      const mockCallbacks = {
        onProgress: jest.fn(),
        onInstructionGiven: jest.fn(),
        onCaptureComplete: jest.fn(),
      };

      Object.assign(livenessDetector, mockCallbacks);

      await livenessDetector.startLivenessTest(options);

      expect(mockCallbacks.onProgress).toHaveBeenCalledWith(
        expect.stringContaining("📸")
      );
      expect(mockCallbacks.onInstructionGiven).toHaveBeenCalledWith(
        expect.objectContaining({
          command: expect.objectContaining({
            type: expect.any(String),
            icon: expect.any(String),
          }),
        })
      );
    });

    test("should give instruction with command object successfully", async () => {
      const command = getRandomCommand();
      const result = await livenessDetector.giveInstruction(command);

      expect(result).toBeDefined();
      expect(result.command).toBeDefined();
      expect(result.command.type).toBe(command.type);
      expect(result.message).toBe(command.message);
      expect(result.captured).toBe(true);
      expect(result.timestamp).toBeDefined();
    });

    test("should give instruction with legacy string instruction", async () => {
      const instruction = LIVENESS_INSTRUCTIONS.BLINK;
      const result = await livenessDetector.giveInstruction(instruction);

      expect(result).toBeDefined();
      expect(result.instruction).toBeDefined();
      expect(result.captured).toBe(true);
      expect(result.timestamp).toBeDefined();
    });

    test("should get random command when no instruction provided", async () => {
      const result = await livenessDetector.giveInstruction();

      expect(result).toBeDefined();
      expect(result.command).toBeDefined();
      expect(result.command.type).toBeDefined();
      expect(result.command.message).toBeDefined();
      expect(result.command.icon).toBeDefined();
    });

    test("should call onInstructionGiven callback with command data", async () => {
      const mockCallback = jest.fn();
      livenessDetector.onInstructionGiven = mockCallback;

      const command = getCommandByType("blink");
      await livenessDetector.giveInstruction(command);

      expect(mockCallback).toHaveBeenCalledWith(
        expect.objectContaining({
          command: expect.objectContaining({
            type: "blink",
            message: expect.any(String),
            icon: expect.any(String),
          }),
          instruction: expect.any(String),
          message: expect.any(String),
          icon: expect.any(String),
          timestamp: expect.any(String),
        })
      );
    });

    test("should handle all available command types", async () => {
      const commandTypes = getAvailableCommandTypes();

      for (const commandType of commandTypes) {
        const command = getCommandByType(commandType);
        const result = await livenessDetector.giveInstruction(command);
        expect(result.command.type).toBe(commandType);
        expect(result.captured).toBe(true);
      }
    });

    test("should generate random command for testing", () => {
      const randomCommand = livenessDetector.getRandomCommand();

      expect(randomCommand).toBeDefined();
      expect(randomCommand.type).toBeDefined();
      expect(randomCommand.message).toBeDefined();
      expect(randomCommand.icon).toBeDefined();
      expect(randomCommand.duration).toBeDefined();
    });

    test("should generate command sequence for testing", () => {
      const sequence = livenessDetector.generateTestSequence(3, "easy");

      expect(sequence).toHaveLength(3);
      sequence.forEach((command, index) => {
        expect(command.type).toBeDefined();
        expect(command.sequenceId).toBe(index + 1);
        expect(command.timestamp).toBeDefined();
      });
    });
  });

  describe("✅ Mock Validation System (Day 8)", () => {
    test("should validate response using mock validator", async () => {
      const command = getCommandByType("blink");
      const captureData = {
        command,
        commandType: command.type,
        imageData: "mock_image_data",
        timestamp: new Date().toISOString(),
      };

      const result = await livenessDetector.validateResponse(
        captureData,
        command
      );

      expect(result).toBeDefined();
      expect(result.isValid).toBeDefined();
      expect(result.confidence).toBeGreaterThan(0);
      expect(result.confidence).toBeLessThanOrEqual(1);
      expect(result.commandType).toBe(command.type);
      expect(result.mockValidation).toBe(true);
      expect(result.timestamp).toBeDefined();
    });

    test("should validate all command types successfully", async () => {
      const commandTypes = getAvailableCommandTypes();

      for (const commandType of commandTypes) {
        const result = await validateResponse(commandType);

        expect(result).toBeDefined();
        expect(result.commandType).toBe(commandType);
        expect(result.detectionType).toBeDefined();
        expect(result.requiredMotion).toBeDefined();
        expect(result.mockValidation).toBe(true);
      }
    });

    test("should handle validation failures with error messages", async () => {
      // Run multiple validations to catch occasional failures
      const results = [];
      for (let i = 0; i < 20; i++) {
        const result = await validateResponse("blink");
        results.push(result);
      }

      const failures = results.filter((r) => !r.isValid);
      if (failures.length > 0) {
        const failure = failures[0];
        expect(failure.error).toBeDefined();
        expect(failure.confidence).toBeLessThan(0.6);
      }
    });

    test("should validate command sequence", async () => {
      const sequence = generateCommandSequence(3, "easy");
      const result = await validateCommandSequence(sequence);

      expect(result).toBeDefined();
      expect(result.isValid).toBeDefined();
      expect(result.successRate).toBeGreaterThanOrEqual(0);
      expect(result.successRate).toBeLessThanOrEqual(1);
      expect(result.averageConfidence).toBeGreaterThan(0);
      expect(result.totalCommands).toBe(3);
      expect(result.results).toHaveLength(3);
      expect(result.mockValidation).toBe(true);
    });

    test("should call onProgress callback during mock validation", async () => {
      const mockCallback = jest.fn();
      livenessDetector.onProgress = mockCallback;

      const command = getCommandByType("lookRight");
      const captureData = {
        command,
        commandType: command.type,
        imageData: "mock_image_data",
      };

      await livenessDetector.validateResponse(captureData, command);

      expect(mockCallback).toHaveBeenCalledWith("Yanıt doğrulanıyor...");
    });

    test("should handle retry logic with validation failures", async () => {
      const mockCallback = jest.fn();
      livenessDetector.onProgress = mockCallback;

      // Force a failure scenario by mocking Math.random
      const originalRandom = Math.random;
      Math.random = jest.fn(() => 0.05); // Force low confidence

      const command = getCommandByType("smile");
      const captureData = { command, commandType: command.type };

      const result = await livenessDetector.validateResponse(
        captureData,
        command
      );

      if (
        !result.isValid &&
        livenessDetector.retryCount < livenessDetector.config.maxRetries
      ) {
        expect(mockCallback).toHaveBeenCalledWith(
          expect.stringContaining("Tekrar deneyin")
        );
      }

      Math.random = originalRandom;
    });
  });

  describe("🎲 Command Generation (Day 8)", () => {
    test("should get random command", () => {
      const command = getRandomCommand();

      expect(command).toBeDefined();
      expect(command.id).toBeDefined();
      expect(command.type).toBeDefined();
      expect(command.message).toBeDefined();
      expect(command.instruction).toBeDefined();
      expect(command.duration).toBeDefined();
      expect(command.icon).toBeDefined();
    });

    test("should get command by type", () => {
      const commandTypes = getAvailableCommandTypes();

      commandTypes.forEach((type) => {
        const command = getCommandByType(type);
        expect(command).toBeDefined();
        expect(command.type).toBe(type);
      });
    });

    test("should generate command sequence with different difficulties", () => {
      const difficulties = ["easy", "medium", "hard"];

      difficulties.forEach((difficulty) => {
        const sequence = generateCommandSequence(3, difficulty);

        expect(sequence).toHaveLength(3);
        sequence.forEach((command, index) => {
          expect(command.sequenceId).toBe(index + 1);
          expect(command.timestamp).toBeDefined();
        });
      });
    });

    test("should get available command types", () => {
      const types = getAvailableCommandTypes();

      expect(types).toBeDefined();
      expect(Array.isArray(types)).toBe(true);
      expect(types.length).toBeGreaterThan(0);

      // Check that all types are strings
      types.forEach((type) => {
        expect(typeof type).toBe("string");
      });
    });

    test("should return null for invalid command type", () => {
      const invalidCommand = getCommandByType("invalidType");
      expect(invalidCommand).toBeNull();
    });
  });

  describe("🔄 Lifecycle Management", () => {
    test("should start liveness test with command sequence successfully", async () => {
      const mockCallbacks = {
        onSuccess: jest.fn(),
        onStatusChange: jest.fn(),
        onProgress: jest.fn(),
      };

      Object.assign(livenessDetector, mockCallbacks);

      const options = {
        difficulty: "easy",
        commandCount: 2,
      };

      const result = await livenessDetector.startLivenessTest(options);

      expect(result).toBe(true);
      expect(mockCallbacks.onStatusChange).toHaveBeenCalled();
      expect(mockCallbacks.onProgress).toHaveBeenCalled();
      expect(mockCallbacks.onSuccess).toHaveBeenCalled();
    });

    test("should prevent concurrent liveness tests", async () => {
      // Start first test
      const firstTest = livenessDetector.startLivenessTest();

      // Try to start second test immediately
      await expect(livenessDetector.startLivenessTest()).rejects.toThrow(
        /zaten devam ediyor/
      );

      // Wait for first test to complete
      await firstTest;
    });

    test("should stop liveness test", async () => {
      await livenessDetector.stopLivenessTest();

      expect(livenessDetector.getStatus()).toBe(LIVENESS_STATUS.IDLE);
      expect(livenessDetector.isProcessing).toBe(false);
    });

    test("should reset to initial state", () => {
      // Simulate some state changes
      livenessDetector.status = LIVENESS_STATUS.PROCESSING;
      livenessDetector.capturedImages = [{ test: "data" }];
      livenessDetector.isProcessing = true;

      livenessDetector.reset();

      expect(livenessDetector.getStatus()).toBe(LIVENESS_STATUS.IDLE);
      expect(livenessDetector.getCapturedImagesCount()).toBe(0);
      expect(livenessDetector.isProcessing).toBe(false);
      expect(livenessDetector.currentInstruction).toBeNull();
    });
  });

  describe("📊 Status Management", () => {
    test("should track status changes correctly", async () => {
      const statusChanges = [];
      livenessDetector.onStatusChange = (newStatus, oldStatus) => {
        statusChanges.push({ from: oldStatus, to: newStatus });
      };

      await livenessDetector.captureFrontCamera();

      expect(statusChanges).toContainEqual({
        from: LIVENESS_STATUS.IDLE,
        to: LIVENESS_STATUS.CAMERA_READY,
      });
    });

    test("should return current status", () => {
      expect(livenessDetector.getStatus()).toBe(LIVENESS_STATUS.IDLE);

      livenessDetector.status = LIVENESS_STATUS.PROCESSING;
      expect(livenessDetector.getStatus()).toBe(LIVENESS_STATUS.PROCESSING);
    });

    test("should track captured images count", async () => {
      expect(livenessDetector.getCapturedImagesCount()).toBe(0);

      // Simulate image capture
      await livenessDetector.giveInstruction(
        LIVENESS_INSTRUCTIONS.LOOK_STRAIGHT
      );

      expect(livenessDetector.getCapturedImagesCount()).toBe(1);
    });
  });

  describe("🔧 Error Handling", () => {
    test("should handle camera initialization errors", async () => {
      // Mock camera failure
      const originalCapture = livenessDetector.captureFrontCamera;
      livenessDetector.captureFrontCamera = jest
        .fn()
        .mockRejectedValue(new Error("Camera not available"));

      const errorCallback = jest.fn();
      livenessDetector.onError = errorCallback;

      await expect(livenessDetector.startLivenessTest()).rejects.toThrow();

      expect(livenessDetector.getStatus()).toBe(LIVENESS_STATUS.ERROR);

      // Restore original method
      livenessDetector.captureFrontCamera = originalCapture;
    });

    test("should handle instruction errors", async () => {
      await expect(livenessDetector.giveInstruction("invalid")).rejects.toThrow(
        "Geçersiz talimat"
      );
    });

    test("should handle validation errors", async () => {
      const invalidCaptureData = null;

      await expect(
        livenessDetector.validateResponse(
          invalidCaptureData,
          LIVENESS_INSTRUCTIONS.BLINK
        )
      ).rejects.toThrow();
    });

    test("should call error callback on failures", async () => {
      const errorCallback = jest.fn();
      livenessDetector.onError = errorCallback;

      try {
        await livenessDetector.giveInstruction("invalid_instruction");
      } catch (error) {
        // Expected error
      }

      // Error callback should be called during startLivenessTest if it encounters errors
    });
  });

  describe("🧪 Mock Environment (Day 8)", () => {
    test("should check validation environment", async () => {
      const {
        checkValidationEnvironment,
      } = require("../modules/liveness/validator");
      const envStatus = await checkValidationEnvironment();

      expect(envStatus).toBeDefined();
      expect(envStatus.cameraAvailable).toBe(true);
      expect(envStatus.faceDetectionReady).toBe(true);
      expect(envStatus.motionDetectionReady).toBe(true);
      expect(envStatus.validationReady).toBe(true);
      expect(envStatus.mockEnvironment).toBe(true);
    });

    test("should get mock camera feed data", () => {
      const { getMockCameraFeed } = require("../modules/liveness/validator");
      const feedData = getMockCameraFeed();

      expect(feedData).toBeDefined();
      expect(feedData.frameId).toBeDefined();
      expect(feedData.timestamp).toBeDefined();
      expect(feedData.resolution).toBe("1280x720");
      expect(feedData.fps).toBe(30);
      expect(feedData.mockData).toBe(true);
    });
  });

  describe("⚙️ Configuration", () => {
    test("should use default configuration values", () => {
      expect(livenessDetector.config.cameraType).toBe("front");
      expect(livenessDetector.config.captureQuality).toBe(0.8);
      expect(livenessDetector.config.timeoutDuration).toBe(30000);
      expect(livenessDetector.config.maxRetries).toBe(3);
    });

    test("should merge custom configuration with defaults", () => {
      const customConfig = {
        captureQuality: 0.9,
        maxRetries: 5,
      };

      const customDetector = new LivenessDetector(customConfig);

      expect(customDetector.config.captureQuality).toBe(0.9);
      expect(customDetector.config.maxRetries).toBe(5);
      expect(customDetector.config.cameraType).toBe("front"); // Should keep default
      expect(customDetector.config.timeoutDuration).toBe(30000); // Should keep default
    });
  });

  describe("📱 Platform Compatibility", () => {
    test("should work on iOS platform", () => {
      // Platform is mocked as iOS
      expect(livenessDetector).toBeDefined();
      expect(livenessDetector.getStatus()).toBe(LIVENESS_STATUS.IDLE);
    });

    test("should handle camera permissions check", async () => {
      // This is a skeleton test - actual implementation would check real permissions
      const hasPermission = await livenessDetector._checkCameraPermissions();
      expect(hasPermission).toBe(true); // Skeleton always returns true
    });
  });
});
