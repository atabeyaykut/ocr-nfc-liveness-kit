package org.bouncycastle.math.raw;

import androidx.appcompat.widget.v;
import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class Nat224 {
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
        return (int) (j16 >>> 32);
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
        return (int) (j16 >>> 32);
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
        long j16 = (r10[r11 + 6] & 4294967295L) + (r12[r13 + 6] & 4294967295L) + (r14[r15] & 4294967295L) + (j15 >>> 32);
        r14[r15 + 6] = (int) j16;
        return (int) (j16 >>> 32);
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
        return (int) (j16 >>> 32);
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
        long j16 = (r92[r10 + 6] & 4294967295L) + (4294967295L & r11[r12]) + (j15 >>> 32);
        r11[r12 + 6] = (int) j16;
        return (int) (j16 >>> 32);
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
        long j16 = (r10[6] & 4294967295L) + (4294967295L & r11[6]) + (j15 >>> 32);
        r11[6] = (int) j16;
        return (int) (j16 >>> 32);
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
        long j16 = (r92[6] & 4294967295L) + (4294967295L & r10[6]) + (j15 >>> 32);
        r10[6] = (int) j16;
        return (int) (j16 >>> 32);
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
        long j16 = (r11[r12] & 4294967295L) + (4294967295L & r13[r14]) + (j15 >>> 32);
        int r110 = (int) j16;
        r11[r12 + 6] = r110;
        r13[r14 + 6] = r110;
        return (int) (j16 >>> 32);
    }

    public static void copy(int[] r22, int r32, int[] r42, int r52) {
        r42[r52 + 0] = r22[r32 + 0];
        r42[r52 + 1] = r22[r32 + 1];
        r42[r52 + 2] = r22[r32 + 2];
        r42[r52 + 3] = r22[r32 + 3];
        r42[r52 + 4] = r22[r32 + 4];
        r42[r52 + 5] = r22[r32 + 5];
        r42[r52 + 6] = r22[r32 + 6];
    }

    public static void copy(int[] r22, int[] r32) {
        r32[0] = r22[0];
        r32[1] = r22[1];
        r32[2] = r22[2];
        r32[3] = r22[3];
        r32[4] = r22[4];
        r32[5] = r22[5];
        r32[6] = r22[6];
    }

    public static int[] create() {
        return new int[7];
    }

    public static int[] createExt() {
        return new int[14];
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
        for (int r02 = 6; r02 >= 0; r02--) {
            if (r32[r02] != r42[r02]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 224) {
            throw new IllegalArgumentException();
        }
        int[] r02 = create();
        for (int r12 = 0; r12 < 7; r12++) {
            r02[r12] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return r02;
    }

    public static int getBit(int[] r32, int r42) {
        int r33;
        if (r42 == 0) {
            r33 = r32[0];
        } else {
            int r12 = r42 >> 5;
            if (r12 < 0 || r12 >= 7) {
                return 0;
            }
            r33 = r32[r12] >>> (r42 & 31);
        }
        return r33 & 1;
    }

    public static boolean gte(int[] r52, int r6, int[] r72, int r82) {
        for (int r02 = 6; r02 >= 0; r02--) {
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
        for (int r02 = 6; r02 >= 0; r02--) {
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
        for (int r12 = 1; r12 < 7; r12++) {
            if (r42[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] r32) {
        for (int r12 = 0; r12 < 7; r12++) {
            if (r32[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] r30, int r31, int[] r32, int r33, int[] r34, int r35) {
        long j10 = r32[r33 + 0] & 4294967295L;
        long j11 = r32[r33 + 1] & 4294967295L;
        long j12 = r32[r33 + 2] & 4294967295L;
        long j13 = r32[r33 + 3] & 4294967295L;
        long j14 = r32[r33 + 4] & 4294967295L;
        long j15 = r32[r33 + 5] & 4294967295L;
        long j16 = r30[r31 + 0] & 4294967295L;
        long j17 = (j16 * j10) + 0;
        r34[r35 + 0] = (int) j17;
        long j18 = (j16 * j11) + (j17 >>> 32);
        r34[r35 + 1] = (int) j18;
        long j19 = (j16 * j12) + (j18 >>> 32);
        r34[r35 + 2] = (int) j19;
        long j20 = (j16 * j13) + (j19 >>> 32);
        r34[r35 + 3] = (int) j20;
        long j21 = (j16 * j14) + (j20 >>> 32);
        r34[r35 + 4] = (int) j21;
        long j22 = (j16 * j15) + (j21 >>> 32);
        r34[r35 + 5] = (int) j22;
        long j23 = j22 >>> 32;
        long j24 = r32[r33 + 6] & 4294967295L;
        long j25 = (j16 * j24) + j23;
        r34[r35 + 6] = (int) j25;
        r34[r35 + 7] = (int) (j25 >>> 32);
        int r12 = 1;
        int r22 = r35;
        int r52 = 1;
        while (r52 < 7) {
            r22 += r12;
            long j26 = r30[r31 + r52] & 4294967295L;
            long j27 = (j26 * j10) + (r34[r26] & 4294967295L) + 0;
            int r24 = r52;
            r34[r22 + 0] = (int) j27;
            long j28 = j24;
            long j29 = (j26 * j11) + (r34[r27] & 4294967295L) + (j27 >>> 32);
            r34[r22 + 1] = (int) j29;
            long j30 = (j26 * j12) + (r34[r25] & 4294967295L) + (j29 >>> 32);
            r34[r22 + 2] = (int) j30;
            long j31 = (j26 * j13) + (r34[r1] & 4294967295L) + (j30 >>> 32);
            r34[r22 + 3] = (int) j31;
            long j32 = (j26 * j14) + (r34[r1] & 4294967295L) + (j31 >>> 32);
            r34[r22 + 4] = (int) j32;
            long j33 = (j26 * j15) + (r34[r1] & 4294967295L) + (j32 >>> 32);
            r34[r22 + 5] = (int) j33;
            long j34 = (j26 * j28) + (r34[r1] & 4294967295L) + (j33 >>> 32);
            r34[r22 + 6] = (int) j34;
            r34[r22 + 7] = (int) (j34 >>> 32);
            r52 = r24 + 1;
            j12 = j12;
            j24 = j28;
            r12 = 1;
        }
    }

    public static void mul(int[] r32, int[] r33, int[] r34) {
        long j10 = r33[0] & 4294967295L;
        long j11 = r33[1] & 4294967295L;
        long j12 = r33[2] & 4294967295L;
        long j13 = r33[3] & 4294967295L;
        long j14 = r33[4] & 4294967295L;
        long j15 = r33[5] & 4294967295L;
        long j16 = r33[6] & 4294967295L;
        long j17 = r32[0] & 4294967295L;
        long j18 = (j17 * j10) + 0;
        r34[0] = (int) j18;
        long j19 = (j17 * j11) + (j18 >>> 32);
        r34[1] = (int) j19;
        long j20 = (j17 * j12) + (j19 >>> 32);
        r34[2] = (int) j20;
        long j21 = (j17 * j13) + (j20 >>> 32);
        r34[3] = (int) j21;
        long j22 = (j17 * j14) + (j21 >>> 32);
        r34[4] = (int) j22;
        long j23 = (j17 * j15) + (j22 >>> 32);
        r34[5] = (int) j23;
        long j24 = (j17 * j16) + (j23 >>> 32);
        r34[6] = (int) j24;
        r34[7] = (int) (j24 >>> 32);
        int r52 = 1;
        for (int r35 = 7; r52 < r35; r35 = 7) {
            long j25 = r32[r52] & 4294967295L;
            long j26 = j10;
            long j27 = (j25 * j10) + (r34[r4] & 4294967295L) + 0;
            r34[r52 + 0] = (int) j27;
            int r18 = r52 + 1;
            long j28 = j11;
            long j29 = (j25 * j11) + (r34[r18] & 4294967295L) + (j27 >>> 32);
            r34[r18] = (int) j29;
            long j30 = (j25 * j12) + (r34[r6] & 4294967295L) + (j29 >>> 32);
            r34[r52 + 2] = (int) j30;
            long j31 = (j25 * j13) + (r34[r6] & 4294967295L) + (j30 >>> 32);
            r34[r52 + 3] = (int) j31;
            long j32 = (j25 * j14) + (r34[r6] & 4294967295L) + (j31 >>> 32);
            r34[r52 + 4] = (int) j32;
            long j33 = (j25 * j15) + (r34[r6] & 4294967295L) + (j32 >>> 32);
            r34[r52 + 5] = (int) j33;
            long j34 = j33 >>> 32;
            long j35 = (j25 * j16) + (r34[r3] & 4294967295L) + j34;
            r34[r52 + 6] = (int) j35;
            r34[r52 + 7] = (int) (j35 >>> 32);
            r52 = r18;
            j10 = j26;
            j11 = j28;
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
        long j24 = (j10 * j23) + j21 + (4294967295L & r16[r17 + 6]) + (j22 >>> 32);
        r18[r19 + 6] = (int) j24;
        return (j24 >>> 32) + j23;
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
        return Nat.incAt(7, r18, r19, 4);
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
        return Nat.incAt(7, r12, r13, 3);
    }

    public static int mulAddTo(int[] r33, int r34, int[] r35, int r36, int[] r37, int r38) {
        long j10 = r35[r36 + 0] & 4294967295L;
        long j11 = r35[r36 + 1] & 4294967295L;
        long j12 = r35[r36 + 2] & 4294967295L;
        long j13 = r35[r36 + 3] & 4294967295L;
        long j14 = r35[r36 + 4] & 4294967295L;
        long j15 = r35[r36 + 5] & 4294967295L;
        long j16 = r35[r36 + 6] & 4294967295L;
        int r16 = r38;
        long j17 = 0;
        int r22 = 0;
        while (r22 < 7) {
            int r23 = r22;
            long j18 = r33[r34 + r22] & 4294967295L;
            long j19 = j10;
            long j20 = (j18 * j10) + (r37[r26] & 4294967295L) + 0;
            long j21 = j16;
            r37[r16 + 0] = (int) j20;
            int r15 = r16 + 1;
            long j22 = (j18 * j11) + (r37[r15] & 4294967295L) + (j20 >>> 32);
            r37[r15] = (int) j22;
            long j23 = (j18 * j12) + (r37[r5] & 4294967295L) + (j22 >>> 32);
            r37[r16 + 2] = (int) j23;
            long j24 = (j18 * j13) + (r37[r5] & 4294967295L) + (j23 >>> 32);
            r37[r16 + 3] = (int) j24;
            long j25 = (j18 * j14) + (r37[r5] & 4294967295L) + (j24 >>> 32);
            r37[r16 + 4] = (int) j25;
            long j26 = (j18 * j15) + (r37[r5] & 4294967295L) + (j25 >>> 32);
            r37[r16 + 5] = (int) j26;
            long j27 = (j18 * j21) + (r37[r5] & 4294967295L) + (j26 >>> 32);
            r37[r16 + 6] = (int) j27;
            long j28 = (j27 >>> 32) + (r37[r16] & 4294967295L) + j17;
            r37[r16 + 7] = (int) j28;
            j17 = j28 >>> 32;
            r22 = r23 + 1;
            r16 = r15;
            j16 = j21;
            j10 = j19;
            j11 = j11;
        }
        return (int) j17;
    }

    public static int mulAddTo(int[] r34, int[] r35, int[] r36) {
        long j10 = r35[0] & 4294967295L;
        long j11 = r35[1] & 4294967295L;
        long j12 = r35[2] & 4294967295L;
        long j13 = r35[3] & 4294967295L;
        long j14 = r35[4] & 4294967295L;
        long j15 = r35[5] & 4294967295L;
        long j16 = r35[6] & 4294967295L;
        long j17 = 0;
        int r22 = 0;
        while (r22 < 7) {
            long j18 = j16;
            long j19 = r34[r22] & 4294967295L;
            long j20 = j15;
            long j21 = (j19 * j10) + (r36[r25] & 4294967295L) + 0;
            r36[r22 + 0] = (int) j21;
            int r16 = r22 + 1;
            long j22 = j11;
            long j23 = (j19 * j11) + (r36[r16] & 4294967295L) + (j21 >>> 32);
            r36[r16] = (int) j23;
            long j24 = (j19 * j12) + (r36[r25] & 4294967295L) + (j23 >>> 32);
            r36[r22 + 2] = (int) j24;
            long j25 = (j19 * j13) + (r36[r8] & 4294967295L) + (j24 >>> 32);
            r36[r22 + 3] = (int) j25;
            long j26 = (j19 * j14) + (r36[r8] & 4294967295L) + (j25 >>> 32);
            r36[r22 + 4] = (int) j26;
            long j27 = (j19 * j20) + (r36[r8] & 4294967295L) + (j26 >>> 32);
            r36[r22 + 5] = (int) j27;
            long j28 = (j19 * j18) + (r36[r8] & 4294967295L) + (j27 >>> 32);
            r36[r22 + 6] = (int) j28;
            long j29 = (j28 >>> 32) + (r36[r2] & 4294967295L) + j17;
            r36[r22 + 7] = (int) j29;
            j17 = j29 >>> 32;
            r22 = r16;
            j16 = j18;
            j15 = j20;
            j12 = j12;
            j11 = j22;
        }
        return (int) j17;
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
        long j17 = (j10 * (4294967295L & r10[6])) + (j16 >>> 32);
        r10[6] = (int) j17;
        return (int) (j17 >>> 32);
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
        long j17 = (j10 * (r13[6] & 4294967295L)) + (4294967295L & r12[6]) + (j16 >>> 32);
        r13[6] = (int) j17;
        return (int) (j17 >>> 32);
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
        } while (r83 < 7);
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
        long j17 = (j10 * (r12[r13 + 6] & 4294967295L)) + (r14[r15] & 4294967295L) + (j16 >>> 32);
        r14[r15 + 6] = (int) j17;
        return (int) (j17 >>> 32);
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
        return Nat.incAt(7, r13, r14, 3);
    }

    public static void square(int[] r58, int r59, int[] r60, int r61) {
        long j10 = r58[r59 + 0] & 4294967295L;
        int r42 = 0;
        int r52 = 14;
        int r6 = 6;
        while (true) {
            int r72 = r6 - 1;
            long j11 = r58[r59 + r6] & 4294967295L;
            long j12 = j11 * j11;
            int r53 = r52 - 1;
            r60[r61 + r53] = (r42 << 31) | ((int) (j12 >>> 33));
            r52 = r53 - 1;
            r60[r61 + r52] = (int) (j12 >>> 1);
            r42 = (int) j12;
            if (r72 <= 0) {
                long j13 = j10 * j10;
                long j14 = ((r42 << 31) & 4294967295L) | (j13 >>> 33);
                r60[r61 + 0] = (int) j13;
                int r62 = 1 & ((int) (j13 >>> 32));
                long j15 = r58[r59 + 1] & 4294967295L;
                long j16 = (j15 * j10) + j14;
                int r43 = (int) j16;
                r60[r61 + 1] = r62 | (r43 << 1);
                long j17 = r58[r59 + 2] & 4294967295L;
                long j18 = (j17 * j10) + (r60[r10] & 4294967295L) + (j16 >>> 32);
                int r11 = (int) j18;
                r60[r61 + 2] = (r43 >>> 31) | (r11 << 1);
                long jB = v.b(j17, j15, j18 >>> 32, r60[r9] & 4294967295L);
                long j19 = (r60[r21] & 4294967295L) + (jB >>> 32);
                long j20 = r58[r59 + 3] & 4294967295L;
                long j21 = (r60[r32] & 4294967295L) + (j19 >>> 32);
                long j22 = (j20 * j10) + (jB & 4294967295L);
                int r10 = (int) j22;
                r60[r61 + 3] = (r11 >>> 31) | (r10 << 1);
                long jB2 = v.b(j20, j15, j22 >>> 32, j19 & 4294967295L);
                long jB3 = v.b(j20, j17, jB2 >>> 32, j21 & 4294967295L);
                long j23 = (r60[r33] & 4294967295L) + (j21 >>> 32) + (jB3 >>> 32);
                long j24 = jB3 & 4294967295L;
                long j25 = r58[r59 + 4] & 4294967295L;
                long j26 = (r60[r9] & 4294967295L) + (j23 >>> 32);
                long j27 = (r60[r44] & 4294967295L) + (j26 >>> 32);
                long j28 = (j25 * j10) + (jB2 & 4294967295L);
                int r22 = (int) j28;
                r60[r61 + 4] = (r22 << 1) | (r10 >>> 31);
                long jB4 = v.b(j25, j15, j28 >>> 32, j24);
                long jB5 = v.b(j25, j17, jB4 >>> 32, j23 & 4294967295L);
                long jB6 = v.b(j25, j20, jB5 >>> 32, j26 & 4294967295L);
                long j29 = jB5 & 4294967295L;
                long j30 = j27 + (jB6 >>> 32);
                long j31 = jB6 & 4294967295L;
                long j32 = r58[r59 + 5] & 4294967295L;
                long j33 = (r60[r9] & 4294967295L) + (j30 >>> 32);
                long j34 = (r60[r48] & 4294967295L) + (j33 >>> 32);
                long j35 = j33 & 4294967295L;
                long j36 = (j32 * j10) + (jB4 & 4294967295L);
                int r32 = (int) j36;
                r60[r61 + 5] = (r22 >>> 31) | (r32 << 1);
                int r23 = r32 >>> 31;
                long jB7 = v.b(j32, j15, j36 >>> 32, j29);
                long jB8 = v.b(j32, j17, jB7 >>> 32, j31);
                long jB9 = v.b(j32, j20, jB8 >>> 32, j30 & 4294967295L);
                long j37 = jB8 & 4294967295L;
                long jB10 = v.b(j32, j25, jB9 >>> 32, j35);
                long j38 = jB9 & 4294967295L;
                long j39 = j34 + (jB10 >>> 32);
                long j40 = jB10 & 4294967295L;
                long j41 = r58[r59 + 6] & 4294967295L;
                long j42 = (r60[r9] & 4294967295L) + (j39 >>> 32);
                long j43 = j39 & 4294967295L;
                long j44 = (j10 * j41) + (jB7 & 4294967295L);
                int r33 = (int) j44;
                r60[r61 + 6] = r23 | (r33 << 1);
                int r24 = r33 >>> 31;
                long jB11 = v.b(j15, j41, j44 >>> 32, j37);
                long jB12 = v.b(j41, j17, jB11 >>> 32, j38);
                long jB13 = v.b(j41, j20, jB12 >>> 32, j40);
                long jB14 = v.b(j41, j25, jB13 >>> 32, j43);
                long jB15 = v.b(j41, j32, jB14 >>> 32, j42 & 4294967295L);
                long j45 = (r60[r50] & 4294967295L) + (j42 >>> 32) + (jB15 >>> 32);
                int r12 = (int) jB11;
                r60[r61 + 7] = (r12 << 1) | r24;
                int r02 = r12 >>> 31;
                int r13 = (int) jB12;
                r60[r61 + 8] = r02 | (r13 << 1);
                int r03 = r13 >>> 31;
                int r14 = (int) jB13;
                r60[r61 + 9] = r03 | (r14 << 1);
                int r04 = r14 >>> 31;
                int r15 = (int) jB14;
                r60[r61 + 10] = r04 | (r15 << 1);
                int r05 = r15 >>> 31;
                int r16 = (int) jB15;
                r60[r61 + 11] = r05 | (r16 << 1);
                int r06 = r16 >>> 31;
                int r17 = (int) j45;
                r60[r61 + 12] = r06 | (r17 << 1);
                int r07 = r17 >>> 31;
                int r18 = r61 + 13;
                r60[r18] = r07 | ((r60[r18] + ((int) (j45 >>> 32))) << 1);
                return;
            }
            r6 = r72;
        }
    }

    public static void square(int[] r41, int[] r42) {
        long j10 = r41[0] & 4294967295L;
        int r52 = 14;
        int r6 = 6;
        int r72 = 0;
        while (true) {
            int r82 = r6 - 1;
            long j11 = r41[r6] & 4294967295L;
            long j12 = j11 * j11;
            int r53 = r52 - 1;
            r42[r53] = (r72 << 31) | ((int) (j12 >>> 33));
            r52 = r53 - 1;
            r42[r52] = (int) (j12 >>> 1);
            int r10 = (int) j12;
            if (r82 <= 0) {
                long j13 = j10 * j10;
                r42[0] = (int) j13;
                long j14 = r41[1] & 4294967295L;
                long j15 = (j14 * j10) + (((r10 << 31) & 4294967295L) | (j13 >>> 33));
                int r102 = (int) j15;
                r42[1] = (((int) (j13 >>> 32)) & 1) | (r102 << 1);
                int r54 = r102 >>> 31;
                long j16 = r41[2] & 4294967295L;
                long j17 = (j16 * j10) + (r42[2] & 4294967295L) + (j15 >>> 32);
                int r62 = (int) j17;
                r42[2] = r54 | (r62 << 1);
                int r55 = r62 >>> 31;
                long jB = v.b(j16, j14, j17 >>> 32, r42[3] & 4294967295L);
                long j18 = (r42[4] & 4294967295L) + (jB >>> 32);
                long j19 = r41[3] & 4294967295L;
                long j20 = (r42[5] & 4294967295L) + (j18 >>> 32);
                long j21 = j18 & 4294967295L;
                long j22 = (r42[6] & 4294967295L) + (j20 >>> 32);
                long j23 = j20 & 4294967295L;
                long j24 = (j19 * j10) + (jB & 4294967295L);
                int r63 = (int) j24;
                r42[3] = r55 | (r63 << 1);
                long jB2 = v.b(j19, j14, j24 >>> 32, j21);
                long jB3 = v.b(j19, j16, jB2 >>> 32, j23);
                long j25 = j22 + (jB3 >>> 32);
                long j26 = jB3 & 4294967295L;
                long j27 = r41[4] & 4294967295L;
                long j28 = (r42[7] & 4294967295L) + (j25 >>> 32);
                long j29 = j25 & 4294967295L;
                long j30 = (r42[8] & 4294967295L) + (j28 >>> 32);
                long j31 = j28 & 4294967295L;
                long j32 = (j27 * j10) + (jB2 & 4294967295L);
                int r11 = (int) j32;
                r42[4] = (r63 >>> 31) | (r11 << 1);
                int r56 = r11 >>> 31;
                long jB4 = v.b(j27, j14, j32 >>> 32, j26);
                long jB5 = v.b(j27, j16, jB4 >>> 32, j29);
                long jB6 = v.b(j27, j19, jB5 >>> 32, j31);
                long j33 = jB5 & 4294967295L;
                long j34 = j30 + (jB6 >>> 32);
                long j35 = r41[5] & 4294967295L;
                long j36 = (r42[9] & 4294967295L) + (j34 >>> 32);
                long j37 = j34 & 4294967295L;
                long j38 = (r42[10] & 4294967295L) + (j36 >>> 32);
                long j39 = j36 & 4294967295L;
                long j40 = (j35 * j10) + (jB4 & 4294967295L);
                int r112 = (int) j40;
                r42[5] = r56 | (r112 << 1);
                int r57 = r112 >>> 31;
                long jB7 = v.b(j35, j14, j40 >>> 32, j33);
                long jB8 = v.b(j35, j16, jB7 >>> 32, jB6 & 4294967295L);
                long jB9 = v.b(j35, j19, jB8 >>> 32, j37);
                long j41 = jB8 & 4294967295L;
                long jB10 = v.b(j35, j27, jB9 >>> 32, j39);
                long j42 = j38 + (jB10 >>> 32);
                long j43 = jB10 & 4294967295L;
                long j44 = r41[6] & 4294967295L;
                long j45 = (r42[11] & 4294967295L) + (j42 >>> 32);
                long j46 = (r42[12] & 4294967295L) + (j45 >>> 32);
                long j47 = 4294967295L & j45;
                long j48 = (j10 * j44) + (jB7 & 4294967295L);
                int r113 = (int) j48;
                r42[6] = r57 | (r113 << 1);
                int r58 = r113 >>> 31;
                long jB11 = v.b(j44, j14, j48 >>> 32, j41);
                long jB12 = v.b(j44, j16, jB11 >>> 32, jB9 & 4294967295L);
                long jB13 = v.b(j44, j19, jB12 >>> 32, j43);
                long jB14 = v.b(j44, j27, jB13 >>> 32, j42 & 4294967295L);
                long jB15 = v.b(j44, j35, jB14 >>> 32, j47);
                long j49 = j46 + (jB15 >>> 32);
                int r02 = (int) jB11;
                r42[7] = (r02 << 1) | r58;
                int r12 = (int) jB12;
                r42[8] = (r02 >>> 31) | (r12 << 1);
                int r03 = r12 >>> 31;
                int r13 = (int) jB13;
                r42[9] = r03 | (r13 << 1);
                int r04 = r13 >>> 31;
                int r14 = (int) jB14;
                r42[10] = r04 | (r14 << 1);
                int r05 = r14 >>> 31;
                int r15 = (int) jB15;
                r42[11] = r05 | (r15 << 1);
                int r06 = r15 >>> 31;
                int r16 = (int) j49;
                r42[12] = r06 | (r16 << 1);
                r42[13] = (r16 >>> 31) | ((r42[13] + ((int) (j49 >>> 32))) << 1);
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
        return (int) (j16 >> 32);
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
        return (int) (j16 >> 32);
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
        return (int) (j16 >> 32);
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
        long j16 = ((r12[r13] & 4294967295L) - (r10[r11 + 6] & 4294967295L)) + (j15 >> 32);
        r12[r13 + 6] = (int) j16;
        return (int) (j16 >> 32);
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
        long j16 = ((r11[6] & 4294967295L) - (4294967295L & r10[6])) + (j15 >> 32);
        r11[6] = (int) j16;
        return (int) (j16 >> 32);
    }

    public static BigInteger toBigInteger(int[] r42) {
        byte[] bArr = new byte[28];
        for (int r12 = 0; r12 < 7; r12++) {
            int r22 = r42[r12];
            if (r22 != 0) {
                Pack.intToBigEndian(r22, bArr, (6 - r12) << 2);
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
    }
}
