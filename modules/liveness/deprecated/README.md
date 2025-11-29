# Deprecated Liveness Modules

This folder contains deprecated/unused liveness detection modules.

## 📁 Contents

### Duplicate Files
- **LivenessDetectionModule.js** (1195 lines) - Duplicate of LivenessModule.js
  - Contains old LivenessDetectionScreen component
  - Replaced by LivenessModule.js (479 lines)

### Unused Modules
- **LivenessDetector.js** (1070 lines) - Old detector implementation
- **antiSpoofing.js** (727 lines) - Anti-spoofing detection
- **performance.js** (539 lines) - Performance monitoring
- **faceComparison.js** (463 lines) - Face comparison utilities
- **utils.js** (295 lines) - Utility functions
- **validator.js** (293 lines) - Validation functions
- **detector.js** (359 lines) - Face detector
- **commands.js** (179 lines) - Command definitions
- **BehavioralBiometrics.js** (302 lines) - Behavioral analysis
- **types.js** (37 lines) - Type definitions

## ✅ Active Modules

The following files are ACTIVE and should be used:

```
modules/liveness/
├── index.js                    ✅ Main entry point
├── LivenessModule.js           ✅ Core class (479 lines)
└── LivenessWrapper.js          ✅ React wrapper (515 lines)
```

## 🎯 Why Deprecated?

1. **LivenessDetectionModule.js** - Duplicate code (61% redundant)
2. **LivenessDetector.js** - Not imported anywhere
3. **Others** - No active imports found in codebase

## ⚠️ Do NOT Import

These files are NOT exported from `index.js` and should NOT be imported directly.

## 🗑️ Removal Schedule

May be permanently deleted in next major version (v2.0.0)

---

**Deprecated on:** 2025-11-29
**Total size:** ~6,500 lines
**Reduction:** 93% of liveness module code
