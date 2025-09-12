/**
 * Anti-Spoofing Tests for Liveness Detection - Day 10
 * Tests for fake photo, screen, and spoofing detection
 */

const {
  checkSpoof,
  AntiSpoofingDetector,
  ANTI_SPOOFING_CONFIG,
} = require("../modules/liveness/antiSpoofing");
// const { validateRealTimeResponse } = require("../modules/liveness/validator");

// Mock Logger
jest.mock("../utils/logger", () => ({
  info: jest.fn(),
  warn: jest.fn(),
  error: jest.fn(),
  debug: jest.fn(),
}));

describe("Anti-Spoofing Detection - Day 10", () => {
  let detector;

  beforeEach(() => {
    detector = new AntiSpoofingDetector();
    jest.clearAllMocks();
  });

  afterEach(() => {
    if (detector) {
      detector.reset();
    }
  });

  describe("AntiSpoofingDetector Initialization", () => {
    test("should initialize with default configuration", () => {
      const newDetector = new AntiSpoofingDetector();
      expect(newDetector.config).toEqual(
        expect.objectContaining(ANTI_SPOOFING_CONFIG)
      );
      expect(newDetector.frameHistory).toEqual([]);
      expect(newDetector.movementHistory).toEqual([]);
      expect(newDetector.textureHistory).toEqual([]);
    });

    test("should initialize with custom configuration", () => {
      const customConfig = {
        minConfidenceForReal: 0.8,
        depthVarianceThreshold: 0.2,
      };
      const newDetector = new AntiSpoofingDetector(customConfig);
      expect(newDetector.config.minConfidenceForReal).toBe(0.8);
      expect(newDetector.config.depthVarianceThreshold).toBe(0.2);
    });

    test("should provide detector statistics", () => {
      const stats = detector.getStats();
      expect(stats).toEqual({
        frameHistoryLength: 0,
        movementHistoryLength: 0,
        textureHistoryLength: 0,
        config: expect.any(Object),
      });
    });
  });

  describe("Real Face Detection", () => {
    test("should detect real face with good characteristics", async () => {
      const realFaceData = {
        faces: [
          {
            bounds: { x: 100, y: 100, width: 200, height: 200 },
            landmarks: {
              leftEye: {
                openProbability: 0.8,
                position: { x: 150, y: 140, z: 5 },
              },
              rightEye: {
                openProbability: 0.8,
                position: { x: 250, y: 140, z: 5 },
              },
              nose: { position: { x: 200, y: 160, z: 10 } },
              mouth: { position: { x: 200, y: 190, z: 8 } },
            },
            contours: {
              face: [
                { x: 100, y: 100, z: 2 },
                { x: 300, y: 100, z: 3 },
                { x: 300, y: 300, z: 2 },
                { x: 200, y: 320, z: 4 },
                { x: 100, y: 300, z: 2 },
              ],
            },
            smileProbability: 0.3,
            trackingId: 1,
          },
        ],
        imageData: {
          width: 400,
          height: 400,
          format: "rgba",
        },
      };

      const result = await checkSpoof(realFaceData);

      expect(result.isReal).toBe(true);
      expect(result.confidence).toBeGreaterThan(0.6);
      expect(result.reason).toContain("Gerçek yüz");
      expect(result.details).toBeDefined();
    });

    test("should handle natural eye blinking patterns", async () => {
      const detector = new AntiSpoofingDetector();

      // Simulate natural blink sequence
      const blinkSequence = [
        { leftEyeOpen: 0.9, rightEyeOpen: 0.9 }, // Eyes open
        { leftEyeOpen: 0.7, rightEyeOpen: 0.7 }, // Starting to close
        { leftEyeOpen: 0.2, rightEyeOpen: 0.2 }, // Eyes closed
        { leftEyeOpen: 0.7, rightEyeOpen: 0.7 }, // Opening
        { leftEyeOpen: 0.9, rightEyeOpen: 0.9 },  // Eyes open
      ];

      for (const eyeState of blinkSequence) {
        const faceData = {
          faces: [
            {
              bounds: { x: 100, y: 100, width: 200, height: 200 },
              landmarks: {
                leftEye: { openProbability: eyeState.leftEyeOpen },
                rightEye: { openProbability: eyeState.rightEyeOpen },
              },
            },
          ],
        };

        await detector.checkSpoof(faceData);
        await new Promise((resolve) => setTimeout(resolve, 150)); // Natural blink timing
      }

      const stats = detector.getStats();
      expect(stats.movementHistoryLength).toBeGreaterThan(0);
    });

    test("should validate natural head movements", async () => {
      const detector = new AntiSpoofingDetector();

      // Simulate natural head movement sequence
      const headPositions = [
        { x: 200, y: 200 }, // Center
        { x: 210, y: 200 }, // Slight right
        { x: 220, y: 205 }, // More right, slight down
        { x: 215, y: 200 }, // Back towards center
        { x: 200, y: 200 },  // Center again
      ];

      for (const position of headPositions) {
        const faceData = {
          faces: [
            {
              bounds: { x: position.x, y: position.y, width: 200, height: 200 },
              landmarks: {
                leftEye: { openProbability: 0.8 },
                rightEye: { openProbability: 0.8 },
              },
              trackingId: 1,
            },
          ],
        };

        await detector.checkSpoof(faceData);
      }

      const stats = detector.getStats();
      expect(stats.frameHistoryLength).toBeGreaterThan(0);
    });
  });

  describe("Fake Detection - Photos and Screens", () => {
    test("should detect fake photo with flat characteristics", async () => {
      const fakePhotoData = {
        faces: [
          {
            bounds: { x: 100, y: 100, width: 200, height: 200 },
            landmarks: {
              leftEye: {
                openProbability: 0.9, // Suspiciously constant
                position: { x: 150, y: 140, z: 0 }, // No depth
              },
              rightEye: {
                openProbability: 0.9, // Suspiciously constant
                position: { x: 250, y: 140, z: 0 }, // No depth
              },
              nose: { position: { x: 200, y: 160, z: 0 } }, // Flat
              mouth: { position: { x: 200, y: 190, z: 0 } }, // Flat
            },
            contours: {
              face: [
                { x: 100, y: 100, z: 0 }, // All same depth
                { x: 300, y: 100, z: 0 },
                { x: 300, y: 300, z: 0 },
                { x: 100, y: 300, z: 0 },
              ],
            },
            smileProbability: 0.5, // Static expression
            trackingId: null, // No tracking (static image)
          },
        ],
        imageData: {
          width: 400,
          height: 400,
          format: "rgba",
        },
      };

      const result = await checkSpoof(fakePhotoData);

      expect(result.isReal).toBe(false);
      expect(result.confidence).toBeLessThan(0.5);
      expect(result.reason).toMatch(/sahte|ekran|fotoğraf/i);
    });

    test("should detect screen reflection patterns", async () => {
      // Simulate screen with high reflection and pixelation
      const screenData = {
        faces: [
          {
            bounds: { x: 100, y: 100, width: 200, height: 200 },
            landmarks: {
              leftEye: { openProbability: 0.85 },
              rightEye: { openProbability: 0.85 },
            },
            contours: {
              face: [
                { x: 100, y: 100, z: 0 },
                { x: 300, y: 100, z: 0 },
                { x: 300, y: 300, z: 0 },
                { x: 100, y: 300, z: 0 },
              ],
            },
          },
        ],
        imageData: {
          width: 400,
          height: 400,
          format: "rgba",
          hasReflection: true, // Simulated screen reflection
          pixelated: true, // Simulated screen pixelation
        }
      };

      const result = await checkSpoof(screenData);

      // Should detect as fake due to screen characteristics
      expect(result.confidence).toBeLessThan(0.7);
      expect(result.details).toBeDefined();
    });

    test("should detect static image without movement", async () => {
      const detector = new AntiSpoofingDetector();
      const staticImageData = {
        faces: [
          {
            bounds: { x: 200, y: 200, width: 200, height: 200 }, // Same position
            landmarks: {
              leftEye: { openProbability: 0.8 }, // Same values
              rightEye: { openProbability: 0.8 },
            },
          },
        ],
      };

      // Process same data multiple times (no movement)
      for (let i = 0; i < 5; i++) {
        await detector.checkSpoof(staticImageData);
      }

      const stats = detector.getStats();
      expect(stats.frameHistoryLength).toBe(5);

      // Last result should show low temporal consistency
      const result = await detector.checkSpoof(staticImageData);
      expect(result.details.temporal.naturalVariation).toBeLessThan(0.5);
    });
  });

  describe("Blink and Movement Validation", () => {
    test("should validate blink + head turn combination", async () => {
      const detector = new AntiSpoofingDetector();

      // Simulate blink while turning head
      const combinedMovements = [
        {
          bounds: { x: 200, y: 200, width: 200, height: 200 },
          leftEye: 0.9,
          rightEye: 0.9,
        },
        {
          bounds: { x: 210, y: 200, width: 200, height: 200 },
          leftEye: 0.3,
          rightEye: 0.3, // Blink while moving
        },
        {
          bounds: { x: 220, y: 200, width: 200, height: 200 },
          leftEye: 0.9,
          rightEye: 0.9,
        },
      ];

      for (const movement of combinedMovements) {
        const faceData = {
          faces: [
            {
              bounds: movement.bounds,
              landmarks: {
                leftEye: { openProbability: movement.leftEye },
                rightEye: { openProbability: movement.rightEye },
              },
              trackingId: 1,
            },
          ],
        };

        const result = await detector.checkSpoof(faceData);
        expect(result).toBeDefined();
      }

      const stats = detector.getStats();
      expect(stats.frameHistoryLength).toBe(3);
      expect(stats.movementHistoryLength).toBe(3);
    });

    test("should detect unnatural eye movement patterns", async () => {
      const detector = new AntiSpoofingDetector();

      // Simulate unnatural eye patterns (too fast, inconsistent)
      const unnaturalBlinks = [
        { leftEye: 0.9, rightEye: 0.9 },
        { leftEye: 0.1, rightEye: 0.9 }, // Asymmetric blink (unnatural)
        { leftEye: 0.9, rightEye: 0.1 }, // Opposite asymmetric
        { leftEye: 0.9, rightEye: 0.9 },
      ];

      for (const blink of unnaturalBlinks) {
        const faceData = {
          faces: [
            {
              bounds: { x: 200, y: 200, width: 200, height: 200 },
              landmarks: {
                leftEye: { openProbability: blink.leftEye },
                rightEye: { openProbability: blink.rightEye },
              },
            },
          ],
        };

        await detector.checkSpoof(faceData);
      }

      // Should detect unnatural patterns
      const result = await detector.checkSpoof({
        faces: [
          {
            bounds: { x: 200, y: 200, width: 200, height: 200 },
            landmarks: {
              leftEye: { openProbability: 0.9 },
              rightEye: { openProbability: 0.9 },
            },
          },
        ],
      });

      expect(result.details.eyeMovement.syncScore).toBeLessThan(0.8);
    });
  });

  describe("Integration with Validator", () => {
    test.skip("should integrate anti-spoofing with real-time validation", async () => {
      const realFaceData = {
        realTimeDetection: true,
        frameData: {
          faces: [
            {
              bounds: { x: 100, y: 100, width: 200, height: 200 },
              landmarks: {
                leftEye: { openProbability: 0.2 }, // Blink detected
                rightEye: { openProbability: 0.2 },
              },
              contours: {
                face: [
                  { x: 100, y: 100, z: 3 },
                  { x: 300, y: 100, z: 4 },
                  { x: 300, y: 300, z: 3 },
                  { x: 100, y: 300, z: 2 },
                ],
              },
              trackingId: 1,
            },
          ],
        },
        detectionData: {
          faceDetected: true,
          motions: { blink: true },
          confidence: { overall: 0.85, blink: 0.9 },
          landmarks: { leftEye: {}, rightEye: {}, nose: {}, mouth: {} },
        }
      };

      const result = await validateRealTimeResponse("blink", realFaceData, {
        enableAntiSpoofing: true,
      });

      expect(result.isValid).toBe(true);
      expect(result.antiSpoofingResult).toBeDefined();
      expect(result.detectionType).toBe(
        "real_time_face_detection_with_anti_spoofing"
      );
    });

    test.skip("should fail validation when spoofing detected", async () => {
      const fakeFaceData = {
        realTimeDetection: true,
        frameData: {
          faces: [
            {
              bounds: { x: 100, y: 100, width: 200, height: 200 },
              landmarks: {
                leftEye: {
                  openProbability: 0.2,
                  position: { x: 150, y: 140, z: 0 },
                },
                rightEye: {
                  openProbability: 0.2,
                  position: { x: 250, y: 140, z: 0 },
                },
                nose: { position: { x: 200, y: 160, z: 0 } },
                mouth: { position: { x: 200, y: 190, z: 0 } },
              },
              contours: {
                face: [
                  { x: 100, y: 100, z: 0 }, // Flat surface
                  { x: 300, y: 100, z: 0 },
                  { x: 300, y: 300, z: 0 },
                  { x: 100, y: 300, z: 0 },
                ],
              },
              trackingId: null, // No tracking
            },
          ],
        },
        detectionData: {
          faceDetected: true,
          motions: { blink: true },
          confidence: { overall: 0.85, blink: 0.9 },
          landmarks: { leftEye: {}, rightEye: {}, nose: {}, mouth: {} },
        }
      };

      const result = await validateRealTimeResponse("blink", fakeFaceData, {
        enableAntiSpoofing: true,
      });

      expect(result.isValid).toBe(false);
      expect(result.error).toMatch(/sahte tespit edildi/i);
      expect(result.detectionType).toBe("anti_spoofing_failed");
      expect(result.details.spoofingDetected).toBe(true);
    });

    test.skip("should handle anti-spoofing disabled mode", async () => {
      const faceData = {
        realTimeDetection: true,
        frameData: {
          faces: [
            {
              /* fake data */
            },
          ],
        },
        detectionData: {
          faceDetected: true,
          motions: { blink: true },
          confidence: { overall: 0.85, blink: 0.9 },
        }
      };

      const result = await validateRealTimeResponse("blink", faceData, {
        enableAntiSpoofing: false,
      });

      expect(result.isValid).toBe(true);
      expect(result.antiSpoofingResult).toBeNull();
    });
  });

  describe("Error Handling", () => {
    test("should handle missing face data gracefully", async () => {
      const emptyData = {
        faces: [],
        imageData: { width: 400, height: 400 },
      };

      const result = await checkSpoof(emptyData);

      expect(result.isReal).toBe(false);
      expect(result.confidence).toBe(0);
      expect(result.reason).toContain("Yüz algılanamadı");
      expect(result.details.noFaceDetected).toBe(true);
    });

    test("should handle malformed face data", async () => {
      const malformedData = {
        faces: [
          {
            /* missing required fields */
          },
        ],
        imageData: null,
      };

      const result = await checkSpoof(malformedData);

      expect(result.isReal).toBe(false);
      expect(result.confidence).toBe(0);
      expect(result.details.error).toBeDefined();
    });

    test("should handle detector reset properly", () => {
      // Add some data to detector
      detector.frameHistory = [{ face: {}, timestamp: Date.now() }];
      detector.movementHistory = [
        { leftEyeOpen: 0.8, rightEyeOpen: 0.8, timestamp: Date.now() },
      ];

      detector.reset();

      expect(detector.frameHistory).toEqual([]);
      expect(detector.movementHistory).toEqual([]);
      expect(detector.textureHistory).toEqual([]);
    });
  });

  describe("Performance and Configuration", () => {
    test("should respect custom confidence thresholds", async () => {
      const strictDetector = new AntiSpoofingDetector({
        minConfidenceForReal: 0.9, // Very strict
      });

      const borderlineFaceData = {
        faces: [
          {
            bounds: { x: 100, y: 100, width: 200, height: 200 },
            landmarks: {
              leftEye: { openProbability: 0.7 },
              rightEye: { openProbability: 0.7 },
            },
            contours: {
              face: [
                { x: 100, y: 100, z: 1 },
                { x: 300, y: 100, z: 1 },
                { x: 300, y: 300, z: 1 },
                { x: 100, y: 300, z: 1 },
              ],
            },
          },
        ],
      };

      const result = await strictDetector.checkSpoof(borderlineFaceData);

      // Should be more likely to reject with strict threshold
      expect(result.confidence).toBeLessThan(0.9);
    });

    test("should maintain frame history within limits", async () => {
      const detector = new AntiSpoofingDetector({
        frameConsistencyWindow: 3,
      });

      const faceData = {
        faces: [
          {
            bounds: { x: 200, y: 200, width: 200, height: 200 },
            landmarks: {
              leftEye: { openProbability: 0.8 },
              rightEye: { openProbability: 0.8 },
            },
          },
        ],
      };

      // Add more frames than the window size
      for (let i = 0; i < 5; i++) {
        await detector.checkSpoof(faceData);
      }

      const stats = detector.getStats();
      expect(stats.frameHistoryLength).toBe(3); // Should be limited to window size
    });
  });
});

describe("checkSpoof Function", () => {
  test("should work as standalone function", async () => {
    const faceData = {
      faces: [
        {
          bounds: { x: 100, y: 100, width: 200, height: 200 },
          landmarks: {
            leftEye: { openProbability: 0.8 },
            rightEye: { openProbability: 0.8 },
          },
        },
      ],
    };

    const result = await checkSpoof(faceData);

    expect(result).toBeDefined();
    expect(typeof result.isReal).toBe("boolean");
    expect(typeof result.confidence).toBe("number");
    expect(typeof result.reason).toBe("string");
    expect(result.details).toBeDefined();
  });

  test("should accept custom configuration", async () => {
    const customConfig = {
      minConfidenceForReal: 0.8,
    };

    const faceData = {
      faces: [
        {
          bounds: { x: 100, y: 100, width: 200, height: 200 },
          landmarks: {
            leftEye: { openProbability: 0.8 },
            rightEye: { openProbability: 0.8 },
          },
        },
      ],
    };

    const result = await checkSpoof(faceData, customConfig);

    expect(result).toBeDefined();
    expect(result.details).toBeDefined();
  });
});
