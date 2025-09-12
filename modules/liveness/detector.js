/**
 * Face Detection Module - Day 9 Real-time Implementation
 * Real-time face tracking and motion detection using ML Kit
 */

const { runOnJS } = require('react-native-reanimated');
const FaceDetection = require('@react-native-ml-kit/face-detection');
const Logger = require('../../utils/logger');

// Face detection configuration
const FACE_DETECTION_CONFIG = {
  performanceMode: 'accurate',
  landmarkMode: 'all',
  classificationMode: 'all',
  minFaceSize: 0.1,
  enableTracking: true,
};

// Face landmarks for motion detection
export const FACE_LANDMARKS = {
  LEFT_EYE: 'leftEye',
  RIGHT_EYE: 'rightEye',
  NOSE_BASE: 'noseBase',
  LEFT_CHEEK: 'leftCheek',
  RIGHT_CHEEK: 'rightCheek',
  LEFT_EAR: 'leftEar',
  RIGHT_EAR: 'rightEar',
  MOUTH_LEFT: 'mouthLeft',
  MOUTH_RIGHT: 'mouthRight',
  MOUTH_BOTTOM: 'mouthBottom',
};

// Motion detection thresholds
const MOTION_THRESHOLDS = {
  HEAD_TURN_ANGLE: 15, // degrees
  EYE_OPEN_PROBABILITY: 0.8,
  EYE_CLOSED_PROBABILITY: 0.3,
  SMILE_PROBABILITY: 0.7,
  FACE_CONFIDENCE: 0.7,
  MOVEMENT_SENSITIVITY: 10, // pixels
};

/**
 * Face Detection and Motion Analysis Class
 */
class FaceDetector {
  constructor() {
    this.isInitialized = false;
    this.currentFaces = [];
    this.previousFaces = [];
    this.motionHistory = [];
    this.detectionCallbacks = {};
    this.isDetecting = false;
    this.frameCount = 0;

    // Motion state tracking
    this.motionState = {
      isBlinking: false,
      headDirection: 'center', // left, right, center
      isSmiling: false,
      eyesOpen: true,
      faceDetected: false,
      faceConfidence: 0,
    };

    Logger.info('FaceDetector initialized');
  }

  /**
   * Initialize face detection with ML Kit
   * @returns {Promise<boolean>} Initialization success
   */
  async initialize() {
    try {
      Logger.info('Initializing face detection...');

      // Configure ML Kit Face Detection
      await FaceDetection.configure(FACE_DETECTION_CONFIG);

      this.isInitialized = true;
      Logger.info('Face detection initialized successfully');
      return true;
    } catch (error) {
      Logger.error('Face detection initialization failed:', error.message);
      throw new Error(`Yüz algılama başlatılamadı: ${error.message}`);
    }
  }

  /**
   * Process camera frame for face detection
   * @param {object} frame - Camera frame data
   * @returns {Promise<object>} Detection results
   */
  async processFrame(frame) {
    if (!this.isInitialized || !this.isDetecting) {
      return null;
    }

    try {
      this.frameCount++;

      // Detect faces in frame
      const faces = await FaceDetection.detect(frame);

      // Update face tracking
      this.previousFaces = [...this.currentFaces];
      this.currentFaces = faces;

      // Analyze motion and update state
      const motionData = this.analyzeMotion(faces);

      // Update motion history
      this.updateMotionHistory(motionData);

      // Trigger callbacks
      this.triggerCallbacks(motionData);

      return {
        faces,
        motionData,
        frameCount: this.frameCount,
        timestamp: Date.now(),
      };
    } catch (error) {
      Logger.error('Frame processing failed:', error.message);
      return null;
    }
  }

  /**
   * Analyze face motion and gestures
   * @param {array} faces - Detected faces
   * @returns {object} Motion analysis results
   */
  analyzeMotion(faces) {
    const motionData = {
      faceDetected: faces.length > 0,
      faceCount: faces.length,
      timestamp: Date.now(),
      motions: {
        blink: false,
        lookLeft: false,
        lookRight: false,
        lookStraight: false,
        smile: false,
        nod: false,
      },
      confidence: {
        overall: 0,
        eyeOpen: 0,
        smile: 0,
        headPose: 0,
      },
      details: {},
    };

    if (faces.length === 0) {
      this.motionState.faceDetected = false;
      return motionData;
    }

    // Analyze primary face (largest face)
    const primaryFace = this.getPrimaryFace(faces);
    if (!primaryFace) {
      return motionData;
    }

    // Update motion state
    this.motionState.faceDetected = true;
    this.motionState.faceConfidence = primaryFace.confidence || 0;

    // Analyze eye state (blink detection)
    const eyeAnalysis = this.analyzeEyeState(primaryFace);
    motionData.motions.blink = eyeAnalysis.blink;
    motionData.confidence.eyeOpen = eyeAnalysis.confidence;

    // Analyze head pose (look direction)
    const headAnalysis = this.analyzeHeadPose(primaryFace);
    motionData.motions.lookLeft = headAnalysis.lookLeft;
    motionData.motions.lookRight = headAnalysis.lookRight;
    motionData.motions.lookStraight = headAnalysis.lookStraight;
    motionData.confidence.headPose = headAnalysis.confidence;

    // Analyze smile
    const smileAnalysis = this.analyzeSmile(primaryFace);
    motionData.motions.smile = smileAnalysis.smile;
    motionData.confidence.smile = smileAnalysis.confidence;

    // Analyze nod (vertical head movement)
    const nodAnalysis = this.analyzeNod(primaryFace);
    motionData.motions.nod = nodAnalysis.nod;

    // Calculate overall confidence
    motionData.confidence.overall = this.calculateOverallConfidence(
      motionData.confidence
    );

    // Store detailed analysis
    motionData.details = {
      face: primaryFace,
      eyeState: eyeAnalysis,
      headPose: headAnalysis,
      smile: smileAnalysis,
      nod: nodAnalysis,
    };

    return motionData;
  }

  /**
   * Analyze eye state for blink detection
   * @param {object} face - Face detection result
   * @returns {object} Eye analysis
   */
  analyzeEyeState(face) {
    const leftEyeOpen = face.leftEyeOpenProbability || 0;
    const rightEyeOpen = face.rightEyeOpenProbability || 0;
    const avgEyeOpen = (leftEyeOpen + rightEyeOpen) / 2;

    // Detect blink (both eyes closed)
    const eyesClosed = avgEyeOpen < MOTION_THRESHOLDS.EYE_CLOSED_PROBABILITY;
    const eyesOpen = avgEyeOpen > MOTION_THRESHOLDS.EYE_OPEN_PROBABILITY;

    // Blink detection logic
    let blink = false;
    if (this.motionState.eyesOpen && eyesClosed) {
      // Eyes just closed
      this.motionState.eyesOpen = false;
    } else if (!this.motionState.eyesOpen && eyesOpen) {
      // Eyes just opened - blink detected!
      blink = true;
      this.motionState.eyesOpen = true;
      this.motionState.isBlinking = false;
    }

    return {
      blink,
      eyesOpen,
      eyesClosed,
      leftEyeOpen,
      rightEyeOpen,
      avgEyeOpen,
      confidence: Math.max(leftEyeOpen, rightEyeOpen),
    };
  }

  /**
   * Analyze head pose for look direction
   * @param {object} face - Face detection result
   * @returns {object} Head pose analysis
   */
  analyzeHeadPose(face) {
    const headEulerAngleY = face.headEulerAngleY || 0;
    const headEulerAngleZ = face.headEulerAngleZ || 0;

    // Determine look direction based on head rotation
    const lookLeft = headEulerAngleY > MOTION_THRESHOLDS.HEAD_TURN_ANGLE;
    const lookRight = headEulerAngleY < -MOTION_THRESHOLDS.HEAD_TURN_ANGLE;
    const lookStraight =
      Math.abs(headEulerAngleY) <= MOTION_THRESHOLDS.HEAD_TURN_ANGLE;

    // Update motion state
    if (lookLeft) {
      this.motionState.headDirection = 'left';
    } else if (lookRight) {
      this.motionState.headDirection = 'right';
    } else {
      this.motionState.headDirection = 'center';
    }

    return {
      lookLeft,
      lookRight,
      lookStraight,
      headEulerAngleY,
      headEulerAngleZ,
      direction: this.motionState.headDirection,
      confidence: Math.min(1.0, Math.abs(headEulerAngleY) / 45), // Normalize to 0-1
    };
  }

  /**
   * Analyze smile detection
   * @param {object} face - Face detection result
   * @returns {object} Smile analysis
   */
  analyzeSmile(face) {
    const smileProbability = face.smilingProbability || 0;
    const smile = smileProbability > MOTION_THRESHOLDS.SMILE_PROBABILITY;

    // Update motion state
    this.motionState.isSmiling = smile;

    return {
      smile,
      smileProbability,
      confidence: smileProbability,
    };
  }

  /**
   * Analyze nod (vertical head movement)
   * @param {object} face - Face detection result
   * @returns {object} Nod analysis
   */
  analyzeNod(face) {
    const headEulerAngleX = face.headEulerAngleX || 0;

    // Simple nod detection based on X-axis rotation
    const nod = Math.abs(headEulerAngleX) > 10; // Basic threshold

    return {
      nod,
      headEulerAngleX,
      confidence: Math.min(1.0, Math.abs(headEulerAngleX) / 30),
    };
  }

  /**
   * Get primary face (largest detected face)
   * @param {array} faces - Detected faces
   * @returns {object|null} Primary face
   */
  getPrimaryFace(faces) {
    if (faces.length === 0) {
      return null;
    }

    // Return face with highest confidence or largest bounds
    return faces.reduce((primary, face) => {
      const primarySize = primary.bounds
        ? primary.bounds.width * primary.bounds.height
        : 0;
      const faceSize = face.bounds ? face.bounds.width * face.bounds.height : 0;

      return faceSize > primarySize ? face : primary;
    });
  }

  /**
   * Calculate overall confidence score
   * @param {object} confidences - Individual confidence scores
   * @returns {number} Overall confidence (0-1)
   */
  calculateOverallConfidence(confidences) {
    const scores = Object.values(confidences).filter(
      (score) => typeof score === 'number' && score > 0
    );

    if (scores.length === 0) {
      return 0;
    }

    return scores.reduce((sum, score) => sum + score, 0) / scores.length;
  }

  /**
   * Update motion history for pattern analysis
   * @param {object} motionData - Current motion data
   */
  updateMotionHistory(motionData) {
    this.motionHistory.push({
      ...motionData,
      timestamp: Date.now(),
    });

    // Keep only last 30 frames (1 second at 30fps)
    if (this.motionHistory.length > 30) {
      this.motionHistory.shift();
    }
  }

  /**
   * Trigger registered callbacks for detected motions
   * @param {object} motionData - Motion analysis results
   */
  triggerCallbacks(motionData) {
    Object.keys(motionData.motions).forEach((motionType) => {
      if (
        motionData.motions[motionType] &&
        this.detectionCallbacks[motionType]
      ) {
        runOnJS(this.detectionCallbacks[motionType])(motionData);
      }
    });

    // Trigger general callback if registered
    if (this.detectionCallbacks.onMotionDetected) {
      runOnJS(this.detectionCallbacks.onMotionDetected)(motionData);
    }
  }

  /**
   * Register callback for specific motion type
   * @param {string} motionType - Type of motion (blink, lookLeft, etc.)
   * @param {function} callback - Callback function
   */
  onMotionDetected(motionType, callback) {
    this.detectionCallbacks[motionType] = callback;
  }

  /**
   * Register general motion detection callback
   * @param {function} callback - Callback function
   */
  onAnyMotionDetected(callback) {
    this.detectionCallbacks.onMotionDetected = callback;
  }

  /**
   * Start face detection
   */
  startDetection() {
    this.isDetecting = true;
    this.frameCount = 0;
    Logger.info('Face detection started');
  }

  /**
   * Stop face detection
   */
  stopDetection() {
    this.isDetecting = false;
    Logger.info('Face detection stopped');
  }

  /**
   * Reset detector state
   */
  reset() {
    this.currentFaces = [];
    this.previousFaces = [];
    this.motionHistory = [];
    this.frameCount = 0;
    this.motionState = {
      isBlinking: false,
      headDirection: 'center',
      isSmiling: false,
      eyesOpen: true,
      faceDetected: false,
      faceConfidence: 0,
    };
    Logger.info('Face detector reset');
  }

  /**
   * Get current motion state
   * @returns {object} Current motion state
   */
  getMotionState() {
    return { ...this.motionState };
  }

  /**
   * Get motion history
   * @returns {array} Motion history
   */
  getMotionHistory() {
    return [...this.motionHistory];
  }

  /**
   * Check if detector is ready
   * @returns {boolean} Ready state
   */
  isReady() {
    return this.isInitialized;
  }
}

module.exports = FaceDetector;
