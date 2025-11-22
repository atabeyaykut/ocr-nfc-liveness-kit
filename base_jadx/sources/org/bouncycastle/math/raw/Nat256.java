package org.bouncycastle.math.raw;

import androidx.appcompat.widget.v;
import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class Nat256 {
    private static final long M = 4294967295L;

    public static int add(int[] r92, int r10, int[] r11, int r12, int[] r13, int r14) {
        long j10 = (r92[r10 + 0] & 4294967295L) + (r11[r12 + 0] & 4294967295L) + 0;
        r13[r14 + 0] = (int) j10;
        long j11 = (r92[r10 + 1] & 4294967295L) + (r11[r12 + 1] & 4294967295L) + (j10 >>> 32);
        r13[r14 + 1] = (int) j11;
        long j12 = (r92[r10 + 2] & 4294967295L) + (r11[r12 + 2] & 4294967295L) + (j11 >>> 32);
        r13[r14 + 2] = (int) j12;
        long j13 = (r92[r10 + 3] & 4294967295L) + (r11[r12 + 3] & 4294967295L) + (j12 >>> 32);
        r13[r14 + 3] = (int) j13;
        long j14 = (r92[r10 + 4] & 4294967295L) + (r11[r12 + 4] & 4294967295L) + (j13 >>> 32);
        r13[r14 + 4] = (int) j14;
        long j15 = (r92[r10 + 5] & 4294967295L) + (r11[r12 + 5] & 4294967295L) + (j14 >>> 32);
        r13[r14 + 5] = (int) j15;
        long j16 = (r92[r10 + 6] & 4294967295L) + (r11[r12 + 6] & 4294967295L) + (j15 >>> 32);
        r13[r14 + 6] = (int) j16;
        long j17 = (r92[r10 + 7] & 4294967295L) + (r11[r12 + 7] & 4294967295L) + (j16 >>> 32);
        r13[r14 + 7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int add(int[] r10, int[] r11, int[] r12) {
        long j10 = (r10[0] & 4294967295L) + (r11[0] & 4294967295L) + 0;
        r12[0] = (int) j10;
        long j11 = (r10[1] & 4294967295L) + (r11[1] & 4294967295L) + (j10 >>> 32);
        r12[1] = (int) j11;
        long j12 = (r10[2] & 4294967295L) + (r11[2] & 4294967295L) + (j11 >>> 32);
        r12[2] = (int) j12;
        long j13 = (r10[3] & 4294967295L) + (r11[3] & 4294967295L) + (j12 >>> 32);
        r12[3] = (int) j13;
        long j14 = (r10[4] & 4294967295L) + (r11[4] & 4294967295L) + (j13 >>> 32);
        r12[4] = (int) j14;
        long j15 = (r10[5] & 4294967295L) + (r11[5] & 4294967295L) + (j14 >>> 32);
        r12[5] = (int) j15;
        long j16 = (r10[6] & 4294967295L) + (r11[6] & 4294967295L) + (j15 >>> 32);
        r12[6] = (int) j16;
        long j17 = (r10[7] & 4294967295L) + (r11[7] & 4294967295L) + (j16 >>> 32);
        r12[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int addBothTo(int[] r10, int r11, int[] r12, int r13, int[] r14, int r15) {
        long j10 = (r10[r11 + 0] & 4294967295L) + (r12[r13 + 0] & 4294967295L) + (r14[r4] & 4294967295L) + 0;
        r14[r15 + 0] = (int) j10;
        long j11 = (r10[r11 + 1] & 4294967295L) + (r12[r13 + 1] & 4294967295L) + (r14[r7] & 4294967295L) + (j10 >>> 32);
        r14[r15 + 1] = (int) j11;
        long j12 = (r10[r11 + 2] & 4294967295L) + (r12[r13 + 2] & 4294967295L) + (r14[r7] & 4294967295L) + (j11 >>> 32);
        r14[r15 + 2] = (int) j12;
        long j13 = (r10[r11 + 3] & 4294967295L) + (r12[r13 + 3] & 4294967295L) + (r14[r7] & 4294967295L) + (j12 >>> 32);
        r14[r15 + 3] = (int) j13;
        long j14 = (r10[r11 + 4] & 4294967295L) + (r12[r13 + 4] & 4294967295L) + (r14[r7] & 4294967295L) + (j13 >>> 32);
        r14[r15 + 4] = (int) j14;
        long j15 = (r10[r11 + 5] & 4294967295L) + (r12[r13 + 5] & 4294967295L) + (r14[r7] & 4294967295L) + (j14 >>> 32);
        r14[r15 + 5] = (int) j15;
        long j16 = (r10[r11 + 6] & 4294967295L) + (r12[r13 + 6] & 4294967295L) + (r14[r7] & 4294967295L) + (j15 >>> 32);
        r14[r15 + 6] = (int) j16;
        long j17 = (r10[r11 + 7] & 4294967295L) + (r12[r13 + 7] & 4294967295L) + (r14[r15] & 4294967295L) + (j16 >>> 32);
        r14[r15 + 7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int addBothTo(int[] r10, int[] r11, int[] r12) {
        long j10 = (r10[0] & 4294967295L) + (r11[0] & 4294967295L) + (r12[0] & 4294967295L) + 0;
        r12[0] = (int) j10;
        long j11 = (r10[1] & 4294967295L) + (r11[1] & 4294967295L) + (r12[1] & 4294967295L) + (j10 >>> 32);
        r12[1] = (int) j11;
        long j12 = (r10[2] & 4294967295L) + (r11[2] & 4294967295L) + (r12[2] & 4294967295L) + (j11 >>> 32);
        r12[2] = (int) j12;
        long j13 = (r10[3] & 4294967295L) + (r11[3] & 4294967295L) + (r12[3] & 4294967295L) + (j12 >>> 32);
        r12[3] = (int) j13;
        long j14 = (r10[4] & 4294967295L) + (r11[4] & 4294967295L) + (r12[4] & 4294967295L) + (j13 >>> 32);
        r12[4] = (int) j14;
        long j15 = (r10[5] & 4294967295L) + (r11[5] & 4294967295L) + (r12[5] & 4294967295L) + (j14 >>> 32);
        r12[5] = (int) j15;
        long j16 = (r10[6] & 4294967295L) + (r11[6] & 4294967295L) + (r12[6] & 4294967295L) + (j15 >>> 32);
        r12[6] = (int) j16;
        long j17 = (r10[7] & 4294967295L) + (r11[7] & 4294967295L) + (r12[7] & 4294967295L) + (j16 >>> 32);
        r12[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int addTo(int[] r92, int r10, int[] r11, int r12, int r13) {
        long j10 = (r92[r10 + 0] & 4294967295L) + (r11[r13] & 4294967295L) + (r13 & 4294967295L);
        r11[r12 + 0] = (int) j10;
        long j11 = (r92[r10 + 1] & 4294967295L) + (r11[r6] & 4294967295L) + (j10 >>> 32);
        r11[r12 + 1] = (int) j11;
        long j12 = (r92[r10 + 2] & 4294967295L) + (r11[r6] & 4294967295L) + (j11 >>> 32);
        r11[r12 + 2] = (int) j12;
        long j13 = (r92[r10 + 3] & 4294967295L) + (r11[r6] & 4294967295L) + (j12 >>> 32);
        r11[r12 + 3] = (int) j13;
        long j14 = (r92[r10 + 4] & 4294967295L) + (r11[r6] & 4294967295L) + (j13 >>> 32);
        r11[r12 + 4] = (int) j14;
        long j15 = (r92[r10 + 5] & 4294967295L) + (r11[r6] & 4294967295L) + (j14 >>> 32);
        r11[r12 + 5] = (int) j15;
        long j16 = (r92[r10 + 6] & 4294967295L) + (r11[r6] & 4294967295L) + (j15 >>> 32);
        r11[r12 + 6] = (int) j16;
        long j17 = (r92[r10 + 7] & 4294967295L) + (4294967295L & r11[r12]) + (j16 >>> 32);
        r11[r12 + 7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int addTo(int[] r10, int[] r11) {
        long j10 = (r10[0] & 4294967295L) + (r11[0] & 4294967295L) + 0;
        r11[0] = (int) j10;
        long j11 = (r10[1] & 4294967295L) + (r11[1] & 4294967295L) + (j10 >>> 32);
        r11[1] = (int) j11;
        long j12 = (r10[2] & 4294967295L) + (r11[2] & 4294967295L) + (j11 >>> 32);
        r11[2] = (int) j12;
        long j13 = (r10[3] & 4294967295L) + (r11[3] & 4294967295L) + (j12 >>> 32);
        r11[3] = (int) j13;
        long j14 = (r10[4] & 4294967295L) + (r11[4] & 4294967295L) + (j13 >>> 32);
        r11[4] = (int) j14;
        long j15 = (r10[5] & 4294967295L) + (r11[5] & 4294967295L) + (j14 >>> 32);
        r11[5] = (int) j15;
        long j16 = (r10[6] & 4294967295L) + (r11[6] & 4294967295L) + (j15 >>> 32);
        r11[6] = (int) j16;
        long j17 = (r10[7] & 4294967295L) + (4294967295L & r11[7]) + (j16 >>> 32);
        r11[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int addTo(int[] r92, int[] r10, int r11) {
        long j10 = (r92[0] & 4294967295L) + (r10[0] & 4294967295L) + (r11 & 4294967295L);
        r10[0] = (int) j10;
        long j11 = (r92[1] & 4294967295L) + (r10[1] & 4294967295L) + (j10 >>> 32);
        r10[1] = (int) j11;
        long j12 = (r92[2] & 4294967295L) + (r10[2] & 4294967295L) + (j11 >>> 32);
        r10[2] = (int) j12;
        long j13 = (r92[3] & 4294967295L) + (r10[3] & 4294967295L) + (j12 >>> 32);
        r10[3] = (int) j13;
        long j14 = (r92[4] & 4294967295L) + (r10[4] & 4294967295L) + (j13 >>> 32);
        r10[4] = (int) j14;
        long j15 = (r92[5] & 4294967295L) + (r10[5] & 4294967295L) + (j14 >>> 32);
        r10[5] = (int) j15;
        long j16 = (r92[6] & 4294967295L) + (r10[6] & 4294967295L) + (j15 >>> 32);
        r10[6] = (int) j16;
        long j17 = (r92[7] & 4294967295L) + (4294967295L & r10[7]) + (j16 >>> 32);
        r10[7] = (int) j17;
        return (int) (j17 >>> 32);
    }

    public static int addToEachOther(int[] r11, int r12, int[] r13, int r14) {
        long j10 = (r11[r0] & 4294967295L) + (r13[r5] & 4294967295L) + 0;
        int r6 = (int) j10;
        r11[r12 + 0] = r6;
        r13[r14 + 0] = r6;
        long j11 = (r11[r5] & 4294967295L) + (r13[r8] & 4294967295L) + (j10 >>> 32);
        int r15 = (int) j11;
        r11[r12 + 1] = r15;
        r13[r14 + 1] = r15;
        long j12 = (r11[r5] & 4294967295L) + (r13[r8] & 4294967295L) + (j11 >>> 32);
        int r16 = (int) j12;
        r11[r12 + 2] = r16;
        r13[r14 + 2] = r16;
        long j13 = (r11[r5] & 4294967295L) + (r13[r8] & 4294967295L) + (j12 >>> 32);
        int r17 = (int) j13;
        r11[r12 + 3] = r17;
        r13[r14 + 3] = r17;
        long j14 = (r11[r5] & 4294967295L) + (r13[r8] & 4294967295L) + (j13 >>> 32);
        int r18 = (int) j14;
        r11[r12 + 4] = r18;
        r13[r14 + 4] = r18;
        long j15 = (r11[r5] & 4294967295L) + (r13[r8] & 4294967295L) + (j14 >>> 32);
        int r19 = (int) j15;
        r11[r12 + 5] = r19;
        r13[r14 + 5] = r19;
        long j16 = (r11[r5] & 4294967295L) + (r13[r8] & 4294967295L) + (j15 >>> 32);
        int r110 = (int) j16;
        r11[r12 + 6] = r110;
        r13[r14 + 6] = r110;
        long j17 = (r11[r12] & 4294967295L) + (4294967295L & r13[r14]) + (j16 >>> 32);
        int r111 = (int) j17;
        r11[r12 + 7] = r111;
        r13[r14 + 7] = r111;
        return (int) (j17 >>> 32);
    }

    public static void copy(int[] r22, int r32, int[] r42, int r52) {
        r42[r52 + 0] = r22[r32 + 0];
        r42[r52 + 1] = r22[r32 + 1];
        r42[r52 + 2] = r22[r32 + 2];
        r42[r52 + 3] = r22[r32 + 3];
        r42[r52 + 4] = r22[r32 + 4];
        r42[r52 + 5] = r22[r32 + 5];
        r42[r52 + 6] = r22[r32 + 6];
        r42[r52 + 7] = r22[r32 + 7];
    }

    public static void copy(int[] r22, int[] r32) {
        r32[0] = r22[0];
        r32[1] = r22[1];
        r32[2] = r22[2];
        r32[3] = r22[3];
        r32[4] = r22[4];
        r32[5] = r22[5];
        r32[6] = r22[6];
        r32[7] = r22[7];
    }

    public static void copy64(long[] jArr, int r42, long[] jArr2, int r6) {
        jArr2[r6 + 0] = jArr[r42 + 0];
        jArr2[r6 + 1] = jArr[r42 + 1];
        jArr2[r6 + 2] = jArr[r42 + 2];
        jArr2[r6 + 3] = jArr[r42 + 3];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
        jArr2[3] = jArr[3];
    }

    public static int[] create() {
        return new int[8];
    }

    public static long[] create64() {
        return new long[4];
    }

    public static int[] createExt() {
        return new int[16];
    }

    public static long[] createExt64() {
        return new long[8];
    }

    public static boolean diff(int[] r72, int r82, int[] r92, int r10, int[] r11, int r12) {
        boolean zGte = gte(r72, r82, r92, r10);
        if (zGte) {
            sub(r72, r82, r92, r10, r11, r12);
        } else {
            sub(r92, r10, r72, r82, r11, r12);
        }
        return zGte;
    }

    public static boolean eq(int[] r32, int[] r42) {
        for (int r02 = 7; r02 >= 0; r02--) {
            if (r32[r02] != r42[r02]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int r02 = 3; r02 >= 0; r02--) {
            if (jArr[r02] != jArr2[r02]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        int[] r02 = create();
        for (int r12 = 0; r12 < 8; r12++) {
            r02[r12] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return r02;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 256) {
            throw new IllegalArgumentException();
        }
        long[] jArrCreate64 = create64();
        for (int r12 = 0; r12 < 4; r12++) {
            jArrCreate64[r12] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return jArrCreate64;
    }

    public static int getBit(int[] r22, int r32) {
        int r23;
        if (r32 == 0) {
            r23 = r22[0];
        } else {
            if ((r32 & 255) != r32) {
                return 0;
            }
            r23 = r22[r32 >>> 5] >>> (r32 & 31);
        }
        return r23 & 1;
    }

    public static boolean gte(int[] r52, int r6, int[] r72, int r82) {
        for (int r02 = 7; r02 >= 0; r02--) {
            int r22 = r52[r6 + r02] ^ Integer.MIN_VALUE;
            int r32 = Integer.MIN_VALUE ^ r72[r82 + r02];
            if (r22 < r32) {
                return false;
            }
            if (r22 > r32) {
                return true;
            }
        }
        return true;
    }

    public static boolean gte(int[] r52, int[] r6) {
        for (int r02 = 7; r02 >= 0; r02--) {
            int r22 = r52[r02] ^ Integer.MIN_VALUE;
            int r32 = Integer.MIN_VALUE ^ r6[r02];
            if (r22 < r32) {
                return false;
            }
            if (r22 > r32) {
                return true;
            }
        }
        return true;
    }

    public static boolean isOne(int[] r42) {
        if (r42[0] != 1) {
            return false;
        }
        for (int r12 = 1; r12 < 8; r12++) {
            if (r42[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isOne64(long[] jArr) {
        if (jArr[0] != 1) {
            return false;
        }
        for (int r22 = 1; r22 < 4; r22++) {
            if (jArr[r22] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] r32) {
        for (int r12 = 0; r12 < 8; r12++) {
            if (r32[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int r12 = 0; r12 < 4; r12++) {
            if (jArr[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] r32, int r33, int[] r34, int r35, int[] r36, int r37) {
        long j10 = r34[r35 + 0] & 4294967295L;
        long j11 = r34[r35 + 1] & 4294967295L;
        long j12 = r34[r35 + 2] & 4294967295L;
        long j13 = r34[r35 + 3] & 4294967295L;
        long j14 = r34[r35 + 4] & 4294967295L;
        long j15 = r34[r35 + 5] & 4294967295L;
        long j16 = r34[r35 + 6] & 4294967295L;
        long j17 = r32[r33 + 0] & 4294967295L;
        long j18 = (j17 * j10) + 0;
        r36[r37 + 0] = (int) j18;
        long j19 = (j17 * j11) + (j18 >>> 32);
        r36[r37 + 1] = (int) j19;
        long j20 = (j17 * j12) + (j19 >>> 32);
        r36[r37 + 2] = (int) j20;
        long j21 = (j17 * j13) + (j20 >>> 32);
        r36[r37 + 3] = (int) j21;
        long j22 = (j17 * j14) + (j21 >>> 32);
        r36[r37 + 4] = (int) j22;
        long j23 = (j17 * j15) + (j22 >>> 32);
        r36[r37 + 5] = (int) j23;
        long j24 = (j17 * j16) + (j23 >>> 32);
        r36[r37 + 6] = (int) j24;
        long j25 = j24 >>> 32;
        long j26 = r34[r35 + 7] & 4294967295L;
        long j27 = (j17 * j26) + j25;
        r36[r37 + 7] = (int) j27;
        r36[r37 + 8] = (int) (j27 >>> 32);
        int r12 = 1;
        int r22 = r37;
        int r52 = 1;
        while (r52 < 8) {
            r22 += r12;
            long j28 = r32[r33 + r52] & 4294967295L;
            long j29 = (j28 * j10) + (r36[r16] & 4294967295L) + 0;
            int r27 = r52;
            r36[r22 + 0] = (int) j29;
            long j30 = j26;
            long j31 = (j28 * j11) + (r36[r16] & 4294967295L) + (j29 >>> 32);
            r36[r22 + 1] = (int) j31;
            long j32 = (j28 * j12) + (r36[r16] & 4294967295L) + (j31 >>> 32);
            r36[r22 + 2] = (int) j32;
            long j33 = (j28 * j13) + (r36[r1] & 4294967295L) + (j32 >>> 32);
            r36[r22 + 3] = (int) j33;
            long j34 = (j28 * j14) + (r36[r1] & 4294967295L) + (j33 >>> 32);
            r36[r22 + 4] = (int) j34;
            long j35 = (j28 * j15) + (r36[r1] & 4294967295L) + (j34 >>> 32);
            r36[r22 + 5] = (int) j35;
            long j36 = (j28 * j16) + (r36[r1] & 4294967295L) + (j35 >>> 32);
            r36[r22 + 6] = (int) j36;
            long j37 = (j28 * j30) + (r36[r1] & 4294967295L) + (j36 >>> 32);
            r36[r22 + 7] = (int) j37;
            r36[r22 + 8] = (int) (j37 >>> 32);
            r52 = r27 + 1;
            j12 = j12;
            j26 = j30;
            r12 = 1;
        }
    }

    public static void mul(int[] r35, int[] r36, int[] r37) {
        long j10 = r36[0] & 4294967295L;
        long j11 = r36[1] & 4294967295L;
        long j12 = r36[2] & 4294967295L;
        long j13 = r36[3] & 4294967295L;
        long j14 = r36[4] & 4294967295L;
        long j15 = r36[5] & 4294967295L;
        long j16 = r36[6] & 4294967295L;
        long j17 = r36[7] & 4294967295L;
        long j18 = r35[0] & 4294967295L;
        long j19 = (j18 * j10) + 0;
        r37[0] = (int) j19;
        long j20 = (j18 * j11) + (j19 >>> 32);
        r37[1] = (int) j20;
        long j21 = (j18 * j12) + (j20 >>> 32);
        r37[2] = (int) j21;
        long j22 = (j18 * j13) + (j21 >>> 32);
        r37[3] = (int) j22;
        long j23 = (j18 * j14) + (j22 >>> 32);
        r37[4] = (int) j23;
        long j24 = (j18 * j15) + (j23 >>> 32);
        r37[5] = (int) j24;
        long j25 = (j18 * j16) + (j24 >>> 32);
        r37[6] = (int) j25;
        long j26 = (j18 * j17) + (j25 >>> 32);
        r37[7] = (int) j26;
        r37[8] = (int) (j26 >>> 32);
        int r52 = 1;
        for (int r32 = 8; r52 < r32; r32 = 8) {
            long j27 = r35[r52] & 4294967295L;
            long j28 = j10;
            long j29 = (j27 * j10) + (r37[r4] & 4294967295L) + 0;
            r37[r52 + 0] = (int) j29;
            int r18 = r52 + 1;
            long j30 = j11;
            long j31 = (j27 * j11) + (r37[r18] & 4294967295L) + (j29 >>> 32);
            r37[r18] = (int) j31;
            long j32 = (j27 * j12) + (r37[r6] & 4294967295L) + (j31 >>> 32);
            r37[r52 + 2] = (int) j32;
            long j33 = (j27 * j13) + (r37[r6] & 4294967295L) + (j32 >>> 32);
            r37[r52 + 3] = (int) j33;
            long j34 = (j27 * j14) + (r37[r6] & 4294967295L) + (j33 >>> 32);
            r37[r52 + 4] = (int) j34;
            long j35 = (j27 * j15) + (r37[r6] & 4294967295L) + (j34 >>> 32);
            r37[r52 + 5] = (int) j35;
            long j36 = (j27 * j16) + (r37[r6] & 4294967295L) + (j35 >>> 32);
            r37[r52 + 6] = (int) j36;
            long j37 = j36 >>> 32;
            long j38 = (j27 * j17) + (r37[r3] & 4294967295L) + j37;
            r37[r52 + 7] = (int) j38;
            r37[r52 + 8] = (int) (j38 >>> 32);
            r52 = r18;
            j10 = j28;
            j11 = j30;
        }
    }

    public static void mul128(int[] r34, int[] r35, int[] r36) {
        long j10 = r34[0] & 4294967295L;
        long j11 = r34[1] & 4294967295L;
        long j12 = r34[2] & 4294967295L;
        long j13 = r34[3] & 4294967295L;
        long j14 = r34[4] & 4294967295L;
        long j15 = r34[5] & 4294967295L;
        long j16 = r34[6] & 4294967295L;
        long j17 = r34[7] & 4294967295L;
        long j18 = r35[0] & 4294967295L;
        long j19 = (j18 * j10) + 0;
        r36[0] = (int) j19;
        long j20 = (j18 * j11) + (j19 >>> 32);
        r36[1] = (int) j20;
        long j21 = (j18 * j12) + (j20 >>> 32);
        r36[2] = (int) j21;
        long j22 = (j18 * j13) + (j21 >>> 32);
        r36[3] = (int) j22;
        long j23 = (j18 * j14) + (j22 >>> 32);
        r36[4] = (int) j23;
        long j24 = (j18 * j15) + (j23 >>> 32);
        r36[5] = (int) j24;
        long j25 = (j18 * j16) + (j24 >>> 32);
        r36[6] = (int) j25;
        long j26 = (j18 * j17) + (j25 >>> 32);
        r36[7] = (int) j26;
        r36[8] = (int) (j26 >>> 32);
        int r52 = 1;
        for (int r32 = 4; r52 < r32; r32 = 4) {
            long j27 = r35[r52] & 4294967295L;
            long j28 = j10;
            long j29 = (j27 * j10) + (r36[r4] & 4294967295L) + 0;
            r36[r52 + 0] = (int) j29;
            int r18 = r52 + 1;
            long j30 = j11;
            long j31 = (j27 * j11) + (r36[r18] & 4294967295L) + (j29 >>> 32);
            r36[r18] = (int) j31;
            long j32 = (j27 * j12) + (r36[r6] & 4294967295L) + (j31 >>> 32);
            r36[r52 + 2] = (int) j32;
            long j33 = (j27 * j13) + (r36[r6] & 4294967295L) + (j32 >>> 32);
            r36[r52 + 3] = (int) j33;
            long j34 = (j27 * j14) + (r36[r6] & 4294967295L) + (j33 >>> 32);
            r36[r52 + 4] = (int) j34;
            long j35 = (j27 * j15) + (r36[r6] & 4294967295L) + (j34 >>> 32);
            r36[r52 + 5] = (int) j35;
            long j36 = (j27 * j16) + (r36[r6] & 4294967295L) + (j35 >>> 32);
            r36[r52 + 6] = (int) j36;
            long j37 = j36 >>> 32;
            long j38 = (j27 * j17) + (r36[r3] & 4294967295L) + j37;
            r36[r52 + 7] = (int) j38;
            r36[r52 + 8] = (int) (j38 >>> 32);
            r52 = r18;
            j10 = j28;
            j11 = j30;
        }
    }

    public static long mul33Add(int r13, int[] r14, int r15, int[] r16, int r17, int[] r18, int r19) {
        long j10 = r13 & 4294967295L;
        long j11 = r14[r15 + 0] & 4294967295L;
        long j12 = (j10 * j11) + (r16[r17 + 0] & 4294967295L) + 0;
        r18[r19 + 0] = (int) j12;
        long j13 = r14[r15 + 1] & 4294967295L;
        long j14 = (j10 * j13) + j11 + (r16[r17 + 1] & 4294967295L) + (j12 >>> 32);
        r18[r19 + 1] = (int) j14;
        long j15 = r14[r15 + 2] & 4294967295L;
        long j16 = (j10 * j15) + j13 + (r16[r17 + 2] & 4294967295L) + (j14 >>> 32);
        r18[r19 + 2] = (int) j16;
        long j17 = r14[r15 + 3] & 4294967295L;
        long j18 = (j10 * j17) + j15 + (r16[r17 + 3] & 4294967295L) + (j16 >>> 32);
        r18[r19 + 3] = (int) j18;
        long j19 = r14[r15 + 4] & 4294967295L;
        long j20 = (j10 * j19) + j17 + (r16[r17 + 4] & 4294967295L) + (j18 >>> 32);
        r18[r19 + 4] = (int) j20;
        long j21 = r14[r15 + 5] & 4294967295L;
        long j22 = (j10 * j21) + j19 + (r16[r17 + 5] & 4294967295L) + (j20 >>> 32);
        r18[r19 + 5] = (int) j22;
        long j23 = r14[r15 + 6] & 4294967295L;
        long j24 = (j10 * j23) + j21 + (r16[r17 + 6] & 4294967295L) + (j22 >>> 32);
        r18[r19 + 6] = (int) j24;
        long j25 = r14[r15 + 7] & 4294967295L;
        long j26 = (j10 * j25) + j23 + (4294967295L & r16[r17 + 7]) + (j24 >>> 32);
        r18[r19 + 7] = (int) j26;
        return (j26 >>> 32) + j25;
    }

    public static int mul33DWordAdd(int r15, long j10, int[] r18, int r19) {
        long j11 = r15 & 4294967295L;
        long j12 = j10 & 4294967295L;
        long j13 = (j11 * j12) + (r18[r1] & 4294967295L) + 0;
        r18[r19 + 0] = (int) j13;
        long j14 = j10 >>> 32;
        long j15 = (j11 * j14) + j12;
        long j16 = j15 + (r18[r7] & 4294967295L) + (j13 >>> 32);
        r18[r19 + 1] = (int) j16;
        long j17 = j14 + (r18[r7] & 4294967295L) + (j16 >>> 32);
        r18[r19 + 2] = (int) j17;
        long j18 = (j17 >>> 32) + (4294967295L & r18[r7]);
        r18[r19 + 3] = (int) j18;
        if ((j18 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(8, r18, r19, 4);
    }

    public static int mul33WordAdd(int r10, int r11, int[] r12, int r13) {
        long j10 = r10 & 4294967295L;
        long j11 = r11 & 4294967295L;
        long j12 = (j10 * j11) + (r12[r4] & 4294967295L) + 0;
        r12[r13 + 0] = (int) j12;
        long j13 = j11 + (r12[r7] & 4294967295L) + (j12 >>> 32);
        r12[r13 + 1] = (int) j13;
        long j14 = (j13 >>> 32) + (r12[r0] & 4294967295L);
        r12[r13 + 2] = (int) j14;
        if ((j14 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(8, r12, r13, 3);
    }

    public static int mulAddTo(int[] r35, int r36, int[] r37, int r38, int[] r39, int r40) {
        long j10 = r37[r38 + 0] & 4294967295L;
        long j11 = r37[r38 + 1] & 4294967295L;
        long j12 = r37[r38 + 2] & 4294967295L;
        long j13 = r37[r38 + 3] & 4294967295L;
        long j14 = r37[r38 + 4] & 4294967295L;
        long j15 = r37[r38 + 5] & 4294967295L;
        long j16 = r37[r38 + 6] & 4294967295L;
        long j17 = r37[r38 + 7] & 4294967295L;
        int r16 = r40;
        long j18 = 0;
        int r22 = 0;
        while (r22 < 8) {
            int r25 = r22;
            long j19 = r35[r36 + r22] & 4294967295L;
            long j20 = j10;
            long j21 = (j19 * j10) + (r39[r28] & 4294967295L) + 0;
            long j22 = j17;
            r39[r16 + 0] = (int) j21;
            int r15 = r16 + 1;
            long j23 = (j19 * j11) + (r39[r15] & 4294967295L) + (j21 >>> 32);
            r39[r15] = (int) j23;
            long j24 = (j19 * j12) + (r39[r5] & 4294967295L) + (j23 >>> 32);
            r39[r16 + 2] = (int) j24;
            long j25 = (j19 * j13) + (r39[r5] & 4294967295L) + (j24 >>> 32);
            r39[r16 + 3] = (int) j25;
            long j26 = (j19 * j14) + (r39[r5] & 4294967295L) + (j25 >>> 32);
            r39[r16 + 4] = (int) j26;
            long j27 = (j19 * j15) + (r39[r5] & 4294967295L) + (j26 >>> 32);
            r39[r16 + 5] = (int) j27;
            long j28 = (j19 * j16) + (r39[r5] & 4294967295L) + (j27 >>> 32);
            r39[r16 + 6] = (int) j28;
            long j29 = (j19 * j22) + (r39[r5] & 4294967295L) + (j28 >>> 32);
            r39[r16 + 7] = (int) j29;
            long j30 = (j29 >>> 32) + (r39[r16] & 4294967295L) + j18;
            r39[r16 + 8] = (int) j30;
            j18 = j30 >>> 32;
            r22 = r25 + 1;
            r16 = r15;
            j17 = j22;
            j10 = j20;
            j11 = j11;
        }
        return (int) j18;
    }

    public static int mulAddTo(int[] r36, int[] r37, int[] r38) {
        long j10 = r37[0] & 4294967295L;
        long j11 = r37[1] & 4294967295L;
        long j12 = r37[2] & 4294967295L;
        long j13 = r37[3] & 4294967295L;
        long j14 = r37[4] & 4294967295L;
        long j15 = r37[5] & 4294967295L;
        long j16 = r37[6] & 4294967295L;
        long j17 = r37[7] & 4294967295L;
        long j18 = 0;
        int r22 = 0;
        while (r22 < 8) {
            long j19 = j17;
            long j20 = r36[r22] & 4294967295L;
            long j21 = j15;
            long j22 = (j20 * j10) + (r38[r27] & 4294967295L) + 0;
            r38[r22 + 0] = (int) j22;
            int r16 = r22 + 1;
            long j23 = j11;
            long j24 = (j20 * j11) + (r38[r16] & 4294967295L) + (j22 >>> 32);
            r38[r16] = (int) j24;
            long j25 = (j20 * j12) + (r38[r27] & 4294967295L) + (j24 >>> 32);
            r38[r22 + 2] = (int) j25;
            long j26 = (j20 * j13) + (r38[r8] & 4294967295L) + (j25 >>> 32);
            r38[r22 + 3] = (int) j26;
            long j27 = (j20 * j14) + (r38[r8] & 4294967295L) + (j26 >>> 32);
            r38[r22 + 4] = (int) j27;
            long j28 = (j20 * j21) + (r38[r8] & 4294967295L) + (j27 >>> 32);
            r38[r22 + 5] = (int) j28;
            long j29 = (j20 * j16) + (r38[r8] & 4294967295L) + (j28 >>> 32);
            r38[r22 + 6] = (int) j29;
            long j30 = (j20 * j19) + (r38[r8] & 4294967295L) + (j29 >>> 32);
            r38[r22 + 7] = (int) j30;
            long j31 = (j30 >>> 32) + (r38[r2] & 4294967295L) + j18;
            r38[r22 + 8] = (int) j31;
            j18 = j31 >>> 32;
            r22 = r16;
            j17 = j19;
            j15 = j21;
            j12 = j12;
            j11 = j23;
        }
        return (int) j18;
    }

    public static int mulByWord(int r92, int[] r10) {
        long j10 = r92 & 4294967295L;
        long j11 = ((r10[0] & 4294967295L) * j10) + 0;
        r10[0] = (int) j11;
        long j12 = ((r10[1] & 4294967295L) * j10) + (j11 >>> 32);
        r10[1] = (int) j12;
        long j13 = ((r10[2] & 4294967295L) * j10) + (j12 >>> 32);
        r10[2] = (int) j13;
        long j14 = ((r10[3] & 4294967295L) * j10) + (j13 >>> 32);
        r10[3] = (int) j14;
        long j15 = ((r10[4] & 4294967295L) * j10) + (j14 >>> 32);
        r10[4] = (int) j15;
        long j16 = ((r10[5] & 4294967295L) * j10) + (j15 >>> 32);
        r10[5] = (int) j16;
        long j17 = ((r10[6] & 4294967295L) * j10) + (j16 >>> 32);
        r10[6] = (int) j17;
        long j18 = (j10 * (4294967295L & r10[7])) + (j17 >>> 32);
        r10[7] = (int) j18;
        return (int) (j18 >>> 32);
    }

    public static int mulByWordAddTo(int r11, int[] r12, int[] r13) {
        long j10 = r11 & 4294967295L;
        long j11 = ((r13[0] & 4294967295L) * j10) + (r12[0] & 4294967295L) + 0;
        r13[0] = (int) j11;
        long j12 = ((r13[1] & 4294967295L) * j10) + (r12[1] & 4294967295L) + (j11 >>> 32);
        r13[1] = (int) j12;
        long j13 = ((r13[2] & 4294967295L) * j10) + (r12[2] & 4294967295L) + (j12 >>> 32);
        r13[2] = (int) j13;
        long j14 = ((r13[3] & 4294967295L) * j10) + (r12[3] & 4294967295L) + (j13 >>> 32);
        r13[3] = (int) j14;
        long j15 = ((r13[4] & 4294967295L) * j10) + (r12[4] & 4294967295L) + (j14 >>> 32);
        r13[4] = (int) j15;
        long j16 = ((r13[5] & 4294967295L) * j10) + (r12[5] & 4294967295L) + (j15 >>> 32);
        r13[5] = (int) j16;
        long j17 = ((r13[6] & 4294967295L) * j10) + (r12[6] & 4294967295L) + (j16 >>> 32);
        r13[6] = (int) j17;
        long j18 = (j10 * (r13[7] & 4294967295L)) + (4294967295L & r12[7]) + (j17 >>> 32);
        r13[7] = (int) j18;
        return (int) (j18 >>> 32);
    }

    public static int mulWord(int r82, int[] r92, int[] r10, int r11) {
        long j10 = r82 & 4294967295L;
        long j11 = 0;
        int r83 = 0;
        do {
            long j12 = ((r92[r83] & 4294967295L) * j10) + j11;
            r10[r11 + r83] = (int) j12;
            j11 = j12 >>> 32;
            r83++;
        } while (r83 < 8);
        return (int) j11;
    }

    public static int mulWordAddTo(int r11, int[] r12, int r13, int[] r14, int r15) {
        long j10 = r11 & 4294967295L;
        long j11 = ((r12[r13 + 0] & 4294967295L) * j10) + (r14[r11] & 4294967295L) + 0;
        r14[r15 + 0] = (int) j11;
        long j12 = ((r12[r13 + 1] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j11 >>> 32);
        r14[r15 + 1] = (int) j12;
        long j13 = ((r12[r13 + 2] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j12 >>> 32);
        r14[r15 + 2] = (int) j13;
        long j14 = ((r12[r13 + 3] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j13 >>> 32);
        r14[r15 + 3] = (int) j14;
        long j15 = ((r12[r13 + 4] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j14 >>> 32);
        r14[r15 + 4] = (int) j15;
        long j16 = ((r12[r13 + 5] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j15 >>> 32);
        r14[r15 + 5] = (int) j16;
        long j17 = ((r12[r13 + 6] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j16 >>> 32);
        r14[r15 + 6] = (int) j17;
        long j18 = (j10 * (r12[r13 + 7] & 4294967295L)) + (r14[r15] & 4294967295L) + (j17 >>> 32);
        r14[r15 + 7] = (int) j18;
        return (int) (j18 >>> 32);
    }

    public static int mulWordDwordAdd(int r10, long j10, int[] r13, int r14) {
        long j11 = r10 & 4294967295L;
        long j12 = ((j10 & 4294967295L) * j11) + (r13[r10] & 4294967295L) + 0;
        r13[r14 + 0] = (int) j12;
        long j13 = j11 * (j10 >>> 32);
        long j14 = j13 + (r13[r11] & 4294967295L) + (j12 >>> 32);
        r13[r14 + 1] = (int) j14;
        long j15 = j14 >>> 32;
        long j16 = j15 + (r13[r0] & 4294967295L);
        r13[r14 + 2] = (int) j16;
        if ((j16 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(8, r13, r14, 3);
    }

    public static void square(int[] r62, int r63, int[] r64, int r65) {
        long j10 = r62[r63 + 0] & 4294967295L;
        int r42 = 0;
        int r52 = 16;
        int r6 = 7;
        while (true) {
            int r72 = r6 - 1;
            long j11 = r62[r63 + r6] & 4294967295L;
            long j12 = j11 * j11;
            int r53 = r52 - 1;
            r64[r65 + r53] = (r42 << 31) | ((int) (j12 >>> 33));
            r52 = r53 - 1;
            r64[r65 + r52] = (int) (j12 >>> 1);
            r42 = (int) j12;
            if (r72 <= 0) {
                long j13 = j10 * j10;
                long j14 = ((r42 << 31) & 4294967295L) | (j13 >>> 33);
                r64[r65 + 0] = (int) j13;
                int r66 = 1 & ((int) (j13 >>> 32));
                long j15 = r62[r63 + 1] & 4294967295L;
                long j16 = (j15 * j10) + j14;
                int r43 = (int) j16;
                r64[r65 + 1] = r66 | (r43 << 1);
                long j17 = r62[r63 + 2] & 4294967295L;
                long j18 = (j17 * j10) + (r64[r10] & 4294967295L) + (j16 >>> 32);
                int r11 = (int) j18;
                r64[r65 + 2] = (r43 >>> 31) | (r11 << 1);
                long jB = v.b(j17, j15, j18 >>> 32, r64[r9] & 4294967295L);
                long j19 = (r64[r21] & 4294967295L) + (jB >>> 32);
                long j20 = r62[r63 + 3] & 4294967295L;
                long j21 = (r64[r32] & 4294967295L) + (j19 >>> 32);
                long j22 = (j20 * j10) + (jB & 4294967295L);
                int r10 = (int) j22;
                r64[r65 + 3] = (r11 >>> 31) | (r10 << 1);
                long jB2 = v.b(j20, j15, j22 >>> 32, j19 & 4294967295L);
                long jB3 = v.b(j20, j17, jB2 >>> 32, j21 & 4294967295L);
                long j23 = (r64[r33] & 4294967295L) + (j21 >>> 32) + (jB3 >>> 32);
                long j24 = jB3 & 4294967295L;
                long j25 = r62[r63 + 4] & 4294967295L;
                long j26 = (r64[r9] & 4294967295L) + (j23 >>> 32);
                long j27 = (r64[r44] & 4294967295L) + (j26 >>> 32);
                long j28 = (j25 * j10) + (jB2 & 4294967295L);
                int r22 = (int) j28;
                r64[r65 + 4] = (r22 << 1) | (r10 >>> 31);
                long jB4 = v.b(j25, j15, j28 >>> 32, j24);
                long jB5 = v.b(j25, j17, jB4 >>> 32, j23 & 4294967295L);
                long jB6 = v.b(j25, j20, jB5 >>> 32, j26 & 4294967295L);
                long j29 = jB5 & 4294967295L;
                long j30 = j27 + (jB6 >>> 32);
                long j31 = jB6 & 4294967295L;
                long j32 = r62[r63 + 5] & 4294967295L;
                long j33 = (r64[r9] & 4294967295L) + (j30 >>> 32);
                long j34 = (r64[r48] & 4294967295L) + (j33 >>> 32);
                long j35 = j33 & 4294967295L;
                long j36 = (j32 * j10) + (jB4 & 4294967295L);
                int r32 = (int) j36;
                r64[r65 + 5] = (r22 >>> 31) | (r32 << 1);
                int r23 = r32 >>> 31;
                long jB7 = v.b(j32, j15, j36 >>> 32, j29);
                long jB8 = v.b(j32, j17, jB7 >>> 32, j31);
                long jB9 = v.b(j32, j20, jB8 >>> 32, j30 & 4294967295L);
                long j37 = jB8 & 4294967295L;
                long jB10 = v.b(j32, j25, jB9 >>> 32, j35);
                long j38 = jB9 & 4294967295L;
                long j39 = j34 + (jB10 >>> 32);
                long j40 = jB10 & 4294967295L;
                long j41 = r62[r63 + 6] & 4294967295L;
                long j42 = (r64[r9] & 4294967295L) + (j39 >>> 32);
                long j43 = j39 & 4294967295L;
                long j44 = (r64[r50] & 4294967295L) + (j42 >>> 32);
                long j45 = j42 & 4294967295L;
                long j46 = (j41 * j10) + (jB7 & 4294967295L);
                int r33 = (int) j46;
                r64[r65 + 6] = r23 | (r33 << 1);
                int r24 = r33 >>> 31;
                long jB11 = v.b(j41, j15, j46 >>> 32, j37);
                long jB12 = v.b(j41, j17, jB11 >>> 32, j38);
                long jB13 = v.b(j41, j20, jB12 >>> 32, j40);
                long j47 = jB12 & 4294967295L;
                long jB14 = v.b(j41, j25, jB13 >>> 32, j43);
                long j48 = jB13 & 4294967295L;
                long jB15 = v.b(j41, j32, jB14 >>> 32, j45);
                long j49 = jB14 & 4294967295L;
                long j50 = j44 + (jB15 >>> 32);
                long j51 = jB15 & 4294967295L;
                long j52 = r62[r63 + 7] & 4294967295L;
                long j53 = (r64[r9] & 4294967295L) + (j50 >>> 32);
                long j54 = (j10 * j52) + (jB11 & 4294967295L);
                int r34 = (int) j54;
                r64[r65 + 7] = r24 | (r34 << 1);
                int r25 = r34 >>> 31;
                long jB16 = v.b(j15, j52, j54 >>> 32, j47);
                long jB17 = v.b(j52, j17, jB16 >>> 32, j48);
                long jB18 = v.b(j52, j20, jB17 >>> 32, j49);
                long jB19 = v.b(j52, j25, jB18 >>> 32, j51);
                long jB20 = v.b(j52, j32, jB19 >>> 32, j50 & 4294967295L);
                long jB21 = v.b(j52, j41, jB20 >>> 32, j53 & 4294967295L);
                long j55 = (r64[r57] & 4294967295L) + (j53 >>> 32) + (jB21 >>> 32);
                int r12 = (int) jB16;
                r64[r65 + 8] = (r12 << 1) | r25;
                int r02 = r12 >>> 31;
                int r13 = (int) jB17;
                r64[r65 + 9] = r02 | (r13 << 1);
                int r03 = r13 >>> 31;
                int r14 = (int) jB18;
                r64[r65 + 10] = r03 | (r14 << 1);
                int r04 = r14 >>> 31;
                int r15 = (int) jB19;
                r64[r65 + 11] = r04 | (r15 << 1);
                int r05 = r15 >>> 31;
                int r16 = (int) jB20;
                r64[r65 + 12] = r05 | (r16 << 1);
                int r06 = r16 >>> 31;
                int r17 = (int) jB21;
                r64[r65 + 13] = r06 | (r17 << 1);
                int r07 = r17 >>> 31;
                int r18 = (int) j55;
                r64[r65 + 14] = r07 | (r18 << 1);
                int r08 = r18 >>> 31;
                int r19 = r65 + 15;
                r64[r19] = r08 | ((r64[r19] + ((int) (j55 >>> 32))) << 1);
                return;
            }
            r6 = r72;
        }
    }

    public static void square(int[] r47, int[] r48) {
        long j10 = r47[0] & 4294967295L;
        int r52 = 16;
        int r6 = 7;
        int r72 = 0;
        while (true) {
            int r82 = r6 - 1;
            long j11 = r47[r6] & 4294967295L;
            long j12 = j11 * j11;
            int r53 = r52 - 1;
            r48[r53] = (r72 << 31) | ((int) (j12 >>> 33));
            r52 = r53 - 1;
            r48[r52] = (int) (j12 >>> 1);
            int r10 = (int) j12;
            if (r82 <= 0) {
                long j13 = j10 * j10;
                r48[0] = (int) j13;
                long j14 = r47[1] & 4294967295L;
                long j15 = (j14 * j10) + (((r10 << 31) & 4294967295L) | (j13 >>> 33));
                int r102 = (int) j15;
                r48[1] = (((int) (j13 >>> 32)) & 1) | (r102 << 1);
                int r54 = r102 >>> 31;
                long j16 = r47[2] & 4294967295L;
                long j17 = (j16 * j10) + (r48[2] & 4294967295L) + (j15 >>> 32);
                int r62 = (int) j17;
                r48[2] = r54 | (r62 << 1);
                int r55 = r62 >>> 31;
                long jB = v.b(j16, j14, j17 >>> 32, r48[3] & 4294967295L);
                long j18 = (r48[4] & 4294967295L) + (jB >>> 32);
                long j19 = r47[3] & 4294967295L;
                long j20 = (r48[5] & 4294967295L) + (j18 >>> 32);
                long j21 = j18 & 4294967295L;
                long j22 = (r48[6] & 4294967295L) + (j20 >>> 32);
                long j23 = j20 & 4294967295L;
                long j24 = (j19 * j10) + (jB & 4294967295L);
                int r92 = (int) j24;
                r48[3] = r55 | (r92 << 1);
                int r56 = r92 >>> 31;
                long jB2 = v.b(j19, j14, j24 >>> 32, j21);
                long jB3 = v.b(j19, j16, jB2 >>> 32, j23);
                long j25 = j22 + (jB3 >>> 32);
                long j26 = jB3 & 4294967295L;
                long j27 = r47[4] & 4294967295L;
                long j28 = (r48[7] & 4294967295L) + (j25 >>> 32);
                long j29 = j25 & 4294967295L;
                long j30 = (r48[8] & 4294967295L) + (j28 >>> 32);
                long j31 = j28 & 4294967295L;
                long j32 = (j27 * j10) + (jB2 & 4294967295L);
                int r93 = (int) j32;
                r48[4] = r56 | (r93 << 1);
                int r57 = r93 >>> 31;
                long jB4 = v.b(j27, j14, j32 >>> 32, j26);
                long jB5 = v.b(j27, j16, jB4 >>> 32, j29);
                long jB6 = v.b(j27, j19, jB5 >>> 32, j31);
                long j33 = jB5 & 4294967295L;
                long j34 = j30 + (jB6 >>> 32);
                long j35 = r47[5] & 4294967295L;
                long j36 = (r48[9] & 4294967295L) + (j34 >>> 32);
                long j37 = (r48[10] & 4294967295L) + (j36 >>> 32);
                long j38 = j36 & 4294967295L;
                long j39 = (j35 * j10) + (jB4 & 4294967295L);
                int r94 = (int) j39;
                r48[5] = r57 | (r94 << 1);
                long jB7 = v.b(j35, j14, j39 >>> 32, j33);
                long jB8 = v.b(j35, j16, jB7 >>> 32, jB6 & 4294967295L);
                long jB9 = v.b(j35, j19, jB8 >>> 32, j34 & 4294967295L);
                long j40 = jB8 & 4294967295L;
                long jB10 = v.b(j35, j27, jB9 >>> 32, j38);
                long j41 = jB9 & 4294967295L;
                long j42 = j37 + (jB10 >>> 32);
                long j43 = jB10 & 4294967295L;
                long j44 = r47[6] & 4294967295L;
                long j45 = (r48[11] & 4294967295L) + (j42 >>> 32);
                long j46 = j42 & 4294967295L;
                long j47 = (r48[12] & 4294967295L) + (j45 >>> 32);
                long j48 = j45 & 4294967295L;
                long j49 = (j44 * j10) + (jB7 & 4294967295L);
                int r12 = (int) j49;
                r48[6] = (r94 >>> 31) | (r12 << 1);
                int r58 = r12 >>> 31;
                long jB11 = v.b(j44, j14, j49 >>> 32, j40);
                long jB12 = v.b(j44, j16, jB11 >>> 32, j41);
                long jB13 = v.b(j44, j19, jB12 >>> 32, j43);
                long j50 = jB12 & 4294967295L;
                long jB14 = v.b(j44, j27, jB13 >>> 32, j46);
                long j51 = jB13 & 4294967295L;
                long jB15 = v.b(j44, j35, jB14 >>> 32, j48);
                long j52 = jB14 & 4294967295L;
                long j53 = j47 + (jB15 >>> 32);
                long j54 = r47[7] & 4294967295L;
                long j55 = (r48[13] & 4294967295L) + (j53 >>> 32);
                long j56 = (r48[14] & 4294967295L) + (j55 >>> 32);
                long j57 = (j10 * j54) + (jB11 & 4294967295L);
                int r32 = (int) j57;
                r48[7] = (r32 << 1) | r58;
                long jB16 = v.b(j54, j14, j57 >>> 32, j50);
                long jB17 = v.b(j54, j16, jB16 >>> 32, j51);
                long jB18 = v.b(j54, j19, jB17 >>> 32, j52);
                long jB19 = v.b(j54, j27, jB18 >>> 32, jB15 & 4294967295L);
                long jB20 = v.b(j54, j35, jB19 >>> 32, j53 & 4294967295L);
                long jB21 = v.b(j54, j44, jB20 >>> 32, j55 & 4294967295L);
                long j58 = j56 + (jB21 >>> 32);
                int r02 = (int) jB16;
                r48[8] = (r02 << 1) | (r32 >>> 31);
                int r13 = (int) jB17;
                r48[9] = (r02 >>> 31) | (r13 << 1);
                int r03 = r13 >>> 31;
                int r14 = (int) jB18;
                r48[10] = r03 | (r14 << 1);
                int r04 = r14 >>> 31;
                int r15 = (int) jB19;
                r48[11] = r04 | (r15 << 1);
                int r05 = r15 >>> 31;
                int r16 = (int) jB20;
                r48[12] = r05 | (r16 << 1);
                int r06 = r16 >>> 31;
                int r17 = (int) jB21;
                r48[13] = r06 | (r17 << 1);
                int r07 = r17 >>> 31;
                int r18 = (int) j58;
                r48[14] = r07 | (r18 << 1);
                r48[15] = (r18 >>> 31) | ((r48[15] + ((int) (j58 >>> 32))) << 1);
                return;
            }
            r6 = r82;
            r72 = r10;
        }
    }

    public static int sub(int[] r92, int r10, int[] r11, int r12, int[] r13, int r14) {
        long j10 = ((r92[r10 + 0] & 4294967295L) - (r11[r12 + 0] & 4294967295L)) + 0;
        r13[r14 + 0] = (int) j10;
        long j11 = ((r92[r10 + 1] & 4294967295L) - (r11[r12 + 1] & 4294967295L)) + (j10 >> 32);
        r13[r14 + 1] = (int) j11;
        long j12 = ((r92[r10 + 2] & 4294967295L) - (r11[r12 + 2] & 4294967295L)) + (j11 >> 32);
        r13[r14 + 2] = (int) j12;
        long j13 = ((r92[r10 + 3] & 4294967295L) - (r11[r12 + 3] & 4294967295L)) + (j12 >> 32);
        r13[r14 + 3] = (int) j13;
        long j14 = ((r92[r10 + 4] & 4294967295L) - (r11[r12 + 4] & 4294967295L)) + (j13 >> 32);
        r13[r14 + 4] = (int) j14;
        long j15 = ((r92[r10 + 5] & 4294967295L) - (r11[r12 + 5] & 4294967295L)) + (j14 >> 32);
        r13[r14 + 5] = (int) j15;
        long j16 = ((r92[r10 + 6] & 4294967295L) - (r11[r12 + 6] & 4294967295L)) + (j15 >> 32);
        r13[r14 + 6] = (int) j16;
        long j17 = ((r92[r10 + 7] & 4294967295L) - (r11[r12 + 7] & 4294967295L)) + (j16 >> 32);
        r13[r14 + 7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int sub(int[] r10, int[] r11, int[] r12) {
        long j10 = ((r10[0] & 4294967295L) - (r11[0] & 4294967295L)) + 0;
        r12[0] = (int) j10;
        long j11 = ((r10[1] & 4294967295L) - (r11[1] & 4294967295L)) + (j10 >> 32);
        r12[1] = (int) j11;
        long j12 = ((r10[2] & 4294967295L) - (r11[2] & 4294967295L)) + (j11 >> 32);
        r12[2] = (int) j12;
        long j13 = ((r10[3] & 4294967295L) - (r11[3] & 4294967295L)) + (j12 >> 32);
        r12[3] = (int) j13;
        long j14 = ((r10[4] & 4294967295L) - (r11[4] & 4294967295L)) + (j13 >> 32);
        r12[4] = (int) j14;
        long j15 = ((r10[5] & 4294967295L) - (r11[5] & 4294967295L)) + (j14 >> 32);
        r12[5] = (int) j15;
        long j16 = ((r10[6] & 4294967295L) - (r11[6] & 4294967295L)) + (j15 >> 32);
        r12[6] = (int) j16;
        long j17 = ((r10[7] & 4294967295L) - (r11[7] & 4294967295L)) + (j16 >> 32);
        r12[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int subBothFrom(int[] r10, int[] r11, int[] r12) {
        long j10 = (((r12[0] & 4294967295L) - (r10[0] & 4294967295L)) - (r11[0] & 4294967295L)) + 0;
        r12[0] = (int) j10;
        long j11 = (((r12[1] & 4294967295L) - (r10[1] & 4294967295L)) - (r11[1] & 4294967295L)) + (j10 >> 32);
        r12[1] = (int) j11;
        long j12 = (((r12[2] & 4294967295L) - (r10[2] & 4294967295L)) - (r11[2] & 4294967295L)) + (j11 >> 32);
        r12[2] = (int) j12;
        long j13 = (((r12[3] & 4294967295L) - (r10[3] & 4294967295L)) - (r11[3] & 4294967295L)) + (j12 >> 32);
        r12[3] = (int) j13;
        long j14 = (((r12[4] & 4294967295L) - (r10[4] & 4294967295L)) - (r11[4] & 4294967295L)) + (j13 >> 32);
        r12[4] = (int) j14;
        long j15 = (((r12[5] & 4294967295L) - (r10[5] & 4294967295L)) - (r11[5] & 4294967295L)) + (j14 >> 32);
        r12[5] = (int) j15;
        long j16 = (((r12[6] & 4294967295L) - (r10[6] & 4294967295L)) - (r11[6] & 4294967295L)) + (j15 >> 32);
        r12[6] = (int) j16;
        long j17 = (((r12[7] & 4294967295L) - (r10[7] & 4294967295L)) - (r11[7] & 4294967295L)) + (j16 >> 32);
        r12[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int subFrom(int[] r10, int r11, int[] r12, int r13) {
        long j10 = ((r12[r0] & 4294967295L) - (r10[r11 + 0] & 4294967295L)) + 0;
        r12[r13 + 0] = (int) j10;
        long j11 = ((r12[r5] & 4294967295L) - (r10[r11 + 1] & 4294967295L)) + (j10 >> 32);
        r12[r13 + 1] = (int) j11;
        long j12 = ((r12[r5] & 4294967295L) - (r10[r11 + 2] & 4294967295L)) + (j11 >> 32);
        r12[r13 + 2] = (int) j12;
        long j13 = ((r12[r5] & 4294967295L) - (r10[r11 + 3] & 4294967295L)) + (j12 >> 32);
        r12[r13 + 3] = (int) j13;
        long j14 = ((r12[r5] & 4294967295L) - (r10[r11 + 4] & 4294967295L)) + (j13 >> 32);
        r12[r13 + 4] = (int) j14;
        long j15 = ((r12[r5] & 4294967295L) - (r10[r11 + 5] & 4294967295L)) + (j14 >> 32);
        r12[r13 + 5] = (int) j15;
        long j16 = ((r12[r5] & 4294967295L) - (r10[r11 + 6] & 4294967295L)) + (j15 >> 32);
        r12[r13 + 6] = (int) j16;
        long j17 = ((r12[r13] & 4294967295L) - (r10[r11 + 7] & 4294967295L)) + (j16 >> 32);
        r12[r13 + 7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int subFrom(int[] r92, int r10, int[] r11, int r12, int r13) {
        long j10 = r13 & 4294967295L;
        long j11 = ((r11[r13] & 4294967295L) - (r92[r10 + 0] & 4294967295L)) + j10;
        r11[r12 + 0] = (int) j11;
        long j12 = j11 >> 32;
        long j13 = ((r11[r4] & 4294967295L) - (r92[r10 + 1] & 4294967295L)) + j12;
        r11[r12 + 1] = (int) j13;
        long j14 = ((r11[r4] & 4294967295L) - (r92[r10 + 2] & 4294967295L)) + (j13 >> 32);
        r11[r12 + 2] = (int) j14;
        long j15 = ((r11[r4] & 4294967295L) - (r92[r10 + 3] & 4294967295L)) + (j14 >> 32);
        r11[r12 + 3] = (int) j15;
        long j16 = ((r11[r4] & 4294967295L) - (r92[r10 + 4] & 4294967295L)) + (j15 >> 32);
        r11[r12 + 4] = (int) j16;
        long j17 = ((r11[r4] & 4294967295L) - (r92[r10 + 5] & 4294967295L)) + (j16 >> 32);
        r11[r12 + 5] = (int) j17;
        long j18 = ((r11[r4] & 4294967295L) - (r92[r10 + 6] & 4294967295L)) + (j17 >> 32);
        r11[r12 + 6] = (int) j18;
        long j19 = ((r11[r12] & 4294967295L) - (r92[r10 + 7] & 4294967295L)) + (j18 >> 32);
        r11[r12 + 7] = (int) j19;
        return (int) (j19 >> 32);
    }

    public static int subFrom(int[] r10, int[] r11) {
        long j10 = ((r11[0] & 4294967295L) - (r10[0] & 4294967295L)) + 0;
        r11[0] = (int) j10;
        long j11 = ((r11[1] & 4294967295L) - (r10[1] & 4294967295L)) + (j10 >> 32);
        r11[1] = (int) j11;
        long j12 = ((r11[2] & 4294967295L) - (r10[2] & 4294967295L)) + (j11 >> 32);
        r11[2] = (int) j12;
        long j13 = ((r11[3] & 4294967295L) - (r10[3] & 4294967295L)) + (j12 >> 32);
        r11[3] = (int) j13;
        long j14 = ((r11[4] & 4294967295L) - (r10[4] & 4294967295L)) + (j13 >> 32);
        r11[4] = (int) j14;
        long j15 = ((r11[5] & 4294967295L) - (r10[5] & 4294967295L)) + (j14 >> 32);
        r11[5] = (int) j15;
        long j16 = ((r11[6] & 4294967295L) - (r10[6] & 4294967295L)) + (j15 >> 32);
        r11[6] = (int) j16;
        long j17 = ((r11[7] & 4294967295L) - (4294967295L & r10[7])) + (j16 >> 32);
        r11[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static int subFrom(int[] r92, int[] r10, int r11) {
        long j10 = ((r10[0] & 4294967295L) - (r92[0] & 4294967295L)) + (r11 & 4294967295L);
        r10[0] = (int) j10;
        long j11 = ((r10[1] & 4294967295L) - (r92[1] & 4294967295L)) + (j10 >> 32);
        r10[1] = (int) j11;
        long j12 = ((r10[2] & 4294967295L) - (r92[2] & 4294967295L)) + (j11 >> 32);
        r10[2] = (int) j12;
        long j13 = ((r10[3] & 4294967295L) - (r92[3] & 4294967295L)) + (j12 >> 32);
        r10[3] = (int) j13;
        long j14 = ((r10[4] & 4294967295L) - (r92[4] & 4294967295L)) + (j13 >> 32);
        r10[4] = (int) j14;
        long j15 = ((r10[5] & 4294967295L) - (r92[5] & 4294967295L)) + (j14 >> 32);
        r10[5] = (int) j15;
        long j16 = ((r10[6] & 4294967295L) - (r92[6] & 4294967295L)) + (j15 >> 32);
        r10[6] = (int) j16;
        long j17 = ((r10[7] & 4294967295L) - (4294967295L & r92[7])) + (j16 >> 32);
        r10[7] = (int) j17;
        return (int) (j17 >> 32);
    }

    public static BigInteger toBigInteger(int[] r42) {
        byte[] bArr = new byte[32];
        for (int r12 = 0; r12 < 8; r12++) {
            int r22 = r42[r12];
            if (r22 != 0) {
                Pack.intToBigEndian(r22, bArr, (7 - r12) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[32];
        for (int r12 = 0; r12 < 4; r12++) {
            long j10 = jArr[r12];
            if (j10 != 0) {
                Pack.longToBigEndian(j10, bArr, (3 - r12) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] r22) {
        r22[0] = 0;
        r22[1] = 0;
        r22[2] = 0;
        r22[3] = 0;
        r22[4] = 0;
        r22[5] = 0;
        r22[6] = 0;
        r22[7] = 0;
    }
}
