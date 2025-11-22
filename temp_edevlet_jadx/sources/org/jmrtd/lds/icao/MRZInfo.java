package org.jmrtd.lds.icao;

import androidx.appcompat.widget.v;
import androidx.browser.browseractions.b;
import androidx.camera.camera2.internal.c;
import androidx.exifinterface.media.ExifInterface;
import java.io.ByteArrayInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import net.sf.scuba.data.Gender;
import net.sf.scuba.smartcards.ISO7816;
import org.jmrtd.lds.AbstractLDSInfo;

/* loaded from: classes2.dex */
public class MRZInfo extends AbstractLDSInfo {
    public static final int DOC_TYPE_ID1 = 1;
    public static final int DOC_TYPE_ID2 = 2;
    public static final int DOC_TYPE_ID3 = 3;
    public static final int DOC_TYPE_UNSPECIFIED = 0;
    private static final String MRZ_CHARS = "<0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final long serialVersionUID = 7054965914471297804L;
    private char compositeCheckDigit;
    private String dateOfBirth;
    private char dateOfBirthCheckDigit;
    private String dateOfExpiry;
    private char dateOfExpiryCheckDigit;
    private String documentCode;
    private String documentNumber;
    private char documentNumberCheckDigit;
    private DocumentType documentType;
    private Gender gender;
    private String issuingState;
    private String nationality;
    private String optionalData1;
    private String optionalData2;
    private char personalNumberCheckDigit;
    private String primaryIdentifier;
    private String secondaryIdentifier;

    /* renamed from: org.jmrtd.lds.icao.MRZInfo$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$net$sf$scuba$data$Gender;
        static final /* synthetic */ int[] $SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType;

        static {
            int[] r02 = new int[Gender.values().length];
            $SwitchMap$net$sf$scuba$data$Gender = r02;
            try {
                r02[Gender.MALE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$net$sf$scuba$data$Gender[Gender.FEMALE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] r22 = new int[DocumentType.values().length];
            $SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType = r22;
            try {
                r22[DocumentType.TD1.ordinal()] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType[DocumentType.TD2.ordinal()] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType[DocumentType.MRVB.ordinal()] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType[DocumentType.MRVA.ordinal()] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType[DocumentType.TD3.ordinal()] = 5;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    public enum DocumentType {
        UNKNOWN(0),
        TD1(1),
        TD2(2),
        TD3(3),
        MRVA(4),
        MRVB(5);

        private int code;

        DocumentType(int r32) {
            this.code = r32;
        }

        public int getCode() {
            return this.code;
        }
    }

    public MRZInfo(InputStream inputStream, int r22) {
        try {
            readObject(inputStream, r22);
        } catch (IOException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    public MRZInfo(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Null string");
        }
        String strReplace = str.trim().replace("\n", "");
        try {
            readObject(new ByteArrayInputStream(strReplace.getBytes("UTF-8")), strReplace.length());
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException("Exception", e10);
        } catch (IOException e11) {
            throw new IllegalArgumentException("Exception", e11);
        }
    }

    @Deprecated
    public MRZInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, Gender gender, String str8, String str9) {
        this(getDocumentTypeFromDocumentCode(str), str, str2, str5, personalNumberToOptionalData(str9), str7, gender, str8, str6, null, str3, str4);
    }

    @Deprecated
    public MRZInfo(String str, String str2, String str3, String str4, String str5, Gender gender, String str6, String str7, String str8, String str9, String str10) {
        this(getDocumentTypeFromDocumentCode(str), str, str2, str3, str4, str5, gender, str6, str7, str8, str9, str10);
    }

    private MRZInfo(DocumentType documentType, String str, String str2, String str3, String str4, String str5, Gender gender, String str6, String str7, String str8, String str9, String str10) {
        this.documentType = documentType;
        if (!isDocumentCodeConsistentWithDocumentType(documentType, str)) {
            throw new IllegalArgumentException("Wrong document code");
        }
        if (!isOptionalDataConsistentWithDocumentType(documentType, str4, str8)) {
            throw new IllegalArgumentException("Wrong optional data length");
        }
        if (gender == null) {
            throw new IllegalArgumentException("Gender must not be null");
        }
        this.documentCode = trimTrailingFillerChars(str);
        this.issuingState = str2;
        this.primaryIdentifier = trimTrailingFillerChars(str9).replace("<", " ");
        this.secondaryIdentifier = trimTrailingFillerChars(str10).replace("<", " ");
        this.documentNumber = trimTrailingFillerChars(str3);
        this.nationality = str7;
        this.dateOfBirth = str5;
        this.gender = gender;
        this.dateOfExpiry = str6;
        this.optionalData1 = str4 == null ? "" : trimTrailingFillerChars(str4);
        this.optionalData2 = str8 == null ? null : trimTrailingFillerChars(str8);
        checkDigit();
    }

    public static char checkDigit(String str) {
        return checkDigit(str, false);
    }

    private static char checkDigit(String str, boolean z10) {
        try {
            byte[] bytes = str == null ? new byte[0] : str.getBytes("UTF-8");
            int[] r42 = {7, 3, 1};
            int r6 = 0;
            for (int r32 = 0; r32 < bytes.length; r32++) {
                r6 = ((r42[r32 % 3] * decodeMRZDigit(bytes[r32])) + r6) % 10;
            }
            String string = Integer.toString(r6);
            if (string.length() != 1) {
                throw new IllegalStateException("Error in computing check digit.");
            }
            char c10 = (char) string.getBytes("UTF-8")[0];
            if (z10 && c10 == '0') {
                return '<';
            }
            return c10;
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException("Error in computing check digit", e10);
        } catch (NumberFormatException e11) {
            throw new IllegalStateException("Error in computing check digit", e11);
        } catch (Exception e12) {
            throw new IllegalArgumentException("Error in computing check digit", e12);
        }
    }

    private void checkDigit() {
        this.documentNumberCheckDigit = checkDigit(this.documentNumber);
        this.dateOfBirthCheckDigit = checkDigit(this.dateOfBirth);
        this.dateOfExpiryCheckDigit = checkDigit(this.dateOfExpiry);
        if (this.documentType == DocumentType.TD3 && this.optionalData1.length() < 15) {
            this.personalNumberCheckDigit = checkDigit(mrzFormat(this.optionalData1, 14), true);
        }
        this.compositeCheckDigit = checkDigit(getComposite(this.documentType));
    }

    public static MRZInfo createMRVAMRZInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, Gender gender, String str8, String str9) {
        return new MRZInfo(DocumentType.MRVA, str, str2, str5, str9, str7, gender, str8, str6, null, str3, str4);
    }

    public static MRZInfo createMRVBMRZInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, Gender gender, String str8, String str9) {
        return new MRZInfo(DocumentType.MRVB, str, str2, str5, str9, str7, gender, str8, str6, null, str3, str4);
    }

    public static MRZInfo createTD1MRZInfo(String str, String str2, String str3, String str4, String str5, Gender gender, String str6, String str7, String str8, String str9, String str10) {
        return new MRZInfo(DocumentType.TD1, str, str2, str3, str4, str5, gender, str6, str7, str8, str9, str10);
    }

    public static MRZInfo createTD2MRZInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, Gender gender, String str8, String str9) {
        return new MRZInfo(DocumentType.TD2, str, str2, str5, str9, str7, gender, str8, str6, null, str3, str4);
    }

    public static MRZInfo createTD3MRZInfo(String str, String str2, String str3, String str4, String str5, String str6, String str7, Gender gender, String str8, String str9) {
        return new MRZInfo(DocumentType.TD3, str, str2, str5, personalNumberToOptionalData(str9), str7, gender, str8, str6, null, str3, str4);
    }

    private static int decodeMRZDigit(byte b10) {
        if (b10 == 60) {
            return 0;
        }
        switch (b10) {
            case 48:
                return 0;
            case 49:
                return 1;
            case 50:
                return 2;
            case 51:
                return 3;
            case 52:
                return 4;
            case 53:
                return 5;
            case 54:
                return 6;
            case 55:
                return 7;
            case 56:
                return 8;
            case 57:
                return 9;
            default:
                switch (b10) {
                    case 65:
                        return 10;
                    case 66:
                        return 11;
                    case 67:
                        return 12;
                    case 68:
                        return 13;
                    case 69:
                        return 14;
                    case 70:
                        return 15;
                    case 71:
                        return 16;
                    case 72:
                        return 17;
                    case 73:
                        return 18;
                    case 74:
                        return 19;
                    case 75:
                        return 20;
                    case 76:
                        return 21;
                    case 77:
                        return 22;
                    case 78:
                        return 23;
                    case 79:
                        return 24;
                    case 80:
                        return 25;
                    case 81:
                        return 26;
                    case 82:
                        return 27;
                    case 83:
                        return 28;
                    case 84:
                        return 29;
                    case 85:
                        return 30;
                    case 86:
                        return 31;
                    case 87:
                        return 32;
                    case 88:
                        return 33;
                    case 89:
                        return 34;
                    case 90:
                        return 35;
                    default:
                        switch (b10) {
                            case 97:
                                return 10;
                            case 98:
                                return 11;
                            case 99:
                                return 12;
                            case 100:
                                return 13;
                            case 101:
                                return 14;
                            case 102:
                                return 15;
                            case 103:
                                return 16;
                            case 104:
                                return 17;
                            case 105:
                                return 18;
                            case 106:
                                return 19;
                            case 107:
                                return 20;
                            case 108:
                                return 21;
                            case 109:
                                return 22;
                            case 110:
                                return 23;
                            case 111:
                                return 24;
                            case 112:
                                return 25;
                            case 113:
                                return 26;
                            case 114:
                                return 27;
                            case 115:
                                return 28;
                            case 116:
                                return 29;
                            case 117:
                                return 30;
                            case 118:
                                return 31;
                            case 119:
                                return 32;
                            case 120:
                                return 33;
                            case 121:
                                return 34;
                            case 122:
                                return 35;
                            default:
                                StringBuilder sbE = v.e("Could not decode MRZ character ", b10, " ('");
                                sbE.append(Character.toString((char) b10));
                                sbE.append("')");
                                throw new NumberFormatException(sbE.toString());
                        }
                }
        }
    }

    public static boolean equalsModuloFillerChars(String str, String str2) {
        if (str == str2) {
            return true;
        }
        if (str == null) {
            str = "";
        }
        if (str2 == null) {
            str2 = "";
        }
        int r02 = Math.max(str.length(), str2.length());
        return mrzFormat(str, r02).equals(mrzFormat(str2, r02));
    }

    private static String genderToString(Gender gender) {
        int r12 = AnonymousClass1.$SwitchMap$net$sf$scuba$data$Gender[gender.ordinal()];
        return r12 != 1 ? r12 != 2 ? "<" : "F" : "M";
    }

    private String getComposite(DocumentType documentType) {
        String strMrzFormat;
        String str;
        int r12;
        StringBuilder sb2 = new StringBuilder();
        int length = this.documentNumber.length();
        int r52 = AnonymousClass1.$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType[documentType.ordinal()];
        if (r52 == 1) {
            String str2 = this.documentNumber;
            if (length <= 9) {
                sb2.append(mrzFormat(str2, 9));
                sb2.append(this.documentNumberCheckDigit);
                strMrzFormat = mrzFormat(this.optionalData1, 15);
            } else {
                sb2.append(str2.substring(0, 9));
                sb2.append("<");
                String strSubstring = this.documentNumber.substring(9);
                sb2.append(strSubstring);
                sb2.append(this.documentNumberCheckDigit);
                sb2.append('<');
                strMrzFormat = mrzFormat(this.optionalData1, 13 - strSubstring.length());
            }
            sb2.append(strMrzFormat);
            sb2.append(this.dateOfBirth);
            sb2.append(this.dateOfBirthCheckDigit);
            sb2.append(this.dateOfExpiry);
            sb2.append(this.dateOfExpiryCheckDigit);
            str = this.optionalData2;
            r12 = 11;
        } else {
            if (r52 != 2) {
                if (r52 == 3 || r52 == 4) {
                    return null;
                }
                if (r52 != 5) {
                    throw new IllegalStateException("Unsupported document type");
                }
                sb2.append(mrzFormat(this.documentNumber, 9));
                sb2.append(this.documentNumberCheckDigit);
                sb2.append(this.dateOfBirth);
                sb2.append(this.dateOfBirthCheckDigit);
                sb2.append(this.dateOfExpiry);
                sb2.append(this.dateOfExpiryCheckDigit);
                sb2.append(mrzFormat(this.optionalData1, 14));
                sb2.append(this.personalNumberCheckDigit);
                return sb2.toString();
            }
            sb2.append(this.documentNumber);
            sb2.append(this.documentNumberCheckDigit);
            sb2.append(this.dateOfBirth);
            sb2.append(this.dateOfBirthCheckDigit);
            sb2.append(this.dateOfExpiry);
            sb2.append(this.dateOfExpiryCheckDigit);
            str = this.optionalData1;
            r12 = 7;
        }
        sb2.append(mrzFormat(str, r12));
        return sb2.toString();
    }

    private static DocumentType getDocumentType(String str, int r32) {
        if (str == null || str.length() < 1 || str.length() > 2) {
            throw new IllegalArgumentException(b.e("Was expecting 1 or 2 digit document code, got ", str));
        }
        return r32 != 72 ? r32 != 88 ? r32 != 90 ? DocumentType.UNKNOWN : DocumentType.TD1 : str.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED) ? DocumentType.MRVA : DocumentType.TD3 : str.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED) ? DocumentType.MRVB : DocumentType.TD2;
    }

    private static DocumentType getDocumentTypeFromDocumentCode(String str) {
        return (str.startsWith(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS) || str.startsWith("C") || str.startsWith("I")) ? DocumentType.TD1 : str.startsWith(ExifInterface.GPS_MEASUREMENT_INTERRUPTED) ? DocumentType.MRVB : str.startsWith("P") ? DocumentType.TD3 : DocumentType.UNKNOWN;
    }

    private static boolean isDocumentCodeConsistentWithDocumentType(DocumentType documentType, String str) {
        String str2;
        if (str == null) {
            return false;
        }
        if (str.length() != 1 && str.length() != 2) {
            return false;
        }
        int r42 = AnonymousClass1.$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType[documentType.ordinal()];
        if (r42 == 1 || r42 == 2) {
            return str.startsWith("C") || str.startsWith("I") || str.startsWith(ExifInterface.GPS_MEASUREMENT_IN_PROGRESS);
        }
        if (r42 == 3 || r42 == 4) {
            str2 = ExifInterface.GPS_MEASUREMENT_INTERRUPTED;
        } else {
            if (r42 != 5) {
                return false;
            }
            str2 = "P";
        }
        return str.startsWith(str2);
    }

    private static boolean isOptionalDataConsistentWithDocumentType(DocumentType documentType, String str, String str2) {
        int r42 = AnonymousClass1.$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType[documentType.ordinal()];
        if (r42 == 1) {
            if (str == null || str.length() <= 15) {
                return str2 == null || str2.length() <= 11;
            }
            return false;
        }
        if (r42 == 2) {
            return (str == null || str.length() <= 7) && str2 == null;
        }
        if (r42 == 3) {
            return (str == null || str.length() <= 8) && str2 == null;
        }
        if (r42 == 4) {
            return (str == null || str.length() <= 16) && str2 == null;
        }
        if (r42 != 5) {
            return false;
        }
        return (str == null || str.length() <= 15) && str2 == null;
    }

    private static String mrzFormat(String str, int r6) {
        if (str == null) {
            return "";
        }
        if (str.length() > r6) {
            throw new IllegalArgumentException("Argument too wide (" + str.length() + " > " + r6 + ")");
        }
        String strTrim = str.toUpperCase().trim();
        StringBuilder sb2 = new StringBuilder();
        for (int r12 = 0; r12 < strTrim.length(); r12++) {
            char cCharAt = strTrim.charAt(r12);
            if (MRZ_CHARS.indexOf(cCharAt) == -1) {
                cCharAt = '<';
            }
            sb2.append(cCharAt);
        }
        while (sb2.length() < r6) {
            sb2.append("<");
        }
        return sb2.toString();
    }

    private static String nameToString(String str, String str2, int r11) {
        String[] strArrSplit = str.split(" |<");
        String[] strArrSplit2 = (str2 == null || str2.trim().isEmpty()) ? new String[0] : str2.split(" |<");
        StringBuilder sb2 = new StringBuilder();
        boolean z10 = true;
        boolean z11 = true;
        for (String str3 : strArrSplit) {
            if (z11) {
                z11 = false;
            } else {
                sb2.append('<');
            }
            sb2.append(str3);
        }
        if (str2 != null && !str2.trim().isEmpty()) {
            sb2.append("<<");
            for (String str4 : strArrSplit2) {
                if (z10) {
                    z10 = false;
                } else {
                    sb2.append('<');
                }
                sb2.append(str4);
            }
        }
        return mrzFormat(sb2.toString(), r11);
    }

    private static String personalNumberToOptionalData(String str) {
        if (str == null || equalsModuloFillerChars(str, "")) {
            return "";
        }
        if (str.length() == 15) {
            return str;
        }
        if (str.length() <= 14) {
            return mrzFormat(str, 14);
        }
        throw new IllegalArgumentException("Wrong personal number: ".concat(str));
    }

    private static String readCountryCode(DataInputStream dataInputStream) throws IOException {
        return trimTrailingFillerChars(readString(dataInputStream, 3));
    }

    private String readDate(DataInputStream dataInputStream) throws IOException, NumberFormatException {
        return readString(dataInputStream, 6);
    }

    private Gender readGender(DataInputStream dataInputStream) throws IOException {
        String string = readString(dataInputStream, 1);
        return "M".equalsIgnoreCase(string) ? Gender.MALE : "F".equalsIgnoreCase(string) ? Gender.FEMALE : Gender.UNKNOWN;
    }

    private void readNameIdentifiers(String str) {
        int r02 = str.indexOf("<<");
        if (r02 < 0) {
            this.primaryIdentifier = trimTrailingFillerChars(str).replace("<", " ");
            this.secondaryIdentifier = "";
        } else {
            this.primaryIdentifier = trimTrailingFillerChars(str.substring(0, r02)).replace("<", " ");
            readSecondaryIdentifiers(str.substring(r02 + 2));
        }
    }

    private void readObject(InputStream inputStream, int r42) throws IOException {
        DataInputStream dataInputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        String strTrimTrailingFillerChars = trimTrailingFillerChars(readString(dataInputStream, 2));
        this.documentCode = strTrimTrailingFillerChars;
        DocumentType documentType = getDocumentType(strTrimTrailingFillerChars, r42);
        this.documentType = documentType;
        int r43 = AnonymousClass1.$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType[documentType.ordinal()];
        if (r43 == 1) {
            readObjectTD1(dataInputStream);
        } else if (r43 == 2 || r43 == 3) {
            readObjectTD2orMRVB(dataInputStream);
        } else {
            readObjectTD3OrMRVA(dataInputStream);
        }
    }

    private void readObjectTD1(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        this.issuingState = readCountryCode(dataInputStream);
        this.documentNumber = readString(dataInputStream, 9);
        this.documentNumberCheckDigit = (char) dataInputStream.readUnsignedByte();
        String strTrimTrailingFillerChars = trimTrailingFillerChars(readString(dataInputStream, 15));
        this.optionalData1 = strTrimTrailingFillerChars;
        if (this.documentNumberCheckDigit == '<' && !strTrimTrailingFillerChars.isEmpty()) {
            int length = this.optionalData1.indexOf(60);
            if (length < 0) {
                length = this.optionalData1.length();
            }
            int r22 = length - 1;
            this.documentNumber = c.h(new StringBuilder(), this.documentNumber, this.optionalData1.substring(0, r22));
            this.documentNumberCheckDigit = this.optionalData1.charAt(r22);
            String str = this.optionalData1;
            this.optionalData1 = str.substring(Math.min(length + 1, str.length()));
        }
        this.documentNumber = trimTrailingFillerChars(this.documentNumber);
        this.dateOfBirth = readDate(dataInputStream);
        this.dateOfBirthCheckDigit = (char) dataInputStream.readUnsignedByte();
        this.gender = readGender(dataInputStream);
        this.dateOfExpiry = readDate(dataInputStream);
        this.dateOfExpiryCheckDigit = (char) dataInputStream.readUnsignedByte();
        this.nationality = readCountryCode(dataInputStream);
        this.optionalData2 = trimTrailingFillerChars(readString(dataInputStream, 11));
        this.compositeCheckDigit = (char) dataInputStream.readUnsignedByte();
        readNameIdentifiers(readString(dataInputStream, 30));
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void readObjectTD2orMRVB(java.io.InputStream r5) throws java.io.IOException {
        /*
            r4 = this;
            boolean r0 = r5 instanceof java.io.DataInputStream
            if (r0 == 0) goto L7
            java.io.DataInputStream r5 = (java.io.DataInputStream) r5
            goto Ld
        L7:
            java.io.DataInputStream r0 = new java.io.DataInputStream
            r0.<init>(r5)
            r5 = r0
        Ld:
            java.lang.String r0 = readCountryCode(r5)
            r4.issuingState = r0
            r0 = 31
            java.lang.String r0 = readString(r5, r0)
            r4.readNameIdentifiers(r0)
            r0 = 9
            java.lang.String r0 = readString(r5, r0)
            java.lang.String r0 = trimTrailingFillerChars(r0)
            r4.documentNumber = r0
            int r0 = r5.readUnsignedByte()
            char r0 = (char) r0
            r4.documentNumberCheckDigit = r0
            java.lang.String r0 = readCountryCode(r5)
            r4.nationality = r0
            java.lang.String r0 = r4.readDate(r5)
            r4.dateOfBirth = r0
            int r0 = r5.readUnsignedByte()
            char r0 = (char) r0
            r4.dateOfBirthCheckDigit = r0
            net.sf.scuba.data.Gender r0 = r4.readGender(r5)
            r4.gender = r0
            java.lang.String r0 = r4.readDate(r5)
            r4.dateOfExpiry = r0
            int r0 = r5.readUnsignedByte()
            char r0 = (char) r0
            r4.dateOfExpiryCheckDigit = r0
            org.jmrtd.lds.icao.MRZInfo$DocumentType r0 = r4.documentType
            org.jmrtd.lds.icao.MRZInfo$DocumentType r1 = org.jmrtd.lds.icao.MRZInfo.DocumentType.MRVB
            if (r0 != r1) goto L68
            r0 = 8
            java.lang.String r0 = readString(r5, r0)
            java.lang.String r0 = trimTrailingFillerChars(r0)
        L65:
            r4.optionalData1 = r0
            goto Lb4
        L68:
            org.jmrtd.lds.icao.MRZInfo$DocumentType r1 = org.jmrtd.lds.icao.MRZInfo.DocumentType.TD2
            if (r0 != r1) goto Lb4
            r0 = 7
            java.lang.String r0 = readString(r5, r0)
            java.lang.String r0 = trimTrailingFillerChars(r0)
            r4.optionalData1 = r0
            char r1 = r4.documentNumberCheckDigit
            r2 = 60
            if (r1 != r2) goto Lb4
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto Lb4
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r1 = r4.documentNumber
            r0.append(r1)
            java.lang.String r1 = r4.optionalData1
            int r2 = r1.length()
            int r2 = r2 + (-1)
            r3 = 0
            java.lang.String r1 = r1.substring(r3, r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r4.documentNumber = r0
            java.lang.String r0 = r4.optionalData1
            int r1 = r0.length()
            int r1 = r1 + (-1)
            char r0 = r0.charAt(r1)
            r4.documentNumberCheckDigit = r0
            java.lang.String r0 = ""
            goto L65
        Lb4:
            java.lang.String r0 = r4.documentNumber
            java.lang.String r0 = trimTrailingFillerChars(r0)
            r4.documentNumber = r0
            org.jmrtd.lds.icao.MRZInfo$DocumentType r0 = r4.documentType
            org.jmrtd.lds.icao.MRZInfo$DocumentType r1 = org.jmrtd.lds.icao.MRZInfo.DocumentType.TD2
            if (r0 != r1) goto Lc9
            int r5 = r5.readUnsignedByte()
            char r5 = (char) r5
            r4.compositeCheckDigit = r5
        Lc9:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jmrtd.lds.icao.MRZInfo.readObjectTD2orMRVB(java.io.InputStream):void");
    }

    private void readObjectTD3OrMRVA(InputStream inputStream) throws IOException {
        DataInputStream dataInputStream = inputStream instanceof DataInputStream ? (DataInputStream) inputStream : new DataInputStream(inputStream);
        this.issuingState = readCountryCode(dataInputStream);
        readNameIdentifiers(readString(dataInputStream, 39));
        this.documentNumber = trimTrailingFillerChars(readString(dataInputStream, 9));
        this.documentNumberCheckDigit = (char) dataInputStream.readUnsignedByte();
        this.nationality = readCountryCode(dataInputStream);
        this.dateOfBirth = readDate(dataInputStream);
        this.dateOfBirthCheckDigit = (char) dataInputStream.readUnsignedByte();
        this.gender = readGender(dataInputStream);
        this.dateOfExpiry = readDate(dataInputStream);
        this.dateOfExpiryCheckDigit = (char) dataInputStream.readUnsignedByte();
        if (this.documentType == DocumentType.MRVA) {
            this.optionalData1 = trimTrailingFillerChars(readString(dataInputStream, 16));
            return;
        }
        this.optionalData1 = trimTrailingFillerChars(readString(dataInputStream, 14));
        this.personalNumberCheckDigit = (char) dataInputStream.readUnsignedByte();
        this.compositeCheckDigit = (char) dataInputStream.readUnsignedByte();
    }

    private void readSecondaryIdentifiers(String str) {
        this.secondaryIdentifier = trimTrailingFillerChars(str).replace("<", " ");
    }

    private static String readString(DataInputStream dataInputStream, int r12) throws IOException {
        byte[] bArr = new byte[r12];
        dataInputStream.readFully(bArr);
        return new String(bArr).trim();
    }

    private static String trimTrailingFillerChars(String str) {
        if (str == null) {
            str = "";
        }
        byte[] bytes = str.trim().getBytes();
        for (int length = bytes.length - 1; length >= 0 && bytes[length] == 60; length--) {
            bytes[length] = ISO7816.INS_VERIFY;
        }
        return new String(bytes).trim();
    }

    private static void writeCountryCode(String str, DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(mrzFormat(str, 3).getBytes("UTF-8"));
    }

    private void writeDateOfBirth(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(this.dateOfBirth.getBytes("UTF-8"));
    }

    private void writeDateOfExpiry(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(this.dateOfExpiry.getBytes("UTF-8"));
    }

    private void writeDocumentType(DataOutputStream dataOutputStream) throws IOException {
        writeString(this.documentCode, dataOutputStream, 2);
    }

    private void writeGender(DataOutputStream dataOutputStream) throws IOException {
        dataOutputStream.write(genderToString(this.gender).getBytes("UTF-8"));
    }

    private void writeName(DataOutputStream dataOutputStream, int r42) throws IOException {
        dataOutputStream.write(nameToString(this.primaryIdentifier, this.secondaryIdentifier, r42).getBytes("UTF-8"));
    }

    private void writeObjectTD1(OutputStream outputStream) throws IOException {
        String str;
        DataOutputStream dataOutputStream = outputStream instanceof DataOutputStream ? (DataOutputStream) outputStream : new DataOutputStream(outputStream);
        writeDocumentType(dataOutputStream);
        writeCountryCode(this.issuingState, dataOutputStream);
        if (this.documentNumber.length() > 9) {
            writeString(this.documentNumber.substring(0, 9), dataOutputStream, 9);
            dataOutputStream.write(60);
            str = this.documentNumber.substring(9) + Character.toString(this.documentNumberCheckDigit) + "<" + this.optionalData1;
        } else {
            writeString(this.documentNumber, dataOutputStream, 9);
            dataOutputStream.write(this.documentNumberCheckDigit);
            str = this.optionalData1;
        }
        writeString(str, dataOutputStream, 15);
        writeDateOfBirth(dataOutputStream);
        dataOutputStream.write(this.dateOfBirthCheckDigit);
        writeGender(dataOutputStream);
        writeDateOfExpiry(dataOutputStream);
        dataOutputStream.write(this.dateOfExpiryCheckDigit);
        writeCountryCode(this.nationality, dataOutputStream);
        writeString(this.optionalData2, dataOutputStream, 11);
        dataOutputStream.write(this.compositeCheckDigit);
        writeName(dataOutputStream, 30);
    }

    private void writeObjectTD2OrMRVB(OutputStream outputStream) throws IOException {
        char c10;
        String str;
        DataOutputStream dataOutputStream = outputStream instanceof DataOutputStream ? (DataOutputStream) outputStream : new DataOutputStream(outputStream);
        writeDocumentType(dataOutputStream);
        writeCountryCode(this.issuingState, dataOutputStream);
        writeName(dataOutputStream, 31);
        boolean z10 = this.documentType == DocumentType.TD2 && this.documentNumber.length() > 9 && equalsModuloFillerChars(this.optionalData1, "");
        String str2 = this.documentNumber;
        if (z10) {
            writeString(str2.substring(0, 9), dataOutputStream, 9);
            c10 = '<';
        } else {
            writeString(str2, dataOutputStream, 9);
            c10 = this.documentNumberCheckDigit;
        }
        dataOutputStream.write(c10);
        writeCountryCode(this.nationality, dataOutputStream);
        writeDateOfBirth(dataOutputStream);
        dataOutputStream.write(this.dateOfBirthCheckDigit);
        writeGender(dataOutputStream);
        writeDateOfExpiry(dataOutputStream);
        dataOutputStream.write(this.dateOfExpiryCheckDigit);
        if (this.documentType == DocumentType.MRVB) {
            writeString(this.optionalData1, dataOutputStream, 8);
            return;
        }
        if (z10) {
            str = this.documentNumber.substring(9) + this.documentNumberCheckDigit + "<";
        } else {
            str = this.optionalData1;
        }
        writeString(str, dataOutputStream, 7);
        dataOutputStream.write(this.compositeCheckDigit);
    }

    private void writeObjectTD3OrMRVA(OutputStream outputStream) throws IOException {
        DataOutputStream dataOutputStream = outputStream instanceof DataOutputStream ? (DataOutputStream) outputStream : new DataOutputStream(outputStream);
        writeDocumentType(dataOutputStream);
        writeCountryCode(this.issuingState, dataOutputStream);
        writeName(dataOutputStream, 39);
        writeString(this.documentNumber, dataOutputStream, 9);
        dataOutputStream.write(this.documentNumberCheckDigit);
        writeCountryCode(this.nationality, dataOutputStream);
        writeDateOfBirth(dataOutputStream);
        dataOutputStream.write(this.dateOfBirthCheckDigit);
        writeGender(dataOutputStream);
        writeDateOfExpiry(dataOutputStream);
        dataOutputStream.write(this.dateOfExpiryCheckDigit);
        if (this.documentType == DocumentType.MRVA) {
            writeString(this.optionalData1, dataOutputStream, 16);
            return;
        }
        writeString(this.optionalData1, dataOutputStream, 14);
        dataOutputStream.write(this.personalNumberCheckDigit);
        dataOutputStream.write(this.compositeCheckDigit);
    }

    private void writeString(String str, DataOutputStream dataOutputStream, int r32) throws IOException {
        dataOutputStream.write(mrzFormat(str, r32).getBytes("UTF-8"));
    }

    public boolean equals(Object obj) {
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        MRZInfo mRZInfo = (MRZInfo) obj;
        if (!equalsModuloFillerChars(this.documentCode, mRZInfo.documentCode) || !equalsModuloFillerChars(this.issuingState, mRZInfo.issuingState) || !equalsModuloFillerChars(this.primaryIdentifier, mRZInfo.primaryIdentifier) || !equalsModuloFillerChars(this.secondaryIdentifier, mRZInfo.secondaryIdentifier) || !equalsModuloFillerChars(this.nationality, mRZInfo.nationality) || !equalsModuloFillerChars(this.documentNumber, mRZInfo.documentNumber)) {
            return false;
        }
        if (!equalsModuloFillerChars(this.optionalData1, mRZInfo.optionalData1) && !equalsModuloFillerChars(getPersonalNumber(), mRZInfo.getPersonalNumber())) {
            return false;
        }
        String str = this.dateOfBirth;
        if (!(str == null && mRZInfo.dateOfBirth == null) && (str == null || !str.equals(mRZInfo.dateOfBirth))) {
            return false;
        }
        Gender gender = this.gender;
        if (!(gender == null && mRZInfo.gender == null) && (gender == null || !gender.equals(mRZInfo.gender))) {
            return false;
        }
        String str2 = this.dateOfExpiry;
        return ((str2 == null && mRZInfo.dateOfExpiry == null) || (str2 != null && str2.equals(mRZInfo.dateOfExpiry))) && equalsModuloFillerChars(this.optionalData2, mRZInfo.optionalData2);
    }

    public String getDateOfBirth() {
        return this.dateOfBirth;
    }

    public String getDateOfExpiry() {
        return this.dateOfExpiry;
    }

    public String getDocumentCode() {
        return this.documentCode;
    }

    public String getDocumentNumber() {
        return this.documentNumber;
    }

    @Deprecated
    public int getDocumentType() {
        return this.documentType.getCode();
    }

    public Gender getGender() {
        return this.gender;
    }

    public String getIssuingState() {
        return mrzFormat(this.issuingState, 3);
    }

    public String getNationality() {
        return mrzFormat(this.nationality, 3);
    }

    public String getOptionalData1() {
        return this.optionalData1;
    }

    public String getOptionalData2() {
        return this.optionalData2;
    }

    public String getPersonalNumber() {
        String str = this.optionalData1;
        if (str == null) {
            return null;
        }
        return trimTrailingFillerChars(str.length() > 14 ? this.optionalData1.substring(0, 14) : this.optionalData1);
    }

    public String getPrimaryIdentifier() {
        return this.primaryIdentifier;
    }

    public String getSecondaryIdentifier() {
        return this.secondaryIdentifier;
    }

    public String[] getSecondaryIdentifierComponents() {
        return this.secondaryIdentifier.split(" |<");
    }

    public int hashCode() {
        return (toString().hashCode() * 2) + 53;
    }

    @Deprecated
    public void setDateOfBirth(String str) {
        this.dateOfBirth = str;
        checkDigit();
    }

    @Deprecated
    public void setDateOfExpiry(String str) {
        this.dateOfExpiry = str;
        checkDigit();
    }

    @Deprecated
    public void setDocumentCode(String str) {
        this.documentCode = str;
        DocumentType documentTypeFromDocumentCode = getDocumentTypeFromDocumentCode(str);
        this.documentType = documentTypeFromDocumentCode;
        if (documentTypeFromDocumentCode == DocumentType.TD1 && this.optionalData2 == null) {
            this.optionalData2 = "";
        }
    }

    @Deprecated
    public void setDocumentNumber(String str) {
        this.documentNumber = str.trim();
        checkDigit();
    }

    @Deprecated
    public void setGender(Gender gender) {
        if (gender == null) {
            throw new IllegalArgumentException("Gender must not be null");
        }
        this.gender = gender;
        checkDigit();
    }

    @Deprecated
    public void setIssuingState(String str) {
        this.issuingState = str;
        checkDigit();
    }

    @Deprecated
    public void setNationality(String str) {
        this.nationality = str;
        checkDigit();
    }

    @Deprecated
    public void setOptionalData2(String str) {
        this.optionalData2 = trimTrailingFillerChars(str);
        checkDigit();
    }

    @Deprecated
    public void setPersonalNumber(String str) {
        if (str == null || str.length() > 14) {
            throw new IllegalArgumentException("Wrong personal number");
        }
        String strMrzFormat = mrzFormat(str, 14);
        this.optionalData1 = strMrzFormat;
        this.personalNumberCheckDigit = checkDigit(strMrzFormat);
    }

    @Deprecated
    public void setPrimaryIdentifier(String str) {
        this.primaryIdentifier = trimTrailingFillerChars(str).replace("<", " ");
        checkDigit();
    }

    @Deprecated
    public void setSecondaryIdentifierComponents(String[] strArr) {
        if (strArr == null) {
            this.secondaryIdentifier = null;
        } else {
            for (String str : strArr) {
            }
        }
        checkDigit();
    }

    @Deprecated
    public void setSecondaryIdentifiers(String str) {
        readSecondaryIdentifiers(str.trim());
        checkDigit();
    }

    public String toString() {
        try {
            String str = new String(getEncoded(), "UTF-8");
            int length = str.length();
            if (length == 72) {
                return str.substring(0, 36) + "\n" + str.substring(36, 72) + "\n";
            }
            if (length == 88) {
                return str.substring(0, 44) + "\n" + str.substring(44, 88) + "\n";
            }
            if (length != 90) {
                return str;
            }
            return str.substring(0, 30) + "\n" + str.substring(30, 60) + "\n" + str.substring(60, 90) + "\n";
        } catch (UnsupportedEncodingException e10) {
            throw new IllegalStateException(e10);
        }
    }

    @Override // org.jmrtd.lds.AbstractLDSInfo
    public void writeObject(OutputStream outputStream) throws IOException {
        int r02 = AnonymousClass1.$SwitchMap$org$jmrtd$lds$icao$MRZInfo$DocumentType[this.documentType.ordinal()];
        if (r02 == 1) {
            writeObjectTD1(outputStream);
            return;
        }
        if (r02 == 2 || r02 == 3) {
            writeObjectTD2OrMRVB(outputStream);
        } else {
            if (r02 != 4 && r02 != 5) {
                throw new IllegalStateException("Unsupported document type");
            }
            writeObjectTD3OrMRVA(outputStream);
        }
    }
}
