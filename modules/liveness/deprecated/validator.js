/**
 * Liveness Detection Validator
 * Real-time face detection validation
 */

const Logger = require('../../utils/logger');
const { getCommandByType } = require('./commands');

// Validation thresholds for different command types
const VALIDATION_THRESHOLDS = {
  'blink': { eyeClosedThreshold: 0.3, eyeOpenThreshold: 0.8 },
  'lookLeft': { yawAngle: -18, minConfidence: 0.7 },
  'lookRight': { yawAngle: 18, minConfidence: 0.7 },
  'lookStraight': { yawAngleRange: [-10, 10], minConfidence: 0.7 },
  'lookUp': { pitchAngle: -15, minConfidence: 0.7 },
  'lookDown': { pitchAngle: 15, minConfidence: 0.7 },
  'smile': { smilingProbability: 0.7, minConfidence: 0.7 },
  'nod': { pitchAngleThreshold: 12, minConfidence: 0.6 }
};

/**
 * Validate liveness detection result using real face detection data
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

    // Get command configuration
    const command = getCommandByType(commandType);
    if (!command) {
      throw new Error(`Unknown command type: ${commandType}`);
    }

    if (!detectionData) {
      throw new Error("Detection data not found");
    }

    // Get validation threshold
    const threshold = VALIDATION_THRESHOLDS[commandType];
    if (!threshold) {
      throw new Error(`Validation threshold not found for: ${commandType}`);
    }

    const startTime = Date.now();

    // Perform real validation based on command type
    const validationResult = performRealValidation(detectionData, commandType, threshold);

    const processingTime = Date.now() - startTime;

    const result = {
      isValid: validationResult.isValid,
      confidence: validationResult.confidence,
      commandType,
      timestamp: new Date().toISOString(),
      retryCount,
      processingTime,
      antiSpoofingEnabled: enableAntiSpoofing,
      details: validationResult.details
    };

    if (!validationResult.isValid) {
      result.error = `${command.message} - ${validationResult.reason}`;
      result.suggestions = getSuggestions(commandType, validationResult);
    }

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
 * Validate real-time liveness response using actual face detection data
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

    // Get command configuration
    const command = getCommandByType(commandType);
    if (!command) {
      throw new Error(`Unknown command type: ${commandType}`);
    }

    if (!detectionData) {
      throw new Error("Real-time detection data not found");
    }

    // Get validation threshold
    const threshold = VALIDATION_THRESHOLDS[commandType];
    if (!threshold) {
      throw new Error(`Validation threshold not found for: ${commandType}`);
    }

    const startTime = Date.now();

    // Perform real validation
    const validationResult = performRealValidation(detectionData, commandType, threshold);

    const processingTime = Date.now() - startTime;

    const result = {
      isValid: validationResult.isValid,
      confidence: validationResult.confidence,
      commandType,
      timestamp: new Date().toISOString(),
      retryCount,
      realTimeDetection: true,
      processingTime,
      details: validationResult.details
    };

    if (!validationResult.isValid) {
      result.error = `${command.message} - ${validationResult.reason}`;
    }

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

/**
 * Perform real validation based on face detection data
 * @param {object} detectionData - Face detection data from ML Kit
 * @param {string} commandType - Command type to validate
 * @param {object} threshold - Validation threshold
 * @returns {object} Validation result
 */
function performRealValidation(detectionData, commandType, threshold) {
  const motions = detectionData.motions || {};
  const confidence = detectionData.confidence || {};

  let isValid = false;
  let validationConfidence = 0;
  let reason = "Hareket algılanamadı";
  const details = {};

  switch (commandType) {
    case 'blink':
      isValid = motions.blink === true;
      validationConfidence = confidence.eyeOpen || 0;
      reason = isValid ? "Göz kırpma algılandı" : "Göz kırpma algılanamadı";
      details.eyeState = detectionData.details?.eyeState;
      break;

    case 'lookLeft':
      isValid = motions.lookLeft === true;
      validationConfidence = confidence.headPose || 0;
      reason = isValid ? "Sola bakma algılandı" : "Sola bakma algılanamadı";
      details.headPose = detectionData.details?.headPose;
      break;

    case 'lookRight':
      isValid = motions.lookRight === true;
      validationConfidence = confidence.headPose || 0;
      reason = isValid ? "Sağa bakma algılandı" : "Sağa bakma algılanamadı";
      details.headPose = detectionData.details?.headPose;
      break;

    case 'lookStraight':
      isValid = motions.lookStraight === true;
      validationConfidence = confidence.headPose || 0;
      reason = isValid ? "Düz bakma algılandı" : "Düz bakma algılanamadı";
      details.headPose = detectionData.details?.headPose;
      break;

    case 'lookUp':
      isValid = motions.lookUp === true;
      validationConfidence = confidence.verticalPose || 0;
      reason = isValid ? "Yukarı bakma algılandı" : "Yukarı bakma algılanamadı";
      details.headPose = detectionData.details?.headPose;
      break;

    case 'lookDown':
      isValid = motions.lookDown === true;
      validationConfidence = confidence.verticalPose || 0;
      reason = isValid ? "Aşağı bakma algılandı" : "Aşağı bakma algılanamadı";
      details.headPose = detectionData.details?.headPose;
      break;

    case 'smile':
      isValid = motions.smile === true;
      validationConfidence = confidence.smile || 0;
      reason = isValid ? "Gülümseme algılandı" : "Gülümseme algılanamadı";
      details.smile = detectionData.details?.smile;
      break;

    case 'nod':
      isValid = motions.nod === true;
      validationConfidence = confidence.verticalPose || 0;
      reason = isValid ? "Baş sallama algılandı" : "Baş sallama algılanamadı";
      details.nod = detectionData.details?.nod;
      break;

    default:
      reason = `Bilinmeyen komut tipi: ${commandType}`;
  }

  return {
    isValid,
    confidence: parseFloat(validationConfidence.toFixed(2)),
    reason,
    details
  };
}

/**
 * Get suggestions based on validation result
 * @param {string} commandType - Command type
 * @param {object} validationResult - Validation result
 * @returns {array} Suggestions
 */
function getSuggestions(commandType, validationResult) {
  const suggestions = [];

  if (validationResult.confidence < 0.5) {
    suggestions.push("Yüzünüzü daha net gösterin");
    suggestions.push("Işıklandırmayı kontrol edin");
  }

  switch (commandType) {
    case 'blink':
      suggestions.push("Gözlerinizi daha belirgin kırpın");
      break;
    case 'lookLeft':
    case 'lookRight':
      suggestions.push("Başınızı daha fazla çevirin");
      break;
    case 'smile':
      suggestions.push("Daha belirgin gülümseyin");
      break;
    case 'lookUp':
    case 'lookDown':
      suggestions.push("Başınızı daha fazla eğin");
      break;
    case 'nod':
      suggestions.push("Başınızı daha belirgin sallayın");
      break;
  }

  return suggestions;
}

module.exports = {
  validateLivenessResult,
  validateRealTimeResponse,
  VALIDATION_THRESHOLDS
};
