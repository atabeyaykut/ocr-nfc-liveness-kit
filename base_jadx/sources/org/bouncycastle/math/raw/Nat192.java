package org.bouncycastle.math.raw;

import androidx.appcompat.widget.v;
import java.math.BigInteger;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class Nat192 {
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
        long j15 = (r10[5] & 4294967295L) + (r11[5] & 4294967295L) + (j14 >>> 32);
        r12[5] = (int) j15;
        return (int) (j15 >>> 32);
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
        return (int) (j15 >>> 32);
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
        long j15 = (r92[r10 + 5] & 4294967295L) + (4294967295L & r11[r12]) + (j14 >>> 32);
        r11[r12 + 5] = (int) j15;
        return (int) (j15 >>> 32);
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
        long j15 = (r10[5] & 4294967295L) + (4294967295L & r11[5]) + (j14 >>> 32);
        r11[5] = (int) j15;
        return (int) (j15 >>> 32);
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
        long j15 = (r11[r12] & 4294967295L) + (4294967295L & r13[r14]) + (j14 >>> 32);
        int r19 = (int) j15;
        r11[r12 + 5] = r19;
        r13[r14 + 5] = r19;
        return (int) (j15 >>> 32);
    }

    public static void copy(int[] r22, int r32, int[] r42, int r52) {
        r42[r52 + 0] = r22[r32 + 0];
        r42[r52 + 1] = r22[r32 + 1];
        r42[r52 + 2] = r22[r32 + 2];
        r42[r52 + 3] = r22[r32 + 3];
        r42[r52 + 4] = r22[r32 + 4];
        r42[r52 + 5] = r22[r32 + 5];
    }

    public static void copy(int[] r22, int[] r32) {
        r32[0] = r22[0];
        r32[1] = r22[1];
        r32[2] = r22[2];
        r32[3] = r22[3];
        r32[4] = r22[4];
        r32[5] = r22[5];
    }

    public static void copy64(long[] jArr, int r42, long[] jArr2, int r6) {
        jArr2[r6 + 0] = jArr[r42 + 0];
        jArr2[r6 + 1] = jArr[r42 + 1];
        jArr2[r6 + 2] = jArr[r42 + 2];
    }

    public static void copy64(long[] jArr, long[] jArr2) {
        jArr2[0] = jArr[0];
        jArr2[1] = jArr[1];
        jArr2[2] = jArr[2];
    }

    public static int[] create() {
        return new int[6];
    }

    public static long[] create64() {
        return new long[3];
    }

    public static int[] createExt() {
        return new int[12];
    }

    public static long[] createExt64() {
        return new long[6];
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
        for (int r02 = 5; r02 >= 0; r02--) {
            if (r32[r02] != r42[r02]) {
                return false;
            }
        }
        return true;
    }

    public static boolean eq64(long[] jArr, long[] jArr2) {
        for (int r02 = 2; r02 >= 0; r02--) {
            if (jArr[r02] != jArr2[r02]) {
                return false;
            }
        }
        return true;
    }

    public static int[] fromBigInteger(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 192) {
            throw new IllegalArgumentException();
        }
        int[] r02 = create();
        for (int r12 = 0; r12 < 6; r12++) {
            r02[r12] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return r02;
    }

    public static long[] fromBigInteger64(BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > 192) {
            throw new IllegalArgumentException();
        }
        long[] jArrCreate64 = create64();
        for (int r12 = 0; r12 < 3; r12++) {
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
            if (r12 < 0 || r12 >= 6) {
                return 0;
            }
            r33 = r32[r12] >>> (r42 & 31);
        }
        return r33 & 1;
    }

    public static boolean gte(int[] r52, int r6, int[] r72, int r82) {
        for (int r02 = 5; r02 >= 0; r02--) {
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
        for (int r02 = 5; r02 >= 0; r02--) {
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
        for (int r12 = 1; r12 < 6; r12++) {
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
        for (int r22 = 1; r22 < 3; r22++) {
            if (jArr[r22] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int[] r32) {
        for (int r12 = 0; r12 < 6; r12++) {
            if (r32[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero64(long[] jArr) {
        for (int r12 = 0; r12 < 3; r12++) {
            if (jArr[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static void mul(int[] r28, int r29, int[] r30, int r31, int[] r32, int r33) {
        long j10 = r30[r31 + 0] & 4294967295L;
        long j11 = r30[r31 + 1] & 4294967295L;
        long j12 = r30[r31 + 2] & 4294967295L;
        long j13 = r30[r31 + 3] & 4294967295L;
        long j14 = r30[r31 + 4] & 4294967295L;
        long j15 = r30[r31 + 5] & 4294967295L;
        long j16 = r28[r29 + 0] & 4294967295L;
        long j17 = (j16 * j10) + 0;
        r32[r33 + 0] = (int) j17;
        long j18 = (j16 * j11) + (j17 >>> 32);
        r32[r33 + 1] = (int) j18;
        long j19 = (j16 * j12) + (j18 >>> 32);
        r32[r33 + 2] = (int) j19;
        long j20 = (j16 * j13) + (j19 >>> 32);
        r32[r33 + 3] = (int) j20;
        long j21 = (j16 * j14) + (j20 >>> 32);
        r32[r33 + 4] = (int) j21;
        long j22 = (j16 * j15) + (j21 >>> 32);
        r32[r33 + 5] = (int) j22;
        r32[r33 + 6] = (int) (j22 >>> 32);
        int r12 = 1;
        int r22 = r33;
        int r34 = 1;
        while (r34 < 6) {
            r22 += r12;
            long j23 = r28[r29 + r34] & 4294967295L;
            long j24 = (j23 * j10) + (r32[r24] & 4294967295L) + 0;
            r32[r22 + 0] = (int) j24;
            long j25 = j15;
            long j26 = (j23 * j11) + (r32[r15] & 4294967295L) + (j24 >>> 32);
            r32[r22 + 1] = (int) j26;
            long j27 = (j23 * j12) + (r32[r15] & 4294967295L) + (j26 >>> 32);
            r32[r22 + 2] = (int) j27;
            long j28 = (j23 * j13) + (r32[r1] & 4294967295L) + (j27 >>> 32);
            r32[r22 + 3] = (int) j28;
            long j29 = (j23 * j14) + (r32[r1] & 4294967295L) + (j28 >>> 32);
            r32[r22 + 4] = (int) j29;
            long j30 = (j23 * j25) + (r32[r1] & 4294967295L) + (j29 >>> 32);
            r32[r22 + 5] = (int) j30;
            r32[r22 + 6] = (int) (j30 >>> 32);
            r34++;
            j12 = j12;
            j15 = j25;
            r12 = 1;
        }
    }

    public static void mul(int[] r30, int[] r31, int[] r32) {
        long j10 = r31[0] & 4294967295L;
        long j11 = r31[1] & 4294967295L;
        long j12 = r31[2] & 4294967295L;
        long j13 = r31[3] & 4294967295L;
        long j14 = r31[4] & 4294967295L;
        long j15 = r31[5] & 4294967295L;
        long j16 = r30[0] & 4294967295L;
        long j17 = (j16 * j10) + 0;
        r32[0] = (int) j17;
        long j18 = (j16 * j11) + (j17 >>> 32);
        r32[1] = (int) j18;
        long j19 = (j16 * j12) + (j18 >>> 32);
        r32[2] = (int) j19;
        long j20 = (j16 * j13) + (j19 >>> 32);
        r32[3] = (int) j20;
        long j21 = (j16 * j14) + (j20 >>> 32);
        r32[4] = (int) j21;
        long j22 = (j16 * j15) + (j21 >>> 32);
        r32[5] = (int) j22;
        r32[6] = (int) (j22 >>> 32);
        int r52 = 1;
        for (int r33 = 6; r52 < r33; r33 = 6) {
            long j23 = r30[r52] & 4294967295L;
            long j24 = j10;
            long j25 = (j23 * j10) + (r32[r4] & 4294967295L) + 0;
            r32[r52 + 0] = (int) j25;
            int r18 = r52 + 1;
            long j26 = j11;
            long j27 = (j23 * j11) + (r32[r18] & 4294967295L) + (j25 >>> 32);
            r32[r18] = (int) j27;
            long j28 = (j23 * j12) + (r32[r6] & 4294967295L) + (j27 >>> 32);
            r32[r52 + 2] = (int) j28;
            long j29 = (j23 * j13) + (r32[r6] & 4294967295L) + (j28 >>> 32);
            r32[r52 + 3] = (int) j29;
            long j30 = (j23 * j14) + (r32[r6] & 4294967295L) + (j29 >>> 32);
            r32[r52 + 4] = (int) j30;
            long j31 = j30 >>> 32;
            long j32 = (j23 * j15) + (r32[r3] & 4294967295L) + j31;
            r32[r52 + 5] = (int) j32;
            r32[r52 + 6] = (int) (j32 >>> 32);
            r52 = r18;
            j10 = j24;
            j11 = j26;
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
        long j22 = (j10 * j21) + j19 + (4294967295L & r16[r17 + 5]) + (j20 >>> 32);
        r18[r19 + 5] = (int) j22;
        return (j22 >>> 32) + j21;
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
        return Nat.incAt(6, r18, r19, 4);
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
        return Nat.incAt(6, r12, r13, 3);
    }

    public static int mulAddTo(int[] r31, int r32, int[] r33, int r34, int[] r35, int r36) {
        long j10 = r33[r34 + 0] & 4294967295L;
        long j11 = r33[r34 + 1] & 4294967295L;
        long j12 = r33[r34 + 2] & 4294967295L;
        long j13 = r33[r34 + 3] & 4294967295L;
        long j14 = r33[r34 + 4] & 4294967295L;
        long j15 = r33[r34 + 5] & 4294967295L;
        int r14 = r36;
        int r15 = 0;
        long j16 = 0;
        while (r15 < 6) {
            long j17 = r31[r32 + r15] & 4294967295L;
            long j18 = j15;
            long j19 = (j17 * j10) + (r35[r16] & 4294967295L) + 0;
            r35[r14 + 0] = (int) j19;
            int r12 = r14 + 1;
            long j20 = j11;
            long j21 = (j17 * j11) + (r35[r12] & 4294967295L) + (j19 >>> 32);
            r35[r12] = (int) j21;
            long j22 = (j17 * j12) + (r35[r16] & 4294967295L) + (j21 >>> 32);
            r35[r14 + 2] = (int) j22;
            long j23 = j12;
            long j24 = (j17 * j13) + (r35[r1] & 4294967295L) + (j22 >>> 32);
            r35[r14 + 3] = (int) j24;
            long j25 = (j17 * j14) + (r35[r1] & 4294967295L) + (j24 >>> 32);
            r35[r14 + 4] = (int) j25;
            long j26 = (j17 * j18) + (r35[r1] & 4294967295L) + (j25 >>> 32);
            r35[r14 + 5] = (int) j26;
            long j27 = (j26 >>> 32) + (r35[r14] & 4294967295L) + j16;
            r35[r14 + 6] = (int) j27;
            j16 = j27 >>> 32;
            r15++;
            j15 = j18;
            j10 = j10;
            r14 = r12;
            j11 = j20;
            j12 = j23;
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
        long j16 = r31[5] & 4294967295L;
        long j17 = 0;
        while (r02 < 6) {
            long j18 = j16;
            long j19 = r30[r02] & j10;
            long j20 = j11;
            long j21 = (j19 * j11) + (r32[r23] & j10) + 0;
            r32[r02 + 0] = (int) j21;
            int r16 = r02 + 1;
            long j22 = (j19 * j12) + (r32[r16] & 4294967295L) + (j21 >>> 32);
            r32[r16] = (int) j22;
            long j23 = (j19 * j13) + (r32[r23] & 4294967295L) + (j22 >>> 32);
            r32[r02 + 2] = (int) j23;
            long j24 = (j19 * j14) + (r32[r6] & 4294967295L) + (j23 >>> 32);
            r32[r02 + 3] = (int) j24;
            long j25 = (j19 * j15) + (r32[r6] & 4294967295L) + (j24 >>> 32);
            r32[r02 + 4] = (int) j25;
            long j26 = j25 >>> 32;
            long j27 = (j19 * j18) + (r32[r4] & 4294967295L) + j26;
            r32[r02 + 5] = (int) j27;
            long j28 = (j27 >>> 32) + (r32[r0] & 4294967295L) + j17;
            r32[r02 + 6] = (int) j28;
            j17 = j28 >>> 32;
            r02 = r16;
            j10 = 4294967295L;
            j16 = j18;
            j11 = j20;
            j12 = j12;
        }
        return (int) j17;
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
        } while (r83 < 6);
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
        long j15 = ((r12[r13 + 4] & 4294967295L) * j10) + (r14[r8] & 4294967295L) + (j14 >>> 32);
        r14[r15 + 4] = (int) j15;
        long j16 = (j10 * (r12[r13 + 5] & 4294967295L)) + (r14[r15] & 4294967295L) + (j15 >>> 32);
        r14[r15 + 5] = (int) j16;
        return (int) (j16 >>> 32);
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
        return Nat.incAt(6, r13, r14, 3);
    }

    public static void square(int[] r47, int r48, int[] r49, int r50) {
        long j10 = r47[r48 + 0] & 4294967295L;
        int r42 = 0;
        int r52 = 12;
        int r6 = 5;
        while (true) {
            int r72 = r6 - 1;
            long j11 = r47[r48 + r6] & 4294967295L;
            long j12 = j11 * j11;
            int r53 = r52 - 1;
            r49[r50 + r53] = (r42 << 31) | ((int) (j12 >>> 33));
            r52 = r53 - 1;
            r49[r50 + r52] = (int) (j12 >>> 1);
            r42 = (int) j12;
            if (r72 <= 0) {
                long j13 = j10 * j10;
                long j14 = ((r42 << 31) & 4294967295L) | (j13 >>> 33);
                r49[r50 + 0] = (int) j13;
                int r62 = 1 & ((int) (j13 >>> 32));
                long j15 = r47[r48 + 1] & 4294967295L;
                long j16 = (j15 * j10) + j14;
                int r43 = (int) j16;
                r49[r50 + 1] = r62 | (r43 << 1);
                long j17 = r47[r48 + 2] & 4294967295L;
                long j18 = (j17 * j10) + (r49[r10] & 4294967295L) + (j16 >>> 32);
                int r11 = (int) j18;
                r49[r50 + 2] = (r43 >>> 31) | (r11 << 1);
                long jB = v.b(j17, j15, j18 >>> 32, r49[r9] & 4294967295L);
                long j19 = (r49[r21] & 4294967295L) + (jB >>> 32);
                long j20 = r47[r48 + 3] & 4294967295L;
                long j21 = (r49[r32] & 4294967295L) + (j19 >>> 32);
                long j22 = (j20 * j10) + (jB & 4294967295L);
                int r10 = (int) j22;
                r49[r50 + 3] = (r11 >>> 31) | (r10 << 1);
                long jB2 = v.b(j20, j15, j22 >>> 32, j19 & 4294967295L);
                long jB3 = v.b(j20, j17, jB2 >>> 32, j21 & 4294967295L);
                long j23 = (r49[r33] & 4294967295L) + (j21 >>> 32) + (jB3 >>> 32);
                long j24 = jB3 & 4294967295L;
                long j25 = r47[r48 + 4] & 4294967295L;
                long j26 = (r49[r9] & 4294967295L) + (j23 >>> 32);
                long j27 = (r49[r42] & 4294967295L) + (j26 >>> 32);
                long j28 = (j25 * j10) + (jB2 & 4294967295L);
                int r22 = (int) j28;
                r49[r50 + 4] = (r22 << 1) | (r10 >>> 31);
                long jB4 = v.b(j25, j15, j28 >>> 32, j24);
                long jB5 = v.b(j25, j17, jB4 >>> 32, j23 & 4294967295L);
                long jB6 = v.b(j25, j20, jB5 >>> 32, j26 & 4294967295L);
                long j29 = jB5 & 4294967295L;
                long j30 = j27 + (jB6 >>> 32);
                long j31 = jB6 & 4294967295L;
                long j32 = r47[r48 + 5] & 4294967295L;
                long j33 = (r49[r9] & 4294967295L) + (j30 >>> 32);
                long j34 = (j10 * j32) + (jB4 & 4294967295L);
                int r32 = (int) j34;
                r49[r50 + 5] = (r22 >>> 31) | (r32 << 1);
                int r23 = r32 >>> 31;
                long jB7 = v.b(j15, j32, j34 >>> 32, j29);
                long jB8 = v.b(j32, j17, jB7 >>> 32, j31);
                long jB9 = v.b(j32, j20, jB8 >>> 32, j30 & 4294967295L);
                long jB10 = v.b(j32, j25, jB9 >>> 32, j33 & 4294967295L);
                long j35 = (r49[r44] & 4294967295L) + (j33 >>> 32) + (jB10 >>> 32);
                int r12 = (int) jB7;
                r49[r50 + 6] = (r12 << 1) | r23;
                int r02 = r12 >>> 31;
                int r13 = (int) jB8;
                r49[r50 + 7] = r02 | (r13 << 1);
                int r03 = r13 >>> 31;
                int r14 = (int) jB9;
                r49[r50 + 8] = r03 | (r14 << 1);
                int r04 = r14 >>> 31;
                int r15 = (int) jB10;
                r49[r50 + 9] = r04 | (r15 << 1);
                int r05 = r15 >>> 31;
                int r16 = (int) j35;
                r49[r50 + 10] = r05 | (r16 << 1);
                int r06 = r16 >>> 31;
                int r17 = r50 + 11;
                r49[r17] = r06 | ((r49[r17] + ((int) (j35 >>> 32))) << 1);
                return;
            }
            r6 = r72;
        }
    }

    public static void square(int[] r38, int[] r39) {
        long j10 = r38[0] & 4294967295L;
        int r52 = 12;
        int r6 = 5;
        int r72 = 0;
        while (true) {
            int r82 = r6 - 1;
            long j11 = r38[r6] & 4294967295L;
            long j12 = j11 * j11;
            int r53 = r52 - 1;
            r39[r53] = (r72 << 31) | ((int) (j12 >>> 33));
            r52 = r53 - 1;
            r39[r52] = (int) (j12 >>> 1);
            int r10 = (int) j12;
            if (r82 <= 0) {
                long j13 = j10 * j10;
                r39[0] = (int) j13;
                long j14 = r38[1] & 4294967295L;
                long j15 = (j14 * j10) + (((r10 << 31) & 4294967295L) | (j13 >>> 33));
                int r102 = (int) j15;
                r39[1] = (((int) (j13 >>> 32)) & 1) | (r102 << 1);
                int r54 = r102 >>> 31;
                long j16 = r38[2] & 4294967295L;
                long j17 = (j16 * j10) + (r39[2] & 4294967295L) + (j15 >>> 32);
                int r62 = (int) j17;
                r39[2] = r54 | (r62 << 1);
                int r55 = r62 >>> 31;
                long jB = v.b(j16, j14, j17 >>> 32, r39[3] & 4294967295L);
                long j18 = (r39[4] & 4294967295L) + (jB >>> 32);
                long j19 = r38[3] & 4294967295L;
                long j20 = (r39[5] & 4294967295L) + (j18 >>> 32);
                long j21 = j18 & 4294967295L;
                long j22 = (r39[6] & 4294967295L) + (j20 >>> 32);
                long j23 = j20 & 4294967295L;
                long j24 = (j19 * j10) + (jB & 4294967295L);
                int r63 = (int) j24;
                r39[3] = r55 | (r63 << 1);
                long jB2 = v.b(j19, j14, j24 >>> 32, j21);
                long jB3 = v.b(j19, j16, jB2 >>> 32, j23);
                long j25 = j22 + (jB3 >>> 32);
                long j26 = jB3 & 4294967295L;
                long j27 = r38[4] & 4294967295L;
                long j28 = (r39[7] & 4294967295L) + (j25 >>> 32);
                long j29 = j25 & 4294967295L;
                long j30 = (r39[8] & 4294967295L) + (j28 >>> 32);
                long j31 = j28 & 4294967295L;
                long j32 = (j27 * j10) + (jB2 & 4294967295L);
                int r11 = (int) j32;
                r39[4] = (r63 >>> 31) | (r11 << 1);
                int r56 = r11 >>> 31;
                long jB4 = v.b(j27, j14, j32 >>> 32, j26);
                long jB5 = v.b(j27, j16, jB4 >>> 32, j29);
                long jB6 = v.b(j27, j19, jB5 >>> 32, j31);
                long j33 = jB5 & 4294967295L;
                long j34 = j30 + (jB6 >>> 32);
                long j35 = r38[5] & 4294967295L;
                long j36 = (r39[9] & 4294967295L) + (j34 >>> 32);
                long j37 = j34 & 4294967295L;
                long j38 = (j10 * j35) + (jB4 & 4294967295L);
                int r112 = (int) j38;
                r39[5] = r56 | (r112 << 1);
                int r57 = r112 >>> 31;
                long jB7 = v.b(j35, j14, j38 >>> 32, j33);
                long jB8 = v.b(j35, j16, jB7 >>> 32, jB6 & 4294967295L);
                long jB9 = v.b(j35, j19, jB8 >>> 32, j37);
                long jB10 = v.b(j35, j27, jB9 >>> 32, 4294967295L & j36);
                long j39 = (r39[10] & 4294967295L) + (j36 >>> 32) + (jB10 >>> 32);
                int r02 = (int) jB7;
                r39[6] = (r02 << 1) | r57;
                int r12 = (int) jB8;
                r39[7] = (r02 >>> 31) | (r12 << 1);
                int r03 = r12 >>> 31;
                int r13 = (int) jB9;
                r39[8] = r03 | (r13 << 1);
                int r04 = r13 >>> 31;
                int r14 = (int) jB10;
                r39[9] = r04 | (r14 << 1);
                int r05 = r14 >>> 31;
                int r15 = (int) j39;
                r39[10] = r05 | (r15 << 1);
                r39[11] = (r15 >>> 31) | ((r39[11] + ((int) (j39 >>> 32))) << 1);
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
        return (int) (j15 >> 32);
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
        return (int) (j15 >> 32);
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
        return (int) (j15 >> 32);
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
        long j15 = ((r12[r13] & 4294967295L) - (r10[r11 + 5] & 4294967295L)) + (j14 >> 32);
        r12[r13 + 5] = (int) j15;
        return (int) (j15 >> 32);
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
        long j15 = ((r11[5] & 4294967295L) - (4294967295L & r10[5])) + (j14 >> 32);
        r11[5] = (int) j15;
        return (int) (j15 >> 32);
    }

    public static BigInteger toBigInteger(int[] r42) {
        byte[] bArr = new byte[24];
        for (int r12 = 0; r12 < 6; r12++) {
            int r22 = r42[r12];
            if (r22 != 0) {
                Pack.intToBigEndian(r22, bArr, (5 - r12) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static BigInteger toBigInteger64(long[] jArr) {
        byte[] bArr = new byte[24];
        for (int r12 = 0; r12 < 3; r12++) {
            long j10 = jArr[r12];
            if (j10 != 0) {
                Pack.longToBigEndian(j10, bArr, (2 - r12) << 3);
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
    }
}
