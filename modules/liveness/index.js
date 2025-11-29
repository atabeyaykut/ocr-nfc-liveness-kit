/**
 * Liveness Module - Main Entry Point
 * 
 * This module provides liveness detection functionality using:
 * - LivenessDetectionModule: Core class-based detection engine
 * - LivenessModule: React wrapper component for VerificationFlowScreen
 * 
 * @module liveness
 */

// Core detection module (class-based)
export { default as LivenessDetectionModule } from './LivenessModule';

// React wrapper component
export { LivenessModule } from './LivenessWrapper';

// Type definitions (if needed)
export * from './types';
