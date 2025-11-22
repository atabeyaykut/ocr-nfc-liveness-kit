package org.bouncycastle.pqc.legacy.math.linearalgebra;

/* loaded from: classes2.dex */
public final class CharUtils {
    private CharUtils() {
    }

    public static char[] clone(char[] cArr) {
        char[] cArr2 = new char[cArr.length];
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
        return cArr2;
    }

    public static boolean equals(char[] cArr, char[] cArr2) {
        if (cArr.length != cArr2.length) {
            return false;
        }
        boolean z10 = true;
        for (int length = cArr.length - 1; length >= 0; length--) {
            z10 &= cArr[length] == cArr2[length];
        }
        return z10;
    }

    public static byte[] toByteArray(char[] cArr) {
        byte[] bArr = new byte[cArr.length];
        for (int length = cArr.length - 1; length >= 0; length--) {
            bArr[length] = (byte) cArr[length];
        }
        return bArr;
    }

    public static byte[] toByteArrayForPBE(char[] cArr) {
        int length = cArr.length;
        byte[] bArr = new byte[length];
        for (int r32 = 0; r32 < cArr.length; r32++) {
            bArr[r32] = (byte) cArr[r32];
        }
        int r72 = length * 2;
        byte[] bArr2 = new byte[r72 + 2];
        for (int r42 = 0; r42 < length; r42++) {
            int r52 = r42 * 2;
            bArr2[r52] = 0;
            bArr2[r52 + 1] = bArr[r42];
        }
        bArr2[r72] = 0;
        bArr2[r72 + 1] = 0;
        return bArr2;
    }
}
