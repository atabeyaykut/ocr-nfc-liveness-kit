package com.sdk.nfc;

import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.util.Log;

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
import org.jmrtd.PACEKeySpec;
import org.jmrtd.PassportService;
import org.jmrtd.lds.CardAccessFile;
import org.jmrtd.lds.PACEInfo;
import org.jmrtd.lds.SecurityInfo;

import net.sf.scuba.smartcards.CardServiceException;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import java.util.List;
import java.text.ParseException;
import java.text.SimpleDateFormat;
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
    private String canNumber;

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
            canNumber = sanitizeCanNumber(options);
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
            canNumber = null;
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

    private void readPassportWithBAC(Tag tag, ReadableMap mrzSeed) {
        Log.e(TAG, "[CRITICAL] ========== readPassportWithBAC CALLED ==========");
        Log.e(TAG, "[CRITICAL] Reading passport with JMRTD BAC authentication");
        Log.e(TAG, "[CRITICAL] mrzSeed keys: " + (mrzSeed != null ? mrzSeed.toString() : "NULL"));

        JMRTDSessionManager session = null;
        try {
            MrzData mrzData = extractMrzData(mrzSeed);
            BACKeySpec bacKey = new BACKey(mrzData.documentNumber, mrzData.birthDate, mrzData.expiryDate);

            session = JMRTDSessionManager.open(tag);
            PassportService passportService = session.getPassportService();
            passportService.open();
            passportService.sendSelectApplet(false);

            boolean paceSuccess = tryPACE(passportService, bacKey);
            if (!paceSuccess) {
                Log.w(TAG, "PACE skipped or failed – proceeding with BAC");
            }

            Log.d(TAG, "Attempting BAC via JMRTD PassportService");
            passportService.doBAC(bacKey);
            Log.e(TAG, "[CRITICAL] ✓ BAC authentication successful via JMRTD");

            WritableMap passportData = readPassportDataWithJMRTD(passportService);
            Log.d(TAG, "✓ Passport data read via JMRTD");
            sendSuccessEvent(passportData);

        } catch (IllegalArgumentException e) {
            Log.e(TAG, "Invalid MRZ data", e);
            sendErrorEvent(e.getMessage());
        } catch (CardServiceException e) {
            Log.e(TAG, "Card service error", e);
            sendErrorEvent(getCardServiceErrorMessage(e));
        } catch (IOException e) {
            Log.e(TAG, "I/O error during JMRTD session", e);
            sendErrorEvent("JMRTD oturumu sırasında I/O hatası: " + e.getMessage());
        } finally {
            if (session != null) {
                session.close();
            }
        }
    }

    private WritableMap readPassportDataWithJMRTD(PassportService passportService) throws Exception {
        return NFCPassportReaderJMRTD.readPassportData(passportService);
    }

    private String getCardServiceErrorMessage(CardServiceException e) {
        return NFCPassportReaderJMRTD.getErrorMessage(e);
    }

    private boolean tryPACE(PassportService passportService, BACKeySpec bacKey)
            throws CardServiceException {
        PACEInfo paceInfo = readPACEInfo(passportService);
        if (paceInfo == null) {
            Log.w(TAG, "PACEInfo not found in EF.CardAccess");
            return false;
        }

        try {
            PACEKeySpec paceKey = buildPACEKey(bacKey);
            AlgorithmParameterSpec params = PACEInfo.toParameterSpec(paceInfo.getParameterId());
            String oid = paceInfo.getObjectIdentifier();
            Log.d(TAG, "Attempting PACE with OID=" + oid + ", param=" + paceInfo.getParameterId());
            passportService.doPACE(paceKey, oid, params, null);
            Log.e(TAG, "[CRITICAL] ✓ PACE authentication successful");
            return true;
        } catch (GeneralSecurityException e) {
            Log.e(TAG, "PACE key derivation failed", e);
        } catch (IOException e) {
            Log.e(TAG, "PACE I/O error", e);
        }
        return false;
    }

    private PACEInfo readPACEInfo(PassportService passportService) {
        InputStream inputStream = null;
        try {
            inputStream = passportService.getInputStream(PassportService.EF_CARD_ACCESS);
            if (inputStream == null) {
                return null;
            }
            CardAccessFile cardAccessFile = new CardAccessFile(inputStream);
            List<SecurityInfo> infos = cardAccessFile.getSecurityInfos();
            if (infos == null) {
                return null;
            }
            for (SecurityInfo info : infos) {
                if (info instanceof PACEInfo) {
                    return (PACEInfo) info;
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "Failed to parse EF.CardAccess", e);
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException ignored) {
                }
            }
        }
        return null;
    }

    private PACEKeySpec buildPACEKey(BACKeySpec bacKey) throws GeneralSecurityException {
        if (canNumber != null) {
            Log.d(TAG, "Using CAN for PACE");
            return PACEKeySpec.createCANKey(canNumber);
        }
        Log.d(TAG, "Using MRZ-derived key for PACE");
        return PACEKeySpec.createMRZKey(bacKey);
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

    private void sendSuccessEvent(WritableMap result) {
        WritableMap event = Arguments.createMap();
        event.putDouble("timestamp", System.currentTimeMillis() / 1000.0);
        event.putMap("data", result);
        sendEvent("NFC_SUCCESS", event);
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

    @Override
    public void invalidate() {
        super.invalidate();
        isReading = false;
    }

    private MrzData extractMrzData(ReadableMap mrzSeed) {
        if (mrzSeed == null) {
            throw new IllegalArgumentException("MRZ verisi zorunludur");
        }

        String documentNo = mrzSeed.hasKey("documentNo") ? mrzSeed.getString("documentNo") : "";
        if (documentNo.isEmpty() && mrzSeed.hasKey("serialNo")) {
            documentNo = mrzSeed.getString("serialNo");
        }
        if (documentNo.isEmpty() && mrzSeed.hasKey("tcNo")) {
            documentNo = mrzSeed.getString("tcNo");
        }

        if (documentNo.length() > 9) {
            documentNo = documentNo.substring(0, 9);
        }

        String birthDate = convertDateToMRZFormat(mrzSeed.hasKey("birthDate") ? mrzSeed.getString("birthDate") : "");
        String expiryDate = convertDateToMRZFormat(mrzSeed.hasKey("validUntil") ? mrzSeed.getString("validUntil")
                : (mrzSeed.hasKey("expiryDate") ? mrzSeed.getString("expiryDate") : ""));

        if (documentNo.isEmpty() || birthDate.length() != 6 || expiryDate.length() != 6) {
            throw new IllegalArgumentException("MRZ alanları eksik veya hatalı");
        }

        return new MrzData(documentNo, birthDate, expiryDate);
    }

    private String sanitizeCanNumber(ReadableMap options) {
        if (options == null || !options.hasKey("canNumber")) {
            return null;
        }
        String raw = options.getString("canNumber");
        if (raw == null) {
            return null;
        }
        String digits = raw.replaceAll("[^0-9]", "");
        if (digits.isEmpty()) {
            return null;
        }
        return digits.length() > 6 ? digits.substring(digits.length() - 6) : digits;
    }

    private static final class MrzData {
        final String documentNumber;
        final String birthDate;
        final String expiryDate;

        MrzData(String documentNumber, String birthDate, String expiryDate) {
            this.documentNumber = documentNumber;
            this.birthDate = birthDate;
            this.expiryDate = expiryDate;
        }
    }
}
