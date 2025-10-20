#!/usr/bin/env node

/**
 * Post-install script to fix React Native 0.74.7 LTS compatibility issues
 * This script patches node_modules after npm install
 */

const fs = require('fs');
const path = require('path');

console.log('🔧 Applying dependency fixes for React Native 0.74.7 LTS...\n');

// Fix 1: react-native-fs - Add namespace
const rnfsPath = path.join(__dirname, '../node_modules/react-native-fs/android/build.gradle');
if (fs.existsSync(rnfsPath)) {
  let content = fs.readFileSync(rnfsPath, 'utf8');
  if (!content.includes('namespace "com.rnfs"')) {
    content = content.replace(
      /android\s*\{/,
      'android {\n    namespace "com.rnfs"'
    );
    fs.writeFileSync(rnfsPath, content, 'utf8');
    console.log('✅ Fixed react-native-fs namespace');
  }
}

// Fix 2: react-native-text-recognition - Add namespace and update SDK versions
const textRecPath = path.join(__dirname, '../node_modules/react-native-text-recognition/android/build.gradle');
if (fs.existsSync(textRecPath)) {
  let content = fs.readFileSync(textRecPath, 'utf8');
  
  // Add namespace
  if (!content.includes('namespace "com.reactnativetextrecognition"')) {
    content = content.replace(
      /android\s*\{/,
      'android {\n    namespace "com.reactnativetextrecognition"'
    );
  }
  
  // Update SDK versions
  content = content.replace(
    /compileSdkVersion safeExtGet\('TextRecognition_compileSdkVersion', \d+\)/,
    "compileSdkVersion safeExtGet('TextRecognition_compileSdkVersion', 34)"
  );
  content = content.replace(
    /buildToolsVersion safeExtGet\('TextRecognition_buildToolsVersion', '[^']+'\)/,
    "buildToolsVersion safeExtGet('TextRecognition_buildToolsVersion', '34.0.0')"
  );
  content = content.replace(
    /minSdkVersion safeExtGet\('TextRecognition_minSdkVersion', \d+\)/,
    "minSdkVersion safeExtGet('TextRecognition_minSdkVersion', 21)"
  );
  content = content.replace(
    /targetSdkVersion safeExtGet\('TextRecognition_targetSdkVersion', \d+\)/,
    "targetSdkVersion safeExtGet('TextRecognition_targetSdkVersion', 34)"
  );
  
  fs.writeFileSync(textRecPath, content, 'utf8');
  console.log('✅ Fixed react-native-text-recognition namespace and SDK versions');
}

// Fix 3: react-native-camera - Add namespace
const rnCameraPath = path.join(__dirname, '../node_modules/react-native-camera/android/build.gradle');
if (fs.existsSync(rnCameraPath)) {
  let content = fs.readFileSync(rnCameraPath, 'utf8');
  if (!content.includes('namespace ')) {
    content = content.replace(
      /android\s*\{/,
      'android {\n    namespace "org.reactnative.camera"'
    );
    fs.writeFileSync(rnCameraPath, content, 'utf8');
    console.log('✅ Fixed react-native-camera namespace');
  }
}

// Fix 4: react-native-tts - Add namespace
const rnTtsPath = path.join(__dirname, '../node_modules/react-native-tts/android/build.gradle');
if (fs.existsSync(rnTtsPath)) {
  let content = fs.readFileSync(rnTtsPath, 'utf8');
  if (!content.includes('namespace ')) {
    content = content.replace(
      /android\s*\{/,
      'android {\n    namespace "net.no_mad.tts"'
    );
    fs.writeFileSync(rnTtsPath, content, 'utf8');
    console.log('✅ Fixed react-native-tts namespace');
  }
}

// Fix 5: @react-native-ml-kit/face-detection - Add namespace
const mlKitFacePath = path.join(__dirname, '../node_modules/@react-native-ml-kit/face-detection/android/build.gradle');
if (fs.existsSync(mlKitFacePath)) {
  let content = fs.readFileSync(mlKitFacePath, 'utf8');
  if (!content.includes('namespace ')) {
    content = content.replace(
      /android\s*\{/,
      'android {\n    namespace "com.reactnativemlkit.facedetection"'
    );
    fs.writeFileSync(mlKitFacePath, content, 'utf8');
    console.log('✅ Fixed @react-native-ml-kit/face-detection namespace');
  }
}

// Fix 6: Metro bundler middleware
const middlewarePath = path.join(__dirname, '../node_modules/@react-native/community-cli-plugin/dist/commands/start/middleware.js');
if (fs.existsSync(middlewarePath)) {
  let content = fs.readFileSync(middlewarePath, 'utf8');
  
  // Fix unusedMiddlewareStub
  if (content.includes('const unusedMiddlewareStub = {};')) {
    content = content.replace(
      'const unusedMiddlewareStub = {};',
      'const unusedMiddlewareStub = (req, res, next) => {\n  next();\n};'
    );
  }
  
  // Fix indexPageMiddleware import
  if (!content.includes('indexPage = require("@react-native-community/cli-server-api/build/indexPageMiddleware")')) {
    content = content.replace(
      /try \{\s*const community = require\("@react-native-community\/cli-server-api"\);[\s\S]*?communityMiddlewareFallback\.indexPageMiddleware =[\s\S]*?community\.indexPageMiddleware;[\s\S]*?communityMiddlewareFallback\.createDevServerMiddleware =[\s\S]*?community\.createDevServerMiddleware;[\s\S]*?\} catch[^{]*\{[\s\S]*?\}/,
      `try {
  const community = require("@react-native-community/cli-server-api");
  communityMiddlewareFallback.createDevServerMiddleware =
    community.createDevServerMiddleware;
  // indexPageMiddleware is not exported from cli-server-api, use fallback
  try {
    const indexPage = require("@react-native-community/cli-server-api/build/indexPageMiddleware");
    communityMiddlewareFallback.indexPageMiddleware = indexPage.default || indexPage;
  } catch (e) {
    // Keep using noopNextHandle fallback
    debug('Using fallback indexPageMiddleware');
  }
} catch (error) {
  console.error(\`⚠️ Unable to load @react-native-community/cli-server-api:\`, error.message);
  console.error(\`Starting the server without the community middleware.\`);
}`
    );
  }
  
  fs.writeFileSync(middlewarePath, content, 'utf8');
  console.log('✅ Fixed Metro bundler middleware');
}

// Fix 7: Metro runServer - Filter undefined middlewares
const runServerPath = path.join(__dirname, '../node_modules/@react-native/community-cli-plugin/dist/commands/start/runServer.js');
if (fs.existsSync(runServerPath)) {
  let content = fs.readFileSync(runServerPath, 'utf8');
  
  if (!content.includes('filter(m => m !== null && m !== undefined')) {
    content = content.replace(
      /unstable_extraMiddleware:\s*\[\s*communityMiddleware,\s*_middleware\.indexPageMiddleware,\s*middleware,\s*\]/,
      `unstable_extraMiddleware: [
      communityMiddleware,
      _middleware.indexPageMiddleware,
      middleware,
    ].filter(m => m !== null && m !== undefined && typeof m === 'function')`
    );
  }
  
  fs.writeFileSync(runServerPath, content, 'utf8');
  console.log('✅ Fixed Metro runServer middleware filtering');
}

console.log('\n✨ All dependency fixes applied successfully!\n');
