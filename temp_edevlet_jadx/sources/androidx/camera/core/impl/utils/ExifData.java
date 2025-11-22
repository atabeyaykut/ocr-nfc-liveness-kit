package androidx.camera.core.impl.utils;

import android.os.Build;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.camera.core.Logger;
import androidx.camera.core.impl.CameraCaptureMetaData;
import androidx.core.util.Preconditions;
import androidx.exifinterface.media.ExifInterface;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@RequiresApi(21)
/* loaded from: classes.dex */
public class ExifData {
    private static final boolean DEBUG = false;
    static final ExifTag[] EXIF_POINTER_TAGS;
    static final ExifTag[][] EXIF_TAGS;
    private static final ExifTag[] IFD_EXIF_TAGS;
    static final String[] IFD_FORMAT_NAMES = {"", "BYTE", "STRING", "USHORT", "ULONG", "URATIONAL", "SBYTE", "UNDEFINED", "SSHORT", "SLONG", "SRATIONAL", "SINGLE", "DOUBLE", "IFD"};
    private static final ExifTag[] IFD_GPS_TAGS;
    private static final ExifTag[] IFD_INTEROPERABILITY_TAGS;
    private static final ExifTag[] IFD_TIFF_TAGS;
    static final int IFD_TYPE_EXIF = 1;
    static final int IFD_TYPE_GPS = 2;
    static final int IFD_TYPE_INTEROPERABILITY = 3;
    static final int IFD_TYPE_PRIMARY = 0;
    private static final int MM_IN_MICRONS = 1000;
    private static final String TAG = "ExifData";
    static final String TAG_EXIF_IFD_POINTER = "ExifIFDPointer";
    static final String TAG_GPS_INFO_IFD_POINTER = "GPSInfoIFDPointer";
    static final String TAG_INTEROPERABILITY_IFD_POINTER = "InteroperabilityIFDPointer";
    static final String TAG_SUB_IFD_POINTER = "SubIFDPointer";
    static final HashSet<String> sTagSetForCompatibility;
    private final List<Map<String, ExifAttribute>> mAttributes;
    private final ByteOrder mByteOrder;

    /* renamed from: androidx.camera.core.impl.utils.ExifData$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$impl$CameraCaptureMetaData$FlashState;
        static final /* synthetic */ int[] $SwitchMap$androidx$camera$core$impl$utils$ExifData$WhiteBalanceMode;

        static {
            int[] r02 = new int[WhiteBalanceMode.values().length];
            $SwitchMap$androidx$camera$core$impl$utils$ExifData$WhiteBalanceMode = r02;
            try {
                r02[WhiteBalanceMode.AUTO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$utils$ExifData$WhiteBalanceMode[WhiteBalanceMode.MANUAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] r22 = new int[CameraCaptureMetaData.FlashState.values().length];
            $SwitchMap$androidx$camera$core$impl$CameraCaptureMetaData$FlashState = r22;
            try {
                r22[CameraCaptureMetaData.FlashState.READY.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$CameraCaptureMetaData$FlashState[CameraCaptureMetaData.FlashState.NONE.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$androidx$camera$core$impl$CameraCaptureMetaData$FlashState[CameraCaptureMetaData.FlashState.FIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public static final class Builder {
        private static final int DATETIME_VALUE_STRING_LENGTH = 19;
        final List<Map<String, ExifAttribute>> mAttributes = Collections.list(new Enumeration<Map<String, ExifAttribute>>() { // from class: androidx.camera.core.impl.utils.ExifData.Builder.2
            int mIfdIndex = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.mIfdIndex < ExifData.EXIF_TAGS.length;
            }

            @Override // java.util.Enumeration
            public Map<String, ExifAttribute> nextElement() {
                this.mIfdIndex++;
                return new HashMap();
            }
        });
        private final ByteOrder mByteOrder;
        private static final Pattern GPS_TIMESTAMP_PATTERN = Pattern.compile("^(\\d{2}):(\\d{2}):(\\d{2})$");
        private static final Pattern DATETIME_PRIMARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
        private static final Pattern DATETIME_SECONDARY_FORMAT_PATTERN = Pattern.compile("^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$");
        static final List<HashMap<String, ExifTag>> sExifTagMapsForWriting = Collections.list(new Enumeration<HashMap<String, ExifTag>>() { // from class: androidx.camera.core.impl.utils.ExifData.Builder.1
            int mIfdIndex = 0;

            @Override // java.util.Enumeration
            public boolean hasMoreElements() {
                return this.mIfdIndex < ExifData.EXIF_TAGS.length;
            }

            @Override // java.util.Enumeration
            public HashMap<String, ExifTag> nextElement() {
                HashMap<String, ExifTag> map = new HashMap<>();
                for (ExifTag exifTag : ExifData.EXIF_TAGS[this.mIfdIndex]) {
                    map.put(exifTag.name, exifTag);
                }
                this.mIfdIndex++;
                return map;
            }
        });

        public Builder(@NonNull ByteOrder byteOrder) {
            this.mByteOrder = byteOrder;
        }

        private static Pair<Integer, Integer> guessDataFormat(String str) throws NumberFormatException {
            if (str.contains(",")) {
                String[] strArrSplit = str.split(",", -1);
                Pair<Integer, Integer> pairGuessDataFormat = guessDataFormat(strArrSplit[0]);
                if (((Integer) pairGuessDataFormat.first).intValue() == 2) {
                    return pairGuessDataFormat;
                }
                for (int r32 = 1; r32 < strArrSplit.length; r32++) {
                    Pair<Integer, Integer> pairGuessDataFormat2 = guessDataFormat(strArrSplit[r32]);
                    int r22 = (((Integer) pairGuessDataFormat2.first).equals(pairGuessDataFormat.first) || ((Integer) pairGuessDataFormat2.second).equals(pairGuessDataFormat.first)) ? ((Integer) pairGuessDataFormat.first).intValue() : -1;
                    int r12 = (((Integer) pairGuessDataFormat.second).intValue() == -1 || !(((Integer) pairGuessDataFormat2.first).equals(pairGuessDataFormat.second) || ((Integer) pairGuessDataFormat2.second).equals(pairGuessDataFormat.second))) ? -1 : ((Integer) pairGuessDataFormat.second).intValue();
                    if (r22 == -1 && r12 == -1) {
                        return new Pair<>(2, -1);
                    }
                    if (r22 == -1) {
                        pairGuessDataFormat = new Pair<>(Integer.valueOf(r12), -1);
                    } else if (r12 == -1) {
                        pairGuessDataFormat = new Pair<>(Integer.valueOf(r22), -1);
                    }
                }
                return pairGuessDataFormat;
            }
            if (!str.contains("/")) {
                try {
                    try {
                        long j10 = Long.parseLong(str);
                        return (j10 < 0 || j10 > 65535) ? j10 < 0 ? new Pair<>(9, -1) : new Pair<>(4, -1) : new Pair<>(3, 4);
                    } catch (NumberFormatException unused) {
                        return new Pair<>(2, -1);
                    }
                } catch (NumberFormatException unused2) {
                    Double.parseDouble(str);
                    return new Pair<>(12, -1);
                }
            }
            String[] strArrSplit2 = str.split("/", -1);
            if (strArrSplit2.length == 2) {
                try {
                    long j11 = (long) Double.parseDouble(strArrSplit2[0]);
                    long j12 = (long) Double.parseDouble(strArrSplit2[1]);
                    if (j11 >= 0 && j12 >= 0) {
                        if (j11 <= 2147483647L && j12 <= 2147483647L) {
                            return new Pair<>(10, 5);
                        }
                        return new Pair<>(5, -1);
                    }
                    return new Pair<>(10, -1);
                } catch (NumberFormatException unused3) {
                }
            }
            return new Pair<>(2, -1);
        }

        private void setAttributeIfMissing(@NonNull String str, @NonNull String str2, @NonNull List<Map<String, ExifAttribute>> list) throws NumberFormatException {
            Iterator<Map<String, ExifAttribute>> it = list.iterator();
            while (it.hasNext()) {
                if (it.next().containsKey(str)) {
                    return;
                }
            }
            setAttributeInternal(str, str2, list);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        private void setAttributeInternal(@NonNull String str, @Nullable String str2, @NonNull List<Map<String, ExifAttribute>> list) throws NumberFormatException {
            int r02;
            Map<String, ExifAttribute> map;
            ExifAttribute exifAttributeCreateByte;
            String str3 = str;
            String strReplaceAll = str2;
            if ((ExifInterface.TAG_DATETIME.equals(str3) || ExifInterface.TAG_DATETIME_ORIGINAL.equals(str3) || ExifInterface.TAG_DATETIME_DIGITIZED.equals(str3)) && strReplaceAll != null) {
                boolean zFind = DATETIME_PRIMARY_FORMAT_PATTERN.matcher(strReplaceAll).find();
                boolean zFind2 = DATETIME_SECONDARY_FORMAT_PATTERN.matcher(strReplaceAll).find();
                if (str2.length() != 19 || (!zFind && !zFind2)) {
                    Logger.w(ExifData.TAG, "Invalid value for " + str3 + " : " + strReplaceAll);
                    return;
                }
                if (zFind2) {
                    strReplaceAll = strReplaceAll.replaceAll("-", ":");
                }
            }
            if (ExifInterface.TAG_ISO_SPEED_RATINGS.equals(str3)) {
                str3 = ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY;
            }
            String str4 = str3;
            int r03 = 2;
            int r72 = 1;
            if (strReplaceAll != null && ExifData.sTagSetForCompatibility.contains(str4)) {
                if (str4.equals(ExifInterface.TAG_GPS_TIMESTAMP)) {
                    Matcher matcher = GPS_TIMESTAMP_PATTERN.matcher(strReplaceAll);
                    if (!matcher.find()) {
                        Logger.w(ExifData.TAG, "Invalid value for " + str4 + " : " + strReplaceAll);
                        return;
                    }
                    strReplaceAll = Integer.parseInt((String) Preconditions.checkNotNull(matcher.group(1))) + "/1," + Integer.parseInt((String) Preconditions.checkNotNull(matcher.group(2))) + "/1," + Integer.parseInt((String) Preconditions.checkNotNull(matcher.group(3))) + "/1";
                } else {
                    try {
                        strReplaceAll = new LongRational(Double.parseDouble(strReplaceAll)).toString();
                    } catch (NumberFormatException e10) {
                        Logger.w(ExifData.TAG, androidx.camera.camera2.internal.c.g("Invalid value for ", str4, " : ", strReplaceAll), e10);
                        return;
                    }
                }
            }
            char c10 = 0;
            int r52 = 0;
            Builder builder = this;
            while (r52 < ExifData.EXIF_TAGS.length) {
                ExifTag exifTag = sExifTagMapsForWriting.get(r52).get(str4);
                if (exifTag != null) {
                    if (strReplaceAll != null) {
                        Pair<Integer, Integer> pairGuessDataFormat = guessDataFormat(strReplaceAll);
                        if (exifTag.primaryFormat == ((Integer) pairGuessDataFormat.first).intValue() || exifTag.primaryFormat == ((Integer) pairGuessDataFormat.second).intValue()) {
                            r02 = exifTag.primaryFormat;
                        } else {
                            int r10 = exifTag.secondaryFormat;
                            if (r10 == -1 || !(r10 == ((Integer) pairGuessDataFormat.first).intValue() || exifTag.secondaryFormat == ((Integer) pairGuessDataFormat.second).intValue())) {
                                int r82 = exifTag.primaryFormat;
                                if (r82 == r72 || r82 == 7 || r82 == r03) {
                                    r02 = r82;
                                }
                            } else {
                                r02 = exifTag.secondaryFormat;
                            }
                        }
                        String str5 = "/";
                        switch (r02) {
                            case 1:
                                map = list.get(r52);
                                exifAttributeCreateByte = ExifAttribute.createByte(strReplaceAll);
                                map.put(str4, exifAttributeCreateByte);
                                break;
                            case 2:
                            case 7:
                                map = list.get(r52);
                                exifAttributeCreateByte = ExifAttribute.createString(strReplaceAll);
                                map.put(str4, exifAttributeCreateByte);
                                break;
                            case 3:
                                String[] strArrSplit = strReplaceAll.split(",", -1);
                                int[] r42 = new int[strArrSplit.length];
                                for (int r83 = 0; r83 < strArrSplit.length; r83++) {
                                    r42[r83] = Integer.parseInt(strArrSplit[r83]);
                                }
                                map = list.get(r52);
                                exifAttributeCreateByte = ExifAttribute.createUShort(r42, builder.mByteOrder);
                                map.put(str4, exifAttributeCreateByte);
                                break;
                            case 4:
                                String[] strArrSplit2 = strReplaceAll.split(",", -1);
                                long[] jArr = new long[strArrSplit2.length];
                                for (int r84 = 0; r84 < strArrSplit2.length; r84++) {
                                    jArr[r84] = Long.parseLong(strArrSplit2[r84]);
                                }
                                map = list.get(r52);
                                exifAttributeCreateByte = ExifAttribute.createULong(jArr, builder.mByteOrder);
                                map.put(str4, exifAttributeCreateByte);
                                break;
                            case 5:
                                String[] strArrSplit3 = strReplaceAll.split(",", -1);
                                LongRational[] longRationalArr = new LongRational[strArrSplit3.length];
                                int r92 = 0;
                                while (r92 < strArrSplit3.length) {
                                    String[] strArrSplit4 = strArrSplit3[r92].split("/", -1);
                                    longRationalArr[r92] = new LongRational((long) Double.parseDouble(strArrSplit4[c10]), (long) Double.parseDouble(strArrSplit4[1]));
                                    r92++;
                                    c10 = 0;
                                }
                                map = list.get(r52);
                                exifAttributeCreateByte = ExifAttribute.createURational(longRationalArr, builder.mByteOrder);
                                map.put(str4, exifAttributeCreateByte);
                                break;
                            case 9:
                                String[] strArrSplit5 = strReplaceAll.split(",", -1);
                                int[] r43 = new int[strArrSplit5.length];
                                for (int r85 = 0; r85 < strArrSplit5.length; r85++) {
                                    r43[r85] = Integer.parseInt(strArrSplit5[r85]);
                                }
                                map = list.get(r52);
                                exifAttributeCreateByte = ExifAttribute.createSLong(r43, builder.mByteOrder);
                                map.put(str4, exifAttributeCreateByte);
                                break;
                            case 10:
                                String[] strArrSplit6 = strReplaceAll.split(",", -1);
                                LongRational[] longRationalArr2 = new LongRational[strArrSplit6.length];
                                int r93 = 0;
                                while (r93 < strArrSplit6.length) {
                                    String[] strArrSplit7 = strArrSplit6[r93].split(str5, -1);
                                    longRationalArr2[r93] = new LongRational((long) Double.parseDouble(strArrSplit7[c10]), (long) Double.parseDouble(strArrSplit7[r72]));
                                    r93++;
                                    r72 = 1;
                                    str5 = str5;
                                }
                                map = list.get(r52);
                                exifAttributeCreateByte = ExifAttribute.createSRational(longRationalArr2, this.mByteOrder);
                                builder = this;
                                map.put(str4, exifAttributeCreateByte);
                                break;
                            case 12:
                                String[] strArrSplit8 = strReplaceAll.split(",", -1);
                                double[] dArr = new double[strArrSplit8.length];
                                for (int r73 = 0; r73 < strArrSplit8.length; r73++) {
                                    dArr[r73] = Double.parseDouble(strArrSplit8[r73]);
                                }
                                list.get(r52).put(str4, ExifAttribute.createDouble(dArr, builder.mByteOrder));
                                break;
                        }
                    } else {
                        list.get(r52).remove(str4);
                    }
                }
                r52++;
                r03 = 2;
                c10 = 0;
                r72 = 1;
            }
        }

        @NonNull
        public ExifData build() throws NumberFormatException {
            ArrayList list = Collections.list(new Enumeration<Map<String, ExifAttribute>>() { // from class: androidx.camera.core.impl.utils.ExifData.Builder.3
                final Enumeration<Map<String, ExifAttribute>> mMapEnumeration;

                {
                    this.mMapEnumeration = Collections.enumeration(Builder.this.mAttributes);
                }

                @Override // java.util.Enumeration
                public boolean hasMoreElements() {
                    return this.mMapEnumeration.hasMoreElements();
                }

                @Override // java.util.Enumeration
                public Map<String, ExifAttribute> nextElement() {
                    return new HashMap(this.mMapEnumeration.nextElement());
                }
            });
            if (!list.get(1).isEmpty()) {
                setAttributeIfMissing(ExifInterface.TAG_EXPOSURE_PROGRAM, String.valueOf(0), list);
                setAttributeIfMissing(ExifInterface.TAG_EXIF_VERSION, "0230", list);
                setAttributeIfMissing(ExifInterface.TAG_COMPONENTS_CONFIGURATION, "1,2,3,0", list);
                setAttributeIfMissing(ExifInterface.TAG_METERING_MODE, String.valueOf(0), list);
                setAttributeIfMissing(ExifInterface.TAG_LIGHT_SOURCE, String.valueOf(0), list);
                setAttributeIfMissing(ExifInterface.TAG_FLASHPIX_VERSION, "0100", list);
                setAttributeIfMissing(ExifInterface.TAG_FOCAL_PLANE_RESOLUTION_UNIT, String.valueOf(2), list);
                setAttributeIfMissing(ExifInterface.TAG_FILE_SOURCE, String.valueOf(3), list);
                setAttributeIfMissing(ExifInterface.TAG_SCENE_TYPE, String.valueOf(1), list);
                setAttributeIfMissing(ExifInterface.TAG_CUSTOM_RENDERED, String.valueOf(0), list);
                setAttributeIfMissing(ExifInterface.TAG_SCENE_CAPTURE_TYPE, String.valueOf(0), list);
                setAttributeIfMissing(ExifInterface.TAG_CONTRAST, String.valueOf(0), list);
                setAttributeIfMissing(ExifInterface.TAG_SATURATION, String.valueOf(0), list);
                setAttributeIfMissing(ExifInterface.TAG_SHARPNESS, String.valueOf(0), list);
            }
            if (!list.get(2).isEmpty()) {
                setAttributeIfMissing(ExifInterface.TAG_GPS_VERSION_ID, "2300", list);
                setAttributeIfMissing(ExifInterface.TAG_GPS_SPEED_REF, "K", list);
                setAttributeIfMissing(ExifInterface.TAG_GPS_TRACK_REF, ExifInterface.GPS_DIRECTION_TRUE, list);
                setAttributeIfMissing(ExifInterface.TAG_GPS_IMG_DIRECTION_REF, ExifInterface.GPS_DIRECTION_TRUE, list);
                setAttributeIfMissing(ExifInterface.TAG_GPS_DEST_BEARING_REF, ExifInterface.GPS_DIRECTION_TRUE, list);
                setAttributeIfMissing(ExifInterface.TAG_GPS_DEST_DISTANCE_REF, "K", list);
            }
            return new ExifData(this.mByteOrder, list);
        }

        @NonNull
        public Builder removeAttribute(@NonNull String str) throws NumberFormatException {
            setAttributeInternal(str, null, this.mAttributes);
            return this;
        }

        @NonNull
        public Builder setAttribute(@NonNull String str, @NonNull String str2) throws NumberFormatException {
            setAttributeInternal(str, str2, this.mAttributes);
            return this;
        }

        @NonNull
        public Builder setExposureTimeNanos(long j10) {
            return setAttribute(ExifInterface.TAG_EXPOSURE_TIME, String.valueOf(j10 / TimeUnit.SECONDS.toNanos(1L)));
        }

        @NonNull
        public Builder setFlashState(@NonNull CameraCaptureMetaData.FlashState flashState) throws NumberFormatException {
            int r42;
            if (flashState == CameraCaptureMetaData.FlashState.UNKNOWN) {
                return this;
            }
            int r02 = AnonymousClass1.$SwitchMap$androidx$camera$core$impl$CameraCaptureMetaData$FlashState[flashState.ordinal()];
            if (r02 == 1) {
                r42 = 0;
            } else if (r02 == 2) {
                r42 = 32;
            } else {
                if (r02 != 3) {
                    Logger.w(ExifData.TAG, "Unknown flash state: " + flashState);
                    return this;
                }
                r42 = 1;
            }
            if ((r42 & 1) == 1) {
                setAttribute(ExifInterface.TAG_LIGHT_SOURCE, String.valueOf(4));
            }
            return setAttribute(ExifInterface.TAG_FLASH, String.valueOf(r42));
        }

        @NonNull
        public Builder setFocalLength(float f) {
            return setAttribute(ExifInterface.TAG_FOCAL_LENGTH, new LongRational((long) (f * 1000.0f), 1000L).toString());
        }

        @NonNull
        public Builder setImageHeight(int r22) {
            return setAttribute(ExifInterface.TAG_IMAGE_LENGTH, String.valueOf(r22));
        }

        @NonNull
        public Builder setImageWidth(int r22) {
            return setAttribute(ExifInterface.TAG_IMAGE_WIDTH, String.valueOf(r22));
        }

        @NonNull
        public Builder setIso(int r32) {
            return setAttribute(ExifInterface.TAG_SENSITIVITY_TYPE, String.valueOf(3)).setAttribute(ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY, String.valueOf(Math.min(65535, r32)));
        }

        @NonNull
        public Builder setLensFNumber(float f) {
            return setAttribute(ExifInterface.TAG_F_NUMBER, String.valueOf(f));
        }

        @NonNull
        public Builder setOrientationDegrees(int r32) {
            int r33;
            if (r32 == 0) {
                r33 = 1;
            } else if (r32 == 90) {
                r33 = 6;
            } else if (r32 == 180) {
                r33 = 3;
            } else if (r32 != 270) {
                Logger.w(ExifData.TAG, "Unexpected orientation value: " + r32 + ". Must be one of 0, 90, 180, 270.");
                r33 = 0;
            } else {
                r33 = 8;
            }
            return setAttribute(ExifInterface.TAG_ORIENTATION, String.valueOf(r33));
        }

        @NonNull
        public Builder setWhiteBalanceMode(@NonNull WhiteBalanceMode whiteBalanceMode) {
            int r32 = AnonymousClass1.$SwitchMap$androidx$camera$core$impl$utils$ExifData$WhiteBalanceMode[whiteBalanceMode.ordinal()];
            return setAttribute(ExifInterface.TAG_WHITE_BALANCE, r32 != 1 ? r32 != 2 ? null : String.valueOf(1) : String.valueOf(0));
        }
    }

    public enum WhiteBalanceMode {
        AUTO,
        MANUAL
    }

    static {
        ExifTag[] exifTagArr = {new ExifTag(ExifInterface.TAG_IMAGE_WIDTH, 256, 3, 4), new ExifTag(ExifInterface.TAG_IMAGE_LENGTH, 257, 3, 4), new ExifTag(ExifInterface.TAG_MAKE, 271, 2), new ExifTag(ExifInterface.TAG_MODEL, 272, 2), new ExifTag(ExifInterface.TAG_ORIENTATION, 274, 3), new ExifTag(ExifInterface.TAG_X_RESOLUTION, 282, 5), new ExifTag(ExifInterface.TAG_Y_RESOLUTION, 283, 5), new ExifTag(ExifInterface.TAG_RESOLUTION_UNIT, 296, 3), new ExifTag(ExifInterface.TAG_SOFTWARE, 305, 2), new ExifTag(ExifInterface.TAG_DATETIME, 306, 2), new ExifTag(ExifInterface.TAG_Y_CB_CR_POSITIONING, 531, 3), new ExifTag(TAG_SUB_IFD_POINTER, 330, 4), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, 4), new ExifTag(TAG_GPS_INFO_IFD_POINTER, 34853, 4)};
        IFD_TIFF_TAGS = exifTagArr;
        ExifTag[] exifTagArr2 = {new ExifTag(ExifInterface.TAG_EXPOSURE_TIME, 33434, 5), new ExifTag(ExifInterface.TAG_F_NUMBER, 33437, 5), new ExifTag(ExifInterface.TAG_EXPOSURE_PROGRAM, 34850, 3), new ExifTag(ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY, 34855, 3), new ExifTag(ExifInterface.TAG_SENSITIVITY_TYPE, 34864, 3), new ExifTag(ExifInterface.TAG_EXIF_VERSION, 36864, 2), new ExifTag(ExifInterface.TAG_DATETIME_ORIGINAL, 36867, 2), new ExifTag(ExifInterface.TAG_DATETIME_DIGITIZED, 36868, 2), new ExifTag(ExifInterface.TAG_COMPONENTS_CONFIGURATION, 37121, 7), new ExifTag(ExifInterface.TAG_SHUTTER_SPEED_VALUE, 37377, 10), new ExifTag(ExifInterface.TAG_APERTURE_VALUE, 37378, 5), new ExifTag(ExifInterface.TAG_BRIGHTNESS_VALUE, 37379, 10), new ExifTag(ExifInterface.TAG_EXPOSURE_BIAS_VALUE, 37380, 10), new ExifTag(ExifInterface.TAG_MAX_APERTURE_VALUE, 37381, 5), new ExifTag(ExifInterface.TAG_METERING_MODE, 37383, 3), new ExifTag(ExifInterface.TAG_LIGHT_SOURCE, 37384, 3), new ExifTag(ExifInterface.TAG_FLASH, 37385, 3), new ExifTag(ExifInterface.TAG_FOCAL_LENGTH, 37386, 5), new ExifTag(ExifInterface.TAG_SUBSEC_TIME, 37520, 2), new ExifTag(ExifInterface.TAG_SUBSEC_TIME_ORIGINAL, 37521, 2), new ExifTag(ExifInterface.TAG_SUBSEC_TIME_DIGITIZED, 37522, 2), new ExifTag(ExifInterface.TAG_FLASHPIX_VERSION, 40960, 7), new ExifTag(ExifInterface.TAG_COLOR_SPACE, 40961, 3), new ExifTag(ExifInterface.TAG_PIXEL_X_DIMENSION, 40962, 3, 4), new ExifTag(ExifInterface.TAG_PIXEL_Y_DIMENSION, 40963, 3, 4), new ExifTag(TAG_INTEROPERABILITY_IFD_POINTER, 40965, 4), new ExifTag(ExifInterface.TAG_FOCAL_PLANE_RESOLUTION_UNIT, 41488, 3), new ExifTag(ExifInterface.TAG_SENSING_METHOD, 41495, 3), new ExifTag(ExifInterface.TAG_FILE_SOURCE, 41728, 7), new ExifTag(ExifInterface.TAG_SCENE_TYPE, 41729, 7), new ExifTag(ExifInterface.TAG_CUSTOM_RENDERED, 41985, 3), new ExifTag(ExifInterface.TAG_EXPOSURE_MODE, 41986, 3), new ExifTag(ExifInterface.TAG_WHITE_BALANCE, 41987, 3), new ExifTag(ExifInterface.TAG_SCENE_CAPTURE_TYPE, 41990, 3), new ExifTag(ExifInterface.TAG_CONTRAST, 41992, 3), new ExifTag(ExifInterface.TAG_SATURATION, 41993, 3), new ExifTag(ExifInterface.TAG_SHARPNESS, 41994, 3)};
        IFD_EXIF_TAGS = exifTagArr2;
        ExifTag[] exifTagArr3 = {new ExifTag(ExifInterface.TAG_GPS_VERSION_ID, 0, 1), new ExifTag(ExifInterface.TAG_GPS_LATITUDE_REF, 1, 2), new ExifTag(ExifInterface.TAG_GPS_LATITUDE, 2, 5, 10), new ExifTag(ExifInterface.TAG_GPS_LONGITUDE_REF, 3, 2), new ExifTag(ExifInterface.TAG_GPS_LONGITUDE, 4, 5, 10), new ExifTag(ExifInterface.TAG_GPS_ALTITUDE_REF, 5, 1), new ExifTag(ExifInterface.TAG_GPS_ALTITUDE, 6, 5), new ExifTag(ExifInterface.TAG_GPS_TIMESTAMP, 7, 5), new ExifTag(ExifInterface.TAG_GPS_SPEED_REF, 12, 2), new ExifTag(ExifInterface.TAG_GPS_TRACK_REF, 14, 2), new ExifTag(ExifInterface.TAG_GPS_IMG_DIRECTION_REF, 16, 2), new ExifTag(ExifInterface.TAG_GPS_DEST_BEARING_REF, 23, 2), new ExifTag(ExifInterface.TAG_GPS_DEST_DISTANCE_REF, 25, 2)};
        IFD_GPS_TAGS = exifTagArr3;
        EXIF_POINTER_TAGS = new ExifTag[]{new ExifTag(TAG_SUB_IFD_POINTER, 330, 4), new ExifTag(TAG_EXIF_IFD_POINTER, 34665, 4), new ExifTag(TAG_GPS_INFO_IFD_POINTER, 34853, 4), new ExifTag(TAG_INTEROPERABILITY_IFD_POINTER, 40965, 4)};
        ExifTag[] exifTagArr4 = {new ExifTag(ExifInterface.TAG_INTEROPERABILITY_INDEX, 1, 2)};
        IFD_INTEROPERABILITY_TAGS = exifTagArr4;
        EXIF_TAGS = new ExifTag[][]{exifTagArr, exifTagArr2, exifTagArr3, exifTagArr4};
        sTagSetForCompatibility = new HashSet<>(Arrays.asList(ExifInterface.TAG_F_NUMBER, ExifInterface.TAG_EXPOSURE_TIME, ExifInterface.TAG_GPS_TIMESTAMP));
    }

    public ExifData(ByteOrder byteOrder, List<Map<String, ExifAttribute>> list) {
        Preconditions.checkState(list.size() == EXIF_TAGS.length, "Malformed attributes list. Number of IFDs mismatch.");
        this.mByteOrder = byteOrder;
        this.mAttributes = list;
    }

    @NonNull
    public static Builder builderForDevice() {
        return new Builder(ByteOrder.BIG_ENDIAN).setAttribute(ExifInterface.TAG_ORIENTATION, String.valueOf(1)).setAttribute(ExifInterface.TAG_X_RESOLUTION, "72/1").setAttribute(ExifInterface.TAG_Y_RESOLUTION, "72/1").setAttribute(ExifInterface.TAG_RESOLUTION_UNIT, String.valueOf(2)).setAttribute(ExifInterface.TAG_Y_CB_CR_POSITIONING, String.valueOf(1)).setAttribute(ExifInterface.TAG_MAKE, Build.MANUFACTURER).setAttribute(ExifInterface.TAG_MODEL, Build.MODEL);
    }

    @Nullable
    private ExifAttribute getExifAttribute(@NonNull String str) {
        if (ExifInterface.TAG_ISO_SPEED_RATINGS.equals(str)) {
            str = ExifInterface.TAG_PHOTOGRAPHIC_SENSITIVITY;
        }
        for (int r02 = 0; r02 < EXIF_TAGS.length; r02++) {
            ExifAttribute exifAttribute = this.mAttributes.get(r02).get(str);
            if (exifAttribute != null) {
                return exifAttribute;
            }
        }
        return null;
    }

    @Nullable
    public String getAttribute(@NonNull String str) {
        String str2;
        ExifAttribute exifAttribute = getExifAttribute(str);
        if (exifAttribute != null) {
            if (!sTagSetForCompatibility.contains(str)) {
                return exifAttribute.getStringValue(this.mByteOrder);
            }
            if (str.equals(ExifInterface.TAG_GPS_TIMESTAMP)) {
                int r72 = exifAttribute.format;
                if (r72 == 5 || r72 == 10) {
                    LongRational[] longRationalArr = (LongRational[]) exifAttribute.getValue(this.mByteOrder);
                    if (longRationalArr != null && longRationalArr.length == 3) {
                        return String.format(Locale.US, "%02d:%02d:%02d", Integer.valueOf((int) (longRationalArr[0].getNumerator() / longRationalArr[0].getDenominator())), Integer.valueOf((int) (longRationalArr[1].getNumerator() / longRationalArr[1].getDenominator())), Integer.valueOf((int) (longRationalArr[2].getNumerator() / longRationalArr[2].getDenominator())));
                    }
                    str2 = "Invalid GPS Timestamp array. array=" + Arrays.toString(longRationalArr);
                } else {
                    str2 = "GPS Timestamp format is not rational. format=" + exifAttribute.format;
                }
                Logger.w(TAG, str2);
                return null;
            }
            try {
                return Double.toString(exifAttribute.getDoubleValue(this.mByteOrder));
            } catch (NumberFormatException unused) {
            }
        }
        return null;
    }

    @NonNull
    public Map<String, ExifAttribute> getAttributes(int r42) {
        Preconditions.checkArgumentInRange(r42, 0, EXIF_TAGS.length, androidx.appcompat.graphics.drawable.a.f("Invalid IFD index: ", r42, ". Index should be between [0, EXIF_TAGS.length] "));
        return this.mAttributes.get(r42);
    }

    @NonNull
    public ByteOrder getByteOrder() {
        return this.mByteOrder;
    }
}
