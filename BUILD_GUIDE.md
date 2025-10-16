# 🤖 Automated Android Build System

## 📋 Overview

Fully automated, cross-platform build system for the OCR NFC SDK Android project. **No manual configuration required** - the system automatically handles:

- ✅ JDK detection and auto-download (if missing)
- ✅ Gradle Wrapper (no manual Gradle installation needed)
- ✅ Android SDK detection (optional for local builds)
- ✅ Cross-platform support (Windows, macOS, Linux)
- ✅ Production readiness testing
- ✅ Detailed logging and error reporting

---

## 🚀 Quick Start

### One-Command Build

**macOS/Linux:**
```bash
./build.sh
```

**Windows:**
```cmd
build.bat
```

That's it! The system will:
1. Auto-detect or download JDK 17
2. Use Gradle Wrapper (included)
3. Build debug APK
4. Output APK location

---

## 📱 Build Commands

### macOS/Linux

```bash
# Build debug APK
./build.sh

# Build and run tests
./build.sh test

# Clean build
./build.sh clean

# Run production readiness tests
./build.sh production
```

### Windows

```cmd
# Build debug APK
build.bat

# Build and run tests
build.bat test

# Clean build
build.bat clean

# Run production readiness tests
build.bat production
```

---

## 🧪 Production Testing

### Run All Tests

```bash
# macOS/Linux
./run_production_tests.sh

# Windows (with Git Bash or WSL)
bash run_production_tests.sh
```

### Quick Smoke Tests

```bash
./run_production_tests.sh --quick
```

### Device Tests Only

```bash
./run_production_tests.sh --device
```

### Test Coverage

The production test suite includes:

| Category | Tests | Description |
|----------|-------|-------------|
| **Device** | 2 | API level, NFC, Camera capability checks |
| **NFC** | 2 | Passive/Active Authentication validation |
| **OCR** | 1 | Performance and accuracy testing |
| **Security** | 2 | PII scanning, token lifecycle |
| **Performance** | 1 | Memory, CPU, latency benchmarks |
| **Fallbacks** | 2 | NFC disabled, camera revoked scenarios |
| **Smoke** | 1 | End-to-end integration test |

**Total**: 11 comprehensive tests

---

## 🔧 System Requirements

### Minimum Requirements

- **OS**: Windows 10+, macOS 10.14+, or Linux (Ubuntu 18.04+)
- **RAM**: 4GB (8GB recommended)
- **Disk**: 10GB free space
- **Internet**: Required for first build (downloads dependencies)

### Optional (Auto-Installed if Missing)

- **JDK**: 17+ (auto-downloaded by Gradle if not found)
- **Android SDK**: Only needed for local builds (CI/CD works without it)
- **Gradle**: Included as Gradle Wrapper (no manual installation)

---

## 🎯 How It Works

### 1. Java Toolchain Auto-Provisioning

The build system uses Gradle's Java Toolchain feature:

```gradle
java {
  toolchain {
    languageVersion = JavaLanguageVersion.of(17)
    vendor = JvmVendorSpec.ADOPTIUM  // Eclipse Temurin
  }
}
```

**What this means:**
- If JDK 17 is not found, Gradle automatically downloads it
- No need to set `JAVA_HOME` or modify `PATH`
- Works on all platforms

### 2. Gradle Wrapper

The project includes Gradle Wrapper (`gradlew`/`gradlew.bat`):

- **No manual Gradle installation needed**
- Automatically downloads correct Gradle version (8.6)
- Ensures consistent builds across all environments

### 3. Android SDK Handling

**Local Development:**
- If Android SDK is installed, it's automatically detected
- If not, build scripts provide clear instructions

**CI/CD:**
- GitHub Actions provides Android SDK automatically
- No local SDK needed for CI/CD builds

### 4. Cross-Platform Scripts

**Unix-like (macOS/Linux):**
- `build.sh` - Main build script
- `run_production_tests.sh` - Test runner
- Bash-based, POSIX-compliant

**Windows:**
- `build.bat` - Main build script
- Batch file with same functionality
- Works in Command Prompt or PowerShell

---

## 📦 Build Outputs

### APK Location

After successful build:

```
android/app/build/outputs/apk/debug/app-debug.apk
```

### Test Reports

```
android/app/build/reports/tests/
android/app/build/reports/jacoco/
test_results_YYYYMMDD_HHMMSS/
```

### Logs

Build logs are printed to console with color-coded output:
- 🔵 **INFO**: General information
- ✅ **SUCCESS**: Successful steps
- ⚠️ **WARNING**: Non-critical issues
- ❌ **ERROR**: Build failures

---

## 🔍 Troubleshooting

### Build Fails with "SDK location not found"

**Solution 1 (Recommended):** Use GitHub Actions
```bash
git push origin main
# Download APK from GitHub Actions artifacts
```

**Solution 2:** Install Android SDK
```bash
# macOS/Linux
export ANDROID_HOME=$HOME/Library/Android/sdk

# Windows
set ANDROID_HOME=C:\Users\%USERNAME%\AppData\Local\Android\Sdk
```

**Solution 3:** Create `local.properties`
```bash
# android/local.properties
sdk.dir=/path/to/android/sdk
```

### Java Version Issues

**The build system automatically handles this!**

If you see Java version warnings, ignore them - Gradle will download the correct JDK.

### Gradle Daemon Issues

```bash
# Kill all Gradle daemons
cd android
./gradlew --stop

# Rebuild
cd ..
./build.sh
```

### Permission Denied (macOS/Linux)

```bash
chmod +x build.sh run_production_tests.sh android/gradlew
```

---

## 🎓 Advanced Usage

### Custom Gradle Tasks

```bash
cd android

# List all tasks
./gradlew tasks

# Build release APK
./gradlew assembleRelease

# Run specific test
./gradlew test --tests "com.sdk.nfc.PassiveAuthenticationTest"

# Generate test coverage
./gradlew jacocoTestReport
```

### Environment Variables

```bash
# Set custom JDK (optional)
export JAVA_HOME=/path/to/jdk17

# Increase Gradle memory (if needed)
export GRADLE_OPTS="-Xmx6g"

# Enable Gradle build cache
export GRADLE_USER_HOME=$HOME/.gradle
```

### CI/CD Integration

The build system works seamlessly with GitHub Actions:

```yaml
- name: Build with Gradle
  working-directory: ./android
  run: ./gradlew assembleDebug --stacktrace
```

No additional configuration needed!

---

## 📊 Build Performance

### First Build
- **Time**: 3-5 minutes
- **Downloads**: ~500MB (dependencies + JDK if needed)
- **Disk**: ~2GB after build

### Incremental Builds
- **Time**: 30-60 seconds
- **Downloads**: None (cached)
- **Disk**: Minimal increase

### Optimization Tips

1. **Enable Gradle Daemon** (already enabled in `gradle.properties`)
2. **Use Build Cache** (already enabled)
3. **Parallel Builds** (already enabled)
4. **Increase Memory**: Edit `gradle.properties`
   ```properties
   org.gradle.jvmargs=-Xmx6g
   ```

---

## 🎯 Production Readiness Checklist

### Before Production Deployment

- [ ] Run `./build.sh production`
- [ ] All tests pass (success rate ≥ 95%)
- [ ] APK size < 50MB
- [ ] No security warnings
- [ ] Performance benchmarks meet targets
- [ ] Device compatibility validated
- [ ] CI/CD pipeline green

### Production Metrics Targets

| Metric | Target | Critical |
|--------|--------|----------|
| NFC PA Duration | < 2000ms | < 5000ms |
| NFC AA Duration | < 3000ms | < 8000ms |
| OCR Latency (P50) | < 2000ms | < 3000ms |
| Memory Overhead | < 50MB | < 100MB |
| Test Success Rate | ≥ 95% | ≥ 80% |

---

## 🤝 Contributing

### Adding New Tests

1. Create test script in `tools/`
2. Make it executable: `chmod +x tools/your_test.sh`
3. Add to `run_production_tests.sh`
4. Update this README

### Modifying Build Scripts

1. Test on all platforms (Windows, macOS, Linux)
2. Ensure backward compatibility
3. Update documentation
4. Submit PR with detailed description

---

## 📚 Additional Resources

- [Gradle Documentation](https://docs.gradle.org/current/userguide/userguide.html)
- [Android Build Guide](https://developer.android.com/studio/build)
- [Java Toolchains](https://docs.gradle.org/current/userguide/toolchains.html)
- [Production Test Guide](PRODUCTION_TEST_GUIDE.md)

---

## 🎉 Summary

This automated build system provides:

✅ **Zero Configuration** - Works out of the box  
✅ **Cross-Platform** - Windows, macOS, Linux  
✅ **Auto-Provisioning** - Downloads JDK if needed  
✅ **Production Ready** - Comprehensive test suite  
✅ **CI/CD Friendly** - GitHub Actions integration  
✅ **Developer Friendly** - Clear logs and error messages  

**One command to build. One command to test. Production ready.** 🚀
