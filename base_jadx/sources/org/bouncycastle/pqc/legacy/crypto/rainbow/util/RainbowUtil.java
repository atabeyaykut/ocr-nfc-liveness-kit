package org.bouncycastle.pqc.legacy.crypto.rainbow.util;

import java.lang.reflect.Array;

/* loaded from: classes2.dex */
public class RainbowUtil {
    public static byte[] convertArray(short[] sArr) {
        byte[] bArr = new byte[sArr.length];
        for (int r12 = 0; r12 < sArr.length; r12++) {
            bArr[r12] = (byte) sArr[r12];
        }
        return bArr;
    }

    public static short[] convertArray(byte[] bArr) {
        short[] sArr = new short[bArr.length];
        for (int r12 = 0; r12 < bArr.length; r12++) {
            sArr[r12] = (short) (bArr[r12] & 255);
        }
        return sArr;
    }

    public static byte[][] convertArray(short[][] sArr) {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) Byte.TYPE, sArr.length, sArr[0].length);
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r32 = 0; r32 < sArr[0].length; r32++) {
                bArr[r22][r32] = (byte) sArr[r22][r32];
            }
        }
        return bArr;
    }

    public static short[][] convertArray(byte[][] bArr) {
        short[][] sArr = (short[][]) Array.newInstance((Class<?>) Short.TYPE, bArr.length, bArr[0].length);
        for (int r22 = 0; r22 < bArr.length; r22++) {
            for (int r32 = 0; r32 < bArr[0].length; r32++) {
                sArr[r22][r32] = (short) (bArr[r22][r32] & 255);
            }
        }
        return sArr;
    }

    public static byte[][][] convertArray(short[][][] sArr) {
        int length = sArr.length;
        short[][] sArr2 = sArr[0];
        byte[][][] bArr = (byte[][][]) Array.newInstance((Class<?>) Byte.TYPE, length, sArr2.length, sArr2[0].length);
        for (int r22 = 0; r22 < sArr.length; r22++) {
            for (int r32 = 0; r32 < sArr[0].length; r32++) {
                for (int r42 = 0; r42 < sArr[0][0].length; r42++) {
                    bArr[r22][r32][r42] = (byte) sArr[r22][r32][r42];
                }
            }
        }
        return bArr;
    }

    public static short[][][] convertArray(byte[][][] bArr) {
        int length = bArr.length;
        byte[][] bArr2 = bArr[0];
        short[][][] sArr = (short[][][]) Array.newInstance((Class<?>) Short.TYPE, length, bArr2.length, bArr2[0].length);
        for (int r22 = 0; r22 < bArr.length; r22++) {
            for (int r32 = 0; r32 < bArr[0].length; r32++) {
                for (int r42 = 0; r42 < bArr[0][0].length; r42++) {
                    sArr[r22][r32][r42] = (short) (bArr[r22][r32][r42] & 255);
                }
            }
        }
        return sArr;
    }

    public static int[] convertArraytoInt(byte[] bArr) {
        int[] r02 = new int[bArr.length];
        for (int r12 = 0; r12 < bArr.length; r12++) {
            r02[r12] = bArr[r12] & 255;
        }
        return r02;
    }

    public static byte[] convertIntArray(int[] r32) {
        byte[] bArr = new byte[r32.length];
        for (int r12 = 0; r12 < r32.length; r12++) {
            bArr[r12] = (byte) r32[r12];
        }
        return bArr;
    }

    public static boolean equals(short[] sArr, short[] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean z10 = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            z10 &= sArr[length] == sArr2[length];
        }
        return z10;
    }

    public static boolean equals(short[][] sArr, short[][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean zEquals = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            zEquals &= equals(sArr[length], sArr2[length]);
        }
        return zEquals;
    }

    public static boolean equals(short[][][] sArr, short[][][] sArr2) {
        if (sArr.length != sArr2.length) {
            return false;
        }
        boolean zEquals = true;
        for (int length = sArr.length - 1; length >= 0; length--) {
            zEquals &= equals(sArr[length], sArr2[length]);
        }
        return zEquals;
    }
}
