/**
 * Liveness Detection Validator
 * Simplified version for bundle creation
 */

const Logger = require('../../utils/logger');
const { getCommandByType } = require('./commands');

// Mock validation results for different command types
const MOCK_VALIDATION_RESULTS = {
  'look_straight': { baseSuccess: 0.85, confidence: [0.7, 0.95] },
  'blink': { baseSuccess: 0.90, confidence: [0.8, 0.98] },
  'turn_left': { baseSuccess: 0.80, confidence: [0.65, 0.90] },
  'turn_right': { baseSuccess: 0.80, confidence: [0.65, 0.90] },
  'smile': { baseSuccess: 0.75, confidence: [0.60, 0.88] },
  'nod': { baseSuccess: 0.70, confidence: [0.55, 0.85] }
};

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

    // Get command configuration
    const command = getCommandByType(commandType);
    if (!command) {
      throw new Error(`Unknown command type: ${commandType}`);
    }

    if (!detectionData) {
      throw new Error("Detection data not found");
    }

    // Get mock validation config
    const validationConfig = MOCK_VALIDATION_RESULTS[commandType];
    if (!validationConfig) {
      throw new Error(`Validation config not found for: ${commandType}`);
    }

    // Simulate processing delay
    await new Promise((resolve) =>
      setTimeout(resolve, 800 + Math.random() * 400)
    );

    // Calculate success probability (decreases with retries)
    const retryPenalty = retryCount * 0.15;
    const successProbability = Math.max(
      0.2,
      validationConfig.baseSuccess - retryPenalty
    );
    const isSuccessful = Math.random() < successProbability;

    // Generate confidence score
    const [minConf, maxConf] = validationConfig.confidence;
    const confidence = isSuccessful
      ? minConf + Math.random() * (maxConf - minConf)
      : Math.random() * 0.5;

    const result = {
      isValid: isSuccessful,
      confidence: Math.round(confidence * 100) / 100,
      commandType,
      timestamp: new Date().toISOString(),
      retryCount,
      processingTime: Math.round(800 + Math.random() * 400),
      antiSpoofingEnabled: enableAntiSpoofing
    };

    if (!isSuccessful) {
      result.error = `${command.message} - Validation failed`;
      result.suggestions = ["Try again with better lighting", "Hold position steady"];
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

    // Get command configuration
    const command = getCommandByType(commandType);
    if (!command) {
      throw new Error(`Unknown command type: ${commandType}`);
    }

    if (!detectionData) {
      throw new Error("Real-time detection data not found");
    }

    // Simulate real-time validation
    const validationConfig = MOCK_VALIDATION_RESULTS[commandType];
    if (!validationConfig) {
      throw new Error(`Validation config not found for: ${commandType}`);
    }

    // Simulate processing delay
    await new Promise((resolve) =>
      setTimeout(resolve, 200 + Math.random() * 300)
    );

    // Calculate success probability
    const retryPenalty = retryCount * 0.1;
    const successProbability = Math.max(
      0.3,
      validationConfig.baseSuccess - retryPenalty
    );
    const isSuccessful = Math.random() < successProbability;

    // Generate confidence score
    const [minConf, maxConf] = validationConfig.confidence;
    const confidence = isSuccessful
      ? minConf + Math.random() * (maxConf - minConf)
      : Math.random() * 0.4;

    const result = {
      isValid: isSuccessful,
      confidence: Math.round(confidence * 100) / 100,
      commandType,
      timestamp: new Date().toISOString(),
      retryCount,
      realTimeDetection: true,
      processingTime: Math.round(200 + Math.random() * 300)
    };

    if (!isSuccessful) {
      result.error = `${command.message} - Real-time validation failed`;
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

module.exports = {
  validateLivenessResult,
  validateRealTimeResponse,
  MOCK_VALIDATION_RESULTS
};
