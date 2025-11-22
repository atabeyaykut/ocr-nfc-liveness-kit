package org.bouncycastle.crypto.modes.gcm;

import net.sf.scuba.smartcards.ISOFileInfo;
import org.bouncycastle.math.raw.Interleave;
import org.bouncycastle.util.Longs;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class GCMUtil {
    private static final int E1 = -520093696;
    private static final long E1L = -2233785415175766016L;
    public static final int SIZE_BYTES = 16;
    public static final int SIZE_INTS = 4;
    public static final int SIZE_LONGS = 2;

    public static byte areEqual(byte[] bArr, byte[] bArr2) {
        int r12 = 0;
        for (int r02 = 0; r02 < 16; r02++) {
            r12 |= bArr[r02] ^ bArr2[r02];
        }
        return (byte) ((((r12 >>> 1) | (r12 & 1)) - 1) >> 31);
    }

    public static int areEqual(int[] r42, int[] r52) {
        int r43 = (r42[3] ^ r52[3]) | 0 | (r42[0] ^ r52[0]) | (r42[1] ^ r52[1]) | (r52[2] ^ r42[2]);
        return (((r43 & 1) | (r43 >>> 1)) - 1) >> 31;
    }

    public static long areEqual(long[] jArr, long[] jArr2) {
        long j10 = (jArr2[1] ^ jArr[1]) | (jArr[0] ^ jArr2[0]) | 0;
        return (((j10 & 1) | (j10 >>> 1)) - 1) >> 63;
    }

    public static void asBytes(int[] r22, byte[] bArr) {
        Pack.intToBigEndian(r22, 0, 4, bArr, 0);
    }

    public static void asBytes(long[] jArr, byte[] bArr) {
        Pack.longToBigEndian(jArr, 0, 2, bArr, 0);
    }

    public static byte[] asBytes(int[] r32) {
        byte[] bArr = new byte[16];
        Pack.intToBigEndian(r32, 0, 4, bArr, 0);
        return bArr;
    }

    public static byte[] asBytes(long[] jArr) {
        byte[] bArr = new byte[16];
        Pack.longToBigEndian(jArr, 0, 2, bArr, 0);
        return bArr;
    }

    public static void asInts(byte[] bArr, int[] r32) {
        Pack.bigEndianToInt(bArr, 0, r32, 0, 4);
    }

    public static int[] asInts(byte[] bArr) {
        int[] r12 = new int[4];
        Pack.bigEndianToInt(bArr, 0, r12, 0, 4);
        return r12;
    }

    public static void asLongs(byte[] bArr, long[] jArr) {
        Pack.bigEndianToLong(bArr, 0, jArr, 0, 2);
    }

    public static long[] asLongs(byte[] bArr) {
        long[] jArr = new long[2];
        Pack.bigEndianToLong(bArr, 0, jArr, 0, 2);
        return jArr;
    }

    public static void copy(byte[] bArr, byte[] bArr2) {
        for (int r02 = 0; r02 < 16; r02++) {
            bArr2[r02] = bArr[r02];
        }
    }

    public static void copy(int[] r22, int[] r32) {
        r32[0] = r22[0];
        r32[1] = r22[1];
        r32[2] = r22[2];
        r32[3] = r22[3];
    }

    public static void copy(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
    }

    public static void divideP(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = j10 >> 63;
        jArr2[0] = ((j10 ^ (E1L & j12)) << 1) | (j11 >>> 63);
        jArr2[1] = (j11 << 1) | (-j12);
    }

    private static long implMul64(long j10, long j11) {
        long j12 = j10 & 1229782938247303441L;
        long j13 = j10 & 2459565876494606882L;
        long j14 = j10 & 4919131752989213764L;
        long j15 = j10 & (-8608480567731124088L);
        long j16 = j11 & 1229782938247303441L;
        long j17 = j11 & 2459565876494606882L;
        long j18 = j11 & 4919131752989213764L;
        long j19 = j11 & (-8608480567731124088L);
        long j20 = (((j12 * j16) ^ (j13 * j19)) ^ (j14 * j18)) ^ (j15 * j17);
        long j21 = (((j12 * j17) ^ (j13 * j16)) ^ (j14 * j19)) ^ (j15 * j18);
        long j22 = (((j12 * j18) ^ (j13 * j17)) ^ (j14 * j16)) ^ (j15 * j19);
        return (j20 & 1229782938247303441L) | (j21 & 2459565876494606882L) | (j22 & 4919131752989213764L) | (((((j12 * j19) ^ (j13 * j18)) ^ (j14 * j17)) ^ (j15 * j16)) & (-8608480567731124088L));
    }

    public static void multiply(byte[] bArr, byte[] bArr2) {
        long[] jArrAsLongs = asLongs(bArr);
        multiply(jArrAsLongs, asLongs(bArr2));
        asBytes(jArrAsLongs, bArr);
    }

    public static void multiply(byte[] bArr, long[] jArr) {
        long jBigEndianToLong = Pack.bigEndianToLong(bArr, 0);
        long jBigEndianToLong2 = Pack.bigEndianToLong(bArr, 8);
        long j10 = jArr[0];
        long j11 = jArr[1];
        long jReverse = Longs.reverse(jBigEndianToLong);
        long jReverse2 = Longs.reverse(jBigEndianToLong2);
        long jReverse3 = Longs.reverse(j10);
        long jReverse4 = Longs.reverse(j11);
        long jReverse5 = Longs.reverse(implMul64(jReverse, jReverse3));
        long jImplMul64 = implMul64(jBigEndianToLong, j10) << 1;
        long jReverse6 = Longs.reverse(implMul64(jReverse2, jReverse4));
        long jImplMul642 = implMul64(jBigEndianToLong2, j11) << 1;
        long jReverse7 = Longs.reverse(implMul64(jReverse ^ jReverse2, jReverse3 ^ jReverse4));
        long jImplMul643 = ((implMul64(jBigEndianToLong ^ jBigEndianToLong2, j10 ^ j11) << 1) ^ ((jReverse6 ^ jImplMul64) ^ jImplMul642)) ^ ((jImplMul642 << 62) ^ (jImplMul642 << 57));
        Pack.longToBigEndian(jReverse5 ^ ((jImplMul643 >>> 7) ^ (((jImplMul643 >>> 1) ^ jImplMul643) ^ (jImplMul643 >>> 2))), bArr, 0);
        Pack.longToBigEndian(((jReverse7 ^ ((jImplMul64 ^ jReverse5) ^ jReverse6)) ^ (((jImplMul642 ^ (jImplMul642 >>> 1)) ^ (jImplMul642 >>> 2)) ^ (jImplMul642 >>> 7))) ^ ((jImplMul643 << 57) ^ ((jImplMul643 << 63) ^ (jImplMul643 << 62))), bArr, 8);
    }

    public static void multiply(int[] r17, int[] r18) {
        int r12 = r18[0];
        int r32 = r18[1];
        int r52 = r18[2];
        int r72 = r18[3];
        int r92 = 0;
        int r10 = 0;
        int r11 = 0;
        int r122 = 0;
        for (int r82 = 0; r82 < 4; r82++) {
            int r13 = r17[r82];
            for (int r14 = 0; r14 < 32; r14++) {
                int r15 = r13 >> 31;
                r13 <<= 1;
                r92 ^= r12 & r15;
                r10 ^= r32 & r15;
                r11 ^= r52 & r15;
                r122 ^= r15 & r72;
                int r152 = (r72 << 31) >> 8;
                r72 = (r72 >>> 1) | (r52 << 31);
                r52 = (r52 >>> 1) | (r32 << 31);
                r32 = (r32 >>> 1) | (r12 << 31);
                r12 = (r12 >>> 1) ^ (r152 & E1);
            }
        }
        r17[0] = r92;
        r17[1] = r10;
        r17[2] = r11;
        r17[3] = r122;
    }

    public static void multiply(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = jArr2[0];
        long j13 = jArr2[1];
        long jReverse = Longs.reverse(j10);
        long jReverse2 = Longs.reverse(j11);
        long jReverse3 = Longs.reverse(j12);
        long jReverse4 = Longs.reverse(j13);
        long jReverse5 = Longs.reverse(implMul64(jReverse, jReverse3));
        long jImplMul64 = implMul64(j10, j12) << 1;
        long jReverse6 = Longs.reverse(implMul64(jReverse2, jReverse4));
        long jImplMul642 = implMul64(j11, j13) << 1;
        long jReverse7 = Longs.reverse(implMul64(jReverse ^ jReverse2, jReverse3 ^ jReverse4));
        long jImplMul643 = ((implMul64(j10 ^ j11, j12 ^ j13) << 1) ^ ((jReverse6 ^ jImplMul64) ^ jImplMul642)) ^ ((jImplMul642 << 62) ^ (jImplMul642 << 57));
        jArr[0] = jReverse5 ^ ((jImplMul643 >>> 7) ^ ((jImplMul643 ^ (jImplMul643 >>> 1)) ^ (jImplMul643 >>> 2)));
        jArr[1] = ((jImplMul643 << 57) ^ ((jImplMul643 << 63) ^ (jImplMul643 << 62))) ^ ((jReverse7 ^ ((jImplMul64 ^ jReverse5) ^ jReverse6)) ^ (((jImplMul642 ^ (jImplMul642 >>> 1)) ^ (jImplMul642 >>> 2)) ^ (jImplMul642 >>> 7)));
    }

    public static void multiplyP(int[] r11) {
        int r12 = r11[0];
        int r32 = r11[1];
        int r52 = r11[2];
        int r72 = r11[3];
        r11[0] = (((r72 << 31) >> 31) & E1) ^ (r12 >>> 1);
        r11[1] = (r32 >>> 1) | (r12 << 31);
        r11[2] = (r52 >>> 1) | (r32 << 31);
        r11[3] = (r72 >>> 1) | (r52 << 31);
    }

    public static void multiplyP(int[] r10, int[] r11) {
        int r12 = r10[0];
        int r32 = r10[1];
        int r52 = r10[2];
        int r102 = r10[3];
        r11[0] = (((r102 << 31) >> 31) & E1) ^ (r12 >>> 1);
        r11[1] = (r32 >>> 1) | (r12 << 31);
        r11[2] = (r52 >>> 1) | (r32 << 31);
        r11[3] = (r102 >>> 1) | (r52 << 31);
    }

    public static void multiplyP(long[] jArr) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        jArr[0] = (((j11 << 63) >> 63) & E1L) ^ (j10 >>> 1);
        jArr[1] = (j10 << 63) | (j11 >>> 1);
    }

    public static void multiplyP(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        jArr2[0] = (((j11 << 63) >> 63) & E1L) ^ (j10 >>> 1);
        jArr2[1] = (j10 << 63) | (j11 >>> 1);
    }

    public static void multiplyP16(long[] jArr) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = j11 << 48;
        jArr[0] = (j12 >>> 7) ^ ((((j10 >>> 16) ^ j12) ^ (j12 >>> 1)) ^ (j12 >>> 2));
        jArr[1] = (j10 << 48) | (j11 >>> 16);
    }

    public static void multiplyP3(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = j11 << 61;
        jArr2[0] = (j12 >>> 7) ^ ((((j10 >>> 3) ^ j12) ^ (j12 >>> 1)) ^ (j12 >>> 2));
        jArr2[1] = (j10 << 61) | (j11 >>> 3);
    }

    public static void multiplyP4(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = j11 << 60;
        jArr2[0] = (j12 >>> 7) ^ ((((j10 >>> 4) ^ j12) ^ (j12 >>> 1)) ^ (j12 >>> 2));
        jArr2[1] = (j10 << 60) | (j11 >>> 4);
    }

    public static void multiplyP7(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = j11 << 57;
        jArr2[0] = (j12 >>> 7) ^ ((((j10 >>> 7) ^ j12) ^ (j12 >>> 1)) ^ (j12 >>> 2));
        jArr2[1] = (j10 << 57) | (j11 >>> 7);
    }

    public static void multiplyP8(int[] r11) {
        int r12 = r11[0];
        int r32 = r11[1];
        int r52 = r11[2];
        int r72 = r11[3];
        int r82 = r72 << 24;
        r11[0] = (r82 >>> 7) ^ ((((r12 >>> 8) ^ r82) ^ (r82 >>> 1)) ^ (r82 >>> 2));
        r11[1] = (r32 >>> 8) | (r12 << 24);
        r11[2] = (r52 >>> 8) | (r32 << 24);
        r11[3] = (r72 >>> 8) | (r52 << 24);
    }

    public static void multiplyP8(int[] r10, int[] r11) {
        int r12 = r10[0];
        int r32 = r10[1];
        int r52 = r10[2];
        int r102 = r10[3];
        int r72 = r102 << 24;
        r11[0] = (r72 >>> 7) ^ ((((r12 >>> 8) ^ r72) ^ (r72 >>> 1)) ^ (r72 >>> 2));
        r11[1] = (r32 >>> 8) | (r12 << 24);
        r11[2] = (r52 >>> 8) | (r32 << 24);
        r11[3] = (r102 >>> 8) | (r52 << 24);
    }

    public static void multiplyP8(long[] jArr) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = j11 << 56;
        jArr[0] = (j12 >>> 7) ^ ((((j10 >>> 8) ^ j12) ^ (j12 >>> 1)) ^ (j12 >>> 2));
        jArr[1] = (j10 << 56) | (j11 >>> 8);
    }

    public static void multiplyP8(long[] jArr, long[] jArr2) {
        long j10 = jArr[0];
        long j11 = jArr[1];
        long j12 = j11 << 56;
        jArr2[0] = (j12 >>> 7) ^ ((((j10 >>> 8) ^ j12) ^ (j12 >>> 1)) ^ (j12 >>> 2));
        jArr2[1] = (j10 << 56) | (j11 >>> 8);
    }

    public static byte[] oneAsBytes() {
        byte[] bArr = new byte[16];
        bArr[0] = ISOFileInfo.DATA_BYTES1;
        return bArr;
    }

    public static int[] oneAsInts() {
        int[] r02 = new int[4];
        r02[0] = Integer.MIN_VALUE;
        return r02;
    }

    public static long[] oneAsLongs() {
        return new long[]{Long.MIN_VALUE, 0};
    }

    public static long[] pAsLongs() {
        return new long[]{4611686018427387904L, 0};
    }

    public static void square(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[4];
        Interleave.expand64To128Rev(jArr[0], jArr3, 0);
        Interleave.expand64To128Rev(jArr[1], jArr3, 2);
        long j10 = jArr3[0];
        long j11 = jArr3[1];
        long j12 = jArr3[2];
        long j13 = jArr3[3];
        long j14 = j12 ^ ((j13 << 57) ^ ((j13 << 63) ^ (j13 << 62)));
        jArr2[0] = j10 ^ ((((j14 >>> 1) ^ j14) ^ (j14 >>> 2)) ^ (j14 >>> 7));
        jArr2[1] = (j11 ^ ((((j13 >>> 1) ^ j13) ^ (j13 >>> 2)) ^ (j13 >>> 7))) ^ ((j14 << 57) ^ ((j14 << 63) ^ (j14 << 62)));
    }

    public static void xor(byte[] bArr, int r42, byte[] bArr2, int r6, int r72) {
        while (true) {
            r72--;
            if (r72 < 0) {
                return;
            }
            int r02 = r42 + r72;
            bArr[r02] = (byte) (bArr[r02] ^ bArr2[r6 + r72]);
        }
    }

    public static void xor(byte[] bArr, int r52, byte[] bArr2, int r72, byte[] bArr3, int r92) {
        int r02 = 0;
        do {
            bArr3[r92 + r02] = (byte) (bArr[r52 + r02] ^ bArr2[r72 + r02]);
            int r03 = r02 + 1;
            bArr3[r92 + r03] = (byte) (bArr[r52 + r03] ^ bArr2[r72 + r03]);
            int r04 = r03 + 1;
            bArr3[r92 + r04] = (byte) (bArr[r52 + r04] ^ bArr2[r72 + r04]);
            int r05 = r04 + 1;
            bArr3[r92 + r05] = (byte) (bArr[r52 + r05] ^ bArr2[r72 + r05]);
            r02 = r05 + 1;
        } while (r02 < 16);
    }

    public static void xor(byte[] bArr, byte[] bArr2) {
        int r02 = 0;
        do {
            bArr[r02] = (byte) (bArr[r02] ^ bArr2[r02]);
            int r03 = r02 + 1;
            bArr[r03] = (byte) (bArr[r03] ^ bArr2[r03]);
            int r04 = r03 + 1;
            bArr[r04] = (byte) (bArr[r04] ^ bArr2[r04]);
            int r05 = r04 + 1;
            bArr[r05] = (byte) (bArr[r05] ^ bArr2[r05]);
            r02 = r05 + 1;
        } while (r02 < 16);
    }

    public static void xor(byte[] bArr, byte[] bArr2, int r52) {
        int r02 = 0;
        do {
            bArr[r02] = (byte) (bArr[r02] ^ bArr2[r52 + r02]);
            int r03 = r02 + 1;
            bArr[r03] = (byte) (bArr[r03] ^ bArr2[r52 + r03]);
            int r04 = r03 + 1;
            bArr[r04] = (byte) (bArr[r04] ^ bArr2[r52 + r04]);
            int r05 = r04 + 1;
            bArr[r05] = (byte) (bArr[r05] ^ bArr2[r52 + r05]);
            r02 = r05 + 1;
        } while (r02 < 16);
    }

    public static void xor(byte[] bArr, byte[] bArr2, int r42, int r52) {
        while (true) {
            r52--;
            if (r52 < 0) {
                return;
            } else {
                bArr[r52] = (byte) (bArr[r52] ^ bArr2[r42 + r52]);
            }
        }
    }

    public static void xor(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int r02 = 0;
        do {
            bArr3[r02] = (byte) (bArr[r02] ^ bArr2[r02]);
            int r03 = r02 + 1;
            bArr3[r03] = (byte) (bArr[r03] ^ bArr2[r03]);
            int r04 = r03 + 1;
            bArr3[r04] = (byte) (bArr[r04] ^ bArr2[r04]);
            int r05 = r04 + 1;
            bArr3[r05] = (byte) (bArr[r05] ^ bArr2[r05]);
            r02 = r05 + 1;
        } while (r02 < 16);
    }

    public static void xor(int[] r32, int[] r42) {
        r32[0] = r32[0] ^ r42[0];
        r32[1] = r32[1] ^ r42[1];
        r32[2] = r32[2] ^ r42[2];
        r32[3] = r42[3] ^ r32[3];
    }

    public static void xor(int[] r32, int[] r42, int[] r52) {
        r52[0] = r32[0] ^ r42[0];
        r52[1] = r32[1] ^ r42[1];
        r52[2] = r32[2] ^ r42[2];
        r52[3] = r32[3] ^ r42[3];
    }

    public static void xor(long[] jArr, long[] jArr2) {
        jArr[0] = jArr[0] ^ jArr2[0];
        jArr[1] = jArr[1] ^ jArr2[1];
    }

    public static void xor(long[] jArr, long[] jArr2, long[] jArr3) {
        jArr3[0] = jArr[0] ^ jArr2[0];
        jArr3[1] = jArr2[1] ^ jArr[1];
    }
}
