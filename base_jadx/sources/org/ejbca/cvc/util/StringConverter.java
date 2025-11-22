package org.ejbca.cvc.util;

/* loaded from: classes2.dex */
public final class StringConverter {
    private static final char[] HEXCHAR = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final String HEXINDEX = "0123456789abcdef          ABCDEF";

    private StringConverter() {
    }

    public static String byteToHex(byte b10) {
        int r22 = b10 & 255;
        char[] cArr = HEXCHAR;
        char c10 = cArr[(r22 >> 4) & 15];
        return Character.toString(c10) + cArr[r22 & 15];
    }

    public static String byteToHex(byte[] bArr) {
        return byteToHex(bArr, null);
    }

    public static String byteToHex(byte[] bArr, String str) {
        int length = bArr.length;
        StringBuffer stringBuffer = new StringBuffer();
        for (int r22 = 0; r22 < length; r22++) {
            stringBuffer.append(byteToHex(bArr[r22]));
            if (str != null && r22 + 1 < length) {
                stringBuffer.append(str);
            }
        }
        return stringBuffer.toString();
    }

    public static byte[] hexToByte(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        int r22 = 0;
        int r32 = 0;
        while (r22 < length) {
            int r42 = r32 + 1;
            bArr[r22] = (byte) (((HEXINDEX.indexOf(str.charAt(r32)) & 15) << 4) + (HEXINDEX.indexOf(str.charAt(r42)) & 15));
            r22++;
            r32 = r42 + 1;
        }
        return bArr;
    }
}
