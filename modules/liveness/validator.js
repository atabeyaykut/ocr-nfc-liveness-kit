/**
 * Liveness Detection Validator - Day 10 Enhanced
 * Real-time face detection validation with anti-spoofing and mock fallback
 */

const Logger = require("../../utils/logger");
const { getCommandByType, getCommandByInstruction } = require("./commands");
const FaceDetector = require("./detector");
const { checkSpoof, AntiSpoofingDetector } = require("./antiSpoofing");
const { ValidationUtils, LivenessLogger } = require("./utils");

/**
 * Mock validation results for different command types
 */
const MOCK_VALIDATION_RESULTS = {
  lookRight: {
    baseSuccess: 0.85,
    detectionType: "head_turn_right",
    requiredMotion: "horizontal_right",
  },
  lookLeft: {
    baseSuccess: 0.85,
    detectionType: "head_turn_left",
    requiredMotion: "horizontal_left",
  },
  blink: {
    baseSuccess: 0.9,
    detectionType: "eye_blink",
    requiredMotion: "eye_closure",
  },
  lookStraight: {
    baseSuccess: 0.95,
    detectionType: "face_forward",
    requiredMotion: "face_center",
  },
  smile: {
    baseSuccess: 0.8,
    detectionType: "smile_detection",
    requiredMotion: "facial_expression",
  },
  nod: {
    baseSuccess: 0.75,
    detectionType: "head_nod",
    requiredMotion: "vertical_movement",
  },
};

/**
 * Validate user response to a liveness command (Day 9 Enhanced - Real-time + Mock)
 * @param {string} commandType - Type of command to validate
 * @param {object} options - Validation options
 * @returns {Promise<object>} Validation result
 */
export async function validateResponse(commandType, options = {}) {
  try {
    const {
      captureData,
      retryCount = 0,
      maxRetries = 3,
      realTimeMode = false,
    } = options;

    Logger.info("Validation started", {
      commandType,
      retryCount,
      maxRetries,
      realTimeMode,
      hasRealTimeData: !!(captureData && captureData.realTimeDetection),
    });

    // Check if we have real-time detection data
    if (realTimeMode && captureData && captureData.realTimeDetection) {
      return await validateRealTimeResponse(commandType, captureData, options);
    }

    // Fallback to mock validation
    return await validateMockResponse(commandType, options);

  } catch (error) {
    Logger.error("Validation failed:", error.message);
    throw new Error(`Doğrulama hatası: ${error.message}`);
  }
}

/**
 * Validate real-time face detection response (Day 10 Enhanced with Anti-Spoofing)
 * @param {string} commandType - Type of command to validate
 * @param {object} captureData - Real-time capture data
 * @param {object} options - Validation options
 * @returns {Promise<object>} Validation result
 */
export async function validateRealTimeResponse(
  commandType,
  captureData,
  options = {}
) {
  try {
    const { retryCount = 0, enableAntiSpoofing = true } = options;
    const detectionData = captureData.detectionData;

    Logger.info("Real-time validation started", {
      commandType,
      retryCount,
      enableAntiSpoofing,

    // Get command configuration
    const command = getCommandByType(commandType);
    if (!command) {
      throw new Error(`Bilinmeyen komut tipi: ${commandType}`);
    }

    if (!detectionData) {
      throw new Error("Gerçek zamanlı algılama verisi bulunamadı");
    }

    // STEP 1: Anti-Spoofing Check (Day 10 Addition)
    let antiSpoofingResult = null;
    if (enableAntiSpoofing && captureData.frameData) {
      try {
        antiSpoofingResult = await checkSpoof(captureData.frameData);
        Logger.info("Anti-spoofing check completed", {
          isReal: antiSpoofingResult.isReal,
          confidence: antiSpoofingResult.confidence,
          reason: antiSpoofingResult.reason,
        });

        // If spoofing detected, immediately fail validation
        if (!antiSpoofingResult.isReal) {
          return {
            isValid: false,
            confidence: 0,
            commandType,
            detectionType: "anti_spoofing_failed",
            timestamp: new Date().toISOString(),
            realTimeValidation: true,
            antiSpoofingResult,
            retryCount,
            error: `Sahte tespit edildi: ${antiSpoofingResult.reason}`,
            details: {
              spoofingDetected: true,
              spoofingConfidence: antiSpoofingResult.confidence,
              spoofingReason: antiSpoofingResult.reason,
              spoofingDetails: antiSpoofingResult.details,
            }
          };
        }
      } catch (antiSpoofError) {
        Logger.warn(
          "Anti-spoofing check failed, continuing with validation:",
          antiSpoofError.message
        );
        // Continue with validation even if anti-spoofing fails
      }
    }

    // STEP 2: Motion Detection Validation
    // Map command to motion type
    const motionType = _mapCommandToMotionType(commandType);
    const motionDetected =
      detectionData.motions && detectionData.motions[motionType];
    const confidence = detectionData.confidence
      ? detectionData.confidence.overall
      : 0;

    // Validation thresholds
    const CONFIDENCE_THRESHOLD = 0.6;
    const motionValid = motionDetected && confidence >= CONFIDENCE_THRESHOLD;

    // STEP 3: Combine Anti-Spoofing and Motion Validation Results
    const isValid =
      motionValid && (antiSpoofingResult ? antiSpoofingResult.isReal : true);

    const result = {
      isValid,
      confidence: parseFloat(confidence.toFixed(2)),
      commandType,
      motionType,
      detectionType: "real_time_face_detection_with_anti_spoofing",
      requiredMotion: motionType,
      timestamp: new Date().toISOString(),
      realTimeValidation: true,
      antiSpoofingResult,
      retryCount,
      details: {
        faceDetected: detectionData.faceDetected,
        motionDetected,
        confidenceThreshold: CONFIDENCE_THRESHOLD,
        confidenceBreakdown: detectionData.confidence,
        landmarks: detectionData.landmarks
          ? Object.keys(detectionData.landmarks).length
          : 0,
        processingTime: detectionData.processingTime || "N/A",
      },
    };

    // Add error message if validation failed
    if (!isValid) {
      // Priority 1: Anti-spoofing failure (already handled above)
      if (antiSpoofingResult && !antiSpoofingResult.isReal) {
        result.error = `Sahte tespit edildi: ${antiSpoofingResult.reason}`;
        result.details.antiSpoofingFailure = true;
      }
      // Priority 2: Face detection failure
      else if (!detectionData.faceDetected) {
        result.error =
          "Yüz algılanamadı. Kameraya doğrudan bakın ve yüzünüzün tamamen görünür olduğundan emin olun.";
      }
      // Priority 3: Motion detection failure
      else if (!motionDetected) {
        const errorMessages = {
          blink:
            "Göz kırpma hareketi algılanamadı. Gözlerinizi daha belirgin şekilde kırpın.",
          lookLeft:
            "Sola bakış hareketi algılanamadı. Başınızı daha belirgin şekilde sola çevirin.",
          lookRight:
            "Sağa bakış hareketi algılanamadı. Başınızı daha belirgin şekilde sağa çevirin.",
          lookStraight:
            "Düz bakış pozisyonu algılanamadı. Kameraya doğrudan bakın.",
          smile:
            "Gülümseme ifadesi algılanamadı. Daha belirgin şekilde gülümseyin.",
          nod: "Baş sallama hareketi algılanamadı. Başınızı yukarı aşağı sallayın.",
        };
        result.error =
          errorMessages[motionType] || `${motionType} hareketi algılanamadı`;
      }
      // Priority 4: Low confidence
      else {
        result.error = `Hareket algılandı ancak güven skoru düşük (${confidence.toFixed(
          2
        )}). Hareketi daha belirgin yapın.`;
      }

      // Add anti-spoofing details to result
      if (antiSpoofingResult) {
        result.details.antiSpoofingScore = antiSpoofingResult.confidence;
        result.details.antiSpoofingReason = antiSpoofingResult.reason;
      }
    }

    Logger.info("Real-time validation completed", result);
    return result;

  } catch (error) {
    Logger.error("Real-time validation failed:", error.message);
    throw new Error(`Gerçek zamanlı doğrulama hatası: ${error.message}`);
  }
}

/**
 * Validate using mock data (Day 8 compatibility)
 * @param {string} commandType - Type of command to validate
 * @param {object} options - Validation options
 * @returns {Promise<object>} Validation result
 */
export async function validateMockResponse(commandType, options = {}) {
  try {
    const { captureData, retryCount = 0, maxRetries = 3 } = options;

    Logger.info("Mock validation started", {
      commandType,
      retryCount,
      maxRetries,
    });

    // Get command configuration
    const command = getCommandByType(commandType);
    if (!command) {
      throw new Error(`Bilinmeyen komut tipi: ${commandType}`);
    }

    // Get mock validation config
    const validationConfig = MOCK_VALIDATION_RESULTS[commandType];
    if (!validationConfig) {
      throw new Error(
        `${commandType} için doğrulama yapılandırması bulunamadı`
      );

    // Simulate processing delay
    await new Promise((resolve) =>
      setTimeout(resolve, 800 + Math.random() * 400)

    // Calculate success probability (decreases with retries)
    const retryPenalty = retryCount * 0.15;
    const successProbability = Math.max(
      0.2,
      validationConfig.baseSuccess - retryPenalty
    );
    const isSuccessful = Math.random() < successProbability;

    // Generate confidence score
    const baseConfidence = isSuccessful
      ? 0.75 + Math.random() * 0.25
      : 0.3 + Math.random() * 0.4;
    const confidence = Math.min(0.99, Math.max(0.1, baseConfidence));

    const result = {
      isValid: isSuccessful,
      confidence: parseFloat(confidence.toFixed(2)),
      commandType,
      detectionType: validationConfig.detectionType,
      requiredMotion: validationConfig.requiredMotion,
      timestamp: new Date().toISOString(),
      mockValidation: true,
      retryCount,
      details: {
        captureDataSize: captureData ? Object.keys(captureData).length : 0,
        processingTime: `${800 + Math.random() * 400}ms`,
        successProbability: parseFloat(successProbability.toFixed(2)),
        mockResult: true,
      }
    };

    // Add error message if validation failed
    if (!isSuccessful) {
      const errorMessages = {
        lookRight:
          "Sağa bakış hareketi algılanamadı. Başınızı daha belirgin şekilde sağa çevirin.",
        lookLeft:
          "Sola bakış hareketi algılanamadı. Başınızı daha belirgin şekilde sola çevirin.",
        blink:
          "Göz kırpma hareketi algılanamadı. Gözlerinizi daha belirgin şekilde kırpın.",
        lookStraight:
          "Düz bakış pozisyonu algılanamadı. Kameraya doğrudan bakın.",
        smile:
          "Gülümseme ifadesi algılanamadı. Daha belirgin şekilde gülümseyin.",
        nod: "Baş sallama hareketi algılanamadı. Başınızı yukarı aşağı sallayın.",
      };

      result.error =
        errorMessages[commandType] || `${commandType} hareketi algılanamadı`;
    }

    Logger.info("Mock validation completed", result);
    return result;

  } catch (error) {
    Logger.error("Mock validation failed:", error.message);
    throw new Error(`Mock doğrulama hatası: ${error.message}`);
  }
}

/**
 * Map command type to motion type (Day 9)
 * @private
 * @param {string} commandType - Command type
 * @returns {string} Motion type
 */
function _mapCommandToMotionType(commandType) {
  const mapping = {
    blink: "blink",
    lookLeft: "lookLeft",
    lookRight: "lookRight",
    lookStraight: "lookStraight",
    smile: "smile",
    nod: "nod",
  };

  return mapping[commandType] || commandType;
}

/**
 * Validate face detection data quality (Day 9)
 * @param {object} detectionData - Face detection data
 * @returns {object} Quality assessment
 */
export function validateDetectionQuality(detectionData) {
  if (!detectionData) {
    return {
      isGoodQuality: false,
      score: 0,
      issues: ["Algılama verisi bulunamadı"],
    };
  }

  const issues = [];
  let score = 1.0;

  // Check face detection
  if (!detectionData.faceDetected) {
    issues.push("Yüz algılanamadı");
    score -= 0.5;
  }

  // Check confidence levels
  const confidence = detectionData.confidence;
  if (confidence && confidence.overall < 0.6) {
    issues.push("Düşük güven skoru");
    score -= 0.2;
  }

  // Check landmarks
  if (
    !detectionData.landmarks ||
    Object.keys(detectionData.landmarks).length < 4
  ) {
    issues.push("Yüz işaretleri eksik");
    score -= 0.2;
  }

  // Check lighting
  if (detectionData.lighting && detectionData.lighting < 0.3) {
    issues.push("Yetersiz aydınlatma");
    score -= 0.1;
  }

  return {
    isGoodQuality: score >= 0.6,
    score: Math.max(0, score),
    issues,
    recommendations: _getQualityRecommendations(issues),
  };
}

/**
 * Get quality improvement recommendations
 * @private
 * @param {string[]} issues - Detected issues
 * @returns {string[]} Recommendations
 */
function _getQualityRecommendations(issues) {
  const recommendations = [];

  if (issues.includes("Yüz algılanamadı")) {
    recommendations.push(
      "Kameraya doğrudan bakın ve yüzünüzün tamamen görünür olduğundan emin olun"
    );
  }

  if (issues.includes("Düşük güven skoru")) {
    recommendations.push("Kameraya daha yakın durun ve net bir şekilde bakın");
  }

  if (issues.includes("Yüz işaretleri eksik")) {
    recommendations.push("Yüzünüzü kameraya tam olarak çevirin");
  }

  if (issues.includes("Yetersiz aydınlatma")) {
    recommendations.push("Daha iyi aydınlatılmış bir ortama geçin");
  }

  return recommendations;
}

/**
 * Generate mock camera feed data for testing (Day 8 compatibility)
 * @param {string} commandType - Command type to generate data for
 * @returns {object} Mock camera data
 */
export function generateMockCameraData(commandType) {
  const timestamp = Date.now();

  return {
    timestamp,
    frameId: `frame_${timestamp}`,
    resolution: { width: 1280, height: 720 },
    format: "YUV420",
    commandType,
    mockData: {
      faceDetected: Math.random() > 0.1, // 90% chance of face detection
      confidence: 0.7 + Math.random() * 0.3,
      boundingBox: {
        x: 320 + Math.random() * 100,
        y: 180 + Math.random() * 100,
        width: 640 + Math.random() * 200,
        height: 360 + Math.random() * 100,
      },
      landmarks: {
        leftEye: { x: 400, y: 250 },
        rightEye: { x: 600, y: 250 },
        nose: { x: 500, y: 350 },
        mouth: { x: 500, y: 450 },
      },
      motionData: {
        [commandType]: Math.random() > 0.3, // 70% success rate
      }
    },
  };
}

/**
 * Validate a sequence of commands
 * @param {object[]} commandSequence - Array of commands to validate
 * @param {object} options - Validation options
 * @returns {Promise<object>} Sequence validation result
 */
export async function validateCommandSequence(commandSequence, options = {}) {
  try {
    Logger.info(
      "Starting sequence validation for",
      commandSequence.length,
      "commands"

    const results = [];
    let totalScore = 0;
    let successCount = 0;

    for (let i = 0; i < commandSequence.length; i++) {
      const command = commandSequence[i];
      Logger.info(
        `Validating command ${i + 1}/${commandSequence.length}:`,
        command.type

      const result = await validateResponse(command.type, options);
      results.push({
        ...result,
        commandId: command.id,
        sequenceIndex: i,
        command
      });

      totalScore += result.confidence;
      if (result.isValid) {
        successCount++;
      }
    }

    const averageScore = totalScore / commandSequence.length;
    const successRate = successCount / commandSequence.length;
    const overallSuccess = successRate >= 0.7 && averageScore >= 0.6; // 70% success rate required

    const sequenceResult = {
      isValid: overallSuccess,
      successRate: parseFloat(successRate.toFixed(2)),
      averageConfidence: parseFloat(averageScore.toFixed(2)),
      totalCommands: commandSequence.length,
      successfulCommands: successCount,
      failedCommands: commandSequence.length - successCount,
      results,
      timestamp: new Date().toISOString(),
      mockValidation: true,
    };

    Logger.info("Sequence validation completed:", {
      overallSuccess,
      successRate,
      averageConfidence: averageScore,
    });

    return sequenceResult;

  } catch (error) {
    Logger.error("Sequence validation failed:", error.message);
    throw new Error(`Sıralı doğrulama hatası: ${error.message}`);
  }
}

/**
 * Check if validation environment is ready
 * @returns {Promise<object>} Environment status
 */
export async function checkValidationEnvironment() {
  // Simulate environment check
  await new Promise((resolve) => setTimeout(resolve, 500));

  return {
    cameraAvailable: true,
    lightingAdequate: Math.random() > 0.1,
    faceDetectionReady: true,
    motionDetectionReady: true,
    validationReady: true,
    mockEnvironment: true,
    timestamp: new Date().toISOString(),
  };
}

module.exports = {
  validateResponse,
  validateRealTimeResponse,
  validateMockResponse,
  validateCommandSequence,
  validateDetectionQuality,
  generateMockCameraData,
  checkValidationEnvironment,
};
