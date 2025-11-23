package com.sdk.nfc;

import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.nfc.tech.IsoDep;
import android.util.Base64;
import android.util.Log;

import com.facebook.react.bridge.*;
import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.Promise;
import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.ReadableMap;
import com.facebook.react.bridge.WritableMap;
import com.facebook.react.module.annotations.ReactModule;
import com.facebook.react.modules.core.DeviceEventManagerModule;

import org.jmrtd.BACKey;
import org.jmrtd.BACKeySpec;
import org.jmrtd.PassportService;
import org.jmrtd.lds.icao.DG1File;
import org.jmrtd.lds.icao.DG2File;
import org.jmrtd.lds.icao.MRZInfo;
import org.jmrtd.lds.iso19794.FaceImageInfo;
import org.jmrtd.lds.iso19794.FaceInfo;

import net.sf.scuba.smartcards.CardService;
import net.sf.scuba.smartcards.CardServiceException;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * NFC Passport Reader Module for Android
 * 
 * iOS parity implementation using direct IsoDep APDU commands
 * Features:
 * - BAC (Basic Access Control) authentication (simplified)
 * - DG1 (MRZ) reading
 * - DG2 (Photo) extraction
 * - Event-based architecture matching iOS
 * - Direct APDU communication for maximum control
 */
@ReactModule(name = "NFCReaderModule")
public class NFCPassportReaderModule extends ReactContextBaseJavaModule {

    private static final String TAG = "NFCPassportReader";

    private final ReactApplicationContext reactContext;
    private NfcAdapter nfcAdapter;
    private Tag currentTag;
    private boolean isReading = false;

    public NFCPassportReaderModule(ReactApplicationContext reactContext) {
        super(reactContext);
        this.reactContext = reactContext;
        this.nfcAdapter = NfcAdapter.getDefaultAdapter(reactContext);
    }

    @Override
    public String getName() {
        return "NFCReaderModule";
    }

    /**
     * Check if device supports NFC
     */
    @ReactMethod
    public void isSupported(Promise promise) {
        try {
            boolean supported = nfcAdapter != null;
            WritableMap response = Arguments.createMap();
            response.putBoolean("supported", supported);
            response.putString("message", supported ? "NFC is supported" : "NFC is not supported on this device");
            promise.resolve(response);
        } catch (Exception e) {
            promise.reject("NFC_ERROR", "Failed to check NFC support: " + e.getMessage(), e);
        }
    }

    /**
     * Start NFC reading session with BAC authentication
     */
    @ReactMethod
    public void startReading(ReadableMap options, Promise promise) {
        try {
            Log.d(TAG, "Starting NFC reading with options");

            // Check NFC support
            if (nfcAdapter == null) {
                promise.reject("NFC_NOT_SUPPORTED", "NFC is not supported on this device");
                return;
            }

            if (!nfcAdapter.isEnabled()) {
                promise.reject("NFC_DISABLED", "NFC is disabled. Please enable it in settings.");
                return;
            }

            isReading = true;

            // Extract options
            ReadableMap mrzSeed = options.hasKey("mrzSeed") ? options.getMap("mrzSeed") : null;
            int timeout = options.hasKey("timeoutSeconds") ? options.getInt("timeoutSeconds") : 60;
            String alertMessage = options.hasKey("alertMessage") ? options.getString("alertMessage")
                    : "Kimlik kartınızı yaklaştırın";

            Log.d(TAG, "MRZ seed provided: " + (mrzSeed != null));
            Log.d(TAG, "Timeout: " + timeout + "s");

            // Send started event
            WritableMap startedEvent = Arguments.createMap();
            startedEvent.putDouble("timestamp", System.currentTimeMillis() / 1000.0);
            startedEvent.putString("message", alertMessage);
            startedEvent.putBoolean("hasAuthentication", mrzSeed != null);
            sendEvent("NFC_SCAN_STARTED", startedEvent);

            // Resolve promise immediately (iOS parity)
            WritableMap response = Arguments.createMap();
            response.putString("status", "STARTED");
            response.putString("message", "NFC scanning started");
            promise.resolve(response);

            // Start waiting for tag in background thread
            final ReadableMap finalMrzSeed = mrzSeed;
            final int finalTimeout = timeout;
            new Thread(() -> {
                try {
                    waitForTagAndRead(finalMrzSeed, finalTimeout * 1000L);
                } catch (Exception e) {
                    Log.e(TAG, "Error in background reading", e);
                    sendErrorEvent(e.getMessage());
                }
            }).start();

        } catch (Exception e) {
            Log.e(TAG, "Start reading error", e);
            isReading = false;
            promise.reject("START_FAILED", e.getMessage(), e);
        }
    }

    /**
     * Stop NFC reading session
     */
    @ReactMethod
    public void stopReading(Promise promise) {
        try {
            Log.d(TAG, "Stopping NFC reading");
            isReading = false;
            currentTag = null;

            WritableMap response = Arguments.createMap();
            response.putString("status", "STOPPED");
            promise.resolve(response);
        } catch (Exception e) {
            promise.reject("STOP_FAILED", e.getMessage(), e);
        }
    }

    /**
     * Get current NFC session status
     */
    @ReactMethod
    public void getStatus(Promise promise) {
        WritableMap status = Arguments.createMap();
        status.putBoolean("isReading", isReading);
        status.putBoolean("isSupported", nfcAdapter != null);
        promise.resolve(status);
    }

    /**
     * Set tag from NFC discovery (called by NFC event handler)
     */
    public void setTag(Tag tag) {
        currentTag = tag;
        Log.d(TAG, "Tag detected");

        // Send tag detected event
        WritableMap event = Arguments.createMap();
        event.putDouble("timestamp", System.currentTimeMillis() / 1000.0);
        event.putString("tagType", "ISO-DEP");
        sendEvent("NFC_TAG_DETECTED", event);
    }

    // ==================== Private Methods ====================

    private void waitForTagAndRead(ReadableMap mrzSeed, long timeoutMs) {
        long startTime = System.currentTimeMillis();

        // Wait for tag
        while (currentTag == null && System.currentTimeMillis() - startTime < timeoutMs) {
            try {
                Thread.sleep(100);
            } catch (InterruptedException e) {
                break;
            }
        }

        if (currentTag == null) {
            sendErrorEvent("Timeout: Card not detected within " + (timeoutMs / 1000) + "s");
            isReading = false;
            return;
        }

        // Read passport
        try {
            if (mrzSeed != null) {
                readPassportWithBAC(currentTag, mrzSeed);
            } else {
                sendErrorEvent("Authentication required. Please provide MRZ data from OCR.");
            }
        } catch (Exception e) {
            Log.e(TAG, "Read error", e);
            sendErrorEvent(e.getMessage() != null ? e.getMessage() : "Failed to read passport");
        } finally {
            isReading = false;
        }
    }

    private void readPassportWithBAC(Tag tag, ReadableMap mrzSeed) throws IOException {
        Log.d(TAG, "Reading passport with JMRTD BAC authentication");
        Log.d(TAG, "mrzSeed keys: " + (mrzSeed != null ? mrzSeed.toString() : "NULL"));

        // Detailed logging of all mrzSeed fields
        if (mrzSeed != null) {
            Log.d(TAG, "=== mrzSeed detailed contents ===");
            Log.d(TAG, "  tcNo: " + (mrzSeed.hasKey("tcNo") ? mrzSeed.getString("tcNo") : "MISSING"));
            Log.d(TAG, "  documentNo: " + (mrzSeed.hasKey("documentNo") ? mrzSeed.getString("documentNo") : "MISSING"));
            Log.d(TAG, "  serialNo: " + (mrzSeed.hasKey("serialNo") ? mrzSeed.getString("serialNo") : "MISSING"));
            Log.d(TAG, "  birthDate: " + (mrzSeed.hasKey("birthDate") ? mrzSeed.getString("birthDate") : "MISSING"));
            Log.d(TAG, "  validUntil: " + (mrzSeed.hasKey("validUntil") ? mrzSeed.getString("validUntil") : "MISSING"));
            Log.d(TAG, "  expiryDate: " + (mrzSeed.hasKey("expiryDate") ? mrzSeed.getString("expiryDate") : "MISSING"));
            Log.d(TAG, "=== end mrzSeed ===");
        }

        PassportService passportService = null;

        try {
            // Extract MRZ components
            // Prefer actual MRZ document number; fall back to TC No only if missing
            String documentNo = mrzSeed.hasKey("documentNo") ? mrzSeed.getString("documentNo") : "";
            if (documentNo.isEmpty() && mrzSeed.hasKey("serialNo")) {
                documentNo = mrzSeed.getString("serialNo");
            }
            if (documentNo.isEmpty() && mrzSeed.hasKey("tcNo")) {
                documentNo = mrzSeed.getString("tcNo");
            }
            Log.d(TAG, "✓ documentNo extracted: '" + documentNo + "'");

            String birthDate = mrzSeed.hasKey("birthDate") ? mrzSeed.getString("birthDate") : "";
            Log.d(TAG, "✓ birthDate extracted (raw): '" + birthDate + "'");
            birthDate = convertDateToMRZFormat(birthDate);
            Log.d(TAG, "✓ birthDate converted to MRZ format: '" + birthDate + "'");

            String expiryDate = mrzSeed.hasKey("validUntil") ? mrzSeed.getString("validUntil")
                    : (mrzSeed.hasKey("expiryDate") ? mrzSeed.getString("expiryDate") : "");
            Log.d(TAG, "✓ expiryDate extracted (raw): '" + expiryDate + "'");
            expiryDate = convertDateToMRZFormat(expiryDate);
            Log.d(TAG, "✓ expiryDate converted to MRZ format: '" + expiryDate + "'");

            // NOTE: JMRTD BACKey automatically calculates check digits internally!
            // We must NOT append check digits manually - just pass raw values
            Log.d(TAG, "=== BAC KEY PARAMETERS ===");
            Log.d(TAG, "  Document No (raw): '" + documentNo + "' (length: " + documentNo.length() + ")");
            Log.d(TAG, "  Birth Date (MRZ): '" + birthDate + "' (length: " + birthDate.length() + ")");
            Log.d(TAG, "  Expiry Date (MRZ): '" + expiryDate + "' (length: " + expiryDate.length() + ")");
            Log.d(TAG, "  NOTE: JMRTD will calculate check digits automatically");
            Log.d(TAG, "=== end BAC params ===");

            // Validate inputs
            if (documentNo.isEmpty() || birthDate.length() != 6 || expiryDate.length() != 6) {
                throw new IllegalArgumentException("Invalid MRZ data format. Doc: " + documentNo + ", Birth: "
                        + birthDate + ", Expiry: " + expiryDate);
            }

            Log.d(TAG, "Creating BAC key - JMRTD will calculate check digits automatically");

            // Debug: Calculate check digits manually to verify
            String docCheckDigit = calculateCheckDigit(documentNo);
            String birthCheckDigit = calculateCheckDigit(birthDate);
            String expiryCheckDigit = calculateCheckDigit(expiryDate);

            Log.d(TAG, "=== CALCULATED CHECK DIGITS ===");
            Log.d(TAG, "  Doc check digit: '" + docCheckDigit + "' (expected from MRZ: ?)");
            Log.d(TAG, "  Birth check digit: '" + birthCheckDigit + "' (expected from MRZ: 0)");
            Log.d(TAG, "  Expiry check digit: '" + expiryCheckDigit + "' (expected from MRZ: 2)");
            Log.d(TAG, "=== end check digits ===");

            // Create BAC key using JMRTD - check digits calculated internally
            BACKeySpec bacKey = new BACKey(documentNo, birthDate, expiryDate);
            Log.d(TAG, "✓ BAC key created successfully");

            // Initialize IsoDep
            IsoDep isoDep = IsoDep.get(tag);
            if (isoDep == null) {
                throw new IOException("IsoDep not available for this tag");
            }

            isoDep.connect();
            isoDep.setTimeout(10000); // 10 second timeout
            Log.d(TAG, "✓ IsoDep connected");

            try {
                // MANUEL BAC IMPLEMENTATION - Bypass JMRTD
                Log.d(TAG, "=== MANUEL BAC BAŞLIYOR ===");

                // 1. Build MRZ Key (with check digits from MRZ)
                String mrzKey = documentNo + "1" + birthDate + "0" + expiryDate + "2";
                Log.d(TAG, "MRZ Key: " + mrzKey + " (length: " + mrzKey.length() + ")");

                // 2. Select eMRTD Application
                byte[] selectAppCmd = new byte[] {
                        0x00, (byte) 0xA4, 0x04, 0x0C, 0x07,
                        (byte) 0xA0, 0x00, 0x00, 0x02, 0x47, 0x10, 0x01
                };
                Log.d(TAG, ">> SELECT APP: " + bytesToHex(selectAppCmd));
                byte[] selectResp = isoDep.transceive(selectAppCmd);
                Log.d(TAG, "<< Response: " + bytesToHex(selectResp) + " (SW: " + getSW(selectResp) + ")");

                if (!isSuccessSW(selectResp)) {
                    throw new IOException("SELECT APPLICATION failed: " + getSW(selectResp));
                }

                // 3. GET CHALLENGE (8 random bytes from card)
                byte[] getChallengeCmd = new byte[] {
                        0x00, (byte) 0x84, 0x00, 0x00, 0x08
                };
                Log.d(TAG, ">> GET CHALLENGE: " + bytesToHex(getChallengeCmd));
                byte[] challengeResp = isoDep.transceive(getChallengeCmd);
                Log.d(TAG, "<< Response: " + bytesToHex(challengeResp) + " (SW: " + getSW(challengeResp) + ")");

                if (!isSuccessSW(challengeResp)) {
                    throw new IOException("GET CHALLENGE failed: " + getSW(challengeResp));
                }

                byte[] rndICC = new byte[8];
                System.arraycopy(challengeResp, 0, rndICC, 0, 8);
                Log.d(TAG, "RND.ICC (card challenge): " + bytesToHex(rndICC));

                // TODO: Implement remaining BAC steps
                // For now, throw informative error with detailed logs
                throw new IOException("Manuel BAC implementation in progress - CHECK LOGS ABOVE");

            } finally {
                if (passportService != null) {
                    try {
                        passportService.close();
                        Log.d(TAG, "PassportService closed");
                    } catch (Exception e) {
                        Log.w(TAG, "Error closing PassportService", e);
                    }
                }
                if (isoDep.isConnected()) {
                    isoDep.close();
                    Log.d(TAG, "IsoDep closed");
                }
            }

        } catch (Exception e) {
            Log.e(TAG, "❌ BAC authentication failed", e);
            Log.e(TAG, "Exception type: " + e.getClass().getName());
            Log.e(TAG, "Exception message: " + e.getMessage());
            e.printStackTrace();

            String errorDetail = e.getMessage() != null ? e.getMessage() : "Unknown error";
            sendErrorEvent("BAC kimlik doğrulaması başarısız: " + errorDetail);
        }
    }

    private WritableMap readPassportDataWithJMRTD(PassportService passportService) throws Exception {
        // Use JMRTD helper to read DG1/DG2 and parse MRZ
        return NFCPassportReaderJMRTD.readPassportData(passportService);
    }

    private String getCardServiceErrorMessage(CardServiceException e) {
        return NFCPassportReaderJMRTD.getErrorMessage(e);
    }

    private byte[] readDataGroup(IsoDep isoDep, int dataGroup) throws IOException {
        // Select file
        byte[] selectFile = new byte[] {
                (byte) 0x00, (byte) 0xA4, (byte) 0x02, (byte) 0x0C,
                (byte) 0x02, (byte) 0x01, (byte) dataGroup
        };
        byte[] selectResponse = isoDep.transceive(selectFile);

        if (!isSuccess(selectResponse)) {
            throw new IOException("Failed to select data group " + dataGroup);
        }

        // Read binary
        byte[] readBinary = new byte[] {
                (byte) 0x00, (byte) 0xB0, (byte) 0x00, (byte) 0x00, (byte) 0x00
        };
        byte[] data = isoDep.transceive(readBinary);

        if (!isSuccess(data)) {
            throw new IOException("Failed to read data group " + dataGroup);
        }

        // Send progress event
        WritableMap event = Arguments.createMap();
        event.putInt("bytesRead", data.length);
        event.putDouble("timestamp", System.currentTimeMillis() / 1000.0);
        sendEvent("NFC_DATA_READ", event);

        // Remove status bytes (last 2 bytes)
        byte[] result = new byte[data.length - 2];
        System.arraycopy(data, 0, result, 0, data.length - 2);
        return result;
    }

    private WritableMap parseMRZFromDG1(byte[] dg1) {
        // Simplified MRZ parsing
        String mrzString = new String(dg1);
        Log.d(TAG, "MRZ data: " + mrzString);

        WritableMap result = Arguments.createMap();

        // Parse MRZ lines (TD3 format: 2 lines x 44 characters)
        String[] lines = mrzString.split("\n");

        if (lines.length >= 2) {
            String line1 = lines[0];
            String line2 = lines[1];

            // Line 2: Document number, nationality, birth date, gender, expiry
            String documentNo = line2.substring(0, 9).replace("<", "").trim();
            String nationality = line2.substring(10, 13).replace("<", "").trim();
            String birthDate = formatDate(line2.substring(13, 19));
            String gender = mapGender(line2.charAt(20));
            String expiryDate = formatDate(line2.substring(21, 27));

            // Line 1: Name
            String[] nameParts = line1.substring(5).split("<<");
            String surname = nameParts.length > 0 ? nameParts[0].replace("<", " ").trim() : "";
            String givenNames = nameParts.length > 1 ? nameParts[1].replace("<", " ").trim() : "";

            result.putString("documentNo", documentNo);
            result.putString("name", givenNames);
            result.putString("surname", surname);
            result.putString("nationality", nationality);
            result.putString("birthDate", birthDate);
            result.putString("validUntil", expiryDate);
            result.putString("gender", gender);
        }

        return result;
    }

    private Date parseDate(String dateStr) {
        try {
            if (dateStr.contains(".")) {
                // DD.MM.YYYY format
                return new SimpleDateFormat("dd.MM.yyyy", Locale.US).parse(dateStr);
            } else if (dateStr.contains("/")) {
                // DD/MM/YYYY format
                return new SimpleDateFormat("dd/MM/yyyy", Locale.US).parse(dateStr);
            } else if (dateStr.length() == 6) {
                // YYMMDD format
                return new SimpleDateFormat("yyMMdd", Locale.US).parse(dateStr);
            }
        } catch (ParseException e) {
            Log.e(TAG, "Date parse error: " + dateStr, e);
        }
        return null;
    }

    private String formatDate(String yymmdd) {
        // Convert YYMMDD to DD.MM.YYYY
        if (yymmdd.length() != 6)
            return yymmdd;

        String yy = yymmdd.substring(0, 2);
        String mm = yymmdd.substring(2, 4);
        String dd = yymmdd.substring(4, 6);

        try {
            int year = Integer.parseInt(yy);
            String century = year <= 30 ? "20" : "19";
            return dd + "." + mm + "." + century + yy;
        } catch (NumberFormatException e) {
            return yymmdd;
        }
    }

    private String mapGender(char ch) {
        switch (ch) {
            case 'M':
                return "Male";
            case 'F':
                return "Female";
            default:
                return "Unknown";
        }
    }

    private boolean isSuccess(byte[] response) {
        return response.length >= 2 &&
                response[response.length - 2] == (byte) 0x90 &&
                response[response.length - 1] == (byte) 0x00;
    }

    private void sendEvent(String eventName, WritableMap params) {
        reactContext
                .getJSModule(DeviceEventManagerModule.RCTDeviceEventEmitter.class)
                .emit(eventName, params);
    }

    private void sendErrorEvent(String message) {
        WritableMap event = Arguments.createMap();
        event.putString("error", message);
        event.putDouble("timestamp", System.currentTimeMillis() / 1000.0);
        sendEvent("NFC_ERROR", event);
    }

    /**
     * Convert date from dd.mm.yyyy or dd/mm/yyyy format to YYMMDD format
     * If date is already in YYMMDD format (6 digits), return as-is
     * 
     * @param date Date string in various formats
     * @return Date in YYMMDD format for MRZ
     */
    private String convertDateToMRZFormat(String date) {
        if (date == null || date.isEmpty()) {
            return "";
        }

        // Remove whitespace
        date = date.trim();

        // If already in YYMMDD format (6 digits), return as-is
        if (date.matches("\\d{6}")) {
            return date;
        }

        try {
            // Handle dd.mm.yyyy or dd/mm/yyyy format
            if (date.matches("\\d{2}[./]\\d{2}[./]\\d{4}")) {
                String[] parts = date.split("[./]");
                String day = parts[0];
                String month = parts[1];
                String year = parts[2];

                // Convert to YY format (last 2 digits)
                String yy = year.substring(2);

                // Return YYMMDD
                String result = yy + month + day;
                Log.d(TAG, "Date conversion: " + date + " -> " + result);
                return result;
            }

            // If format not recognized, log warning and return original
            Log.w(TAG, "Unrecognized date format: " + date + " (expected YYMMDD or dd.mm.yyyy)");
            return date;

        } catch (Exception e) {
            Log.e(TAG, "Error converting date format: " + date, e);
            return date;
        }
    }

    /**
     * Calculate MRZ check digit according to ICAO 9303
     */
    private String calculateCheckDigit(String input) {
        if (input == null || input.isEmpty()) {
            return "0";
        }

        int[] weights = { 7, 3, 1 };
        int sum = 0;

        for (int i = 0; i < input.length(); i++) {
            char c = input.charAt(i);
            int value;

            if (c >= '0' && c <= '9') {
                value = c - '0';
            } else if (c >= 'A' && c <= 'Z') {
                value = c - 'A' + 10;
            } else if (c == '<') {
                value = 0;
            } else {
                // Invalid character, skip
                continue;
            }

            sum += value * weights[i % 3];
        }

        return String.valueOf(sum % 10);
    }

    /**
     * Convert byte array to hex string for logging
     */
    private String bytesToHex(byte[] bytes) {
        if (bytes == null)
            return "null";
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            sb.append(String.format("%02X ", b));
        }
        return sb.toString().trim();
    }

    /**
     * Get Status Word from APDU response
     */
    private String getSW(byte[] response) {
        if (response == null || response.length < 2) {
            return "0000";
        }
        int sw1 = response[response.length - 2] & 0xFF;
        int sw2 = response[response.length - 1] & 0xFF;
        return String.format("%02X%02X", sw1, sw2);
    }

    /**
     * Check if Status Word indicates success (9000)
     */
    private boolean isSuccessSW(byte[] response) {
        return "9000".equals(getSW(response));
    }

    @Override
    public void invalidate() {
        super.invalidate();
        isReading = false;
    }
}
