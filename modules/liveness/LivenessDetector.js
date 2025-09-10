/**
 * Liveness Detector - Day 9 Real-time Face Detection Implementation
 * Biometric liveness detection with real-time face tracking
 */

import { Platform } from 'react-native';
import Logger from '../../utils/logger';
import { getRandomCommand, getCommandByType, generateCommandSequence } from './commands';
import { validateResponse as mockValidateResponse, validateCommandSequence } from './validator';
import FaceDetector from './detector';

// Liveness Test Status Constants
export const LIVENESS_STATUS = {
  IDLE: 'idle',
  INITIALIZING: 'initializing',
  CAMERA_READY: 'camera_ready',
  INSTRUCTION_GIVEN: 'instruction_given',
  CAPTURING: 'capturing',
  PROCESSING: 'processing',
  SUCCESS: 'success',
  ERROR: 'error'
};

// Liveness Instructions
export const LIVENESS_INSTRUCTIONS = {
  LOOK_STRAIGHT: 'look_straight',
  BLINK: 'blink',
  TURN_LEFT: 'turn_left',
  TURN_RIGHT: 'turn_right',
  SMILE: 'smile',
  NOD: 'nod'
};

// Default Configuration
export const LIVENESS_CONFIG = {
  cameraType: 'front', // front or back
  captureQuality: 0.8,
  timeoutDuration: 30000, // 30 seconds
  instructionDelay: 2000, // 2 seconds between instructions
  maxRetries: 3,
  enableFaceDetection: true,
  enableMotionDetection: true
};

/**
 * LivenessDetector Class
 * Handles biometric liveness detection workflow
 */
class LivenessDetector {
  constructor(config = {}) {
    this.config = { ...LIVENESS_CONFIG, ...config };
    this.status = LIVENESS_STATUS.IDLE;
    this.currentInstruction = null;
    this.capturedImages = [];
    this.isProcessing = false;
    this.retryCount = 0;
    
    // Day 9: Real-time face detection
    this.faceDetector = new FaceDetector();
    this.currentCommand = null;
    this.commandStartTime = null;
    this.detectionTimeout = null;
    this.realTimeMode = config.realTimeMode !== false; // Default to true
    
    // Callback functions
    this.onStatusChange = null;
    this.onInstructionGiven = null;
    this.onCaptureComplete = null;
    this.onSuccess = null;
    this.onError = null;
    this.onProgress = null;
    this.onMotionDetected = null; // Day 9: New callback
    
    Logger.info('LivenessDetector initialized with real-time detection', { 
      config: this.config,
      realTimeMode: this.realTimeMode
    });
  }

  /**
   * Start liveness test workflow (Day 9 Enhanced with Real-time Detection)
   * @param {object} options - Test options
   * @returns {Promise<boolean>} - Success status
   */
  async startLivenessTest(options = {}) {
    try {
      if (this.isProcessing) {
        throw new Error('Canlılık testi zaten devam ediyor. Lütfen mevcut testin bitmesini bekleyin.');
      }

      Logger.info('Starting real-time liveness test...', options);
      this.isProcessing = true;
      this.retryCount = 0;
      this.capturedImages = [];
      
      const testOptions = { ...this.config, ...options };
      
      this._updateStatus(LIVENESS_STATUS.INITIALIZING);
      
      // Check camera permissions
      const hasPermission = await this._checkCameraPermissions();
      if (!hasPermission) {
        throw new Error('Kamera izni gerekli. Lütfen ayarlardan kamera erişimini etkinleştirin.');
      }
      
      // Initialize face detector
      if (this.realTimeMode) {
        await this.faceDetector.initialize();
        this._setupFaceDetectionCallbacks();
      }
      
      // Initialize front camera
      await this.captureFrontCamera(testOptions);
      
      // Start real-time instruction sequence
      await this._startRealTimeInstructionSequence(testOptions);
      
      this._updateStatus(LIVENESS_STATUS.SUCCESS);
      
      if (this.onSuccess) {
        this.onSuccess({
          status: 'completed',
          capturedImages: this.capturedImages.length,
          duration: Date.now() - this.startTime,
          instructions: this.completedInstructions,
          realTimeMode: this.realTimeMode
        });
      }
      
      return true;
      
    } catch (error) {
      Logger.error('Liveness test failed:', error.message);
      this._updateStatus(LIVENESS_STATUS.ERROR);
      
      if (this.onError) {
        this.onError(error);
      }
      
      throw error;
    } finally {
      this.isProcessing = false;
      if (this.realTimeMode) {
        this.faceDetector.stopDetection();
      }
    }
  }

  /**
   * Capture front camera for liveness detection
   * @param {object} options - Camera options
   * @returns {Promise<object>} - Camera initialization result
   */
  async captureFrontCamera(options = {}) {
    try {
      Logger.info('Initializing front camera for liveness detection...');
      
      this._updateStatus(LIVENESS_STATUS.CAMERA_READY);
      
      if (this.onProgress) {
        this.onProgress('Ön kamera başlatılıyor...');
      }
      
      // Simulate camera initialization (skeleton implementation)
      await new Promise(resolve => setTimeout(resolve, 1000));
      
      const cameraResult = {
        cameraType: 'front',
        resolution: '1280x720',
        fps: 30,
        ready: true,
        timestamp: new Date().toISOString()
      };
      
      Logger.info('Front camera initialized successfully', cameraResult);
      
      if (this.onProgress) {
        this.onProgress('Kamera hazır. Lütfen kameraya bakın.');
      }
      
      return cameraResult;
      
    } catch (error) {
      Logger.error('Front camera initialization failed:', error.message);
      throw new Error(`Ön kamera başlatılamadı: ${error.message}`);
    }
  }

  /**
   * Give instruction to user for liveness test (Day 8 Enhanced)
   * @param {string|object} instruction - Instruction type or command object
   * @param {object} options - Instruction options
   * @returns {Promise<object>} - Instruction result
   */
  async giveInstruction(instruction, options = {}) {
    try {
      let command;
      
      // Handle both string instruction and command object
      if (typeof instruction === 'string') {
        // Legacy support - convert instruction to command
        command = getCommandByType(this._mapInstructionToCommandType(instruction));
        if (!command) {
          throw new Error(`Geçersiz talimat: ${instruction}`);
        }
      } else if (typeof instruction === 'object' && instruction.type) {
        // New command object format
        command = instruction;
      } else {
        // Get random command if no specific instruction provided
        command = getRandomCommand();
      }
      
      Logger.info('Giving liveness instruction:', command);
      
      this.currentInstruction = command.instruction || command.type;
      this.currentCommand = command;
      this._updateStatus(LIVENESS_STATUS.INSTRUCTION_GIVEN);
      
      if (this.onInstructionGiven) {
        this.onInstructionGiven({
          command,
          instruction: command.instruction,
          message: command.message,
          icon: command.icon,
          duration: command.duration,
          timestamp: new Date().toISOString()
        });
      }
      
      if (this.onProgress) {
        this.onProgress(`${command.icon} ${command.message}`);
      }
      
      // Wait for instruction delay (use command duration or default)
      const delay = command.duration || this.config.instructionDelay;
      await new Promise(resolve => setTimeout(resolve, delay));
      
      // Simulate instruction capture
      const captureResult = await this._captureInstructionResponse(command, options);
      
      return {
        command,
        instruction: command.instruction,
        message: command.message,
        captured: true,
        result: captureResult,
        timestamp: new Date().toISOString()
      };
      
    } catch (error) {
      Logger.error('Instruction failed:', error.message);
      throw error;
    }
  }

  /**
   * Validate user response to instruction (Day 9 Enhanced with Real-time Detection)
   * @param {object} captureData - Captured data to validate
   * @param {string|object} expectedInstruction - Expected instruction type or command
   * @returns {Promise<object>} - Validation result
   */
  async validateResponse(captureData, expectedInstruction) {
    try {
      const commandType = typeof expectedInstruction === 'object' 
        ? expectedInstruction.type 
        : this._mapInstructionToCommandType(expectedInstruction);
        
      Logger.info('Validating liveness response...', { 
        commandType,
        expectedInstruction,
        realTimeMode: this.realTimeMode,
        dataSize: captureData ? Object.keys(captureData).length : 0
      });
      
      this._updateStatus(LIVENESS_STATUS.PROCESSING);
      
      if (this.onProgress) {
        this.onProgress('Yanıt doğrulanıyor...');
      }
      
      let validationResult;
      
      if (this.realTimeMode && captureData.realTimeDetection) {
        // Use real-time face detection data
        validationResult = await this._validateRealTimeResponse(captureData, commandType);
      } else {
        // Fallback to mock validator
        validationResult = await mockValidateResponse(commandType, {
          captureData,
          retryCount: this.retryCount,
          maxRetries: this.config.maxRetries
        });
      }
      
      Logger.info('Response validation completed', validationResult);
      
      if (!validationResult.isValid && this.retryCount < this.config.maxRetries) {
        this.retryCount++;
        Logger.warn(`Validation failed, retry ${this.retryCount}/${this.config.maxRetries}`);
        
        if (this.onProgress) {
          this.onProgress(`Tekrar deneyin (${this.retryCount}/${this.config.maxRetries}): ${validationResult.error || 'Hareket algılanamadı'}`);
        }
      }
      
      return validationResult;
      
    } catch (error) {
      Logger.error('Response validation failed:', error.message);
      throw new Error(`Yanıt doğrulama hatası: ${error.message}`);
    }
  }

  /**
   * Stop liveness test (Day 9 Enhanced)
   * @returns {Promise<void>}
   */
  async stopLivenessTest() {
    try {
      Logger.info('Stopping real-time liveness test...');
      
      this.isProcessing = false;
      this.currentInstruction = null;
      this.currentCommand = null;
      
      // Stop face detection
      if (this.realTimeMode) {
        this.faceDetector.stopDetection();
      }
      
      // Clear detection timeout
      if (this.detectionTimeout) {
        clearTimeout(this.detectionTimeout);
        this.detectionTimeout = null;
      }
      
      // Cleanup camera resources
      await this._cleanupCamera();
      
      this._updateStatus(LIVENESS_STATUS.IDLE);
      
      if (this.onProgress) {
        this.onProgress('Canlılık testi durduruldu');
      }
      
    } catch (error) {
      Logger.error('Error stopping liveness test:', error.message);
      throw error;
    }
  }

  /**
   * Reset liveness detector to initial state (Day 9 Enhanced)
   */
  reset() {
    this.status = LIVENESS_STATUS.IDLE;
    this.currentInstruction = null;
    this.currentCommand = null;
    this.capturedImages = [];
    this.isProcessing = false;
    this.retryCount = 0;
    this.completedInstructions = [];
    this.commandStartTime = null;
    
    // Reset face detector
    if (this.realTimeMode) {
      this.faceDetector.reset();
    }
    
    // Clear timeout
    if (this.detectionTimeout) {
      clearTimeout(this.detectionTimeout);
      this.detectionTimeout = null;
    }
    
    Logger.info('LivenessDetector reset to initial state');
  }

  /**
   * Get current status
   * @returns {string} - Current status
   */
  getStatus() {
    return this.status;
  }

  /**
   * Get captured images count
   * @returns {number} - Number of captured images
   */
  getCapturedImagesCount() {
    return this.capturedImages.length;
  }

  // Private Methods

  /**
   * Update status and notify callbacks
   * @private
   * @param {string} newStatus - New status
   */
  _updateStatus(newStatus) {
    const oldStatus = this.status;
    this.status = newStatus;
    
    Logger.info('Liveness status changed:', { from: oldStatus, to: newStatus });
    
    if (this.onStatusChange) {
      this.onStatusChange(newStatus, oldStatus);
    }
  }

  /**
   * Check camera permissions
   * @private
   * @returns {Promise<boolean>} - Permission status
   */
  async _checkCameraPermissions() {
    try {
      // Skeleton implementation - assume permissions are granted
      Logger.info('Checking camera permissions...');
      
      if (Platform.OS === 'ios') {
        // iOS camera permission check (skeleton)
        return true;
      } else if (Platform.OS === 'android') {
        // Android camera permission check (skeleton)
        return true;
      }
      
      return true;
    } catch (error) {
      Logger.error('Camera permission check failed:', error.message);
      return false;
    }
  }

  /**
   * Start real-time instruction sequence (Day 9 Enhanced)
   * @private
   * @param {object} options - Sequence options
   */
  async _startRealTimeInstructionSequence(options) {
    // Generate random command sequence based on difficulty
    const difficulty = options.difficulty || 'easy';
    const commandCount = options.commandCount || 3;
    const commandSequence = generateCommandSequence(commandCount, difficulty);
    
    Logger.info(`Starting real-time command sequence with ${commandCount} commands (${difficulty} difficulty)`);
    
    this.completedInstructions = [];
    this.startTime = Date.now();
    
    // Start face detection
    if (this.realTimeMode) {
      this.faceDetector.startDetection();
    }
    
    for (const command of commandSequence) {
      if (!this.isProcessing) break; // Stop if test was cancelled
      
      Logger.info(`Executing real-time command ${command.sequenceId}/${commandCount}:`, command.type);
      
      const result = await this._executeRealTimeCommand(command, options);
      
      if (result.isValid) {
        this.completedInstructions.push({
          command,
          instruction: command.instruction,
          result: result,
          sequenceId: command.sequenceId,
          timestamp: new Date().toISOString(),
          realTimeDetection: true
        });
        
        if (this.onProgress) {
          this.onProgress(`✅ ${command.message} - Başarılı! (Güven: ${result.confidence})`);
        }
      } else if (this.retryCount >= this.config.maxRetries) {
        throw new Error(`Talimat başarısız: ${command.message}. Maksimum deneme sayısına ulaşıldı.`);
      }
      
      // Small delay between commands
      await new Promise(resolve => setTimeout(resolve, 1000));
    }
    
    // Stop face detection
    if (this.realTimeMode) {
      this.faceDetector.stopDetection();
    }
    
    // Validate entire sequence
    if (this.completedInstructions.length > 0) {
      Logger.info('Real-time command sequence completed successfully');
    }
  }

  /**
   * Capture instruction response (Day 8 Enhanced)
   * @private
   * @param {object} command - Command object
   * @param {object} options - Capture options
   */
  async _captureInstructionResponse(command, options) {
    this._updateStatus(LIVENESS_STATUS.CAPTURING);
    
    if (this.onProgress) {
      this.onProgress(`📸 ${command.message} - Yakalanıyor...`);
    }
    
    // Simulate image capture with command-specific timing
    const captureDelay = command.duration ? Math.min(command.duration / 2, 1000) : 500;
    await new Promise(resolve => setTimeout(resolve, captureDelay));
    
    const captureData = {
      command,
      instruction: command.instruction,
      commandType: command.type,
      imageData: `mock_image_data_${command.type}_${Date.now()}`,
      timestamp: new Date().toISOString(),
      quality: this.config.captureQuality,
      sequenceId: command.sequenceId || 1,
      mockCapture: true
    };
    
    this.capturedImages.push(captureData);
    
    if (this.onCaptureComplete) {
      this.onCaptureComplete(captureData);
    }
    
    return captureData;
  }

  /**
   * Simulate motion detection
   * @private
   * @param {string} instruction - Instruction type
   */
  _simulateMotionDetection(instruction) {
    const motionTypes = {
      [LIVENESS_INSTRUCTIONS.LOOK_STRAIGHT]: 'face_forward',
      [LIVENESS_INSTRUCTIONS.BLINK]: 'eye_blink',
      [LIVENESS_INSTRUCTIONS.TURN_LEFT]: 'head_left',
      [LIVENESS_INSTRUCTIONS.TURN_RIGHT]: 'head_right',
      [LIVENESS_INSTRUCTIONS.SMILE]: 'smile_detected',
      [LIVENESS_INSTRUCTIONS.NOD]: 'head_nod'
    };
    
    return {
      type: motionTypes[instruction] || 'unknown',
      detected: true,
      confidence: 0.8 + Math.random() * 0.2
    };
  }

  /**
   * Map legacy instruction to command type
   * @private
   * @param {string} instruction - Legacy instruction
   * @returns {string} - Command type
   */
  _mapInstructionToCommandType(instruction) {
    const instructionMap = {
      [LIVENESS_INSTRUCTIONS.LOOK_STRAIGHT]: 'lookStraight',
      [LIVENESS_INSTRUCTIONS.BLINK]: 'blink',
      [LIVENESS_INSTRUCTIONS.TURN_LEFT]: 'lookLeft',
      [LIVENESS_INSTRUCTIONS.TURN_RIGHT]: 'lookRight',
      [LIVENESS_INSTRUCTIONS.SMILE]: 'smile',
      [LIVENESS_INSTRUCTIONS.NOD]: 'nod'
    };
    
    return instructionMap[instruction] || instruction;
  }

  /**
   * Get random command for manual testing
   * @returns {object} - Random command
   */
  getRandomCommand() {
    return getRandomCommand();
  }

  /**
   * Generate command sequence for testing
   * @param {number} count - Number of commands
   * @param {string} difficulty - Difficulty level
   * @returns {object[]} - Command sequence
   */
  generateTestSequence(count = 3, difficulty = 'easy') {
    return generateCommandSequence(count, difficulty);
  }

  /**
   * Setup face detection callbacks (Day 9)
   * @private
   */
  _setupFaceDetectionCallbacks() {
    // Register motion detection callbacks
    this.faceDetector.onMotionDetected('blink', (motionData) => {
      this._handleMotionDetected('blink', motionData);
    });
    
    this.faceDetector.onMotionDetected('lookLeft', (motionData) => {
      this._handleMotionDetected('lookLeft', motionData);
    });
    
    this.faceDetector.onMotionDetected('lookRight', (motionData) => {
      this._handleMotionDetected('lookRight', motionData);
    });
    
    this.faceDetector.onMotionDetected('smile', (motionData) => {
      this._handleMotionDetected('smile', motionData);
    });
    
    this.faceDetector.onMotionDetected('nod', (motionData) => {
      this._handleMotionDetected('nod', motionData);
    });
    
    // General motion callback
    this.faceDetector.onAnyMotionDetected((motionData) => {
      if (this.onMotionDetected) {
        this.onMotionDetected(motionData);
      }
    });
  }
  
  /**
   * Handle detected motion (Day 9)
   * @private
   * @param {string} motionType - Type of detected motion
   * @param {object} motionData - Motion detection data
   */
  _handleMotionDetected(motionType, motionData) {
    if (!this.currentCommand || !this.isProcessing) return;
    
    // Check if detected motion matches current command
    const commandType = this._mapCommandToMotionType(this.currentCommand.type);
    
    if (motionType === commandType) {
      Logger.info(`Motion detected for command: ${this.currentCommand.type}`, motionData);
      
      // Clear timeout
      if (this.detectionTimeout) {
        clearTimeout(this.detectionTimeout);
        this.detectionTimeout = null;
      }
      
      // Trigger success callback
      if (this.onProgress) {
        this.onProgress(`✅ ${this.currentCommand.message} algılandı!`);
      }
      
      // Store detection result
      this.currentDetectionResult = {
        isValid: true,
        confidence: motionData.confidence.overall,
        motionType,
        detectionData: motionData,
        timestamp: Date.now(),
        realTimeDetection: true
      };
    }
  }
  
  /**
   * Execute real-time command with face detection (Day 9)
   * @private
   * @param {object} command - Command to execute
   * @param {object} options - Execution options
   * @returns {Promise<object>} - Execution result
   */
  async _executeRealTimeCommand(command, options) {
    return new Promise((resolve, reject) => {
      this.currentCommand = command;
      this.commandStartTime = Date.now();
      this.currentDetectionResult = null;
      
      // Give instruction to user
      this._updateStatus(LIVENESS_STATUS.INSTRUCTION_GIVEN);
      
      if (this.onInstructionGiven) {
        this.onInstructionGiven({
          command,
          instruction: command.instruction,
          message: command.message,
          icon: command.icon,
          duration: command.duration,
          timestamp: new Date().toISOString(),
          realTimeMode: true
        });
      }
      
      if (this.onProgress) {
        this.onProgress(`${command.icon} ${command.message} - Hareket bekleniyor...`);
      }
      
      // Set timeout for command completion
      const timeout = command.duration || 5000; // 5 seconds default
      this.detectionTimeout = setTimeout(() => {
        if (!this.currentDetectionResult) {
          // Command timed out
          const timeoutResult = {
            isValid: false,
            confidence: 0,
            error: `${command.message} - Zaman aşımı`,
            timeout: true,
            realTimeDetection: true
          };
          resolve(timeoutResult);
        }
      }, timeout);
      
      // Check for detection result periodically
      const checkResult = () => {
        if (this.currentDetectionResult) {
          resolve(this.currentDetectionResult);
        } else if (this.isProcessing) {
          setTimeout(checkResult, 100);
        }
      };
      
      setTimeout(checkResult, 100);
    });
  }
  
  /**
   * Validate real-time response (Day 9)
   * @private
   * @param {object} captureData - Capture data with real-time detection
   * @param {string} commandType - Expected command type
   * @returns {Promise<object>} - Validation result
   */
  async _validateRealTimeResponse(captureData, commandType) {
    const detectionData = captureData.detectionData;
    
    if (!detectionData) {
      return {
        isValid: false,
        confidence: 0,
        error: 'Yüz algılama verisi bulunamadı',
        commandType,
        realTimeValidation: true
      };
    }
    
    // Validate based on command type
    const motionType = this._mapCommandToMotionType(commandType);
    const motionDetected = detectionData.motions[motionType];
    const confidence = detectionData.confidence.overall;
    
    return {
      isValid: motionDetected && confidence > 0.6,
      confidence: parseFloat(confidence.toFixed(2)),
      commandType,
      motionType,
      detectionType: 'real_time_face_detection',
      requiredMotion: motionType,
      timestamp: new Date().toISOString(),
      realTimeValidation: true,
      details: {
        faceDetected: detectionData.faceDetected,
        motionDetected,
        confidenceBreakdown: detectionData.confidence,
        detectionData: detectionData
      },
      error: !motionDetected ? `${commandType} hareketi algılanamadı` : null
    };
  }
  
  /**
   * Map command type to motion type (Day 9)
   * @private
   * @param {string} commandType - Command type
   * @returns {string} - Motion type
   */
  _mapCommandToMotionType(commandType) {
    const mapping = {
      'blink': 'blink',
      'lookLeft': 'lookLeft', 
      'lookRight': 'lookRight',
      'lookStraight': 'lookStraight',
      'smile': 'smile',
      'nod': 'nod'
    };
    
    return mapping[commandType] || commandType;
  }
  
  /**
   * Process camera frame for face detection (Day 9)
   * @param {object} frame - Camera frame
   * @returns {Promise<object>} - Processing result
   */
  async processCameraFrame(frame) {
    if (!this.realTimeMode || !this.faceDetector.isReady()) {
      return null;
    }
    
    return await this.faceDetector.processFrame(frame);
  }
  
  /**
   * Get face detection state (Day 9)
   * @returns {object} - Face detection state
   */
  getFaceDetectionState() {
    if (!this.realTimeMode) {
      return { realTimeMode: false };
    }
    
    return {
      realTimeMode: true,
      isReady: this.faceDetector.isReady(),
      isDetecting: this.faceDetector.isDetecting,
      motionState: this.faceDetector.getMotionState(),
      currentCommand: this.currentCommand
    };
  }

  /**
   * Cleanup camera resources (Day 9 Enhanced)
   * @private
   */
  async _cleanupCamera() {
    Logger.info('Cleaning up camera and face detection resources...');
    
    // Stop face detection
    if (this.realTimeMode) {
      this.faceDetector.stopDetection();
    }
    
    await new Promise(resolve => setTimeout(resolve, 500));
  }
}

export default LivenessDetector;
export { FaceDetector };
