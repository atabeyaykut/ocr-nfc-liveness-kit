/**
 * Anti-Spoofing Tests for Liveness Detection - Day 11 Enhanced
 * Tests for fake photo, screen, and spoofing detection with sequential command integration
 */

const {
  checkSpoof,
  AntiSpoofingDetector,
  ANTI_SPOOFING_CONFIG,
} = require("../modules/liveness/antiSpoofing");
const { ValidationUtils } = require("../modules/liveness/utils");
const { generateCommandSequence } = require("../modules/liveness/commands");

// Mock Logger
jest.mock("../utils/logger", () => ({
  info: jest.fn(),
  warn: jest.fn(),
  error: jest.fn(),
  debug: jest.fn(),
}));

describe("Anti-Spoofing Detection - Day 11 Enhanced", () => {
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

  // Day 11: Sequential Command Integration Tests
  describe("Sequential Command Integration", () => {
    test("should handle anti-spoofing during command sequence", async () => {
      const commandSequence = generateCommandSequence(3, "easy");
      let spoofingResults = [];

      for (const command of commandSequence) {
        const mockFrameData = {
          faces: [{
            bounds: { x: 100, y: 100, width: 200, height: 200 },
            landmarks: {
              leftEye: { x: 150, y: 150 },
              rightEye: { x: 250, y: 150 },
              nose: { x: 200, y: 180 },
              mouth: { x: 200, y: 220 }
            },
            contours: generateMockContours(),
            trackingId: 1
          }],
          imageData: generateMockImageData(400, 400),
          timestamp: Date.now()
        };

        const result = await checkSpoof(mockFrameData);
        spoofingResults.push({ command: command.type, result });
      }

      expect(spoofingResults).toHaveLength(3);
      spoofingResults.forEach(({ result }) => {
        expect(result).toHaveProperty('isReal');
        expect(result).toHaveProperty('confidence');
        expect(result).toHaveProperty('reason');
      });
    });

    test("should maintain consistency across command sequence", async () => {
      const commandSequence = generateCommandSequence(5, "medium");
      const consistentFrameData = {
        faces: [{
          bounds: { x: 100, y: 100, width: 200, height: 200 },
          landmarks: {
            leftEye: { x: 150, y: 150 },
            rightEye: { x: 250, y: 150 },
            nose: { x: 200, y: 180 },
            mouth: { x: 200, y: 220 }
          },
          contours: generateMockContours(),
          trackingId: 1
        }],
        imageData: generateMockImageData(400, 400),
        timestamp: Date.now()
      };

      let confidenceValues = [];
      for (let i = 0; i < commandSequence.length; i++) {
        const result = await checkSpoof(consistentFrameData);
        confidenceValues.push(result.confidence);
      }

      // Confidence should remain relatively stable for consistent input
      const avgConfidence = confidenceValues.reduce((a, b) => a + b) / confidenceValues.length;
      confidenceValues.forEach(confidence => {
        expect(Math.abs(confidence - avgConfidence)).toBeLessThan(0.2);
      });
    });

    test("should detect spoofing attempts during command transitions", async () => {
      const realFrameData = {
        faces: [{
          bounds: { x: 100, y: 100, width: 200, height: 200 },
          landmarks: {
            leftEye: { x: 150, y: 150 },
            rightEye: { x: 250, y: 150 },
            nose: { x: 200, y: 180 },
            mouth: { x: 200, y: 220 }
          },
          contours: generateMockContours(),
          trackingId: 1
        }],
        imageData: generateMockImageData(400, 400),
        timestamp: Date.now()
      };

      const spoofFrameData = {
        faces: [{
          bounds: { x: 100, y: 100, width: 200, height: 200 },
          landmarks: {
            leftEye: { x: 150, y: 150 },
            rightEye: { x: 250, y: 150 },
            nose: { x: 200, y: 180 },
            mouth: { x: 200, y: 220 }
          },
          contours: generateFlatContours(), // Flat surface simulation
          trackingId: 1
        }],
        imageData: generateMockImageData(400, 400, true), // High pixelation
        timestamp: Date.now()
      };

      const realResult = await checkSpoof(realFrameData);
      const spoofResult = await checkSpoof(spoofFrameData);

      expect(realResult.isReal).toBe(true);
      expect(spoofResult.isReal).toBe(false);
      expect(spoofResult.reason).toContain('texture');
    });
  });

  // Day 11: Progress Tracking Tests
  describe("Progress Tracking Integration", () => {
    test("should provide progress feedback during anti-spoofing analysis", async () => {
      const progressCallbacks = [];
      const mockProgressCallback = (progress) => {
        progressCallbacks.push(progress);
      };

      detector.setProgressCallback(mockProgressCallback);

      const frameData = {
        faces: [{
          bounds: { x: 100, y: 100, width: 200, height: 200 },
          landmarks: {
            leftEye: { x: 150, y: 150 },
            rightEye: { x: 250, y: 150 },
            nose: { x: 200, y: 180 },
            mouth: { x: 200, y: 220 }
          },
          contours: generateMockContours(),
          trackingId: 1
        }],
        imageData: generateMockImageData(400, 400),
        timestamp: Date.now()
      };

      await detector.checkSpoof(frameData);

      expect(progressCallbacks.length).toBeGreaterThan(0);
      progressCallbacks.forEach(progress => {
        expect(progress).toHaveProperty('percentage');
        expect(progress).toHaveProperty('message');
        expect(progress.percentage).toBeGreaterThanOrEqual(0);
        expect(progress.percentage).toBeLessThanOrEqual(100);
      });
    });

    test("should handle error recovery during progress tracking", async () => {
      const progressCallbacks = [];
      const errorCallbacks = [];
      
      detector.setProgressCallback((progress) => progressCallbacks.push(progress));
      detector.setErrorCallback((error) => errorCallbacks.push(error));

      const invalidFrameData = {
        faces: [], // No faces detected
        imageData: null,
        timestamp: Date.now()
      };

      try {
        await detector.checkSpoof(invalidFrameData);
      } catch (error) {
        // Expected to throw
      }

      expect(errorCallbacks.length).toBeGreaterThan(0);
      expect(errorCallbacks[0]).toHaveProperty('message');
      expect(errorCallbacks[0].message).toContain('face');
    });
  });

  // Day 11: Performance Optimization Tests
  describe("Performance Optimization", () => {
    test("should complete anti-spoofing analysis within time limits", async () => {
      const frameData = {
        faces: [{
          bounds: { x: 100, y: 100, width: 200, height: 200 },
          landmarks: {
            leftEye: { x: 150, y: 150 },
            rightEye: { x: 250, y: 150 },
            nose: { x: 200, y: 180 },
            mouth: { x: 200, y: 220 }
          },
          contours: generateMockContours(),
          trackingId: 1
        }],
        imageData: generateMockImageData(400, 400),
        timestamp: Date.now()
      };

      const startTime = Date.now();
      const result = await checkSpoof(frameData);
      const endTime = Date.now();

      expect(endTime - startTime).toBeLessThan(200); // Should complete within 200ms
      expect(result).toHaveProperty('processingTime');
      expect(result.processingTime).toBeLessThan(200);
    });

    test("should handle multiple concurrent anti-spoofing checks", async () => {
      const frameData = {
        faces: [{
          bounds: { x: 100, y: 100, width: 200, height: 200 },
          landmarks: {
            leftEye: { x: 150, y: 150 },
            rightEye: { x: 250, y: 150 },
            nose: { x: 200, y: 180 },
            mouth: { x: 200, y: 220 }
          },
          contours: generateMockContours(),
          trackingId: 1
        }],
        imageData: generateMockImageData(400, 400),
        timestamp: Date.now()
      };

      const promises = Array(5).fill().map(() => checkSpoof(frameData));
      const results = await Promise.all(promises);

      expect(results).toHaveLength(5);
      results.forEach(result => {
        expect(result).toHaveProperty('isReal');
        expect(result).toHaveProperty('confidence');
      });
    });

    test("should optimize memory usage during extended sessions", async () => {
      const initialMemory = process.memoryUsage().heapUsed;

      // Simulate extended session with many anti-spoofing checks
      for (let i = 0; i < 50; i++) {
        const frameData = {
          faces: [{
            bounds: { x: 100, y: 100, width: 200, height: 200 },
            landmarks: {
              leftEye: { x: 150, y: 150 },
              rightEye: { x: 250, y: 150 },
              nose: { x: 200, y: 180 },
              mouth: { x: 200, y: 220 }
            },
            contours: generateMockContours(),
            trackingId: 1
          }],
          imageData: generateMockImageData(400, 400),
          timestamp: Date.now()
        };

        await checkSpoof(frameData);
      }

      const finalMemory = process.memoryUsage().heapUsed;
      const memoryIncrease = finalMemory - initialMemory;

      // Memory increase should be reasonable (less than 50MB)
      expect(memoryIncrease).toBeLessThan(50 * 1024 * 1024);
    });
  });

  // Helper functions for enhanced tests
  function generateMockContours() {
    return {
      face: Array(20).fill().map((_, i) => ({
        x: 100 + Math.cos(i * 0.314) * 100,
        y: 100 + Math.sin(i * 0.314) * 100
      })),
      leftEye: Array(6).fill().map((_, i) => ({
        x: 140 + Math.cos(i * 1.047) * 10,
        y: 140 + Math.sin(i * 1.047) * 5
      })),
      rightEye: Array(6).fill().map((_, i) => ({
        x: 240 + Math.cos(i * 1.047) * 10,
        y: 140 + Math.sin(i * 1.047) * 5
      }))
    };
  }

  function generateFlatContours() {
    return {
      face: Array(20).fill().map((_, i) => ({
        x: 100 + i * 10,
        y: 100 // Flat line - indicates photo/screen
      })),
      leftEye: Array(6).fill().map((_, i) => ({
        x: 140 + i * 3,
        y: 140
      })),
      rightEye: Array(6).fill().map((_, i) => ({
        x: 240 + i * 3,
        y: 140
      }))
    };
  }

  function generateMockImageData(width, height, highPixelation = false) {
    const data = new Uint8Array(width * height * 4);
    for (let i = 0; i < data.length; i += 4) {
      if (highPixelation) {
        // Simulate screen pixelation
        const blockSize = 8;
        const blockX = Math.floor((i / 4) % width / blockSize);
        const blockY = Math.floor((i / 4) / width / blockSize);
        const color = (blockX + blockY) % 2 === 0 ? 255 : 0;
        data[i] = color;     // R
        data[i + 1] = color; // G
        data[i + 2] = color; // B
        data[i + 3] = 255;   // A
      } else {
        // Natural variation
        data[i] = Math.random() * 255;     // R
        data[i + 1] = Math.random() * 255; // G
        data[i + 2] = Math.random() * 255; // B
        data[i + 3] = 255;                 // A
      }
    }
    return data;
  }
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
