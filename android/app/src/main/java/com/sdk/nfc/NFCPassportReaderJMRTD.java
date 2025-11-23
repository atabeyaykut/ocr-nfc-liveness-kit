package com.sdk.nfc;

import android.util.Base64;
import android.util.Log;

import com.facebook.react.bridge.Arguments;
import com.facebook.react.bridge.WritableMap;

import org.jmrtd.PassportService;
import org.jmrtd.lds.icao.DG1File;
import org.jmrtd.lds.icao.DG2File;
import org.jmrtd.lds.icao.MRZInfo;
import org.jmrtd.lds.iso19794.FaceImageInfo;
import org.jmrtd.lds.iso19794.FaceInfo;

import net.sf.scuba.smartcards.CardServiceException;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.util.List;

/**
 * JMRTD Helper Class for NFC Passport Reading
 * Handles DG1/DG2 reading and MRZ parsing
 */
public class NFCPassportReaderJMRTD {

    private static final String TAG = "NFCPassportJMRTD";

    /**
     * Read passport data using JMRTD PassportService
     */
    public static WritableMap readPassportData(PassportService passportService) throws Exception {
        Log.d(TAG, "Reading DG1 (MRZ)...");

        // Read DG1 (MRZ data)
        InputStream dg1InputStream = passportService.getInputStream(PassportService.EF_DG1);
        DG1File dg1 = new DG1File(dg1InputStream);
        MRZInfo mrzInfo = dg1.getMRZInfo();

        Log.d(TAG, "✓ DG1 read successfully");
        Log.d(TAG, "MRZ Document Number: " + mrzInfo.getDocumentNumber());
        Log.d(TAG, "MRZ Date of Birth: " + mrzInfo.getDateOfBirth());

        // Read DG2 (Photo)
        String photoBase64 = null;
        try {
            Log.d(TAG, "Reading DG2 (Photo)...");
            InputStream dg2InputStream = passportService.getInputStream(PassportService.EF_DG2);
            DG2File dg2 = new DG2File(dg2InputStream);

            List<FaceInfo> faceInfos = dg2.getFaceInfos();
            if (faceInfos != null && !faceInfos.isEmpty()) {
                FaceInfo faceInfo = faceInfos.get(0);
                List<FaceImageInfo> imageInfos = faceInfo.getFaceImageInfos();

                if (imageInfos != null && !imageInfos.isEmpty()) {
                    FaceImageInfo imageInfo = imageInfos.get(0);
                    // Get image as input stream and convert to byte array
                    InputStream imageStream = imageInfo.getImage();
                    byte[] imageData = readAllBytes(imageStream);
                    photoBase64 = Base64.encodeToString(imageData, Base64.NO_WRAP);
                    Log.d(TAG, "✓ DG2 photo extracted (" + imageData.length + " bytes)");
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "Could not read DG2 (photo): " + e.getMessage());
            // Continue without photo
        }

        // Build response
        WritableMap result = Arguments.createMap();

        // Personal data from MRZ
        result.putString("documentNo", mrzInfo.getDocumentNumber());
        result.putString("documentType", mrzInfo.getDocumentCode());
        result.putString("nationality", mrzInfo.getNationality());

        // Gender: getGender() returns enum, convert to string
        String genderStr = "X";
        try {
            char genderChar = mrzInfo.getGender();
            genderStr = String.valueOf(genderChar);
        } catch (Exception e) {
            Log.w(TAG, "Could not parse gender: " + e.getMessage());
        }
        result.putString("gender", genderStr);

        // Names
        String primaryId = mrzInfo.getPrimaryIdentifier().replace("<", " ").trim();
        String secondaryId = mrzInfo.getSecondaryIdentifier().replace("<", " ").trim();
        result.putString("surname", primaryId);
        result.putString("name", secondaryId);
        result.putString("fullName", secondaryId + " " + primaryId);

        // Dates (YYMMDD format from MRZ)
        result.putString("birthDate", formatMRZDate(mrzInfo.getDateOfBirth()));
        result.putString("validUntil", formatMRZDate(mrzInfo.getDateOfExpiry()));

        // Photo
        if (photoBase64 != null) {
            result.putString("photoBase64", photoBase64);
        }

        // Metadata
        result.putString("authenticationMethod", "BAC");
        result.putString("source", "NFC");
        result.putBoolean("isReal", true);

        Log.d(TAG, "✓ Passport data parsed successfully");
        return result;
    }

    /**
     * Format MRZ date (YYMMDD) to DD.MM.YYYY
     */
    private static String formatMRZDate(String mrzDate) {
        if (mrzDate == null || mrzDate.length() != 6) {
            return mrzDate;
        }

        try {
            String yy = mrzDate.substring(0, 2);
            String mm = mrzDate.substring(2, 4);
            String dd = mrzDate.substring(4, 6);

            // Determine century (00-30 = 2000s, 31-99 = 1900s)
            int year = Integer.parseInt(yy);
            String century = (year >= 0 && year <= 30) ? "20" : "19";

            return dd + "." + mm + "." + century + yy;
        } catch (Exception e) {
            Log.w(TAG, "Could not format date: " + mrzDate);
            return mrzDate;
        }
    }

    /**
     * Read all bytes from input stream
     */
    private static byte[] readAllBytes(InputStream inputStream) throws Exception {
        java.io.ByteArrayOutputStream buffer = new java.io.ByteArrayOutputStream();
        int nRead;
        byte[] data = new byte[16384];

        while ((nRead = inputStream.read(data, 0, data.length)) != -1) {
            buffer.write(data, 0, nRead);
        }

        buffer.flush();
        return buffer.toByteArray();
    }

    /**
     * Get user-friendly error message from CardServiceException
     */
    public static String getErrorMessage(CardServiceException e) {
        int sw = e.getSW();

        switch (sw) {
            case 0x6300:
                return "Doğrulama başarısız (SW: 6300)";
            case 0x6982:
                return "Güvenlik durumu yetersiz - BAC gerekli (SW: 6982)";
            case 0x6983:
                return "Kimlik doğrulama başarısız (SW: 6983)";
            case 0x6985:
                return "Kullanım koşulları yerine getirilmedi (SW: 6985)";
            case 0x6A82:
                return "Dosya bulunamadı (SW: 6A82)";
            case 0x6A88:
                return "Başvuru verisi bulunamadı (SW: 6A88)";
            case 0x6987:
                return "Beklenen güvenli mesaj eksik (SW: 6987)";
            case 0x6988:
                return "Güvenli mesaj verileri yanlış (SW: 6988)";
            default:
                return String.format("Kart hatası (SW: %04X)", sw);
        }
    }
}
