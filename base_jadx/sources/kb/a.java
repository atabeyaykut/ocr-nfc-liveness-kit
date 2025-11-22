package kb;

import org.bouncycastle.asn1.eac.CertificateBody;

/* loaded from: classes2.dex */
public final class a {
    static {
        String property;
        try {
            property = System.getProperty("kotlin.jvm.serialization.use8to7");
        } catch (SecurityException unused) {
            property = null;
        }
        "true".equals(property);
    }

    public static /* synthetic */ void a(int r19) {
        String str = (r19 == 1 || r19 == 3 || r19 == 6 || r19 == 8 || r19 == 10 || r19 == 12 || r19 == 14) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r19 == 1 || r19 == 3 || r19 == 6 || r19 == 8 || r19 == 10 || r19 == 12 || r19 == 14) ? 2 : 3];
        if (r19 == 1 || r19 == 3 || r19 == 6 || r19 == 8 || r19 == 10 || r19 == 12 || r19 == 14) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding";
        } else {
            objArr[0] = "data";
        }
        if (r19 == 1) {
            objArr[1] = "encodeBytes";
        } else if (r19 == 3) {
            objArr[1] = "encode8to7";
        } else if (r19 == 6) {
            objArr[1] = "splitBytesToStringArray";
        } else if (r19 == 8) {
            objArr[1] = "decodeBytes";
        } else if (r19 == 10) {
            objArr[1] = "dropMarker";
        } else if (r19 == 12) {
            objArr[1] = "combineStringArrayIntoBytes";
        } else if (r19 != 14) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/BitEncoding";
        } else {
            objArr[1] = "decode7to8";
        }
        switch (r19) {
            case 1:
            case 3:
            case 6:
            case 8:
            case 10:
            case 12:
            case 14:
                break;
            case 2:
                objArr[2] = "encode8to7";
                break;
            case 4:
                objArr[2] = "addModuloByte";
                break;
            case 5:
                objArr[2] = "splitBytesToStringArray";
                break;
            case 7:
                objArr[2] = "decodeBytes";
                break;
            case 9:
                objArr[2] = "dropMarker";
                break;
            case 11:
                objArr[2] = "combineStringArrayIntoBytes";
                break;
            case 13:
                objArr[2] = "decode7to8";
                break;
            default:
                objArr[2] = "encodeBytes";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r19 != 1 && r19 != 3 && r19 != 6 && r19 != 8 && r19 != 10 && r19 != 12 && r19 != 14) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static byte[] b(String[] strArr) {
        if (strArr == null) {
            a(7);
            throw null;
        }
        if (strArr.length > 0 && !strArr[0].isEmpty()) {
            char cCharAt = strArr[0].charAt(0);
            if (cCharAt == 0) {
                String[] strArr2 = (String[]) strArr.clone();
                strArr2[0] = strArr2[0].substring(1);
                int length = 0;
                for (String str : strArr2) {
                    length += str.length();
                }
                byte[] bArr = new byte[length];
                int r42 = 0;
                for (String str2 : strArr2) {
                    int length2 = str2.length();
                    int r72 = 0;
                    while (r72 < length2) {
                        bArr[r42] = (byte) str2.charAt(r72);
                        r72++;
                        r42++;
                    }
                }
                return bArr;
            }
            if (cCharAt == 65535) {
                strArr = (String[]) strArr.clone();
                strArr[0] = strArr[0].substring(1);
            }
        }
        int length3 = 0;
        for (String str3 : strArr) {
            length3 += str3.length();
        }
        byte[] bArr2 = new byte[length3];
        int r73 = 0;
        for (String str4 : strArr) {
            int length4 = str4.length();
            int r10 = 0;
            while (r10 < length4) {
                bArr2[r73] = (byte) str4.charAt(r10);
                r10++;
                r73++;
            }
        }
        for (int r13 = 0; r13 < length3; r13++) {
            bArr2[r13] = (byte) ((bArr2[r13] + 127) & CertificateBody.profileType);
        }
        int r52 = (length3 * 7) / 8;
        byte[] bArr3 = new byte[r52];
        int r43 = 0;
        int r6 = 0;
        for (int r02 = 0; r02 < r52; r02++) {
            int r74 = (bArr2[r43] & 255) >>> r6;
            r43++;
            int r92 = r6 + 1;
            bArr3[r02] = (byte) (r74 + ((bArr2[r43] & ((1 << r92) - 1)) << (7 - r6)));
            if (r6 == 6) {
                r43++;
                r6 = 0;
            } else {
                r6 = r92;
            }
        }
        return bArr3;
    }
}
