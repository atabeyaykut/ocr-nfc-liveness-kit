#!/bin/bash
# Quick Android SDK installation via command-line tools

set -e

echo "📱 Installing Android SDK via Command Line Tools..."
echo ""

# Create SDK directory
SDK_DIR="$HOME/Library/Android/sdk"
mkdir -p "$SDK_DIR/cmdline-tools"

# Download command-line tools
echo "⬇️  Downloading Android Command Line Tools..."
cd /tmp
curl -o commandlinetools.zip https://dl.google.com/android/repository/commandlinetools-mac-11076708_latest.zip

echo "📦 Extracting..."
unzip -q commandlinetools.zip
mv cmdline-tools "$SDK_DIR/cmdline-tools/latest"
rm commandlinetools.zip

# Set environment
export ANDROID_HOME="$SDK_DIR"
export PATH="$PATH:$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools"

# Accept licenses
echo "📝 Accepting licenses..."
yes | $ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager --licenses

# Install required components
echo "📦 Installing SDK components..."
$ANDROID_HOME/cmdline-tools/latest/bin/sdkmanager \
    "platform-tools" \
    "platforms;android-34" \
    "build-tools;34.0.0"

# Update local.properties
echo "sdk.dir=$ANDROID_HOME" > "$HOME/Documents/GitHub/ocr/android/local.properties"

echo ""
echo "✅ Android SDK installed successfully!"
echo ""
echo "SDK Location: $ANDROID_HOME"
echo ""
echo "Add to your ~/.zshrc:"
echo "  export ANDROID_HOME=$ANDROID_HOME"
echo "  export PATH=\$PATH:\$ANDROID_HOME/cmdline-tools/latest/bin:\$ANDROID_HOME/platform-tools"
echo ""
echo "Now you can build:"
echo "  cd android"
echo "  ./gradlew assembleDebug"
