# Testing Guide - OCR Mobile SDK

This guide covers testing strategies, running tests, and CI/CD integration for the OCR Mobile SDK.

## 📋 Table of Contents

- [Test Structure](#test-structure)
- [Running Tests](#running-tests)
- [Test Coverage](#test-coverage)
- [CI/CD Integration](#cicd-integration)
- [Writing Tests](#writing-tests)
- [Best Practices](#best-practices)

---

## 🧪 Test Structure

### Unit Tests

Located in: `android/app/src/test/java/`

```
test/
├── com/sdk/nfc/
│   └── NfcSignatureValidatorTest.java (24 tests)
├── com/sdk/network/
│   └── SecureNetworkClientTest.java (25 tests)
└── com/sdk/utils/
    └── LogSanitizerTest.java (20 tests)
```

**Total Unit Tests:** 69  
**Target Coverage:** >= 80%  
**Current Coverage:** ~80%

### Test Categories

| Category | Tests | Coverage | Status |
|----------|-------|----------|--------|
| **NFC Authentication** | 24 | ~65% | 🟡 Good |
| **Network Security** | 25 | ~85% | 🟢 Excellent |
| **Log Sanitization** | 20 | ~90% | 🟢 Excellent |

---

## 🚀 Running Tests

### Prerequisites

```bash
# Install dependencies
npm install

# Ensure Gradle wrapper is executable
chmod +x android/gradlew
```

### Run All Tests

```bash
cd android
./gradlew test
```

### Run Specific Test Class

```bash
cd android
./gradlew test --tests com.sdk.nfc.NfcSignatureValidatorTest
```

### Run Specific Test Method

```bash
cd android
./gradlew test --tests com.sdk.nfc.NfcSignatureValidatorTest.testValidateWithPA_ValidData_Success
```

### Run Tests with Coverage

```bash
cd android
./gradlew test jacocoTestReport
```

Coverage reports will be generated at:
- **HTML:** `android/app/build/reports/jacoco/jacocoTestReport/html/index.html`
- **XML:** `android/app/build/reports/jacoco/jacocoTestReport/jacocoTestReport.xml`

---

## 📊 Test Coverage

### Viewing Coverage Reports

#### HTML Report (Recommended)

```bash
cd android
./gradlew jacocoTestReport
open app/build/reports/jacoco/jacocoTestReport/html/index.html
```

#### Command Line Summary

```bash
cd android
./gradlew test jacocoTestReport | grep "Total"
```

### Coverage Targets

| Module | Target | Current | Status |
|--------|--------|---------|--------|
| **NfcSignatureValidator** | 80% | ~65% | 🟡 Needs integration tests |
| **SecureNetworkClient** | 80% | ~85% | 🟢 Exceeds target |
| **LogSanitizer** | 90% | ~90% | 🟢 Meets target |
| **Overall** | 80% | ~80% | 🟢 Meets target |

### Improving Coverage

**NfcSignatureValidator** needs:
- Integration tests with real NFC chip
- Edge case tests for certificate validation
- Timeout and retry scenario tests

**Recommended:**
```bash
# Add integration tests
android/app/src/androidTest/java/com/sdk/nfc/NfcIntegrationTest.java
```

---

## 🔄 CI/CD Integration

### GitHub Actions Workflow

Located at: `.github/workflows/android-ci.yml`

**Triggers:**
- Push to `main`, `develop`, `feature/*`
- Pull requests to `main`, `develop`

**Jobs:**

#### 1. Build and Test
- Checkout code
- Set up JDK 17
- Install dependencies
- Build APK
- Run unit tests
- Generate coverage report
- Upload artifacts

#### 2. Lint Check
- Run Android Lint
- Upload lint results

#### 3. Security Scan
- Run Trivy vulnerability scanner
- Upload results to GitHub Security tab

### Viewing CI Results

**GitHub Actions:**
1. Go to repository → Actions tab
2. Select workflow run
3. View job logs and artifacts

**Artifacts:**
- `test-results` - JUnit XML test results
- `coverage-reports` - JaCoCo coverage reports
- `lint-results` - Android Lint HTML reports

### Pull Request Checks

All PRs must pass:
- ✅ Build successful
- ✅ All tests passing
- ✅ Coverage >= 80%
- ✅ No lint errors
- ✅ No security vulnerabilities

---

## ✍️ Writing Tests

### Test Structure

```java
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 28, manifest = Config.NONE)
public class MyModuleTest {
    
    private MyModule module;
    
    @Before
    public void setUp() {
        module = new MyModule();
    }
    
    @Test
    public void testFeature_ValidInput_Success() {
        // Given: Setup test data
        String input = "test";
        
        // When: Execute method
        String result = module.process(input);
        
        // Then: Verify result
        assertEquals("expected", result);
    }
}
```

### Test Naming Convention

```
test<MethodName>_<Scenario>_<ExpectedResult>
```

**Examples:**
- `testValidateWithPA_ValidData_Success`
- `testAddCertificatePin_NullDomain_ThrowsException`
- `testContainsPII_Email_ReturnsTrue`

### Mock Dependencies

```java
@Mock
private IsoDep mockIsoDep;

@Before
public void setUp() {
    MockitoAnnotations.initMocks(this);
    when(mockIsoDep.isConnected()).thenReturn(false);
}
```

### Test Categories

Use comments to organize tests:

```java
// ========== Validation Tests ==========

@Test
public void testValidation_ValidInput_Success() { }

// ========== Error Handling Tests ==========

@Test
public void testValidation_InvalidInput_ThrowsException() { }
```

---

## 📝 Best Practices

### 1. Test Independence

Each test should be independent and not rely on other tests:

```java
@Before
public void setUp() {
    // Reset state before each test
    client.clearAllPins();
}
```

### 2. Use Descriptive Names

```java
// ❌ Bad
@Test
public void test1() { }

// ✅ Good
@Test
public void testCleanupExpired_WithExpiredTokens_RemovesTokens() { }
```

### 3. Test Edge Cases

```java
@Test
public void testMask_NullString_ReturnsEmpty() { }

@Test
public void testMask_EmptyString_ReturnsEmpty() { }

@Test
public void testMask_VeryLongString_HandlesCorrectly() { }
```

### 4. Verify Error Handling

```java
@Test(expected = IllegalArgumentException.class)
public void testAddPin_NullDomain_ThrowsException() {
    client.addCertificatePin(null, "sha256/ABC");
}
```

### 5. Test Thread Safety

```java
@Test
public void testConcurrentAccess_ThreadSafe() throws InterruptedException {
    Thread[] threads = new Thread[10];
    for (int i = 0; i < 10; i++) {
        threads[i] = new Thread(() -> client.addPin("domain" + i, "hash"));
    }
    
    for (Thread t : threads) t.start();
    for (Thread t : threads) t.join();
    
    assertEquals(10, client.getPinCount());
}
```

### 6. Use Test Fixtures

```java
private static final String TEST_DOMAIN = "api.example.com";
private static final String TEST_HASH = "sha256/ABC...";

@Test
public void testWithFixture() {
    client.addPin(TEST_DOMAIN, TEST_HASH);
    assertTrue(client.hasPin(TEST_DOMAIN));
}
```

---

## 🐛 Debugging Tests

### Run Tests in Debug Mode

```bash
cd android
./gradlew test --debug
```

### View Detailed Test Output

```bash
cd android
./gradlew test --info
```

### Test Reports

After running tests, view HTML reports:

```bash
open android/app/build/reports/tests/testDebugUnitTest/index.html
```

---

## 📈 Continuous Improvement

### Coverage Goals

- **Short-term (1 month):** 80% overall coverage
- **Mid-term (3 months):** 85% overall coverage
- **Long-term (6 months):** 90% overall coverage

### Adding Integration Tests

Create integration test directory:

```bash
mkdir -p android/app/src/androidTest/java/com/sdk
```

Example integration test:

```java
@RunWith(AndroidJUnit4.class)
public class NfcIntegrationTest {
    
    @Test
    public void testRealNfcChip_ValidPassport_Success() {
        // Test with real NFC chip
    }
}
```

---

## 🔗 Related Documentation

- [IMPLEMENTATION_COMPLETE_TASKS_ABCDE.md](./IMPLEMENTATION_COMPLETE_TASKS_ABCDE.md) - Implementation details
- [IMPLEMENTATION_REPORT_TASKS_ABC.md](./IMPLEMENTATION_REPORT_TASKS_ABC.md) - Task A-C report
- [README.md](./README.md) - Project overview

---

## 📞 Support

For testing issues or questions:
1. Check test logs: `android/app/build/reports/tests/`
2. Review coverage reports: `android/app/build/reports/jacoco/`
3. Check CI logs: GitHub Actions tab

---

**Last Updated:** 2025-10-16  
**Version:** 1.0.0
