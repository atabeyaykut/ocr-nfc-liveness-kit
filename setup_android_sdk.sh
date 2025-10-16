#!/bin/bash
###############################################################################
# Android SDK Setup Script for macOS
# This script helps you set up Android SDK for local builds
###############################################################################

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

log_info() { echo -e "${BLUE}ℹ️  $1${NC}"; }
log_success() { echo -e "${GREEN}✅ $1${NC}"; }
log_warning() { echo -e "${YELLOW}⚠️  $1${NC}"; }
log_error() { echo -e "${RED}❌ $1${NC}"; }

echo "═══════════════════════════════════════════════════════════"
echo "  📱 Android SDK Setup for Local Builds"
echo "═══════════════════════════════════════════════════════════"
echo ""

# Check if Android SDK already exists
ANDROID_HOME_PATHS=(
    "$HOME/Library/Android/sdk"
    "/usr/local/share/android-sdk"
    "/opt/android-sdk"
)

SDK_FOUND=false
for path in "${ANDROID_HOME_PATHS[@]}"; do
    if [ -d "$path" ]; then
        log_success "Android SDK found at: $path"
        export ANDROID_HOME="$path"
        SDK_FOUND=true
        break
    fi
done

if [ "$SDK_FOUND" = false ]; then
    log_warning "Android SDK not found!"
    echo ""
    echo "To install Android SDK, you have 2 options:"
    echo ""
    echo "═══════════════════════════════════════════════════════════"
    echo "  Option 1: Android Studio (Recommended)"
    echo "═══════════════════════════════════════════════════════════"
    echo ""
    echo "1. Download Android Studio:"
    echo "   https://developer.android.com/studio"
    echo ""
    echo "2. Install and open Android Studio"
    echo ""
    echo "3. Click 'More Actions' → 'SDK Manager'"
    echo ""
    echo "4. Install these components:"
    echo "   ✅ Android SDK Platform 34"
    echo "   ✅ Android SDK Build-Tools 34.0.0"
    echo "   ✅ Android SDK Platform-Tools"
    echo "   ✅ Android SDK Command-line Tools"
    echo ""
    echo "5. Click 'Apply' and wait for download"
    echo ""
    echo "6. SDK will be installed at:"
    echo "   $HOME/Library/Android/sdk"
    echo ""
    echo "7. Run this script again to verify"
    echo ""
    echo "═══════════════════════════════════════════════════════════"
    echo "  Option 2: Command Line Tools (Advanced)"
    echo "═══════════════════════════════════════════════════════════"
    echo ""
    echo "1. Download Command Line Tools:"
    echo "   https://developer.android.com/studio#command-tools"
    echo ""
    echo "2. Extract to: $HOME/Library/Android/sdk/cmdline-tools/latest"
    echo ""
    echo "3. Run:"
    echo "   export ANDROID_HOME=$HOME/Library/Android/sdk"
    echo "   \$ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager --install \"platform-tools\" \"platforms;android-34\" \"build-tools;34.0.0\""
    echo ""
    echo "═══════════════════════════════════════════════════════════"
    echo ""
    
    # Open Android Studio download page
    read -p "Open Android Studio download page in browser? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        open "https://developer.android.com/studio"
        log_success "Browser opened. Download and install Android Studio."
    fi
    
    exit 1
fi

# SDK found, verify components
log_info "Verifying SDK components..."

REQUIRED_COMPONENTS=(
    "platforms/android-34"
    "build-tools/34.0.0"
    "platform-tools"
)

MISSING_COMPONENTS=()
for component in "${REQUIRED_COMPONENTS[@]}"; do
    if [ ! -d "$ANDROID_HOME/$component" ]; then
        MISSING_COMPONENTS+=("$component")
    fi
done

if [ ${#MISSING_COMPONENTS[@]} -eq 0 ]; then
    log_success "All required SDK components are installed!"
    echo ""
    log_info "SDK Location: $ANDROID_HOME"
    echo ""
    
    # Update local.properties
    LOCAL_PROPS="android/local.properties"
    echo "sdk.dir=$ANDROID_HOME" > "$LOCAL_PROPS"
    log_success "Updated $LOCAL_PROPS"
    echo ""
    
    # Test build
    log_info "Testing build..."
    echo ""
    cd android
    ./gradlew tasks --quiet > /dev/null 2>&1 && {
        log_success "Build system is ready!"
        echo ""
        echo "═══════════════════════════════════════════════════════════"
        echo "  ✅ Setup Complete!"
        echo "═══════════════════════════════════════════════════════════"
        echo ""
        echo "You can now build the APK:"
        echo ""
        echo "  cd android"
        echo "  ./gradlew assembleDebug"
        echo ""
        echo "Or use the build script:"
        echo ""
        echo "  ./build.sh"
        echo ""
    } || {
        log_warning "Build test failed. You may need to install additional components."
    }
else
    log_warning "Missing SDK components:"
    for component in "${MISSING_COMPONENTS[@]}"; do
        echo "  ❌ $component"
    done
    echo ""
    log_info "Open Android Studio → SDK Manager and install missing components"
fi
