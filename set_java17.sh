#!/bin/bash
# Java 17 Environment Setup Script for React Native OCR Project

# Auto-detect Java 17 installation
if [ -d "/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home" ]; then
    export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
elif [ -d "/usr/lib/jvm/java-17-openjdk" ]; then
    export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
elif command -v java >/dev/null 2>&1; then
    # Use system Java if available
    JAVA_VERSION=$(java -version 2>&1 | head -n 1 | cut -d'"' -f2 | cut -d'.' -f1)
    if [ "$JAVA_VERSION" = "17" ]; then
        echo "✅ Using system Java 17"
    else
        echo "⚠️  Warning: System Java version is $JAVA_VERSION, but Java 17 is recommended"
    fi
else
    echo "❌ Java 17 not found. Please install Java 17."
    exit 1
fi

if [ -n "$JAVA_HOME" ]; then
    export PATH=$JAVA_HOME/bin:$PATH
    echo "✅ Java 17 Environment Set:"
    echo "JAVA_HOME: $JAVA_HOME"
fi

echo "Java Version: $(java -version 2>&1 | head -n 1)"

# Clean Gradle cache if needed
echo ""
echo "🧹 Cleaning Gradle cache..."
rm -rf ~/.gradle/daemon

# Gradle build with Java 17
echo ""
echo "🔨 Building React Native Android project with Java 17..."
cd android
./gradlew clean assembleDebug --stacktrace

echo ""
echo "📱 To run the app:"
echo "npx react-native run-android"
