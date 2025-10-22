# Back Side Preprocessing Fix

## Issue
`createResizedImage is not a function (it is undefined)` error when processing back side of ID cards.

## Root Cause
The `ImageResizer` module from `@bam.tech/react-native-image-resizer` was not being imported correctly in `imageProcessor.js`. When using CommonJS `require()` with ES6 modules in React Native, the default export may need to be accessed via `.default`.

## Fix Applied

### 1. imageProcessor.js (lines 5-6)
**Before:**
```javascript
const ImageResizer = require("@bam.tech/react-native-image-resizer");
```

**After:**
```javascript
const ImageResizerModule = require("@bam.tech/react-native-image-resizer");
const ImageResizer = ImageResizerModule.default || ImageResizerModule;
```

### 2. OCRReaderModule.js (line 28)
**Added:**
```javascript
const { ImageProcessor } = require('../../utils/imageProcessor');
```

**Removed** dynamic require from method (previously line 536):
```javascript
// Removed: const { ImageProcessor } = require('../../utils/imageProcessor');
```

## Why This Happened
1. **Dynamic require inside methods**: React Native's Metro bundler has issues with dynamic requires inside methods, especially for packages with native modules
2. **CommonJS/ES6 interop**: The package exports a default ES6 module, but we were using CommonJS require without accessing `.default`

## Solution Steps

### Step 1: Clear Metro Bundler Cache
```bash
npx react-native start --reset-cache
```

### Step 2: Rebuild the App
```bash
npm run android
# or
npx react-native run-android
```

### Step 3: Verify Fix
- Check for the error message in logs
- Verify that back side preprocessing completes without errors
- Confirm that MRZ parsing achieves >90% confidence

## Expected Behavior After Fix
✅ No "createResizedImage is not a function" errors  
✅ Back side preprocessing completes successfully  
✅ MRZ data is properly extracted from back side  
✅ Confidence scores remain high (>90%)  

## Notes
- The OCR process will still work even if preprocessing fails (it falls back to original image)
- However, proper preprocessing improves MRZ detection accuracy
- This fix ensures the preprocessBackSide() function works correctly
