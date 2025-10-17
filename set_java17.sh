#!/bin/bash
# Java 17 Environment Setup Script for React Native OCR Project

export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-17.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH

echo "✅ Java 17 Environment Set:"
echo "JAVA_HOME: $JAVA_HOME"
echo "Java Version: $(java -version 2>&1 | head -n 1)"

# Gradle build with Java 17
echo ""
echo "🔨 Building React Native Android project with Java 17..."
cd android
./gradlew clean assembleDebug --stacktrace

echo ""
echo "📱 To run the app:"
echo "npx react-native run-android"
