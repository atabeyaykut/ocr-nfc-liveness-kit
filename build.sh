#!/bin/bash
###############################################################################
# Automated Android Build Script (macOS/Linux)
# 
# Features:
# - Auto-detects or downloads JDK 17
# - Uses Gradle Wrapper (no manual Gradle installation needed)
# - Cross-platform compatible
# - Provides detailed logging
# - Builds debug APK
#
# Usage:
#   ./build.sh                    # Build debug APK
#   ./build.sh test               # Build + run tests
#   ./build.sh clean              # Clean build
#   ./build.sh production         # Run production readiness tests
###############################################################################

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Logging functions
log_info() {
    echo -e "${BLUE}ℹ️  $1${NC}"
}

log_success() {
    echo -e "${GREEN}✅ $1${NC}"
}

log_warning() {
    echo -e "${YELLOW}⚠️  $1${NC}"
}

log_error() {
    echo -e "${RED}❌ $1${NC}"
}

# Print header
echo "═══════════════════════════════════════════════════════════"
echo "  🤖 Automated Android Build System"
echo "  📱 OCR NFC SDK - Production Ready Build"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Step 1: Check Java
log_info "Step 1/5: Checking Java installation..."
if command -v java &> /dev/null; then
    JAVA_VERSION=$(java -version 2>&1 | head -n 1 | cut -d'"' -f2 | cut -d'.' -f1)
    log_success "Java found: $(java -version 2>&1 | head -n 1)"
    
    if [ "$JAVA_VERSION" -lt 17 ]; then
        log_warning "Java version is less than 17. Gradle will auto-download JDK 17."
    fi
else
    log_warning "Java not found in PATH. Gradle will auto-download JDK 17."
fi

# Step 2: Check Gradle Wrapper
log_info "Step 2/5: Checking Gradle Wrapper..."
cd android
if [ -f "./gradlew" ]; then
    chmod +x ./gradlew
    log_success "Gradle Wrapper found and executable"
    
    # Get Gradle version
    GRADLE_VERSION=$(./gradlew --version | grep "Gradle" | cut -d' ' -f2)
    log_info "Gradle version: $GRADLE_VERSION"
else
    log_error "Gradle Wrapper not found!"
    exit 1
fi

# Step 3: Check Android SDK (optional - will use CI/CD if not found)
log_info "Step 3/5: Checking Android SDK..."
if [ -n "$ANDROID_HOME" ]; then
    log_success "ANDROID_HOME set: $ANDROID_HOME"
elif [ -f "local.properties" ]; then
    SDK_DIR=$(grep "sdk.dir" local.properties | cut -d'=' -f2)
    if [ -d "$SDK_DIR" ]; then
        log_success "Android SDK found in local.properties: $SDK_DIR"
    else
        log_warning "Android SDK not found. Build may fail locally."
        log_info "Tip: Install Android Studio or set ANDROID_HOME"
    fi
else
    log_warning "Android SDK not configured. Build may fail locally."
    log_info "Tip: Create android/local.properties with sdk.dir=/path/to/sdk"
fi

# Step 4: Build based on argument
BUILD_TYPE="${1:-debug}"

case "$BUILD_TYPE" in
    clean)
        log_info "Step 4/5: Cleaning build..."
        ./gradlew clean
        log_success "Clean complete!"
        ;;
    
    test)
        log_info "Step 4/5: Building and testing..."
        ./gradlew assembleDebug test --stacktrace
        log_success "Build and tests complete!"
        ;;
    
    production)
        log_info "Step 4/5: Running production readiness tests..."
        ./gradlew assembleDebug test jacocoTestReport --stacktrace
        
        # Run production test suite if available
        cd ..
        if [ -f "tools/run_all_tests.sh" ]; then
            log_info "Running comprehensive production tests..."
            bash tools/run_all_tests.sh --quick
        fi
        log_success "Production tests complete!"
        ;;
    
    debug|*)
        log_info "Step 4/5: Building debug APK..."
        ./gradlew assembleDebug --stacktrace
        log_success "Build complete!"
        ;;
esac

# Step 5: Locate APK
log_info "Step 5/5: Locating APK..."
APK_PATH=$(find app/build/outputs/apk/debug -name "*.apk" 2>/dev/null | head -n 1)

if [ -n "$APK_PATH" ]; then
    APK_SIZE=$(du -h "$APK_PATH" | cut -f1)
    log_success "APK created: $APK_PATH"
    log_info "APK size: $APK_SIZE"
    
    # Print installation command
    echo ""
    echo "═══════════════════════════════════════════════════════════"
    echo "  📦 Build Successful!"
    echo "═══════════════════════════════════════════════════════════"
    echo ""
    echo "📱 To install on device:"
    echo "   adb install $APK_PATH"
    echo ""
    echo "🧪 To run production tests:"
    echo "   ./build.sh production"
    echo ""
else
    log_warning "APK not found. Build may have failed."
fi

cd ..
log_success "All done! 🎉"
