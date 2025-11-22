package org.bouncycastle.util;

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

    public static void bigEndianToInt(byte[] bArr, int r42, int[] r52, int r6, int r72) {
        for (int r02 = 0; r02 < r72; r02++) {
            r52[r6 + r02] = bigEndianToInt(bArr, r42);
            r42 += 4;
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

    public static void bigEndianToLong(byte[] bArr, int r52, long[] jArr, int r72, int r82) {
        for (int r02 = 0; r02 < r82; r02++) {
            jArr[r72 + r02] = bigEndianToLong(bArr, r52);
            r52 += 8;
        }
    }

    public static short bigEndianToShort(byte[] bArr, int r22) {
        return (short) ((bArr[r22 + 1] & 255) | ((bArr[r22] & 255) << 8));
    }

    public static void intToBigEndian(int r12, byte[] bArr, int r32) {
        bArr[r32] = (byte) (r12 >>> 24);
        int r33 = r32 + 1;
        bArr[r33] = (byte) (r12 >>> 16);
        int r34 = r33 + 1;
        bArr[r34] = (byte) (r12 >>> 8);
        bArr[r34 + 1] = (byte) r12;
    }

    public static void intToBigEndian(int[] r22, int r32, int r42, byte[] bArr, int r6) {
        for (int r02 = 0; r02 < r42; r02++) {
            intToBigEndian(r22[r32 + r02], bArr, r6);
            r6 += 4;
        }
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

    public static void intToLittleEndian(int[] r22, int r32, int r42, byte[] bArr, int r6) {
        for (int r02 = 0; r02 < r42; r02++) {
            intToLittleEndian(r22[r32 + r02], bArr, r6);
            r6 += 4;
        }
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

    public static int[] littleEndianToInt(byte[] bArr, int r42, int r52) {
        int[] r02 = new int[r52];
        for (int r12 = 0; r12 < r52; r12++) {
            r02[r12] = littleEndianToInt(bArr, r42);
            r42 += 4;
        }
        return r02;
    }

    public static int littleEndianToInt_High(byte[] bArr, int r12, int r22) {
        return littleEndianToInt_Low(bArr, r12, r22) << ((4 - r22) << 3);
    }

    public static int littleEndianToInt_Low(byte[] bArr, int r52, int r6) {
        int r02 = bArr[r52] & 255;
        int r12 = 0;
        for (int r22 = 1; r22 < r6; r22++) {
            r12 += 8;
            r02 |= (bArr[r52 + r22] & 255) << r12;
        }
        return r02;
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

    public static void littleEndianToLong(byte[] bArr, int r52, long[] jArr, int r72, int r82) {
        for (int r02 = 0; r02 < r82; r02++) {
            jArr[r72 + r02] = littleEndianToLong(bArr, r52);
            r52 += 8;
        }
    }

    public static long littleEndianToLong_High(byte[] bArr, int r12, int r22) {
        return littleEndianToLong_Low(bArr, r12, r22) << ((8 - r22) << 3);
    }

    public static long littleEndianToLong_Low(byte[] bArr, int r6, int r72) {
        long j10 = bArr[r6] & 255;
        for (int r22 = 1; r22 < r72; r22++) {
            j10 = (j10 << 8) | (bArr[r6 + r22] & 255);
        }
        return j10;
    }

    public static short littleEndianToShort(byte[] bArr, int r22) {
        return (short) (((bArr[r22 + 1] & 255) << 8) | (bArr[r22] & 255));
    }

    public static void longToBigEndian(long j10, byte[] bArr, int r52) {
        intToBigEndian((int) (j10 >>> 32), bArr, r52);
        intToBigEndian((int) (j10 & BodyPartID.bodyIdMax), bArr, r52 + 4);
    }

    public static void longToBigEndian(long j10, byte[] bArr, int r6, int r72) {
        for (int r73 = r72 - 1; r73 >= 0; r73--) {
            bArr[r73 + r6] = (byte) (255 & j10);
            j10 >>>= 8;
        }
    }

    public static void longToBigEndian(long[] jArr, int r42, int r52, byte[] bArr, int r72) {
        for (int r02 = 0; r02 < r52; r02++) {
            longToBigEndian(jArr[r42 + r02], bArr, r72);
            r72 += 8;
        }
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

    public static void longToLittleEndian(long[] jArr, int r42, int r52, byte[] bArr, int r72) {
        for (int r02 = 0; r02 < r52; r02++) {
            longToLittleEndian(jArr[r42 + r02], bArr, r72);
            r72 += 8;
        }
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

    public static void longToLittleEndian_High(long j10, byte[] bArr, int r82, int r92) {
        int r02 = 56;
        bArr[r82] = (byte) (j10 >>> 56);
        for (int r12 = 1; r12 < r92; r12++) {
            r02 -= 8;
            bArr[r82 + r12] = (byte) (j10 >>> r02);
        }
    }

    public static void shortToBigEndian(short s7, byte[] bArr, int r32) {
        bArr[r32] = (byte) (s7 >>> 8);
        bArr[r32 + 1] = (byte) s7;
    }

    public static byte[] shortToBigEndian(short s7) {
        byte[] bArr = new byte[2];
        shortToBigEndian(s7, bArr, 0);
        return bArr;
    }

    public static void shortToLittleEndian(short s7, byte[] bArr, int r32) {
        bArr[r32] = (byte) s7;
        bArr[r32 + 1] = (byte) (s7 >>> 8);
    }

    public static byte[] shortToLittleEndian(short s7) {
        byte[] bArr = new byte[2];
        shortToLittleEndian(s7, bArr, 0);
        return bArr;
    }
}
