/**
 * Liveness Detection Validator
 * Simplified version for bundle creation
 */

const Logger = require('../../utils/logger');
const { getCommandByType } = require('./commands');

// Threshold definitions derived from detector.js motion analysis
const THRESHOLDS = {
  blink: {
    minEyeClosureProbability: 0.65,
    maxBlinkDurationMs: 600,
    minBlinkDurationMs: 80,
  },
  look_left: {
    minYawDegrees: 20,
    minConfidence: 0.55,
  },
  look_right: {
    minYawDegrees: 20,
    minConfidence: 0.55,
  },
  look_straight: {
    maxYawDegrees: 12,
    maxPitchDegrees: 12,
    minConfidence: 0.5,
  },
  smile: {
    minSmileProbability: 0.75,
  },
  nod: {
    minPitchDegrees: 12,
    minConfidence: 0.5,
  },
};

const ANTI_SPOOFING_RULES = {
  minDepthVariance: 0.08,
  minMotionVariance: 0.05,
  maxFrameDifference: 600, // ms
};

const DEFAULT_PROCESSING_TIME = 120;

/**
 * Derive confidence score from motion metrics.
 */
function calculateConfidence(commandType, motionData) {
  if (!motionData || !motionData.confidence) {
    return 0;
  }

  switch (commandType) {
    case 'blink':
      return Math.min(1, motionData.confidence.eyeOpen || 0);
    case 'turn_left':
    case 'turn_right':
      return Math.min(1, motionData.confidence.headPose || 0);
    case 'look_straight':
      return Math.min(1, motionData.confidence.headPose || 0.5);
    case 'smile':
      return Math.min(1, motionData.confidence.smile || 0);
    case 'nod':
      return Math.min(1, motionData.confidence.headPose || 0);
    default:
      return Math.min(1, motionData.confidence.overall || 0);
  }
}

function validateAntiSpoofing(motionData = {}, options = {}) {
  const {
    depthVariance = 0,
    motionVariance = 0,
    faceDetected = false,
    timestamp,
    previousTimestamp,
  } = motionData.details || {};

  if (!options.enableAntiSpoofing) {
    return { isReal: true, confidence: 1 };
  }

  const depthOk = depthVariance >= ANTI_SPOOFING_RULES.minDepthVariance;
  const motionOk = motionVariance >= ANTI_SPOOFING_RULES.minMotionVariance;
  const facePresent = Boolean(faceDetected);
  const frameDeltaOk =
    !timestamp || !previousTimestamp
      ? true
      : timestamp - previousTimestamp <= ANTI_SPOOFING_RULES.maxFrameDifference;

  const isReal = depthOk && motionOk && facePresent && frameDeltaOk;
  const confidence = [depthVariance, motionVariance].reduce(
    (score, value) => score + Math.min(1, value * 2),
    0,
  ) / 2;

  return {
    isReal,
    confidence: Number(confidence.toFixed(2)),
    reasons: {
      depthOk,
      motionOk,
      facePresent,
      frameDeltaOk,
    },
  };
}

function buildFailure(reason, extra = {}) {
  return {
    isValid: false,
    confidence: 0,
    ...extra,
    error: reason,
  };
}

function evaluateMotion(commandType, motionData, detectionData = {}) {
  const metrics = {
    ...motionData.details,
    confidence: motionData.confidence,
  };

  switch (commandType) {
    case 'blink': {
      const { blinkHistory = [] } = detectionData;
      const lastBlink = blinkHistory[blinkHistory.length - 1];
      if (!motionData.motions?.blink) {
        return buildFailure('Göz kırpma algılanamadı', { metrics });
      }

      const eyeClosedProbability = 1 - (motionData.eyeState?.avgEyeOpen || 1);
      const withinThreshold = eyeClosedProbability >= THRESHOLDS.blink.minEyeClosureProbability;
      const durationOk = !lastBlink
        || (lastBlink.durationMs >= THRESHOLDS.blink.minBlinkDurationMs
          && lastBlink.durationMs <= THRESHOLDS.blink.maxBlinkDurationMs);

      if (!withinThreshold || !durationOk) {
        return buildFailure('Göz kırpma eşikleri karşılanamadı', {
          metrics: {
            ...metrics,
            eyeClosedProbability,
            blinkDuration: lastBlink?.durationMs,
          },
        });
      }

      return {
        isValid: true,
        confidence: calculateConfidence(commandType, motionData),
        metrics: {
          ...metrics,
          eyeClosedProbability,
          blinkDuration: lastBlink?.durationMs,
        },
      };
    }
    case 'turn_left':
    case 'turn_right': {
      const yaw = motionData.headPose?.headEulerAngleY || 0;
      const conf = motionData.confidence?.headPose || 0;
      const expectedDirection = commandType === 'turn_left' ? 1 : -1;
      const withinYaw =
        expectedDirection === 1
          ? yaw >= THRESHOLDS[commandType].minYawDegrees
          : yaw <= -THRESHOLDS[commandType].minYawDegrees;
      if (!withinYaw || conf < THRESHOLDS[commandType].minConfidence) {
        return buildFailure('Baş hareketi eşikleri karşılanamadı', {
          metrics: { ...metrics, yaw, confidence: conf },
        });
      }

      return {
        isValid: true,
        confidence: calculateConfidence(commandType, motionData),
        metrics: { ...metrics, yaw },
      };
    }
    case 'look_straight': {
      const yaw = Math.abs(motionData.headPose?.headEulerAngleY || 0);
      const pitch = Math.abs(motionData.headPose?.headEulerAngleX || 0);
      if (
        yaw > THRESHOLDS.look_straight.maxYawDegrees
        || pitch > THRESHOLDS.look_straight.maxPitchDegrees
      ) {
        return buildFailure('Yüz kameraya hizalanmadı', {
          metrics: { ...metrics, yaw, pitch },
        });
      }
      return {
        isValid: true,
        confidence: calculateConfidence(commandType, motionData),
        metrics: { ...metrics, yaw, pitch },
      };
    }
    case 'smile': {
      const smileProbability = motionData.smile?.smileProbability || 0;
      if (smileProbability < THRESHOLDS.smile.minSmileProbability) {
        return buildFailure('Gülümseme algılanmadı', {
          metrics: { ...metrics, smileProbability },
        });
      }
      return {
        isValid: true,
        confidence: calculateConfidence(commandType, motionData),
        metrics: { ...metrics, smileProbability },
      };
    }
    case 'nod': {
      const pitch = Math.abs(motionData.headPose?.headEulerAngleX || 0);
      const conf = motionData.confidence?.headPose || 0;
      if (pitch < THRESHOLDS.nod.minPitchDegrees || conf < THRESHOLDS.nod.minConfidence) {
        return buildFailure('Baş sallama algılanmadı', {
          metrics: { ...metrics, pitch, confidence: conf },
        });
      }
      return {
        isValid: true,
        confidence: calculateConfidence(commandType, motionData),
        metrics: { ...metrics, pitch },
      };
    }
    default:
      return buildFailure('Desteklenmeyen komut', { metrics });
  }
}

/**
 * Validate liveness detection result
 * @param {object} captureData - Captured data from liveness detection
 * @param {string} commandType - Expected command type
 * @param {object} options - Validation options
 * @returns {Promise<object>} Validation result
 */
async function validateLivenessResult(captureData, commandType, options = {}) {
  try {
    const { retryCount = 0, enableAntiSpoofing = true } = options;
    const detectionData = captureData.detectionData;

    Logger.info("Liveness validation started", {
      commandType,
      retryCount,
      enableAntiSpoofing
    });

    const command = getCommandByType(commandType);
    if (!command) {
      throw new Error(`Unknown command type: ${commandType}`);
    }

    if (!detectionData || !detectionData.motionData) {
      throw new Error("Detection data not found");
    }

    const motionData = detectionData.motionData;
    const baseResult = evaluateMotion(commandType, motionData, detectionData);

    if (!baseResult.isValid) {
      Logger.warn("Liveness validation failed", baseResult);
      return {
        ...baseResult,
        commandType,
        retryCount,
        timestamp: new Date().toISOString(),
        processingTime: DEFAULT_PROCESSING_TIME,
      };
    }

    const antiSpoofing = validateAntiSpoofing(motionData, { enableAntiSpoofing });

    const result = {
      isValid: baseResult.isValid && antiSpoofing.isReal,
      confidence: Number(
        (baseResult.confidence * (antiSpoofing.confidence || 1)).toFixed(2)
      ),
      commandType,
      timestamp: new Date().toISOString(),
      retryCount,
      processingTime: DEFAULT_PROCESSING_TIME,
      antiSpoofing,
      metrics: baseResult.metrics,
    };

    Logger.info("Liveness validation completed", result);
    return result;

  } catch (error) {
    Logger.error("Liveness validation error:", error);
    return {
      isValid: false,
      confidence: 0,
      error: error.message,
      commandType,
      timestamp: new Date().toISOString(),
      retryCount: options.retryCount || 0
    };
  }
}

/**
 * Validate real-time liveness response
 * @param {object} captureData - Capture data with real-time detection
 * @param {string} commandType - Expected command type
 * @param {object} options - Validation options
 * @returns {Promise<object>} Validation result
 */
async function validateRealTimeResponse(captureData, commandType, options = {}) {
  try {
    const { retryCount = 0, enableAntiSpoofing = true } = options;
    const detectionData = captureData.detectionData;

    Logger.info("Real-time validation started", {
      commandType,
      retryCount,
      enableAntiSpoofing
    });

    const command = getCommandByType(commandType);
    if (!command) {
      throw new Error(`Unknown command type: ${commandType}`);
    }

    if (!detectionData || !detectionData.motionData) {
      throw new Error("Real-time detection data not found");
    }

    const motionData = detectionData.motionData;
    const baseResult = evaluateMotion(commandType, motionData, detectionData);

    if (!baseResult.isValid) {
      Logger.warn("Real-time validation failed", baseResult);
      return {
        ...baseResult,
        commandType,
        retryCount,
        timestamp: new Date().toISOString(),
        realTimeDetection: true,
        processingTime: DEFAULT_PROCESSING_TIME,
      };
    }

    const antiSpoofing = validateAntiSpoofing(motionData, { enableAntiSpoofing });

    const result = {
      isValid: baseResult.isValid && antiSpoofing.isReal,
      confidence: Number(
        (baseResult.confidence * (antiSpoofing.confidence || 1)).toFixed(2)
      ),
      commandType,
      timestamp: new Date().toISOString(),
      retryCount,
      realTimeDetection: true,
      processingTime: DEFAULT_PROCESSING_TIME,
      antiSpoofing,
      metrics: baseResult.metrics,
    };

    Logger.info("Real-time validation completed", result);
    return result;

  } catch (error) {
    Logger.error("Real-time validation error:", error);
    return {
      isValid: false,
      confidence: 0,
      error: error.message,
      commandType,
      timestamp: new Date().toISOString(),
      retryCount: options.retryCount || 0,
      realTimeDetection: true
    };
  }
}

module.exports = {
  validateLivenessResult,
  validateRealTimeResponse,
  evaluateMotion,
};
