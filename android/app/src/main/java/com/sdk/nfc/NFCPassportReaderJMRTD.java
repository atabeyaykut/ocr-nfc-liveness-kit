package com.sdk.nfc;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
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
import java.io.ByteArrayOutputStream;
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

        // Read DG2 (Photo) - Optional, may not be available on all cards
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
                    // FaceImageInfo methods vary by JMRTD version
                    // Try different approaches to get JPEG/JPEG2000 image bytes
                    byte[] imageData = null;

                    try {
                        // Approach 1: Use getImageInputStream() - most reliable
                        InputStream imageInputStream = imageInfo.getImageInputStream();
                        ByteArrayOutputStream buffer = new ByteArrayOutputStream();
                        byte[] tempBuffer = new byte[1024];
                        int bytesRead;
                        while ((bytesRead = imageInputStream.read(tempBuffer)) != -1) {
                            buffer.write(tempBuffer, 0, bytesRead);
                        }
                        imageData = buffer.toByteArray();
                        Log.d(TAG, "✓ DG2 photo extracted via getImageInputStream() - " + imageData.length + " bytes");
                    } catch (Exception e1) {
                        Log.w(TAG, "getImageInputStream() failed, trying getEncoded()...");
                        try {
                            // Approach 2: Fallback to getEncoded() (may include ASN.1 wrapper)
                            imageData = imageInfo.getEncoded();
                            Log.d(TAG, "✓ DG2 photo extracted via getEncoded() - " + imageData.length + " bytes");
                            Log.w(TAG, "⚠ Using getEncoded() - may include ASN.1 wrapper");
                        } catch (Exception e2) {
                            Log.w(TAG, "Both photo extraction methods failed: " + e2.getMessage());
                            // Photo reading optional - continue without it
                        }
                    }

                    // Process image data if extracted successfully
                    if (imageData != null) {
                        // Detect image format from header
                        String imageFormat = detectImageFormat(imageData);
                        Log.d(TAG, "📸 Detected image format: " + imageFormat);

                        // Convert JPEG2000 to JPEG for compatibility with ML Kit
                        if (imageFormat.equals("JPEG2000") || imageFormat.equals("UNKNOWN")) {
                            Log.d(TAG, "🔄 Converting " + imageFormat + " to JPEG...");
                            byte[] convertedJpeg = convertToJpeg(imageData);
                            if (convertedJpeg != null) {
                                imageData = convertedJpeg;
                                Log.d(TAG, "✅ Converted to JPEG - " + imageData.length + " bytes");
                            } else {
                                Log.w(TAG, "⚠️ Conversion failed, using original data");
                            }
                        } else {
                            Log.d(TAG, "✓ Valid JPEG format detected, no conversion needed");
                        }

                        photoBase64 = Base64.encodeToString(imageData, Base64.NO_WRAP);
                    }
                }
            }
        } catch (Exception e) {
            Log.w(TAG, "DG2 (photo) not available or could not be read: " + e.getMessage());
            // Continue without photo - not critical
        }

        // Build response
        WritableMap result = Arguments.createMap();

        // Personal data from MRZ
        result.putString("documentNo", mrzInfo.getDocumentNumber());
        result.putString("documentType", mrzInfo.getDocumentCode());
        result.putString("nationality", mrzInfo.getNationality());

        // Gender: JMRTD returns Gender enum, convert to string
        String genderStr = "X";
        try {
            Object gender = mrzInfo.getGender();
            if (gender != null) {
                // Gender enum has toString() that returns "MALE", "FEMALE", or "UNSPECIFIED"
                String genderString = gender.toString();
                if ("MALE".equals(genderString)) {
                    genderStr = "M";
                } else if ("FEMALE".equals(genderString)) {
                    genderStr = "F";
                } else {
                    genderStr = "X";
                }
            }
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
     * Get user-friendly error message from CardServiceException
     */
    /**
     * Detect image format from header bytes
     * 
     * @param imageData Raw image bytes
     * @return Format name: "JPEG", "JPEG2000", or "UNKNOWN"
     */
    private static String detectImageFormat(byte[] imageData) {
        if (imageData == null || imageData.length < 4) {
            return "UNKNOWN";
        }

        // JPEG header: FF D8 FF
        if ((imageData[0] & 0xFF) == 0xFF && (imageData[1] & 0xFF) == 0xD8) {
            return "JPEG";
        }

        // JPEG2000 JP2 format: 00 00 00 0C 6A 50 20 20
        if (imageData.length >= 12 &&
                (imageData[0] & 0xFF) == 0x00 &&
                (imageData[1] & 0xFF) == 0x00 &&
                (imageData[2] & 0xFF) == 0x00 &&
                (imageData[3] & 0xFF) == 0x0C &&
                (imageData[4] & 0xFF) == 0x6A &&
                (imageData[5] & 0xFF) == 0x50 &&
                (imageData[6] & 0xFF) == 0x20 &&
                (imageData[7] & 0xFF) == 0x20) {
            return "JPEG2000";
        }

        // JPEG2000 J2K codestream: FF 4F FF 51
        if ((imageData[0] & 0xFF) == 0xFF &&
                (imageData[1] & 0xFF) == 0x4F &&
                (imageData[2] & 0xFF) == 0xFF &&
                (imageData[3] & 0xFF) == 0x51) {
            return "JPEG2000";
        }

        return "UNKNOWN";
    }

    /**
     * Convert any image format (especially JPEG2000) to standard JPEG
     * using Android's BitmapFactory and Bitmap compression
     * 
     * ENHANCEMENT: Applies CLAHE and histogram equalization to improve
     * contrast and brightness for better face recognition accuracy
     * 
     * @param imageData Raw image bytes
     * @return Enhanced JPEG bytes or null if conversion fails
     */
    private static byte[] convertToJpeg(byte[] imageData) {
        try {
            // Decode image using Android's BitmapFactory
            // This supports JPEG, PNG, WebP, GIF, and some JPEG2000 variants
            Bitmap bitmap = BitmapFactory.decodeByteArray(imageData, 0, imageData.length);

            if (bitmap == null) {
                Log.w(TAG, "⚠️ BitmapFactory.decodeByteArray returned null");
                return null;
            }

            Log.d(TAG, "✓ Bitmap decoded: " + bitmap.getWidth() + "x" + bitmap.getHeight() + "px");

            // TEMPORARY DISABLE: Testing if enhancement is causing low face similarity
            // Native enhancement may be over-processing and destroying facial features
            // TODO: Re-enable after testing with original photo quality
            Log.d(TAG, "⚠️ ENHANCEMENT TEMPORARILY DISABLED FOR TESTING");
            Log.d(TAG, "📸 Using ORIGINAL NFC photo without enhancement");
            Bitmap enhanced = bitmap;

            // ORIGINAL CODE (DISABLED):
            // Log.d(TAG, "🎨 Enhancing NFC photo with CLAHE and histogram
            // equalization...");
            // Bitmap enhanced = ImageEnhancer.enhanceNFCPhoto(bitmap);
            // if (enhanced == null) {
            // Log.w(TAG, "⚠️ Enhancement failed, using original bitmap");
            // enhanced = bitmap;
            // } else {
            // if (enhanced != bitmap) {
            // bitmap.recycle();
            // }
            // }

            // Compress to JPEG with high quality (90%)
            ByteArrayOutputStream outputStream = new ByteArrayOutputStream();
            boolean success = enhanced.compress(Bitmap.CompressFormat.JPEG, 90, outputStream);

            if (!success) {
                Log.w(TAG, "⚠️ Bitmap.compress failed");
                enhanced.recycle();
                return null;
            }

            byte[] jpegData = outputStream.toByteArray();
            Log.d(TAG, "✓ Enhanced JPEG compressed: " + jpegData.length + " bytes");

            // Clean up
            enhanced.recycle();
            outputStream.close();

            return jpegData;

        } catch (Exception e) {
            Log.e(TAG, "❌ Image conversion/enhancement error: " + e.getMessage());
            return null;
        }
    }

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
