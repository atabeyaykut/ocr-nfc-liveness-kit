package org.bouncycastle.math.raw;

import androidx.appcompat.widget.v;
import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class Nat128 {
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
        return (int) (j13 >>> 32);
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
        return (int) (j13 >>> 32);
    }

    public static int addTo(int[] r92, int r10, int[] r11, int r12, int r13) {
        long j10 = (r92[r10 + 0] & 4294967295L) + (r11[r13] & 4294967295L) + (r13 & 4294967295L);
        r11[r12 + 0] = (int) j10;
        long j11 = (r92[r10 + 1] & 4294967295L) + (r11[r6] & 4294967295L) + (j10 >>> 32);
        r11[r12 + 1] = (int) j11;
        long j12 = (r92[r10 + 2] & 4294967295L) + (r11[r6] & 4294967295L) + (j11 >>> 32);
        r11[r12 + 2] = (int) j12;
        long j13 = (r92[r10 + 3] & 4294967295L) + (4294967295L & r11[r12]) + (j12 >>> 32);
        r11[r12 + 3] = (int) j13;
        return (int) (j13 >>> 32);
    }

    public static int addTo(int[] r10, int[] r11) {
        long j10 = (r10[0] & 4294967295L) + (r11[0] & 4294967295L) + 0;
        r11[0] = (int) j10;
        long j11 = (r10[1] & 4294967295L) + (r11[1] & 4294967295L) + (j10 >>> 32);
        r11[1] = (int) j11;
        long j12 = (r10[2] & 4294967295L) + (r11[2] & 4294967295L) + (j11 >>> 32);
        r11[2] = (int) j12;
        long j13 = (r10[3] & 4294967295L) + (4294967295L & r11[3]) + (j12 >>> 32);
        r11[3] = (int) j13;
        return (int) (j13 >>> 32);
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
        long j13 = (r11[r12] & 4294967295L) + (4294967295L & r13[r14]) + (j12 >>> 32);
        int r17 = (int) j13;
        r11[r12 + 3] = r17;
        r13[r14 + 3] = r17;
        return (int) (j13 >>> 32);
    }

    public static void copy(int[] r22, int r32, int[] r42, int r52) {
        r42[r52 + 0] = r22[r32 + 0];
        r42[r52 + 1] = r22[r32 + 1];
        r42[r52 + 2] = r22[r32 + 2];
        r42[r52 + 3] = r22[r32 + 3];
    }

    public static void copy(int[] r22, int[] r32) {
        r32[0] = r22[0];
        r32[1] = r22[1];
        r32[2] = r22[2];
        r32[3] = r22[3];
    }

    public static void copy64(long[] jArr, int r42, long[] jArr2, int r6) {
        jArr2[r6 + 0] = jArr[r42 + 0];
        jArr2[r6 + 1] = jArr[r42 + 1];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
    }

    public static int[] create() {
        return new int[4];
    }

    public static long[] create64() {
        return new long[2];
    }

    public static int[] createExt() {
        return new int[8];
    }

    public static long[] createExt64() {
        return new long[4];
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
        for (int r02 = 3; r02 >= 0; r02--) {
            if (r32[r02] != r42[r02]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int r12 = 1; r12 >= 0; r12--) {
            if (jArr[r12] != jArr2[r12]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 128) {
            throw new IllegalArgumentException();
        }
        int[] r02 = create();
        for (int r12 = 0; r12 < 4; r12++) {
            r02[r12] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return r02;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 128) {
            throw new IllegalArgumentException();
        }
        long[] jArrCreate64 = create64();
        for (int r12 = 0; r12 < 2; r12++) {
            jArrCreate64[r12] = bigInteger.longValue();
            bigInteger = bigInteger.shiftRight(64);
        }
        return jArrCreate64;
    }

    public static int getBit(int[] r32, int r42) {
        int r33;
        if (r42 == 0) {
            r33 = r32[0];
        } else {
            int r12 = r42 >> 5;
            if (r12 < 0 || r12 >= 4) {
                return 0;
            }
            r33 = r32[r12] >>> (r42 & 31);
        }
        return r33 & 1;
    }

    public static boolean gte(int[] r52, int r6, int[] r72, int r82) {
        for (int r02 = 3; r02 >= 0; r02--) {
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
        for (int r02 = 3; r02 >= 0; r02--) {
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
        for (int r12 = 1; r12 < 4; r12++) {
            if (r42[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isOne64(long[] jArr) {
        return jArr[0] == 1 && jArr[1] == 0;
    }

    public static boolean isZero(int[] r32) {
        for (int r12 = 0; r12 < 4; r12++) {
            if (r32[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int r12 = 0; r12 < 2; r12++) {
            if (jArr[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] r23, int r24, int[] r25, int r26, int[] r27, int r28) {
        long j10 = r25[r26 + 0] & 4294967295L;
        long j11 = r25[r26 + 1] & 4294967295L;
        long j12 = r25[r26 + 2] & 4294967295L;
        long j13 = r25[r26 + 3] & 4294967295L;
        long j14 = r23[r24 + 0] & 4294967295L;
        long j15 = (j14 * j10) + 0;
        r27[r28 + 0] = (int) j15;
        long j16 = (j15 >>> 32) + (j14 * j11);
        r27[r28 + 1] = (int) j16;
        long j17 = (j14 * j12) + (j16 >>> 32);
        r27[r28 + 2] = (int) j17;
        long j18 = (j14 * j13) + (j17 >>> 32);
        r27[r28 + 3] = (int) j18;
        r27[r28 + 4] = (int) (j18 >>> 32);
        int r22 = 1;
        int r32 = r28;
        int r10 = 1;
        while (r10 < 4) {
            r32 += r22;
            long j19 = r23[r24 + r10] & 4294967295L;
            long j20 = j10;
            long j21 = (j19 * j10) + (r27[r13] & 4294967295L) + 0;
            r27[r32 + 0] = (int) j21;
            long j22 = (j19 * j11) + (r27[r17] & 4294967295L) + (j21 >>> 32);
            r27[r32 + 1] = (int) j22;
            long j23 = j11;
            long j24 = (j19 * j12) + (r27[r15] & 4294967295L) + (j22 >>> 32);
            r27[r32 + 2] = (int) j24;
            long j25 = (j19 * j13) + (r27[r4] & 4294967295L) + (j24 >>> 32);
            r27[r32 + 3] = (int) j25;
            r27[r32 + 4] = (int) (j25 >>> 32);
            r10++;
            j11 = j23;
            j10 = j20;
            r22 = 1;
        }
    }

    public static void mul(int[] r25, int[] r26, int[] r27) {
        long j10 = r26[0] & 4294967295L;
        int r52 = 1;
        long j11 = r26[1] & 4294967295L;
        long j12 = r26[2] & 4294967295L;
        long j13 = r26[3] & 4294967295L;
        long j14 = r25[0] & 4294967295L;
        long j15 = (j14 * j10) + 0;
        r27[0] = (int) j15;
        long j16 = (j14 * j11) + (j15 >>> 32);
        r27[1] = (int) j16;
        long j17 = (j14 * j12) + (j16 >>> 32);
        r27[2] = (int) j17;
        long j18 = (j14 * j13) + (j17 >>> 32);
        r27[3] = (int) j18;
        r27[4] = (int) (j18 >>> 32);
        for (int r32 = 4; r52 < r32; r32 = 4) {
            long j19 = r25[r52] & 4294967295L;
            long j20 = (j19 * j10) + (r27[r4] & 4294967295L) + 0;
            r27[r52 + 0] = (int) j20;
            int r42 = r52 + 1;
            long j21 = (j19 * j11) + (r27[r42] & 4294967295L) + (j20 >>> 32);
            r27[r42] = (int) j21;
            long j22 = (j19 * j12) + (r27[r3] & 4294967295L) + (j21 >>> 32);
            r27[r52 + 2] = (int) j22;
            long j23 = (j19 * j13) + (r27[r3] & 4294967295L) + (j22 >>> 32);
            r27[r52 + 3] = (int) j23;
            r27[r52 + 4] = (int) (j23 >>> 32);
            r52 = r42;
            j10 = j10;
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
        long j18 = (j10 * j17) + j15 + (4294967295L & r16[r17 + 3]) + (j16 >>> 32);
        r18[r19 + 3] = (int) j18;
        return (j18 >>> 32) + j17;
    }

    public static int mul33DWordAdd(int r10, long j10, int[] r13, int r14) {
        long j11 = r10 & 4294967295L;
        long j12 = j10 & 4294967295L;
        long j13 = (j11 * j12) + (r13[r10] & 4294967295L) + 0;
        r13[r14 + 0] = (int) j13;
        long j14 = j10 >>> 32;
        long j15 = (j11 * j14) + j12;
        long j16 = j15 + (r13[r4] & 4294967295L) + (j13 >>> 32);
        r13[r14 + 1] = (int) j16;
        long j17 = j14 + (r13[r4] & 4294967295L) + (j16 >>> 32);
        r13[r14 + 2] = (int) j17;
        long j18 = (j17 >>> 32) + (r13[r14] & 4294967295L);
        r13[r14 + 3] = (int) j18;
        return (int) (j18 >>> 32);
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
        return Nat.incAt(4, r12, r13, 3);
    }

    public static int mulAddTo(int[] r25, int r26, int[] r27, int r28, int[] r29, int r30) {
        long j10 = 4294967295L;
        long j11 = r27[r28 + 0] & 4294967295L;
        long j12 = r27[r28 + 1] & 4294967295L;
        long j13 = r27[r28 + 2] & 4294967295L;
        long j14 = r27[r28 + 3] & 4294967295L;
        int r10 = r30;
        int r13 = 0;
        long j15 = 0;
        while (r13 < 4) {
            long j16 = r25[r26 + r13] & j10;
            long j17 = j11;
            long j18 = (j16 * j11) + (r29[r18] & j10) + 0;
            r29[r10 + 0] = (int) j18;
            int r32 = r10 + 1;
            long j19 = j12;
            long j20 = (j16 * j12) + (r29[r32] & 4294967295L) + (j18 >>> 32);
            r29[r32] = (int) j20;
            long j21 = (j16 * j13) + (r29[r16] & 4294967295L) + (j20 >>> 32);
            r29[r10 + 2] = (int) j21;
            long j22 = (j16 * j14) + (r29[r3] & 4294967295L) + (j21 >>> 32);
            r29[r10 + 3] = (int) j22;
            long j23 = (j22 >>> 32) + (r29[r10] & 4294967295L) + j15;
            r29[r10 + 4] = (int) j23;
            j15 = j23 >>> 32;
            r13++;
            r10 = r32;
            j11 = j17;
            j10 = 4294967295L;
            j12 = j19;
        }
        return (int) j15;
    }

    public static int mulAddTo(int[] r26, int[] r27, int[] r28) {
        int r02 = 0;
        long j10 = 4294967295L;
        long j11 = r27[0] & 4294967295L;
        long j12 = r27[1] & 4294967295L;
        long j13 = r27[2] & 4294967295L;
        long j14 = r27[3] & 4294967295L;
        long j15 = 0;
        while (r02 < 4) {
            long j16 = r26[r02] & j10;
            long j17 = j11;
            long j18 = (j16 * j11) + (r28[r15] & j10) + 0;
            r28[r02 + 0] = (int) j18;
            int r42 = r02 + 1;
            long j19 = (j16 * j12) + (r28[r42] & 4294967295L) + (j18 >>> 32);
            r28[r42] = (int) j19;
            long j20 = (j16 * j13) + (r28[r17] & 4294967295L) + (j19 >>> 32);
            r28[r02 + 2] = (int) j20;
            long j21 = (j16 * j14) + (r28[r4] & 4294967295L) + (j20 >>> 32);
            r28[r02 + 3] = (int) j21;
            long j22 = (j21 >>> 32) + (r28[r0] & 4294967295L) + j15;
            r28[r02 + 4] = (int) j22;
            j15 = j22 >>> 32;
            j10 = 4294967295L;
            j11 = j17;
            j12 = j12;
            r02 = r42;
        }
        return (int) j15;
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
        } while (r83 < 4);
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
        long j14 = (j10 * (r12[r13 + 3] & 4294967295L)) + (r14[r15] & 4294967295L) + (j13 >>> 32);
        r14[r15 + 3] = (int) j14;
        return (int) (j14 >>> 32);
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
        return Nat.incAt(4, r13, r14, 3);
    }

    public static int mulWordsAdd(int r82, int r92, int[] r10, int r11) {
        long j10 = ((r92 & 4294967295L) * (r82 & 4294967295L)) + (r10[r0] & 4294967295L) + 0;
        r10[r11 + 0] = (int) j10;
        long j11 = (j10 >>> 32) + (4294967295L & r10[r1]);
        r10[r11 + 1] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return Nat.incAt(4, r10, r11, 2);
    }

    public static void square(int[] r29, int r30, int[] r31, int r32) {
        long j10 = r29[r30 + 0] & 4294967295L;
        int r42 = 0;
        int r52 = 8;
        int r6 = 3;
        while (true) {
            int r72 = r6 - 1;
            long j11 = r29[r30 + r6] & 4294967295L;
            long j12 = j11 * j11;
            int r53 = r52 - 1;
            r31[r32 + r53] = (r42 << 31) | ((int) (j12 >>> 33));
            r52 = r53 - 1;
            r31[r32 + r52] = (int) (j12 >>> 1);
            r42 = (int) j12;
            if (r72 <= 0) {
                long j13 = j10 * j10;
                long j14 = ((r42 << 31) & 4294967295L) | (j13 >>> 33);
                r31[r32 + 0] = (int) j13;
                int r62 = 1 & ((int) (j13 >>> 32));
                long j15 = r29[r30 + 1] & 4294967295L;
                long j16 = (j15 * j10) + j14;
                int r43 = (int) j16;
                r31[r32 + 1] = r62 | (r43 << 1);
                long j17 = r29[r30 + 2] & 4294967295L;
                long j18 = (j17 * j10) + (r31[r10] & 4294967295L) + (j16 >>> 32);
                int r11 = (int) j18;
                r31[r32 + 2] = (r43 >>> 31) | (r11 << 1);
                long jB = v.b(j17, j15, j18 >>> 32, r31[r9] & 4294967295L);
                long j19 = (r31[r21] & 4294967295L) + (jB >>> 32);
                long j20 = r29[r30 + 3] & 4294967295L;
                long j21 = (r31[r24] & 4294967295L) + (j19 >>> 32);
                long j22 = (j10 * j20) + (jB & 4294967295L);
                int r22 = (int) j22;
                r31[r32 + 3] = (r22 << 1) | (r11 >>> 31);
                long jB2 = v.b(j15, j20, j22 >>> 32, j19 & 4294967295L);
                long jB3 = v.b(j20, j17, jB2 >>> 32, j21 & 4294967295L);
                long j23 = (r31[r25] & 4294967295L) + (j21 >>> 32) + (jB3 >>> 32);
                int r12 = (int) jB2;
                r31[r32 + 4] = (r12 << 1) | (r22 >>> 31);
                int r02 = r12 >>> 31;
                int r13 = (int) jB3;
                r31[r32 + 5] = r02 | (r13 << 1);
                int r03 = r13 >>> 31;
                int r14 = (int) j23;
                r31[r32 + 6] = r03 | (r14 << 1);
                int r04 = r14 >>> 31;
                int r15 = r32 + 7;
                r31[r15] = r04 | ((r31[r15] + ((int) (j23 >>> 32))) << 1);
                return;
            }
            r6 = r72;
        }
    }

    public static void square(int[] r23, int[] r24) {
        long j10 = r23[0] & 4294967295L;
        int r6 = 8;
        int r72 = 3;
        int r82 = 0;
        while (true) {
            int r92 = r72 - 1;
            long j11 = r23[r72] & 4294967295L;
            long j12 = j11 * j11;
            int r62 = r6 - 1;
            r24[r62] = (r82 << 31) | ((int) (j12 >>> 33));
            r6 = r62 - 1;
            r24[r6] = (int) (j12 >>> 1);
            int r11 = (int) j12;
            if (r92 <= 0) {
                long j13 = j10 * j10;
                r24[0] = (int) j13;
                long j14 = r23[1] & 4294967295L;
                long j15 = (((r11 << 31) & 4294967295L) | (j13 >>> 33)) + (j14 * j10);
                int r15 = (int) j15;
                r24[1] = (r15 << 1) | (((int) (j13 >>> 32)) & 1);
                long j16 = r23[2] & 4294967295L;
                long j17 = (j16 * j10) + (r24[2] & 4294967295L) + (j15 >>> 32);
                int r73 = (int) j17;
                r24[2] = (r73 << 1) | (r15 >>> 31);
                long jB = v.b(j16, j14, j17 >>> 32, r24[3] & 4294967295L);
                long j18 = (r24[4] & 4294967295L) + (jB >>> 32);
                long j19 = r23[3] & 4294967295L;
                long j20 = (r24[5] & 4294967295L) + (j18 >>> 32);
                long j21 = j18 & 4294967295L;
                long j22 = (j10 * j19) + (jB & 4294967295L);
                int r14 = (int) j22;
                r24[3] = (r73 >>> 31) | (r14 << 1);
                long jB2 = v.b(j14, j19, j22 >>> 32, j21);
                long jB3 = v.b(j19, j16, jB2 >>> 32, j20 & 4294967295L);
                long j23 = (r24[6] & 4294967295L) + (j20 >>> 32) + (jB3 >>> 32);
                int r32 = (int) jB2;
                r24[4] = (r32 << 1) | (r14 >>> 31);
                int r12 = (int) (jB3 & 4294967295L);
                r24[5] = (r12 << 1) | (r32 >>> 31);
                int r02 = r12 >>> 31;
                int r13 = (int) j23;
                r24[6] = r02 | (r13 << 1);
                r24[7] = (r13 >>> 31) | ((r24[7] + ((int) (j23 >>> 32))) << 1);
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
        return (int) (j13 >> 32);
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
        return (int) (j13 >> 32);
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
        return (int) (j13 >> 32);
    }

    public static int subFrom(int[] r10, int r11, int[] r12, int r13) {
        long j10 = ((r12[r0] & 4294967295L) - (r10[r11 + 0] & 4294967295L)) + 0;
        r12[r13 + 0] = (int) j10;
        long j11 = ((r12[r5] & 4294967295L) - (r10[r11 + 1] & 4294967295L)) + (j10 >> 32);
        r12[r13 + 1] = (int) j11;
        long j12 = ((r12[r5] & 4294967295L) - (r10[r11 + 2] & 4294967295L)) + (j11 >> 32);
        r12[r13 + 2] = (int) j12;
        long j13 = ((r12[r13] & 4294967295L) - (r10[r11 + 3] & 4294967295L)) + (j12 >> 32);
        r12[r13 + 3] = (int) j13;
        return (int) (j13 >> 32);
    }

    public static int subFrom(int[] r10, int[] r11) {
        long j10 = ((r11[0] & 4294967295L) - (r10[0] & 4294967295L)) + 0;
        r11[0] = (int) j10;
        long j11 = ((r11[1] & 4294967295L) - (r10[1] & 4294967295L)) + (j10 >> 32);
        r11[1] = (int) j11;
        long j12 = ((r11[2] & 4294967295L) - (r10[2] & 4294967295L)) + (j11 >> 32);
        r11[2] = (int) j12;
        long j13 = ((r11[3] & 4294967295L) - (4294967295L & r10[3])) + (j12 >> 32);
        r11[3] = (int) j13;
        return (int) (j13 >> 32);
    }

    public static BigInteger toBigInteger(int[] r42) {
        byte[] bArr = new byte[16];
        for (int r12 = 0; r12 < 4; r12++) {
            int r22 = r42[r12];
            if (r22 != 0) {
                Pack.intToBigEndian(r22, bArr, (3 - r12) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[16];
        for (int r12 = 0; r12 < 2; r12++) {
            long j10 = jArr[r12];
            if (j10 != 0) {
                Pack.longToBigEndian(j10, bArr, (1 - r12) << 3);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int[] r22) {
        r22[0] = 0;
        r22[1] = 0;
        r22[2] = 0;
        r22[3] = 0;
    }
}
