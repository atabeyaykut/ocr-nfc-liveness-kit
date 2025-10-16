#!/bin/bash
###############################################################################
# Production Readiness Test Runner
# 
# Runs comprehensive tests for Android NFC SDK:
# - Device capability checks
# - NFC Passive/Active Authentication
# - OCR performance testing
# - Security compliance (PII scanning, token lifecycle)
# - Memory and performance benchmarks
# - Fallback scenario testing
#
# Usage:
#   ./run_production_tests.sh              # Run all tests
#   ./run_production_tests.sh --quick      # Run quick smoke tests
#   ./run_production_tests.sh --device     # Device tests only
###############################################################################

set -e

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

log_info() { echo -e "${BLUE}ℹ️  $1${NC}"; }
log_success() { echo -e "${GREEN}✅ $1${NC}"; }
log_warning() { echo -e "${YELLOW}⚠️  $1${NC}"; }
log_error() { echo -e "${RED}❌ $1${NC}"; }

# Header
echo "═══════════════════════════════════════════════════════════"
echo "  🧪 Production Readiness Test Suite"
echo "  📱 OCR NFC SDK - Comprehensive Validation"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Check if device is connected
log_info "Checking for connected Android device..."
if ! command -v adb &> /dev/null; then
    log_error "adb not found! Install Android SDK Platform Tools."
    exit 1
fi

DEVICE_COUNT=$(adb devices | grep -v "List" | grep "device$" | wc -l)
if [ "$DEVICE_COUNT" -eq 0 ]; then
    log_error "No Android device connected!"
    log_info "Connect a device and enable USB debugging."
    exit 1
fi

log_success "Device connected: $(adb devices | grep device$ | cut -f1)"

# Get test mode
TEST_MODE="${1:---all}"

# Test results directory
RESULTS_DIR="test_results_$(date +%Y%m%d_%H%M%S)"
mkdir -p "$RESULTS_DIR"

log_info "Test results will be saved to: $RESULTS_DIR"
echo ""

# Test counter
TOTAL_TESTS=0
PASSED_TESTS=0
FAILED_TESTS=0

run_test() {
    local test_name="$1"
    local test_script="$2"
    
    TOTAL_TESTS=$((TOTAL_TESTS + 1))
    log_info "Running: $test_name..."
    
    if [ -f "$test_script" ]; then
        if bash "$test_script" > "$RESULTS_DIR/${test_name}.log" 2>&1; then
            PASSED_TESTS=$((PASSED_TESTS + 1))
            log_success "$test_name - PASSED"
        else
            FAILED_TESTS=$((FAILED_TESTS + 1))
            log_error "$test_name - FAILED"
        fi
    else
        log_warning "$test_name - SKIPPED (script not found)"
    fi
}

# Run tests based on mode
case "$TEST_MODE" in
    --quick)
        log_info "Running quick smoke tests..."
        run_test "Device Check" "tools/device_check.sh"
        run_test "Smoke Test" "tools/smoke_test.sh"
        ;;
    
    --device)
        log_info "Running device capability tests..."
        run_test "Device Check" "tools/device_check.sh"
        run_test "Capability Check" "tools/run_capability_check.sh"
        ;;
    
    --all|*)
        log_info "Running comprehensive test suite..."
        
        # Device tests
        run_test "Device Check" "tools/device_check.sh"
        run_test "Capability Check" "tools/run_capability_check.sh"
        
        # NFC tests
        run_test "NFC Authentication" "tools/nfc_test_runner.sh"
        
        # OCR tests
        run_test "OCR Performance" "tools/ocr_test_runner.sh"
        
        # Security tests
        run_test "PII Scanning" "tools/scan_logs_for_pii.sh"
        run_test "Token Lifecycle" "tools/token_ttl_test.sh"
        
        # Performance tests
        run_test "Performance Smoke" "tools/perf_smoke.sh"
        
        # Fallback tests
        run_test "NFC Disabled Fallback" "tools/simulate_no_nfc.sh"
        run_test "Camera Revoked Fallback" "tools/simulate_camera_revoked.sh"
        
        # Final smoke test
        run_test "Master Smoke Test" "tools/smoke_test.sh"
        ;;
esac

# Summary
echo ""
echo "═══════════════════════════════════════════════════════════"
echo "  📊 Test Summary"
echo "═══════════════════════════════════════════════════════════"
echo ""
echo "Total Tests:  $TOTAL_TESTS"
echo "Passed:       $PASSED_TESTS"
echo "Failed:       $FAILED_TESTS"
echo ""

# Calculate success rate
if [ "$TOTAL_TESTS" -gt 0 ]; then
    SUCCESS_RATE=$((PASSED_TESTS * 100 / TOTAL_TESTS))
    echo "Success Rate: ${SUCCESS_RATE}%"
    echo ""
    
    if [ "$SUCCESS_RATE" -ge 95 ]; then
        log_success "🎉 PRODUCTION READY! All critical tests passed."
    elif [ "$SUCCESS_RATE" -ge 80 ]; then
        log_warning "⚠️  MOSTLY READY. Review failed tests."
    else
        log_error "❌ NOT READY. Multiple tests failed."
    fi
fi

echo ""
echo "Detailed logs: $RESULTS_DIR/"
echo ""

# Generate JSON report
cat > "$RESULTS_DIR/summary.json" << EOF
{
  "timestamp": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "total_tests": $TOTAL_TESTS,
  "passed": $PASSED_TESTS,
  "failed": $FAILED_TESTS,
  "success_rate": $SUCCESS_RATE,
  "production_ready": $([ "$SUCCESS_RATE" -ge 95 ] && echo "true" || echo "false")
}
EOF

log_success "Test report saved: $RESULTS_DIR/summary.json"

# Exit with appropriate code
[ "$FAILED_TESTS" -eq 0 ] && exit 0 || exit 1
