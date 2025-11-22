package org.bouncycastle.pqc.legacy.math.linearalgebra;

import android.support.v4.media.a;
import org.bouncycastle.util.Strings;
import org.jmrtd.PassportService;

/* loaded from: classes2.dex */
public final class ByteUtils {
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private ByteUtils() {
    }

    public static byte[] clone(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static byte[] concatenate(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] concatenate(byte[][] bArr) {
        int length = bArr[0].length;
        byte[] bArr2 = new byte[bArr.length * length];
        int r42 = 0;
        for (byte[] bArr3 : bArr) {
            System.arraycopy(bArr3, 0, bArr2, r42, length);
            r42 += length;
        }
        return bArr2;
    }

    public static int deepHashCode(byte[] bArr) {
        int r02 = 1;
        for (byte b10 : bArr) {
            r02 = (r02 * 31) + b10;
        }
        return r02;
    }

    public static int deepHashCode(byte[][] bArr) {
        int r02 = 1;
        for (byte[] bArr2 : bArr) {
            r02 = (r02 * 31) + deepHashCode(bArr2);
        }
        return r02;
    }

    public static int deepHashCode(byte[][][] bArr) {
        int r02 = 1;
        for (byte[][] bArr2 : bArr) {
            r02 = (r02 * 31) + deepHashCode(bArr2);
        }
        return r02;
    }

    public static boolean equals(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2 == null;
        }
        if (bArr2 == null || bArr.length != bArr2.length) {
            return false;
        }
        boolean z10 = true;
        for (int length = bArr.length - 1; length >= 0; length--) {
            z10 &= bArr[length] == bArr2[length];
        }
        return z10;
    }

    public static boolean equals(byte[][] bArr, byte[][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        boolean zEquals = true;
        for (int length = bArr.length - 1; length >= 0; length--) {
            zEquals &= equals(bArr[length], bArr2[length]);
        }
        return zEquals;
    }

    public static boolean equals(byte[][][] bArr, byte[][][] bArr2) {
        if (bArr.length != bArr2.length) {
            return false;
        }
        boolean zEquals = true;
        for (int length = bArr.length - 1; length >= 0; length--) {
            byte[][] bArr3 = bArr[length];
            if (bArr3.length != bArr2[length].length) {
                return false;
            }
            for (int length2 = bArr3.length - 1; length2 >= 0; length2--) {
                zEquals &= equals(bArr[length][length2], bArr2[length][length2]);
            }
        }
        return zEquals;
    }

    public static byte[] fromHexString(String str) {
        char[] charArray = Strings.toUpperCase(str).toCharArray();
        int r22 = 0;
        for (char c10 : charArray) {
            if ((c10 >= '0' && c10 <= '9') || (c10 >= 'A' && c10 <= 'F')) {
                r22++;
            }
        }
        byte[] bArr = new byte[(r22 + 1) >> 1];
        int r23 = r22 & 1;
        for (char c11 : charArray) {
            if (c11 >= '0' && c11 <= '9') {
                int r82 = r23 >> 1;
                byte b10 = (byte) (bArr[r82] << 4);
                bArr[r82] = b10;
                bArr[r82] = (byte) ((c11 - '0') | b10);
            } else if (c11 >= 'A' && c11 <= 'F') {
                int r83 = r23 >> 1;
                byte b11 = (byte) (bArr[r83] << 4);
                bArr[r83] = b11;
                bArr[r83] = (byte) (((c11 - 'A') + 10) | b11);
            }
            r23++;
        }
        return bArr;
    }

    public static byte[][] split(byte[] bArr, int r6) throws ArrayIndexOutOfBoundsException {
        if (r6 > bArr.length) {
            throw new ArrayIndexOutOfBoundsException();
        }
        byte[] bArr2 = new byte[r6];
        byte[][] bArr3 = {bArr2, new byte[bArr.length - r6]};
        System.arraycopy(bArr, 0, bArr2, 0, r6);
        System.arraycopy(bArr, r6, bArr3[1], 0, bArr.length - r6);
        return bArr3;
    }

    public static byte[] subArray(byte[] bArr, int r22) {
        return subArray(bArr, r22, bArr.length);
    }

    public static byte[] subArray(byte[] bArr, int r32, int r42) {
        int r43 = r42 - r32;
        byte[] bArr2 = new byte[r43];
        System.arraycopy(bArr, r32, bArr2, 0, r43);
        return bArr2;
    }

    public static String toBinaryString(byte[] bArr) {
        String strF = "";
        for (int r12 = 0; r12 < bArr.length; r12++) {
            byte b10 = bArr[r12];
            for (int r32 = 0; r32 < 8; r32++) {
                strF = strF + ((b10 >>> r32) & 1);
            }
            if (r12 != bArr.length - 1) {
                strF = a.f(strF, " ");
            }
        }
        return strF;
    }

    public static char[] toCharArray(byte[] bArr) {
        char[] cArr = new char[bArr.length];
        for (int r12 = 0; r12 < bArr.length; r12++) {
            cArr[r12] = (char) bArr[r12];
        }
        return cArr;
    }

    public static String toHexString(byte[] bArr) {
        String string = "";
        for (int r12 = 0; r12 < bArr.length; r12++) {
            StringBuilder sbE = androidx.constraintlayout.core.a.e(string);
            char[] cArr = HEX_CHARS;
            sbE.append(cArr[(bArr[r12] >>> 4) & 15]);
            StringBuilder sbE2 = androidx.constraintlayout.core.a.e(sbE.toString());
            sbE2.append(cArr[bArr[r12] & PassportService.SFI_DG15]);
            string = sbE2.toString();
        }
        return string;
    }

    public static byte[] xor(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length];
        for (int length = bArr.length - 1; length >= 0; length--) {
            bArr3[length] = (byte) (bArr[length] ^ bArr2[length]);
        }
        return bArr3;
    }

    public static String toHexString(byte[] bArr, String str, String str2) {
        String str3 = new String(str);
        for (int r42 = 0; r42 < bArr.length; r42++) {
            StringBuilder sbE = androidx.constraintlayout.core.a.e(str3);
            char[] cArr = HEX_CHARS;
            sbE.append(cArr[(bArr[r42] >>> 4) & 15]);
            StringBuilder sbE2 = androidx.constraintlayout.core.a.e(sbE.toString());
            sbE2.append(cArr[bArr[r42] & PassportService.SFI_DG15]);
            str3 = sbE2.toString();
            if (r42 < bArr.length - 1) {
                str3 = a.f(str3, str2);
            }
        }
        return str3;
    }
}
