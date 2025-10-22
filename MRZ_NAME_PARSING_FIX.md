# MRZ Name Parsing Fix

## Issue
MRZ was correctly parsing names from back side, but they were being truncated in final results:
- **MRZ parsed**: `name: "ATABEY"`, `surname: "AYKUT"` ✅
- **Final back results**: `name: "EY"`, `surname: "ATAB"` ❌
- **Merge conflict**: Front side data didn't match truncated back side data

## Root Cause
After MRZ successfully parsed the names, the regular OCR parsing code continued to run and **overwrote** the MRZ values with truncated data from the non-MRZ text on the back side.

### Code Flow Before Fix:
1. MRZ parsing extracts: `fields.name = "ATABEY"`, `fields.surname = "AYKUT"` ✅
2. Regular OCR parsing runs (line 752-779)
3. Regular OCR finds partial text from back side labels
4. Regular OCR **overwrites**: `fields.name = "EY"`, `fields.surname = "ATAB"` ❌

## Fix Applied

### Modified `OCRReaderModule.js` (lines 722-779)

**Key Changes:**

#### 1. Added MRZ Data Detection
```javascript
const hasMRZData = fields.source === 'MRZ (Arka Yüz)';
if (!hasMRZData) {
  console.log('[OCR] No MRZ found, using regular OCR parsing');
}
```

#### 2. Protected MRZ Fields from Overwriting
```javascript
// TC No - only parse if not already found in MRZ
if (!fields.tcNo) {
  // ... TC parsing code
}

// Surname - only parse if field is empty
if (!fields.surname && !isBackSide && /Soyad/.test(line)) {
  // ... surname parsing code
}

// Name - only parse if field is empty
if (!fields.name && !isBackSide && /Ad[iı]/.test(line)) {
  // ... name parsing code
}
```

## Expected Behavior After Fix

### Back Side Processing:
1. ✅ MRZ parsing extracts complete names: `name: "ATABEY"`, `surname: "AYKUT"`
2. ✅ Regular OCR checks `!fields.name` → **false** (field already populated)
3. ✅ Regular OCR checks `!fields.surname` → **false** (field already populated)
4. ✅ Regular OCR **skips** overwriting these fields
5. ✅ Final back results: `name: "ATABEY"`, `surname: "AYKUT"`

### Merge Process:
```
Front: name="ATABEY", surname="AYKUT"
Back:  name="ATABEY", surname="AYKUT"
Result: ✓ Match - No conflicts!
```

## Testing

### Before Fix:
```javascript
{
  "name": "EY",        // ❌ Truncated
  "surname": "ATAB",   // ❌ Truncated
  "conflicts": [
    { "field": "name", "frontValue": "ATABEY", "backValue": "EY" },
    { "field": "surname", "frontValue": "AYKUT", "backValue": "ATAB" }
  ]
}
```

### After Fix:
```javascript
{
  "name": "ATABEY",     // ✅ Complete
  "surname": "AYKUT",   // ✅ Complete
  "conflicts": [],      // ✅ No conflicts
  "validation": {
    "name": "verified",    // ✅ Front and back match
    "surname": "verified"  // ✅ Front and back match
  }
}
```

## Files Modified
- `c:\Users\aslib\Desktop\Kantlori\ocr\modules\ocr\OCRReaderModule.js`

## Related Fixes
This fix complements the earlier ImageResizer import fix (see `PREPROCESSING_FIX.md`)
