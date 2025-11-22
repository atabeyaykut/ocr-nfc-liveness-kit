package org.bouncycastle.pqc.crypto.hqc;

/* loaded from: classes2.dex */
class GF2PolynomialCalculator {
    private final int PARAM_N;
    private final long RED_MASK;
    private final int VEC_N_SIZE_64;

    public GF2PolynomialCalculator(int r12, int r22, long j10) {
        this.VEC_N_SIZE_64 = r12;
        this.PARAM_N = r22;
        this.RED_MASK = j10;
    }

    public static void addLongs(long[] jArr, long[] jArr2, long[] jArr3) {
        for (int r02 = 0; r02 < jArr2.length; r02++) {
            jArr[r02] = jArr2[r02] ^ jArr3[r02];
        }
    }

    private void base_mul(long[] jArr, int r29, long j10, long j11) {
        int r02 = 16;
        long j12 = j11 & 1152921504606846975L;
        long j13 = j12 << 1;
        long j14 = j13 ^ j12;
        long j15 = j13 << 1;
        long j16 = j15 ^ j12;
        long j17 = j14 << 1;
        long j18 = j17 ^ j12;
        long j19 = j15 << 1;
        long j20 = j16 << 1;
        long j21 = j17 << 1;
        long j22 = j18 << 1;
        long[] jArr2 = {0, j12, j13, j14, j15, j16, j17, j18, j19, j19 ^ j12, j20, j20 ^ j12, j21, j21 ^ j12, j22, j12 ^ j22};
        long j23 = 15;
        long j24 = j10 & 15;
        long j25 = 0;
        int r11 = 0;
        while (r11 < 16) {
            long j26 = j24 - r11;
            j25 ^= jArr2[r11] & (-(1 - ((j26 | (-j26)) >>> 63)));
            r11++;
            j24 = j24;
        }
        byte b10 = 4;
        long j27 = 0;
        while (b10 < 64) {
            long j28 = (j10 >> b10) & j23;
            int r32 = 0;
            long j29 = 0;
            while (r32 < r02) {
                long j30 = j28 - r32;
                j29 ^= jArr2[r32] & (-(1 - (((-j30) | j30) >>> 63)));
                r32++;
                jArr2 = jArr2;
                r02 = 16;
            }
            j25 ^= j29 << b10;
            j27 ^= j29 >>> (64 - b10);
            b10 = (byte) (b10 + 4);
            jArr2 = jArr2;
            r02 = 16;
            j23 = 15;
        }
        long j31 = -((j11 >> 60) & 1);
        long j32 = -((j11 >> 61) & 1);
        long j33 = -((j11 >> 62) & 1);
        long j34 = -((j11 >> 63) & 1);
        jArr[r29 + 0] = ((((j10 << 61) & j32) ^ (j25 ^ ((j10 << 60) & j31))) ^ ((j10 << 62) & j33)) ^ ((j10 << 63) & j34);
        jArr[r29 + 1] = (((((j10 >>> 4) & j31) ^ j27) ^ (j32 & (j10 >>> 3))) ^ ((j10 >>> 2) & j33)) ^ ((j10 >>> 1) & j34);
    }

    private void karatsuba(long[] jArr, int r20, long[] jArr2, int r22, long[] jArr3, int r24, int r25, long[] jArr4, int r27) {
        if (r25 == 1) {
            base_mul(jArr, r20, jArr2[r22 + 0], jArr3[r24 + 0]);
            return;
        }
        int r12 = r25 / 2;
        int r11 = (r25 + 1) / 2;
        int r13 = r27 + r11;
        int r14 = r13 + r11;
        int r15 = (r11 * 2) + r20;
        int r16 = (r11 * 4) + r27;
        karatsuba(jArr, r20, jArr2, r22, jArr3, r24, r11, jArr4, r16);
        karatsuba(jArr, r15, jArr2, r22 + r11, jArr3, r24 + r11, r12, jArr4, r16);
        karatsuba_add1(jArr4, r27, jArr4, r13, jArr2, r22, jArr3, r24, r11, r12);
        karatsuba(jArr4, r14, jArr4, r27, jArr4, r13, r11, jArr4, r16);
        karatsuba_add2(jArr, r20, jArr4, r14, jArr, r15, r11, r12);
    }

    private void karatsuba_add1(long[] jArr, int r11, long[] jArr2, int r13, long[] jArr3, int r15, long[] jArr4, int r17, int r18, int r19) {
        for (int r22 = 0; r22 < r19; r22++) {
            int r6 = r22 + r18;
            jArr[r22 + r11] = jArr3[r22 + r15] ^ jArr3[r6 + r15];
            jArr2[r22 + r13] = jArr4[r22 + r17] ^ jArr4[r6 + r17];
        }
        if (r19 < r18) {
            jArr[r19 + r11] = jArr3[r19 + r15];
            jArr2[r19 + r13] = jArr4[r19 + r17];
        }
    }

    private void karatsuba_add2(long[] jArr, int r10, long[] jArr2, int r12, long[] jArr3, int r14, int r15, int r16) {
        int r22;
        int r13 = 0;
        while (true) {
            r22 = r15 * 2;
            if (r13 >= r22) {
                break;
            }
            int r23 = r13 + r12;
            jArr2[r23] = jArr2[r23] ^ jArr[r13 + r10];
            r13++;
        }
        for (int r17 = 0; r17 < r16 * 2; r17++) {
            int r32 = r17 + r12;
            jArr2[r32] = jArr2[r32] ^ jArr3[r17 + r14];
        }
        for (int r02 = 0; r02 < r22; r02++) {
            int r18 = r02 + r15 + r10;
            jArr[r18] = jArr[r18] ^ jArr2[r02 + r12];
        }
    }

    private void reduce(long[] jArr, long[] jArr2) {
        int r02 = 0;
        while (true) {
            int r12 = this.VEC_N_SIZE_64;
            if (r02 >= r12) {
                int r13 = r12 - 1;
                jArr[r13] = jArr[r13] & this.RED_MASK;
                return;
            }
            long j10 = jArr2[(r02 + r12) - 1];
            int r42 = this.PARAM_N;
            jArr[r02] = (jArr2[r02] ^ (j10 >>> (r42 & 63))) ^ (jArr2[r12 + r02] << ((int) (64 - (r42 & 63))));
            r02++;
        }
    }

    public void multLongs(long[] jArr, long[] jArr2, long[] jArr3) {
        int r72 = this.VEC_N_SIZE_64;
        long[] jArr4 = new long[(r72 << 1) + 1];
        karatsuba(jArr4, 0, jArr2, 0, jArr3, 0, r72, new long[r72 << 3], 0);
        reduce(jArr, jArr4);
    }
}
