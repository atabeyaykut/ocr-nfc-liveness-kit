/**
 * Face Detection Module - Day 9 Real-time Implementation
 * Real-time face tracking and motion detection using ML Kit
 */

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
  HEAD_YAW_TURN: 18, // degrees for left/right
  HEAD_PITCH_UP: 15, // degrees for look up
  HEAD_PITCH_DOWN: 15, // degrees for look down
  HEAD_PITCH_NOD: 12, // degrees for nod detection
  HEAD_ROLL_TILT: 15, // degrees for tilt (future use)
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
    this.lastProcessedAt = 0;

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
      const now = Date.now();
      if (this.lastProcessedAt && now - this.lastProcessedAt < 200) {
        return null;
      }
      this.lastProcessedAt = now;
      this.frameCount++;

      // Detect faces in frame
      let detectionInput = frame;
      if (typeof frame === 'object' && frame !== null && frame.path) {
        detectionInput = frame.path;
      }

      const faces = await FaceDetection.detect(detectionInput);

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
        lookUp: false,
        lookDown: false,
        smile: false,
        nod: false,
      },
      confidence: {
        overall: 0,
        eyeOpen: 0,
        smile: 0,
        headPose: 0,
        verticalPose: 0,
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
    motionData.motions.lookUp = headAnalysis.lookUp;
    motionData.motions.lookDown = headAnalysis.lookDown;
    motionData.confidence.headPose = headAnalysis.confidence;
    motionData.confidence.verticalPose = headAnalysis.verticalConfidence;

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
    const headEulerAngleY = face.headEulerAngleY ?? face.rotationY ?? 0;
    const headEulerAngleX = face.headEulerAngleX ?? face.rotationX ?? 0;
    const headEulerAngleZ = face.headEulerAngleZ ?? face.rotationZ ?? 0;

    const lookLeft = headEulerAngleY <= -MOTION_THRESHOLDS.HEAD_YAW_TURN;
    const lookRight = headEulerAngleY >= MOTION_THRESHOLDS.HEAD_YAW_TURN;
    const lookStraight = Math.abs(headEulerAngleY) < MOTION_THRESHOLDS.HEAD_YAW_TURN * 0.6;
    const lookUp = headEulerAngleX <= -MOTION_THRESHOLDS.HEAD_PITCH_UP;
    const lookDown = headEulerAngleX >= MOTION_THRESHOLDS.HEAD_PITCH_DOWN;

    if (lookLeft) {
      this.motionState.headDirection = 'left';
    } else if (lookRight) {
      this.motionState.headDirection = 'right';
    } else if (lookUp) {
      this.motionState.headDirection = 'up';
    } else if (lookDown) {
      this.motionState.headDirection = 'down';
    } else {
      this.motionState.headDirection = 'center';
    }

    const yawConfidence = Math.min(1, Math.abs(headEulerAngleY) / 45);
    const pitchConfidence = Math.min(1, Math.abs(headEulerAngleX) / 45);

    return {
      lookLeft,
      lookRight,
      lookStraight,
      lookUp,
      lookDown,
      headEulerAngleX,
      headEulerAngleY,
      headEulerAngleZ,
      direction: this.motionState.headDirection,
      confidence: yawConfidence,
      verticalConfidence: pitchConfidence,
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
