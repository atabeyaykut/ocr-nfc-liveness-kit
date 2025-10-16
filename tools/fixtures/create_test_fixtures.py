#!/usr/bin/env python3

"""
Test Fixtures Generator
Creates synthetic test data for OCR SDK testing
NO REAL PII - All data is synthetic and safe for testing
"""

import os
import json
import base64
import hashlib
from datetime import datetime, timedelta

def create_synthetic_sod():
    """Create synthetic SOD (Security Object Document) for testing"""
    # This is a simplified synthetic SOD structure
    # Real SOD would be much more complex ASN.1 encoded data
    sod_data = {
        "version": "1.0",
        "hashAlgorithm": "SHA-256",
        "dataGroups": {
            "1": {
                "hash": hashlib.sha256(b"SYNTHETIC_DG1_MRZ_DATA").hexdigest(),
                "description": "Machine Readable Zone"
            },
            "2": {
                "hash": hashlib.sha256(b"SYNTHETIC_DG2_FACE_IMAGE").hexdigest(),
                "description": "Encoded Face"
            },
            "15": {
                "hash": hashlib.sha256(b"SYNTHETIC_DG15_PUBLIC_KEY").hexdigest(),
                "description": "Active Authentication Public Key"
            }
        },
        "signature": "SYNTHETIC_SIGNATURE_DATA",
        "certificates": ["SYNTHETIC_CERT_1", "SYNTHETIC_CERT_2"]
    }
    
    # Convert to base64 for transport
    sod_json = json.dumps(sod_data)
    sod_base64 = base64.b64encode(sod_json.encode()).decode()
    
    return {
        "raw": sod_base64,
        "parsed": sod_data
    }

def create_synthetic_dg1():
    """Create synthetic DG1 (MRZ) data"""
    # Synthetic MRZ data - NOT real personal information
    mrz_lines = [
        "P<UTOTESTPERSON<<SYNTHETIC<<<<<<<<<<<<<<<<<<<<<<",
        "1234567890UTO7001014M2501017<<<<<<<<<<<<<<04"
    ]
    
    mrz_data = "\n".join(mrz_lines)
    mrz_base64 = base64.b64encode(mrz_data.encode()).decode()
    
    return {
        "raw": mrz_base64,
        "parsed": {
            "documentType": "P",
            "issuingCountry": "UTO",  # Utopia - fictional country
            "surname": "TESTPERSON",
            "givenNames": "SYNTHETIC",
            "documentNumber": "123456789",
            "nationality": "UTO",
            "birthDate": "700101",
            "sex": "M",
            "expiryDate": "250101",
            "personalNumber": "04"
        }
    }

def create_synthetic_dg2():
    """Create synthetic DG2 (Face image) data"""
    # Synthetic image data - just a placeholder
    image_data = b"SYNTHETIC_FACE_IMAGE_DATA_PLACEHOLDER"
    image_base64 = base64.b64encode(image_data).decode()
    
    return {
        "raw": image_base64,
        "parsed": {
            "imageFormat": "JPEG2000",
            "imageSize": len(image_data),
            "width": 300,
            "height": 400,
            "colorSpace": "RGB"
        }
    }

def create_synthetic_dg15():
    """Create synthetic DG15 (Public Key) data"""
    # Synthetic RSA public key data
    public_key_data = {
        "algorithm": "RSA",
        "keySize": 2048,
        "exponent": 65537,
        "modulus": "SYNTHETIC_RSA_MODULUS_DATA_FOR_TESTING_PURPOSES_ONLY"
    }
    
    key_json = json.dumps(public_key_data)
    key_base64 = base64.b64encode(key_json.encode()).decode()
    
    return {
        "raw": key_base64,
        "parsed": public_key_data
    }

def create_test_scenarios():
    """Create various test scenarios"""
    scenarios = {
        "valid_passport": {
            "description": "Valid synthetic passport data",
            "sod": create_synthetic_sod(),
            "dg1": create_synthetic_dg1(),
            "dg2": create_synthetic_dg2(),
            "dg15": create_synthetic_dg15(),
            "expectedResult": "PA_SUCCESS"
        },
        "invalid_sod": {
            "description": "Invalid SOD signature",
            "sod": {
                "raw": base64.b64encode(b"INVALID_SOD_DATA").decode(),
                "parsed": {"error": "invalid"}
            },
            "dg1": create_synthetic_dg1(),
            "dg2": create_synthetic_dg2(),
            "expectedResult": "PA_SOD_INVALID"
        },
        "hash_mismatch": {
            "description": "DG hash mismatch",
            "sod": create_synthetic_sod(),
            "dg1": {
                "raw": base64.b64encode(b"MODIFIED_DG1_DATA").decode(),
                "parsed": {"error": "modified"}
            },
            "dg2": create_synthetic_dg2(),
            "expectedResult": "PA_HASH_MISMATCH"
        },
        "aa_not_supported": {
            "description": "Active Authentication not supported",
            "sod": create_synthetic_sod(),
            "dg1": create_synthetic_dg1(),
            "dg2": create_synthetic_dg2(),
            "dg15": None,  # No DG15 = no AA support
            "expectedResult": "AA_NOT_SUPPORTED"
        }
    }
    
    return scenarios

def create_performance_test_data():
    """Create performance test data"""
    test_data = []
    
    for i in range(100):
        test_case = {
            "id": f"perf_test_{i:03d}",
            "timestamp": (datetime.now() + timedelta(seconds=i)).isoformat(),
            "data": create_synthetic_dg1(),
            "expectedLatency": 500 + (i % 1000),  # 500-1500ms
            "complexity": "low" if i < 50 else "high"
        }
        test_data.append(test_case)
    
    return test_data

def main():
    """Generate all test fixtures"""
    print("🔧 Creating test fixtures...")
    
    fixtures_dir = os.path.dirname(os.path.abspath(__file__))
    
    # Create main test scenarios
    scenarios = create_test_scenarios()
    with open(os.path.join(fixtures_dir, "nfc_test_scenarios.json"), "w") as f:
        json.dump(scenarios, f, indent=2)
    print("✅ Created NFC test scenarios")
    
    # Create performance test data
    perf_data = create_performance_test_data()
    with open(os.path.join(fixtures_dir, "performance_test_data.json"), "w") as f:
        json.dump(perf_data, f, indent=2)
    print("✅ Created performance test data")
    
    # Create individual fixture files
    for scenario_name, scenario_data in scenarios.items():
        scenario_file = os.path.join(fixtures_dir, f"{scenario_name}.json")
        with open(scenario_file, "w") as f:
            json.dump(scenario_data, f, indent=2)
        print(f"✅ Created {scenario_name}.json")
    
    # Create README for fixtures
    readme_content = """# Test Fixtures

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
"""
    
    with open(os.path.join(fixtures_dir, "README.md"), "w") as f:
        f.write(readme_content)
    print("✅ Created README.md")
    
    print(f"\n📁 Test fixtures created in: {fixtures_dir}")
    print("🔒 All data is synthetic - no real PII included")

if __name__ == "__main__":
    main()
