package net.sf.scuba.util;

import androidx.constraintlayout.core.a;

/* loaded from: classes2.dex */
public final class Hex {
    private static final String HEXCHARS = "0123456789abcdefABCDEF";
    private static final boolean LEFT = true;
    private static final String PRINTABLE = " .,:;'`\"<>()[]{}?/\\!@#$%^&*_-=+|~0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    private static final boolean RIGHT = false;

    private Hex() {
    }

    public static String byteToHexString(byte b10) {
        int r22 = b10 & 255;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(r22 < 16 ? "0" : "");
        sb2.append(Integer.toHexString(r22));
        return sb2.toString().toUpperCase();
    }

    public static String bytesToASCIIString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        for (byte b10 : bArr) {
            char c10 = (char) b10;
            if (PRINTABLE.indexOf(c10) < 0) {
                c10 = '.';
            }
            sb2.append(Character.toString(c10));
        }
        return sb2.toString();
    }

    public static String[] bytesToASCIIStrings(byte[] bArr, int r32) {
        byte[][] bArrSplit = split(bArr, r32);
        String[] strArr = new String[bArrSplit.length];
        for (int r02 = 0; r02 < bArrSplit.length; r02++) {
            strArr[r02] = bytesToASCIIString(bArrSplit[r02]);
        }
        return strArr;
    }

    public static String bytesToHexString(byte[] bArr) {
        return bytesToHexString(bArr, 1000);
    }

    public static String bytesToHexString(byte[] bArr, int r32) {
        return bArr == null ? "NULL" : bytesToHexString(bArr, 0, bArr.length, r32);
    }

    public static String bytesToHexString(byte[] bArr, int r22, int r32) {
        return bytesToHexString(bArr, r22, r32, 1000);
    }

    public static String bytesToHexString(byte[] bArr, int r42, int r52, int r6) {
        if (bArr == null) {
            return "NULL";
        }
        StringBuilder sb2 = new StringBuilder();
        for (int r12 = 0; r12 < r52; r12++) {
            if (r12 != 0 && r12 % r6 == 0) {
                sb2.append("\n");
            }
            sb2.append(byteToHexString(bArr[r42 + r12]));
        }
        return sb2.toString();
    }

    public static String bytesToPrettyString(byte[] bArr) {
        return bytesToPrettyString(bArr, 16, LEFT, 4, null, LEFT);
    }

    public static String bytesToPrettyString(byte[] bArr, int r92, boolean z10, int r11, String str, boolean z11) {
        StringBuilder sb2;
        StringBuilder sb3 = new StringBuilder();
        String[] strArrBytesToSpacedHexStrings = bytesToSpacedHexStrings(bArr, r92, r92 * 3);
        String[] strArrBytesToASCIIStrings = bytesToASCIIStrings(bArr, r92);
        int r22 = 0;
        while (r22 < strArrBytesToSpacedHexStrings.length) {
            if (z10) {
                String upperCase = Integer.toHexString(r22 * r92).toUpperCase();
                sb2 = new StringBuilder();
                sb2.append(pad(upperCase, r11, '0', LEFT));
                sb2.append(": ");
            } else {
                String str2 = r22 == 0 ? str : "";
                sb2 = new StringBuilder();
                sb2.append(pad(str2, r11, ' ', LEFT));
                sb2.append(" ");
            }
            sb3.append(sb2.toString());
            sb3.append(strArrBytesToSpacedHexStrings[r22]);
            if (z11) {
                sb3.append(" " + strArrBytesToASCIIStrings[r22]);
            }
            sb3.append("\n");
            r22++;
        }
        return sb3.toString();
    }

    public static String bytesToSpacedHexString(byte[] bArr) {
        StringBuilder sb2 = new StringBuilder();
        int r12 = 0;
        while (r12 < bArr.length) {
            sb2.append(byteToHexString(bArr[r12]));
            sb2.append(r12 < bArr.length + (-1) ? " " : "");
            r12++;
        }
        return sb2.toString().toUpperCase();
    }

    private static String[] bytesToSpacedHexStrings(byte[] bArr, int r52, int r6) {
        byte[][] bArrSplit = split(bArr, r52);
        String[] strArr = new String[bArrSplit.length];
        for (int r12 = 0; r12 < bArrSplit.length; r12++) {
            strArr[r12] = pad(bytesToSpacedHexString(bArrSplit[r12]), r6, ' ', false);
        }
        return strArr;
    }

    public static int hexDigitToInt(char c10) throws NumberFormatException {
        switch (c10) {
            case '0':
                return 0;
            case '1':
                return 1;
            case '2':
                return 2;
            case '3':
                return 3;
            case '4':
                return 4;
            case '5':
                return 5;
            case '6':
                return 6;
            case '7':
                return 7;
            case '8':
                return 8;
            case '9':
                return 9;
            default:
                switch (c10) {
                    case 'A':
                        return 10;
                    case 'B':
                        return 11;
                    case 'C':
                        return 12;
                    case 'D':
                        return 13;
                    case 'E':
                        return 14;
                    case 'F':
                        return 15;
                    default:
                        switch (c10) {
                            case 'a':
                                return 10;
                            case 'b':
                                return 11;
                            case 'c':
                                return 12;
                            case 'd':
                                return 13;
                            case 'e':
                                return 14;
                            case 'f':
                                return 15;
                            default:
                                throw new NumberFormatException();
                        }
                }
        }
    }

    public static byte hexStringToByte(String str) throws NumberFormatException {
        byte[] bArrHexStringToBytes = hexStringToBytes(str);
        if (bArrHexStringToBytes == null || bArrHexStringToBytes.length != 1) {
            throw new NumberFormatException();
        }
        return bArrHexStringToBytes[0];
    }

    public static byte[] hexStringToBytes(String str) throws NumberFormatException {
        if (str == null) {
            return null;
        }
        StringBuilder sb2 = new StringBuilder();
        for (int r22 = 0; r22 < str.length(); r22++) {
            char cCharAt = str.charAt(r22);
            if (!Character.isWhitespace(cCharAt)) {
                if (HEXCHARS.indexOf(cCharAt) < 0) {
                    throw new NumberFormatException();
                }
                sb2.append(cCharAt);
            }
        }
        if (sb2.length() % 2 != 0) {
            sb2.insert(0, "0");
        }
        byte[] bArr = new byte[sb2.length() / 2];
        for (int r12 = 0; r12 < sb2.length(); r12 += 2) {
            bArr[r12 / 2] = (byte) (((hexDigitToInt(sb2.charAt(r12)) & 255) << 4) | (hexDigitToInt(sb2.charAt(r12 + 1)) & 255));
        }
        return bArr;
    }

    public static int hexStringToInt(String str) throws NumberFormatException {
        byte[] bArrHexStringToBytes = hexStringToBytes(str);
        if (bArrHexStringToBytes == null || bArrHexStringToBytes.length != 4) {
            throw new NumberFormatException();
        }
        return (bArrHexStringToBytes[3] & 255) | ((bArrHexStringToBytes[0] & 255) << 24) | ((bArrHexStringToBytes[1] & 255) << 16) | ((bArrHexStringToBytes[2] & 255) << 8);
    }

    public static short hexStringToShort(String str) throws NumberFormatException {
        byte[] bArrHexStringToBytes = hexStringToBytes(str);
        if (bArrHexStringToBytes == null || bArrHexStringToBytes.length != 2) {
            throw new NumberFormatException();
        }
        return (short) ((bArrHexStringToBytes[1] & 255) | ((bArrHexStringToBytes[0] & 255) << 8));
    }

    public static String intToHexString(int r42) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(r42 < 268435456 ? "0" : "");
        sb2.append(r42 < 16777216 ? "0" : "");
        sb2.append(r42 < 1048576 ? "0" : "");
        sb2.append(r42 < 65536 ? "0" : "");
        sb2.append(r42 < 4096 ? "0" : "");
        sb2.append(r42 < 256 ? "0" : "");
        sb2.append(r42 >= 16 ? "" : "0");
        sb2.append(Integer.toHexString(r42));
        return sb2.toString().toUpperCase();
    }

    private static String pad(String str, int r32, char c10, boolean z10) {
        StringBuilder sb2 = new StringBuilder();
        int length = str.length();
        if (length >= r32) {
            return str;
        }
        int r33 = r32 - length;
        for (int r12 = 0; r12 < r33; r12++) {
            sb2.append(c10);
        }
        if (z10) {
            sb2.append(str);
            return sb2.toString();
        }
        StringBuilder sbE = a.e(str);
        sbE.append(sb2.toString());
        return sbE.toString();
    }

    public static String shortToHexString(short s7) {
        int r02 = 65535 & s7;
        StringBuilder sb2 = new StringBuilder();
        sb2.append(r02 < 4096 ? "0" : "");
        sb2.append(r02 < 256 ? "0" : "");
        sb2.append(r02 >= 16 ? "" : "0");
        sb2.append(Integer.toHexString(s7));
        String string = sb2.toString();
        if (string.length() > 4) {
            string = string.substring(string.length() - 4, string.length());
        }
        return string.toUpperCase();
    }

    public static byte[][] split(byte[] bArr, int r82) {
        int length = bArr.length / r82;
        int length2 = bArr.length % r82;
        byte[][] bArr2 = new byte[(length2 > 0 ? 1 : 0) + length][];
        int r52 = 0;
        for (int r42 = 0; r42 < length; r42++) {
            byte[] bArr3 = new byte[r82];
            bArr2[r42] = bArr3;
            System.arraycopy(bArr, r52, bArr3, 0, r82);
            r52 += r82;
        }
        if (length2 > 0) {
            byte[] bArr4 = new byte[length2];
            bArr2[length] = bArr4;
            System.arraycopy(bArr, r52, bArr4, 0, length2);
        }
        return bArr2;
    }

    public static String toHexString(byte[] bArr) {
        return bytesToHexString(bArr, 0, bArr.length, 1000);
    }

    public static String toHexString(byte[] bArr, int r32) {
        return bytesToHexString(bArr, 0, bArr.length, r32);
    }
}
