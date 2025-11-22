package org.bouncycastle.crypto.util;

import org.bouncycastle.asn1.cmc.BodyPartID;

/* loaded from: classes2.dex */
public abstract class Pack {
    public static int bigEndianToInt(byte[] bArr, int r32) {
        int r02 = bArr[r32] << 24;
        int r33 = r32 + 1;
        int r03 = r02 | ((bArr[r33] & 255) << 16);
        int r34 = r33 + 1;
        return (bArr[r34 + 1] & 255) | r03 | ((bArr[r34] & 255) << 8);
    }

    public static void bigEndianToInt(byte[] bArr, int r32, int[] r42) {
        for (int r02 = 0; r02 < r42.length; r02++) {
            r42[r02] = bigEndianToInt(bArr, r32);
            r32 += 4;
        }
    }

    public static long bigEndianToLong(byte[] bArr, int r52) {
        int r02 = bigEndianToInt(bArr, r52);
        return (bigEndianToInt(bArr, r52 + 4) & BodyPartID.bodyIdMax) | ((r02 & BodyPartID.bodyIdMax) << 32);
    }

    public static void bigEndianToLong(byte[] bArr, int r42, long[] jArr) {
        for (int r02 = 0; r02 < jArr.length; r02++) {
            jArr[r02] = bigEndianToLong(bArr, r42);
            r42 += 8;
        }
    }

    public static void intToBigEndian(int r12, byte[] bArr, int r32) {
        bArr[r32] = (byte) (r12 >>> 24);
        int r33 = r32 + 1;
        bArr[r33] = (byte) (r12 >>> 16);
        int r34 = r33 + 1;
        bArr[r34] = (byte) (r12 >>> 8);
        bArr[r34 + 1] = (byte) r12;
    }

    public static void intToBigEndian(int[] r22, byte[] bArr, int r42) {
        for (int r02 : r22) {
            intToBigEndian(r02, bArr, r42);
            r42 += 4;
        }
    }

    public static byte[] intToBigEndian(int r22) {
        byte[] bArr = new byte[4];
        intToBigEndian(r22, bArr, 0);
        return bArr;
    }

    public static byte[] intToBigEndian(int[] r22) {
        byte[] bArr = new byte[r22.length * 4];
        intToBigEndian(r22, bArr, 0);
        return bArr;
    }

    public static void intToLittleEndian(int r12, byte[] bArr, int r32) {
        bArr[r32] = (byte) r12;
        int r33 = r32 + 1;
        bArr[r33] = (byte) (r12 >>> 8);
        int r34 = r33 + 1;
        bArr[r34] = (byte) (r12 >>> 16);
        bArr[r34 + 1] = (byte) (r12 >>> 24);
    }

    public static void intToLittleEndian(int[] r22, byte[] bArr, int r42) {
        for (int r02 : r22) {
            intToLittleEndian(r02, bArr, r42);
            r42 += 4;
        }
    }

    public static byte[] intToLittleEndian(int r22) {
        byte[] bArr = new byte[4];
        intToLittleEndian(r22, bArr, 0);
        return bArr;
    }

    public static byte[] intToLittleEndian(int[] r22) {
        byte[] bArr = new byte[r22.length * 4];
        intToLittleEndian(r22, bArr, 0);
        return bArr;
    }

    public static int littleEndianToInt(byte[] bArr, int r32) {
        int r02 = bArr[r32] & 255;
        int r33 = r32 + 1;
        int r03 = r02 | ((bArr[r33] & 255) << 8);
        int r34 = r33 + 1;
        return (bArr[r34 + 1] << 24) | r03 | ((bArr[r34] & 255) << 16);
    }

    public static void littleEndianToInt(byte[] bArr, int r32, int[] r42) {
        for (int r02 = 0; r02 < r42.length; r02++) {
            r42[r02] = littleEndianToInt(bArr, r32);
            r32 += 4;
        }
    }

    public static void littleEndianToInt(byte[] bArr, int r42, int[] r52, int r6, int r72) {
        for (int r02 = 0; r02 < r72; r02++) {
            r52[r6 + r02] = littleEndianToInt(bArr, r42);
            r42 += 4;
        }
    }

    public static long littleEndianToLong(byte[] bArr, int r6) {
        return ((littleEndianToInt(bArr, r6 + 4) & BodyPartID.bodyIdMax) << 32) | (littleEndianToInt(bArr, r6) & BodyPartID.bodyIdMax);
    }

    public static void littleEndianToLong(byte[] bArr, int r42, long[] jArr) {
        for (int r02 = 0; r02 < jArr.length; r02++) {
            jArr[r02] = littleEndianToLong(bArr, r42);
            r42 += 8;
        }
    }

    public static void longToBigEndian(long j10, byte[] bArr, int r52) {
        intToBigEndian((int) (j10 >>> 32), bArr, r52);
        intToBigEndian((int) (j10 & BodyPartID.bodyIdMax), bArr, r52 + 4);
    }

    public static void longToBigEndian(long[] jArr, byte[] bArr, int r52) {
        for (long j10 : jArr) {
            longToBigEndian(j10, bArr, r52);
            r52 += 8;
        }
    }

    public static byte[] longToBigEndian(long j10) {
        byte[] bArr = new byte[8];
        longToBigEndian(j10, bArr, 0);
        return bArr;
    }

    public static byte[] longToBigEndian(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        longToBigEndian(jArr, bArr, 0);
        return bArr;
    }

    public static void longToLittleEndian(long j10, byte[] bArr, int r52) {
        intToLittleEndian((int) (BodyPartID.bodyIdMax & j10), bArr, r52);
        intToLittleEndian((int) (j10 >>> 32), bArr, r52 + 4);
    }

    public static void longToLittleEndian(long[] jArr, byte[] bArr, int r52) {
        for (long j10 : jArr) {
            longToLittleEndian(j10, bArr, r52);
            r52 += 8;
        }
    }

    public static byte[] longToLittleEndian(long j10) {
        byte[] bArr = new byte[8];
        longToLittleEndian(j10, bArr, 0);
        return bArr;
    }

    public static byte[] longToLittleEndian(long[] jArr) {
        byte[] bArr = new byte[jArr.length * 8];
        longToLittleEndian(jArr, bArr, 0);
        return bArr;
    }
}
