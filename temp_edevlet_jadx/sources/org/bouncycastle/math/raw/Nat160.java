package org.bouncycastle.math.raw;

import androidx.appcompat.widget.v;
import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class Nat160 {
    private static final long M = 4294967295L;

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
        return (int) (j14 >>> 32);
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
        return (int) (j14 >>> 32);
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
        long j14 = (r92[r10 + 4] & 4294967295L) + (4294967295L & r11[r12]) + (j13 >>> 32);
        r11[r12 + 4] = (int) j14;
        return (int) (j14 >>> 32);
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
        long j14 = (r10[4] & 4294967295L) + (4294967295L & r11[4]) + (j13 >>> 32);
        r11[4] = (int) j14;
        return (int) (j14 >>> 32);
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
        long j14 = (r11[r12] & 4294967295L) + (4294967295L & r13[r14]) + (j13 >>> 32);
        int r18 = (int) j14;
        r11[r12 + 4] = r18;
        r13[r14 + 4] = r18;
        return (int) (j14 >>> 32);
    }

    public static void copy(int[] r22, int r32, int[] r42, int r52) {
        r42[r52 + 0] = r22[r32 + 0];
        r42[r52 + 1] = r22[r32 + 1];
        r42[r52 + 2] = r22[r32 + 2];
        r42[r52 + 3] = r22[r32 + 3];
        r42[r52 + 4] = r22[r32 + 4];
    }

    public static void copy(int[] r22, int[] r32) {
        r32[0] = r22[0];
        r32[1] = r22[1];
        r32[2] = r22[2];
        r32[3] = r22[3];
        r32[4] = r22[4];
    }

    public static int[] create() {
        return new int[5];
    }

    public static int[] createExt() {
        return new int[10];
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
        for (int r02 = 4; r02 >= 0; r02--) {
            if (r32[r02] != r42[r02]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 160) {
            throw new IllegalArgumentException();
        }
        int[] r02 = create();
        for (int r12 = 0; r12 < 5; r12++) {
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
            if (r12 < 0 || r12 >= 5) {
                return 0;
            }
            r33 = r32[r12] >>> (r42 & 31);
        }
        return r33 & 1;
    }

    public static boolean gte(int[] r52, int r6, int[] r72, int r82) {
        for (int r02 = 4; r02 >= 0; r02--) {
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
        for (int r02 = 4; r02 >= 0; r02--) {
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
        for (int r12 = 1; r12 < 5; r12++) {
            if (r42[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] r32) {
        for (int r12 = 0; r12 < 5; r12++) {
            if (r32[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] r27, int r28, int[] r29, int r30, int[] r31, int r32) {
        long j10 = r29[r30 + 0] & 4294967295L;
        long j11 = r29[r30 + 1] & 4294967295L;
        long j12 = r29[r30 + 2] & 4294967295L;
        long j13 = r29[r30 + 3] & 4294967295L;
        long j14 = r29[r30 + 4] & 4294967295L;
        long j15 = r27[r28 + 0] & 4294967295L;
        long j16 = (j15 * j10) + 0;
        r31[r32 + 0] = (int) j16;
        long j17 = (j15 * j11) + (j16 >>> 32);
        r31[r32 + 1] = (int) j17;
        long j18 = (j15 * j12) + (j17 >>> 32);
        r31[r32 + 2] = (int) j18;
        long j19 = (j15 * j13) + (j18 >>> 32);
        r31[r32 + 3] = (int) j19;
        long j20 = (j15 * j14) + (j19 >>> 32);
        r31[r32 + 4] = (int) j20;
        r31[r32 + 5] = (int) (j20 >>> 32);
        int r33 = 1;
        int r42 = r32;
        int r52 = 1;
        while (r52 < 5) {
            r42 += r33;
            long j21 = r27[r28 + r52] & 4294967295L;
            long j22 = (j21 * j10) + (r31[r20] & 4294967295L) + 0;
            r31[r42 + 0] = (int) j22;
            long j23 = j10;
            long j24 = (j21 * j11) + (r31[r15] & 4294967295L) + (j22 >>> 32);
            r31[r42 + 1] = (int) j24;
            long j25 = j12;
            long j26 = (j21 * j12) + (r31[r3] & 4294967295L) + (j24 >>> 32);
            r31[r42 + 2] = (int) j26;
            long j27 = (j21 * j13) + (r31[r3] & 4294967295L) + (j26 >>> 32);
            r31[r42 + 3] = (int) j27;
            long j28 = (j21 * j14) + (r31[r3] & 4294967295L) + (j27 >>> 32);
            r31[r42 + 4] = (int) j28;
            r31[r42 + 5] = (int) (j28 >>> 32);
            r52++;
            j12 = j25;
            j10 = j23;
            r33 = 1;
        }
    }

    public static void mul(int[] r28, int[] r29, int[] r30) {
        long j10 = r29[0] & 4294967295L;
        int r52 = 1;
        long j11 = r29[1] & 4294967295L;
        long j12 = r29[2] & 4294967295L;
        long j13 = r29[3] & 4294967295L;
        long j14 = r29[4] & 4294967295L;
        long j15 = r28[0] & 4294967295L;
        long j16 = (j15 * j10) + 0;
        r30[0] = (int) j16;
        long j17 = (j15 * j11) + (j16 >>> 32);
        r30[1] = (int) j17;
        long j18 = (j15 * j12) + (j17 >>> 32);
        r30[2] = (int) j18;
        long j19 = (j15 * j13) + (j18 >>> 32);
        r30[3] = (int) j19;
        long j20 = (j15 * j14) + (j19 >>> 32);
        r30[4] = (int) j20;
        r30[5] = (int) (j20 >>> 32);
        for (int r32 = 5; r52 < r32; r32 = 5) {
            long j21 = r28[r52] & 4294967295L;
            long j22 = j10;
            long j23 = (j21 * j10) + (r30[r4] & 4294967295L) + 0;
            r30[r52 + 0] = (int) j23;
            int r16 = r52 + 1;
            long j24 = j11;
            long j25 = (j21 * j11) + (r30[r16] & 4294967295L) + (j23 >>> 32);
            r30[r16] = (int) j25;
            long j26 = (j21 * j12) + (r30[r6] & 4294967295L) + (j25 >>> 32);
            r30[r52 + 2] = (int) j26;
            long j27 = (j21 * j13) + (r30[r6] & 4294967295L) + (j26 >>> 32);
            r30[r52 + 3] = (int) j27;
            long j28 = j27 >>> 32;
            long j29 = (j21 * j14) + (r30[r3] & 4294967295L) + j28;
            r30[r52 + 4] = (int) j29;
            r30[r52 + 5] = (int) (j29 >>> 32);
            r52 = r16;
            j10 = j22;
            j11 = j24;
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
        long j20 = (j10 * j19) + j17 + (4294967295L & r16[r17 + 4]) + (j18 >>> 32);
        r18[r19 + 4] = (int) j20;
        return (j20 >>> 32) + j19;
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
        return Nat.incAt(5, r18, r19, 4);
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
        return Nat.incAt(5, r12, r13, 3);
    }

    public static int mulAddTo(int[] r29, int r30, int[] r31, int r32, int[] r33, int r34) {
        long j10 = 4294967295L;
        long j11 = r31[r32 + 0] & 4294967295L;
        long j12 = r31[r32 + 1] & 4294967295L;
        long j13 = r31[r32 + 2] & 4294967295L;
        long j14 = r31[r32 + 3] & 4294967295L;
        long j15 = r31[r32 + 4] & 4294967295L;
        int r12 = r34;
        int r15 = 0;
        long j16 = 0;
        while (r15 < 5) {
            long j17 = r29[r30 + r15] & j10;
            long j18 = j11;
            long j19 = (j17 * j11) + (r33[r20] & j10) + 0;
            r33[r12 + 0] = (int) j19;
            int r35 = r12 + 1;
            long j20 = j12;
            long j21 = (j17 * j12) + (r33[r35] & 4294967295L) + (j19 >>> 32);
            r33[r35] = (int) j21;
            long j22 = (j17 * j13) + (r33[r18] & 4294967295L) + (j21 >>> 32);
            r33[r12 + 2] = (int) j22;
            long j23 = (j17 * j14) + (r33[r5] & 4294967295L) + (j22 >>> 32);
            r33[r12 + 3] = (int) j23;
            long j24 = j23 >>> 32;
            long j25 = (j17 * j15) + (r33[r3] & 4294967295L) + j24;
            r33[r12 + 4] = (int) j25;
            long j26 = (j25 >>> 32) + (r33[r12] & 4294967295L) + j16;
            r33[r12 + 5] = (int) j26;
            j16 = j26 >>> 32;
            r15++;
            r12 = r35;
            j11 = j18;
            j10 = 4294967295L;
            j12 = j20;
            j13 = j13;
        }
        return (int) j16;
    }

    public static int mulAddTo(int[] r30, int[] r31, int[] r32) {
        int r02 = 0;
        long j10 = 4294967295L;
        long j11 = r31[0] & 4294967295L;
        long j12 = r31[1] & 4294967295L;
        long j13 = r31[2] & 4294967295L;
        long j14 = r31[3] & 4294967295L;
        long j15 = r31[4] & 4294967295L;
        long j16 = 0;
        while (r02 < 5) {
            long j17 = r30[r02] & j10;
            long j18 = j11;
            long j19 = (j17 * j11) + (r32[r21] & j10) + 0;
            r32[r02 + 0] = (int) j19;
            int r42 = r02 + 1;
            long j20 = j12;
            long j21 = (j17 * j12) + (r32[r42] & 4294967295L) + (j19 >>> 32);
            r32[r42] = (int) j21;
            long j22 = (j17 * j13) + (r32[r21] & 4294967295L) + (j21 >>> 32);
            r32[r02 + 2] = (int) j22;
            long j23 = (j17 * j14) + (r32[r6] & 4294967295L) + (j22 >>> 32);
            r32[r02 + 3] = (int) j23;
            long j24 = j23 >>> 32;
            long j25 = (j17 * j15) + (r32[r4] & 4294967295L) + j24;
            r32[r02 + 4] = (int) j25;
            long j26 = (j25 >>> 32) + (r32[r0] & 4294967295L) + j16;
            r32[r02 + 5] = (int) j26;
            j16 = j26 >>> 32;
            j10 = 4294967295L;
            j11 = j18;
            r02 = r42;
            j12 = j20;
            j13 = j13;
        }
        return (int) j16;
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
        } while (r83 < 5);
        return (int) j11;
    }

    public static int mulWordAddExt(int r11, int[] r12, int r13, int[] r14, int r15) {
        long j10 = r11 & 4294967295L;
        long j11 = ((r12[r13 + 0] & 4294967295L) * j10) + (r14[r11] & 4294967295L) + 0;
        r14[r15 + 0] = (int) j11;
        long j12 = ((r12[r13 + 1] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j11 >>> 32);
        r14[r15 + 1] = (int) j12;
        long j13 = ((r12[r13 + 2] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j12 >>> 32);
        r14[r15 + 2] = (int) j13;
        long j14 = ((r12[r13 + 3] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j13 >>> 32);
        r14[r15 + 3] = (int) j14;
        long j15 = (j10 * (r12[r13 + 4] & 4294967295L)) + (r14[r15] & 4294967295L) + (j14 >>> 32);
        r14[r15 + 4] = (int) j15;
        return (int) (j15 >>> 32);
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
        return Nat.incAt(5, r13, r14, 3);
    }

    public static int mulWordsAdd(int r82, int r92, int[] r10, int r11) {
        long j10 = ((r92 & 4294967295L) * (r82 & 4294967295L)) + (r10[r0] & 4294967295L) + 0;
        r10[r11 + 0] = (int) j10;
        long j11 = (j10 >>> 32) + (4294967295L & r10[r1]);
        r10[r11 + 1] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(5, r10, r11, 2);
    }

    public static void square(int[] r36, int r37, int[] r38, int r39) {
        long j10 = r36[r37 + 0] & 4294967295L;
        int r42 = 0;
        int r52 = 10;
        int r6 = 4;
        while (true) {
            int r72 = r6 - 1;
            long j11 = r36[r37 + r6] & 4294967295L;
            long j12 = j11 * j11;
            int r53 = r52 - 1;
            r38[r39 + r53] = (r42 << 31) | ((int) (j12 >>> 33));
            r52 = r53 - 1;
            r38[r39 + r52] = (int) (j12 >>> 1);
            r42 = (int) j12;
            if (r72 <= 0) {
                long j13 = j10 * j10;
                long j14 = ((r42 << 31) & 4294967295L) | (j13 >>> 33);
                r38[r39 + 0] = (int) j13;
                int r62 = 1 & ((int) (j13 >>> 32));
                long j15 = r36[r37 + 1] & 4294967295L;
                long j16 = (j15 * j10) + j14;
                int r43 = (int) j16;
                r38[r39 + 1] = r62 | (r43 << 1);
                long j17 = r36[r37 + 2] & 4294967295L;
                long j18 = (j17 * j10) + (r38[r10] & 4294967295L) + (j16 >>> 32);
                int r11 = (int) j18;
                r38[r39 + 2] = (r43 >>> 31) | (r11 << 1);
                long jB = v.b(j17, j15, j18 >>> 32, r38[r9] & 4294967295L);
                long j19 = (r38[r21] & 4294967295L) + (jB >>> 32);
                long j20 = r36[r37 + 3] & 4294967295L;
                long j21 = (r38[r30] & 4294967295L) + (j19 >>> 32);
                long j22 = (j20 * j10) + (jB & 4294967295L);
                int r10 = (int) j22;
                r38[r39 + 3] = (r11 >>> 31) | (r10 << 1);
                long jB2 = v.b(j20, j15, j22 >>> 32, j19 & 4294967295L);
                long jB3 = v.b(j20, j17, jB2 >>> 32, j21 & 4294967295L);
                long j23 = (r38[r31] & 4294967295L) + (j21 >>> 32) + (jB3 >>> 32);
                long j24 = jB3 & 4294967295L;
                long j25 = r36[r37 + 4] & 4294967295L;
                long j26 = (r38[r9] & 4294967295L) + (j23 >>> 32);
                long j27 = (j10 * j25) + (jB2 & 4294967295L);
                int r22 = (int) j27;
                r38[r39 + 4] = (r22 << 1) | (r10 >>> 31);
                long jB4 = v.b(j15, j25, j27 >>> 32, j24);
                long jB5 = v.b(j25, j17, jB4 >>> 32, j23 & 4294967295L);
                long jB6 = v.b(j25, j20, jB5 >>> 32, j26 & 4294967295L);
                long j28 = (r38[r33] & 4294967295L) + (j26 >>> 32) + (jB6 >>> 32);
                int r12 = (int) jB4;
                r38[r39 + 5] = (r12 << 1) | (r22 >>> 31);
                int r02 = r12 >>> 31;
                int r13 = (int) jB5;
                r38[r39 + 6] = r02 | (r13 << 1);
                int r03 = r13 >>> 31;
                int r14 = (int) jB6;
                r38[r39 + 7] = r03 | (r14 << 1);
                int r04 = r14 >>> 31;
                int r15 = (int) j28;
                r38[r39 + 8] = r04 | (r15 << 1);
                int r05 = r15 >>> 31;
                int r16 = r39 + 9;
                r38[r16] = r05 | ((r38[r16] + ((int) (j28 >>> 32))) << 1);
                return;
            }
            r6 = r72;
        }
    }

    public static void square(int[] r31, int[] r32) {
        long j10 = r31[0] & 4294967295L;
        int r6 = 10;
        int r72 = 4;
        int r82 = 0;
        while (true) {
            int r92 = r72 - 1;
            long j11 = r31[r72] & 4294967295L;
            long j12 = j11 * j11;
            int r62 = r6 - 1;
            r32[r62] = (r82 << 31) | ((int) (j12 >>> 33));
            r6 = r62 - 1;
            r32[r6] = (int) (j12 >>> 1);
            int r11 = (int) j12;
            if (r92 <= 0) {
                long j13 = j10 * j10;
                r32[0] = (int) j13;
                long j14 = r31[1] & 4294967295L;
                long j15 = (((r11 << 31) & 4294967295L) | (j13 >>> 33)) + (j14 * j10);
                int r15 = (int) j15;
                r32[1] = (r15 << 1) | (((int) (j13 >>> 32)) & 1);
                long j16 = (r32[2] & 4294967295L) + (j15 >>> 32);
                long j17 = r31[2] & 4294967295L;
                long j18 = j16 + (j17 * j10);
                int r52 = (int) j18;
                r32[2] = (r15 >>> 31) | (r52 << 1);
                long jB = v.b(j17, j14, j18 >>> 32, r32[3] & 4294967295L);
                long j19 = (r32[4] & 4294967295L) + (jB >>> 32);
                long j20 = r31[3] & 4294967295L;
                long j21 = (r32[5] & 4294967295L) + (j19 >>> 32);
                long j22 = j19 & 4294967295L;
                long j23 = (r32[6] & 4294967295L) + (j21 >>> 32);
                long j24 = j21 & 4294967295L;
                long j25 = (j20 * j10) + (jB & 4294967295L);
                int r22 = (int) j25;
                r32[3] = (r52 >>> 31) | (r22 << 1);
                long jB2 = v.b(j20, j14, j25 >>> 32, j22);
                long jB3 = v.b(j20, j17, jB2 >>> 32, j24);
                long j26 = j23 + (jB3 >>> 32);
                long j27 = jB3 & 4294967295L;
                long j28 = r31[4] & 4294967295L;
                long j29 = (r32[7] & 4294967295L) + (j26 >>> 32);
                long j30 = (r32[8] & 4294967295L) + (j29 >>> 32);
                long j31 = 4294967295L & j29;
                long j32 = (j28 * j10) + (jB2 & 4294967295L);
                int r53 = (int) j32;
                r32[4] = (r22 >>> 31) | (r53 << 1);
                int r23 = r53 >>> 31;
                long jB4 = v.b(j14, j28, j32 >>> 32, j27);
                long jB5 = v.b(j28, j17, jB4 >>> 32, j26 & 4294967295L);
                long jB6 = v.b(j28, j20, jB5 >>> 32, j31);
                long j33 = j30 + (jB6 >>> 32);
                int r12 = (int) jB4;
                r32[5] = r23 | (r12 << 1);
                int r24 = (int) jB5;
                r32[6] = (r12 >>> 31) | (r24 << 1);
                int r13 = r24 >>> 31;
                int r25 = (int) jB6;
                r32[7] = r13 | (r25 << 1);
                int r14 = r25 >>> 31;
                int r26 = (int) j33;
                r32[8] = r14 | (r26 << 1);
                r32[9] = (r26 >>> 31) | ((r32[9] + ((int) (j33 >>> 32))) << 1);
                return;
            }
            r72 = r92;
            r82 = r11;
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
        return (int) (j14 >> 32);
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
        return (int) (j14 >> 32);
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
        return (int) (j14 >> 32);
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
        long j14 = ((r12[r13] & 4294967295L) - (r10[r11 + 4] & 4294967295L)) + (j13 >> 32);
        r12[r13 + 4] = (int) j14;
        return (int) (j14 >> 32);
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
        long j14 = ((r11[4] & 4294967295L) - (4294967295L & r10[4])) + (j13 >> 32);
        r11[4] = (int) j14;
        return (int) (j14 >> 32);
    }

    public static BigInteger toBigInteger(int[] r42) {
        byte[] bArr = new byte[20];
        for (int r12 = 0; r12 < 5; r12++) {
            int r22 = r42[r12];
            if (r22 != 0) {
                Pack.intToBigEndian(r22, bArr, (4 - r12) << 2);
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
    }
}
