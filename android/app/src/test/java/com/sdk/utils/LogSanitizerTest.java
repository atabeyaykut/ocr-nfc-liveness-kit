package com.sdk.utils;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

import static org.junit.Assert.*;

/**
 * Unit tests for LogSanitizer
 * 
 * Tests:
 * - PII detection
 * - Data masking
 * - Sanitization
 * - BuildConfig.DEBUG behavior
 * 
 * Coverage target: >= 90%
 * 
 * @author Mobile SDK Team
 */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 28, manifest = Config.NONE)
public class LogSanitizerTest {
    
    // ========== PII Detection Tests ==========
    
    @Test
    public void testContainsPII_TCNumber_ReturnsTrue() {
        // Given: Text with TC number
        String text = "TC No: 12345678901";
        
        // When: Check for PII
        boolean hasPII = LogSanitizer.containsPII(text);
        
        // Then: Should detect PII
        assertTrue(hasPII);
    }
    
    @Test
    public void testContainsPII_Email_ReturnsTrue() {
        // Given: Text with email
        String text = "Email: user@example.com";
        
        // When: Check for PII
        boolean hasPII = LogSanitizer.containsPII(text);
        
        // Then: Should detect PII
        assertTrue(hasPII);
    }
    
    @Test
    public void testContainsPII_Phone_ReturnsTrue() {
        // Given: Text with phone
        String text = "Phone: 5551234567";
        
        // When: Check for PII
        boolean hasPII = LogSanitizer.containsPII(text);
        
        // Then: Should detect PII
        assertTrue(hasPII);
    }
    
    @Test
    public void testContainsPII_CreditCard_ReturnsTrue() {
        // Given: Text with credit card
        String text = "Card: 4111-1111-1111-1111";
        
        // When: Check for PII
        boolean hasPII = LogSanitizer.containsPII(text);
        
        // Then: Should detect PII
        assertTrue(hasPII);
    }
    
    @Test
    public void testContainsPII_Token_ReturnsTrue() {
        // Given: Text with UUID token
        String text = "Token: 550e8400-e29b-41d4-a716-446655440000";
        
        // When: Check for PII
        boolean hasPII = LogSanitizer.containsPII(text);
        
        // Then: Should detect PII
        assertTrue(hasPII);
    }
    
    @Test
    public void testContainsPII_Password_ReturnsTrue() {
        // Given: Text with password keyword
        String text = "password=secret123";
        
        // When: Check for PII
        boolean hasPII = LogSanitizer.containsPII(text);
        
        // Then: Should detect PII
        assertTrue(hasPII);
    }
    
    @Test
    public void testContainsPII_CleanText_ReturnsFalse() {
        // Given: Text without PII
        String text = "Operation completed successfully";
        
        // When: Check for PII
        boolean hasPII = LogSanitizer.containsPII(text);
        
        // Then: Should not detect PII
        assertFalse(hasPII);
    }
    
    @Test
    public void testContainsPII_NullText_ReturnsFalse() {
        // When: Check null text
        boolean hasPII = LogSanitizer.containsPII(null);
        
        // Then: Should return false
        assertFalse(hasPII);
    }
    
    @Test
    public void testContainsPII_EmptyText_ReturnsFalse() {
        // When: Check empty text
        boolean hasPII = LogSanitizer.containsPII("");
        
        // Then: Should return false
        assertFalse(hasPII);
    }
    
    // ========== Masking Tests ==========
    
    @Test
    public void testMask_ValidString_MasksCorrectly() {
        // Given: String to mask
        String value = "1234567890";
        
        // When: Mask with 4 visible chars
        String masked = LogSanitizer.mask(value, 4);
        
        // Then: Should show first 4 chars + asterisks
        assertTrue(masked.startsWith("1234"));
        assertTrue(masked.contains("*"));
    }
    
    @Test
    public void testMask_ShortString_ReturnsAsterisks() {
        // Given: Short string
        String value = "123";
        
        // When: Mask with 4 visible chars
        String masked = LogSanitizer.mask(value, 4);
        
        // Then: Should return asterisks
        assertEquals("***", masked);
    }
    
    @Test
    public void testMask_NullString_ReturnsEmpty() {
        // When: Mask null
        String masked = LogSanitizer.mask(null, 4);
        
        // Then: Should return empty
        assertEquals("", masked);
    }
    
    @Test
    public void testMaskEmail_ValidEmail_MasksCorrectly() {
        // Given: Valid email
        String email = "user@example.com";
        
        // When: Mask email
        String masked = LogSanitizer.maskEmail(email);
        
        // Then: Should show first 2 chars + domain
        assertEquals("us***@example.com", masked);
    }
    
    @Test
    public void testMaskEmail_ShortEmail_MasksCorrectly() {
        // Given: Short email
        String email = "ab@example.com";
        
        // When: Mask email
        String masked = LogSanitizer.maskEmail(email);
        
        // Then: Should mask local part
        assertEquals("***@example.com", masked);
    }
    
    @Test
    public void testMaskEmail_InvalidEmail_ReturnsDefault() {
        // Given: Invalid email
        String email = "notanemail";
        
        // When: Mask email
        String masked = LogSanitizer.maskEmail(email);
        
        // Then: Should return default
        assertEquals("***@***.***", masked);
    }
    
    @Test
    public void testMaskPhone_ValidPhone_MasksCorrectly() {
        // Given: Valid phone
        String phone = "5551234567";
        
        // When: Mask phone
        String masked = LogSanitizer.maskPhone(phone);
        
        // Then: Should show last 4 digits
        assertEquals("******4567", masked);
    }
    
    @Test
    public void testMaskPhone_ShortPhone_ReturnsAsterisks() {
        // Given: Short phone
        String phone = "123";
        
        // When: Mask phone
        String masked = LogSanitizer.maskPhone(phone);
        
        // Then: Should return asterisks
        assertEquals("**********", masked);
    }
    
    @Test
    public void testMaskTCNo_ValidTC_MasksCorrectly() {
        // Given: Valid TC number
        String tcNo = "12345678901";
        
        // When: Mask TC
        String masked = LogSanitizer.maskTCNo(tcNo);
        
        // Then: Should show first 2 and last 2 digits
        assertEquals("12*******01", masked);
    }
    
    @Test
    public void testMaskTCNo_InvalidTC_ReturnsAsterisks() {
        // Given: Invalid TC (wrong length)
        String tcNo = "123456";
        
        // When: Mask TC
        String masked = LogSanitizer.maskTCNo(tcNo);
        
        // Then: Should return asterisks
        assertEquals("***********", masked);
    }
    
    // ========== Assert No PII Tests ==========
    
    @Test
    public void testAssertNoPII_CleanText_NoException() {
        // Given: Clean text
        String text = "Operation successful";
        
        // When/Then: Should not throw exception
        LogSanitizer.assertNoPII(text, "test");
    }
    
    @Test(expected = AssertionError.class)
    public void testAssertNoPII_TextWithPII_ThrowsException() {
        // Given: Text with PII
        String text = "TC: 12345678901";
        
        // When/Then: Should throw AssertionError
        LogSanitizer.assertNoPII(text, "test");
    }
    
    // ========== Integration Tests ==========
    
    @Test
    public void testLogMethods_DoNotThrowException() {
        // When: Call all log methods
        LogSanitizer.d("TEST", "Debug message");
        LogSanitizer.i("TEST", "Info message");
        LogSanitizer.w("TEST", "Warning message");
        LogSanitizer.e("TEST", "Error message");
        LogSanitizer.v("TEST", "Verbose message");
        LogSanitizer.sensitive("TEST", "Sensitive message");
        LogSanitizer.security("TEST", "Security message");
        LogSanitizer.performance("TEST", "operation", 100L);
        
        // Then: Should not throw any exceptions
        // (actual logging behavior depends on BuildConfig.DEBUG)
    }
    
    @Test
    public void testLogMethods_WithThrowable_DoNotThrowException() {
        // Given: Exception
        Exception ex = new Exception("Test exception");
        
        // When: Call log methods with throwable
        LogSanitizer.w("TEST", "Warning with exception", ex);
        LogSanitizer.e("TEST", "Error with exception", ex);
        
        // Then: Should not throw any exceptions
    }
    
    // ========== Edge Cases ==========
    
    @Test
    public void testContainsPII_MultipleTypes_ReturnsTrue() {
        // Given: Text with multiple PII types
        String text = "User: user@example.com, Phone: 5551234567, TC: 12345678901";
        
        // When: Check for PII
        boolean hasPII = LogSanitizer.containsPII(text);
        
        // Then: Should detect PII
        assertTrue(hasPII);
    }
    
    @Test
    public void testMask_ZeroVisibleChars_WorksCorrectly() {
        // Given: String to mask
        String value = "secret";
        
        // When: Mask with 0 visible chars
        String masked = LogSanitizer.mask(value, 0);
        
        // Then: Should mask entire string
        assertTrue(masked.contains("*"));
        assertFalse(masked.contains("secret"));
    }
}
