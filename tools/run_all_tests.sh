#!/bin/bash

# Master Test Runner Script
# Runs all production readiness tests
# Output: comprehensive test report
#
# Usage: ./run_all_tests.sh [--help] [--quick] [--report-only]

set -e

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
REPORT_FILE="$SCRIPT_DIR/production_readiness_report.json"
TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%SZ")

show_help() {
    echo "Master Test Runner Script"
    echo ""
    echo "Usage: $0 [--help] [--quick] [--report-only]"
    echo ""
    echo "Runs comprehensive production readiness tests:"
    echo "1. Device capability check"
    echo "2. Runtime capability validation"
    echo "3. NFC functionality tests"
    echo "4. OCR performance tests"
    echo "5. Token lifecycle validation"
    echo "6. PII log scanning"
    echo "7. Performance smoke tests"
    echo "8. Fallback behavior tests"
    echo ""
    echo "Options:"
    echo "  --quick       Run quick tests (reduced scope)"
    echo "  --report-only Generate report from existing results"
    echo "  --help        Show this help message"
    echo ""
    echo "Output:"
    echo "  production_readiness_report.json - Comprehensive test report"
}

QUICK_MODE=false
REPORT_ONLY=false

while [[ $# -gt 0 ]]; do
    case $1 in
        --help)
            show_help
            exit 0
            ;;
        --quick)
            QUICK_MODE=true
            shift
            ;;
        --report-only)
            REPORT_ONLY=true
            shift
            ;;
        *)
            echo "Unknown option: $1"
            show_help
            exit 1
            ;;
    esac
done

echo "🚀 OCR SDK Production Readiness Test Suite"
echo "=========================================="
echo "Timestamp: $TIMESTAMP"
if [[ "$QUICK_MODE" == true ]]; then
    echo "Mode: Quick Test"
fi
if [[ "$REPORT_ONLY" == true ]]; then
    echo "Mode: Report Generation Only"
fi
echo ""

# Initialize report
cat > "$REPORT_FILE" << EOF
{
  "testSuite": "OCR SDK Production Readiness",
  "timestamp": "$TIMESTAMP",
  "quickMode": $QUICK_MODE,
  "reportOnly": $REPORT_ONLY,
  "tests": {},
  "summary": {},
  "recommendations": []
}
EOF

# Test execution tracking
declare -A TEST_STATUS
declare -A TEST_DURATION
TOTAL_TESTS=0
PASSED_TESTS=0
FAILED_TESTS=0
SKIPPED_TESTS=0

run_test_script() {
    local test_name="$1"
    local script_name="$2"
    local description="$3"
    local required="$4"  # true/false
    
    TOTAL_TESTS=$((TOTAL_TESTS + 1))
    
    echo "📋 Test: $description"
    echo "   Script: $script_name"
    
    if [[ "$REPORT_ONLY" == true ]]; then
        echo "   Status: SKIPPED (report-only mode)"
        TEST_STATUS["$test_name"]="SKIPPED"
        SKIPPED_TESTS=$((SKIPPED_TESTS + 1))
        return
    fi
    
    if [[ ! -f "$SCRIPT_DIR/$script_name" ]]; then
        echo "   Status: ❌ MISSING SCRIPT"
        TEST_STATUS["$test_name"]="MISSING"
        FAILED_TESTS=$((FAILED_TESTS + 1))
        return
    fi
    
    # Make script executable
    chmod +x "$SCRIPT_DIR/$script_name"
    
    # Run the test
    local start_time=$(date +%s)
    local exit_code=0
    
    if [[ "$QUICK_MODE" == true && "$script_name" == *"ttl_test.sh" ]]; then
        # Run token test in quick mode
        "$SCRIPT_DIR/$script_name" --quick || exit_code=$?
    elif [[ "$QUICK_MODE" == true && "$script_name" == *"ocr_test_runner.sh" ]]; then
        # Run OCR test with fewer iterations
        "$SCRIPT_DIR/$script_name" --count 10 || exit_code=$?
    elif [[ "$QUICK_MODE" == true && "$script_name" == *"perf_smoke.sh" ]]; then
        # Run performance test with fewer iterations
        "$SCRIPT_DIR/$script_name" --count 5 || exit_code=$?
    else
        # Run normal test
        "$SCRIPT_DIR/$script_name" || exit_code=$?
    fi
    
    local end_time=$(date +%s)
    local duration=$((end_time - start_time))
    TEST_DURATION["$test_name"]=$duration
    
    if [[ $exit_code -eq 0 ]]; then
        echo "   Status: ✅ PASSED (${duration}s)"
        TEST_STATUS["$test_name"]="PASSED"
        PASSED_TESTS=$((PASSED_TESTS + 1))
    elif [[ $exit_code -eq 2 ]]; then
        echo "   Status: ⚠️ WARNING (${duration}s)"
        TEST_STATUS["$test_name"]="WARNING"
        if [[ "$required" == true ]]; then
            FAILED_TESTS=$((FAILED_TESTS + 1))
        else
            PASSED_TESTS=$((PASSED_TESTS + 1))
        fi
    else
        echo "   Status: ❌ FAILED (${duration}s)"
        TEST_STATUS["$test_name"]="FAILED"
        FAILED_TESTS=$((FAILED_TESTS + 1))
        
        if [[ "$required" == true ]]; then
            echo "   ⚠️ This is a required test - overall result will be FAIL"
        fi
    fi
    
    echo ""
}

if [[ "$REPORT_ONLY" != true ]]; then
    echo "🔄 Running production readiness tests..."
    echo ""
    
    # Test 1: Device Capabilities
    run_test_script "device_check" "device_check.sh" "Device Capability Check" true
    
    # Test 2: Runtime Capabilities
    run_test_script "runtime_check" "run_capability_check.sh" "Runtime Capability Validation" true
    
    # Test 3: NFC Tests
    run_test_script "nfc_tests" "nfc_test_runner.sh" "NFC Functionality Tests" false
    
    # Test 4: OCR Tests
    run_test_script "ocr_tests" "ocr_test_runner.sh" "OCR Performance Tests" true
    
    # Test 5: Token Lifecycle
    run_test_script "token_tests" "token_ttl_test.sh" "Token Lifecycle Validation" true
    
    # Test 6: PII Scanning
    run_test_script "pii_scan" "scan_logs_for_pii.sh" "PII Log Scanning" true
    
    # Test 7: Performance Smoke
    run_test_script "perf_smoke" "perf_smoke.sh" "Performance Smoke Tests" true
    
    # Test 8: Smoke Tests
    run_test_script "smoke_tests" "smoke_test.sh" "Master Smoke Tests" true
    
    # Test 9: NFC Fallback
    run_test_script "nfc_fallback" "simulate_no_nfc.sh" "NFC Fallback Tests" false
    
    # Test 10: Camera Fallback
    run_test_script "camera_fallback" "simulate_camera_revoked.sh" "Camera Fallback Tests" false
    
    echo "🏁 All tests completed!"
    echo ""
fi

# Generate comprehensive report
echo "📊 Generating production readiness report..."

# Calculate success rate
if [[ $TOTAL_TESTS -gt 0 ]]; then
    SUCCESS_RATE=$(echo "scale=1; $PASSED_TESTS * 100 / $TOTAL_TESTS" | bc -l 2>/dev/null || echo "0")
else
    SUCCESS_RATE="0"
fi

# Determine overall result
OVERALL_RESULT="FAIL"
if [[ $FAILED_TESTS -eq 0 ]]; then
    OVERALL_RESULT="PASS"
elif [[ $PASSED_TESTS -gt $FAILED_TESTS ]]; then
    OVERALL_RESULT="PASS_WITH_WARNINGS"
fi

# Generate detailed report
cat > "$REPORT_FILE" << EOF
{
  "testSuite": "OCR SDK Production Readiness",
  "timestamp": "$TIMESTAMP",
  "quickMode": $QUICK_MODE,
  "reportOnly": $REPORT_ONLY,
  "tests": {
    "deviceCheck": {
      "name": "Device Capability Check",
      "status": "${TEST_STATUS[device_check]:-UNKNOWN}",
      "duration": ${TEST_DURATION[device_check]:-0},
      "required": true,
      "description": "Validates device meets minimum requirements"
    },
    "runtimeCheck": {
      "name": "Runtime Capability Validation",
      "status": "${TEST_STATUS[runtime_check]:-UNKNOWN}",
      "duration": ${TEST_DURATION[runtime_check]:-0},
      "required": true,
      "description": "Tests SDK capabilities through React Native bridge"
    },
    "nfcTests": {
      "name": "NFC Functionality Tests",
      "status": "${TEST_STATUS[nfc_tests]:-UNKNOWN}",
      "duration": ${TEST_DURATION[nfc_tests]:-0},
      "required": false,
      "description": "Comprehensive NFC PA/AA testing"
    },
    "ocrTests": {
      "name": "OCR Performance Tests",
      "status": "${TEST_STATUS[ocr_tests]:-UNKNOWN}",
      "duration": ${TEST_DURATION[ocr_tests]:-0},
      "required": true,
      "description": "OCR pipeline performance and memory validation"
    },
    "tokenTests": {
      "name": "Token Lifecycle Validation",
      "status": "${TEST_STATUS[token_tests]:-UNKNOWN}",
      "duration": ${TEST_DURATION[token_tests]:-0},
      "required": true,
      "description": "SecureStorage token TTL and one-time use enforcement"
    },
    "piiScan": {
      "name": "PII Log Scanning",
      "status": "${TEST_STATUS[pii_scan]:-UNKNOWN}",
      "duration": ${TEST_DURATION[pii_scan]:-0},
      "required": true,
      "description": "Scans logs for potential PII leakage"
    },
    "perfSmoke": {
      "name": "Performance Smoke Tests",
      "status": "${TEST_STATUS[perf_smoke]:-UNKNOWN}",
      "duration": ${TEST_DURATION[perf_smoke]:-0},
      "required": true,
      "description": "Quick performance validation"
    },
    "smokeTests": {
      "name": "Master Smoke Tests",
      "status": "${TEST_STATUS[smoke_tests]:-UNKNOWN}",
      "duration": ${TEST_DURATION[smoke_tests]:-0},
      "required": true,
      "description": "Comprehensive SDK functionality validation"
    },
    "nfcFallback": {
      "name": "NFC Fallback Tests",
      "status": "${TEST_STATUS[nfc_fallback]:-UNKNOWN}",
      "duration": ${TEST_DURATION[nfc_fallback]:-0},
      "required": false,
      "description": "Tests behavior when NFC is disabled"
    },
    "cameraFallback": {
      "name": "Camera Fallback Tests",
      "status": "${TEST_STATUS[camera_fallback]:-UNKNOWN}",
      "duration": ${TEST_DURATION[camera_fallback]:-0},
      "required": false,
      "description": "Tests behavior when camera permission is revoked"
    }
  },
  "summary": {
    "totalTests": $TOTAL_TESTS,
    "passedTests": $PASSED_TESTS,
    "failedTests": $FAILED_TESTS,
    "skippedTests": $SKIPPED_TESTS,
    "successRate": $SUCCESS_RATE,
    "overallResult": "$OVERALL_RESULT",
    "totalDuration": $(( $(date +%s) - $(date -d "$TIMESTAMP" +%s 2>/dev/null || echo "0") ))
  },
  "recommendations": [
$(if [[ $FAILED_TESTS -gt 0 ]]; then
    echo '    "Review and fix failed tests before production deployment",'
fi)
$(if [[ "${TEST_STATUS[nfc_tests]}" == "FAILED" ]]; then
    echo '    "NFC functionality issues detected - verify NFC chip compatibility",'
fi)
$(if [[ "${TEST_STATUS[pii_scan]}" == "WARNING" ]]; then
    echo '    "Potential PII found in logs - review and sanitize",'
fi)
$(if [[ "${TEST_STATUS[perf_smoke]}" == "FAILED" ]]; then
    echo '    "Performance issues detected - optimize before production",'
fi)
    "Run integration tests with real NFC chips before production",
    "Perform security audit with third-party vendor",
    "Test on multiple device models and Android versions"
  ]
}
EOF

echo ""
echo "📊 Production Readiness Test Results"
echo "===================================="
echo "  🧪 Total tests: $TOTAL_TESTS"
echo "  ✅ Passed: $PASSED_TESTS"
echo "  ❌ Failed: $FAILED_TESTS"
echo "  ⏭️ Skipped: $SKIPPED_TESTS"
echo "  📈 Success rate: ${SUCCESS_RATE}%"
echo "  🎯 Overall result: $OVERALL_RESULT"
echo ""

# Show test details
echo "📋 Test Details:"
for test_name in device_check runtime_check nfc_tests ocr_tests token_tests pii_scan perf_smoke smoke_tests nfc_fallback camera_fallback; do
    status="${TEST_STATUS[$test_name]:-UNKNOWN}"
    duration="${TEST_DURATION[$test_name]:-0}"
    
    case "$status" in
        "PASSED") icon="✅" ;;
        "FAILED") icon="❌" ;;
        "WARNING") icon="⚠️" ;;
        "SKIPPED") icon="⏭️" ;;
        *) icon="❓" ;;
    esac
    
    echo "  $icon $test_name: $status (${duration}s)"
done

echo ""
echo "📄 Detailed report saved to: $REPORT_FILE"
echo ""

# Final recommendations
if [[ "$OVERALL_RESULT" == "PASS" ]]; then
    echo "🎉 CONGRATULATIONS! SDK is production-ready"
    echo "✅ All critical tests passed"
    echo "🚀 Ready for deployment"
elif [[ "$OVERALL_RESULT" == "PASS_WITH_WARNINGS" ]]; then
    echo "⚠️ SDK is mostly ready with some warnings"
    echo "📋 Review warnings and consider fixes"
    echo "🚀 May proceed with caution"
else
    echo "❌ SDK is NOT production-ready"
    echo "🔧 Fix failed tests before deployment"
    echo "📋 Review detailed report for specific issues"
fi

echo ""
echo "📚 Next Steps:"
echo "1. Review detailed test results in individual output files"
echo "2. Fix any critical issues identified"
echo "3. Re-run tests after fixes"
echo "4. Perform integration testing with real hardware"
echo "5. Consider third-party security audit"

# Exit with appropriate code
case "$OVERALL_RESULT" in
    "PASS") exit 0 ;;
    "PASS_WITH_WARNINGS") exit 0 ;;
    *) exit 1 ;;
esac
