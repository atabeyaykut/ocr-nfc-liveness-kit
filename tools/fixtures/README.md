# Test Fixtures

This directory contains synthetic test data for OCR SDK testing.

## Important Notes

- **NO REAL PII**: All data is synthetic and safe for testing
- **Fictional Data**: Names, numbers, and documents are not real
- **Test Purposes Only**: Do not use in production

## Files

- `nfc_test_scenarios.json` - Complete test scenarios
- `performance_test_data.json` - Performance test data
- `valid_passport.json` - Valid synthetic passport
- `invalid_sod.json` - Invalid SOD test case
- `hash_mismatch.json` - Hash mismatch test case
- `aa_not_supported.json` - AA not supported test case

## Usage

```bash
# Load test scenario
scenario=$(cat tools/fixtures/valid_passport.json)

# Use in tests
./nfc_test_runner.sh --scenario valid_passport
```

## Data Structure

Each test scenario contains:
- `sod`: Security Object Document (synthetic)
- `dg1`: Data Group 1 - MRZ (synthetic)
- `dg2`: Data Group 2 - Face image (placeholder)
- `dg15`: Data Group 15 - Public key (synthetic)
- `expectedResult`: Expected test outcome

All data is base64 encoded for transport safety.
