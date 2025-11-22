package org.bouncycastle.math.raw;

import java.math.BigInteger;
import org.bouncycastle.util.Integers;
import org.bouncycastle.util.Pack;

/* loaded from: classes2.dex */
public abstract class Nat {
    private static final long M = 4294967295L;

    public static int add(int r92, int[] r10, int[] r11, int[] r12) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            long j11 = (r10[r22] & 4294967295L) + (4294967295L & r11[r22]) + j10;
            r12[r22] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int add33At(int r72, int r82, int[] r92, int r10) {
        long j10 = (r92[r0] & 4294967295L) + (r82 & 4294967295L);
        r92[r10 + 0] = (int) j10;
        long j11 = (4294967295L & r92[r2]) + 1 + (j10 >>> 32);
        r92[r10 + 1] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return incAt(r72, r92, r10 + 2);
    }

    public static int add33At(int r72, int r82, int[] r92, int r10, int r11) {
        int r02 = r10 + r11;
        long j10 = (r92[r02] & 4294967295L) + (r82 & 4294967295L);
        r92[r02] = (int) j10;
        long j11 = (4294967295L & r92[r0]) + 1 + (j10 >>> 32);
        r92[r02 + 1] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return incAt(r72, r92, r10, r11 + 2);
    }

    public static int add33To(int r82, int r92, int[] r10) {
        long j10 = (r10[0] & 4294967295L) + (r92 & 4294967295L);
        r10[0] = (int) j10;
        long j11 = (4294967295L & r10[1]) + 1 + (j10 >>> 32);
        r10[1] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return incAt(r82, r10, 2);
    }

    public static int add33To(int r72, int r82, int[] r92, int r10) {
        long j10 = (r92[r0] & 4294967295L) + (r82 & 4294967295L);
        r92[r10 + 0] = (int) j10;
        long j11 = (4294967295L & r92[r2]) + 1 + (j10 >>> 32);
        r92[r10 + 1] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return incAt(r72, r92, r10, 2);
    }

    public static int addBothTo(int r11, int[] r12, int r13, int[] r14, int r15, int[] r16, int r17) {
        long j10 = 0;
        for (int r22 = 0; r22 < r11; r22++) {
            long j11 = (r12[r13 + r22] & 4294967295L) + (r14[r15 + r22] & 4294967295L) + (4294967295L & r16[r8]) + j10;
            r16[r17 + r22] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int addBothTo(int r92, int[] r10, int[] r11, int[] r12) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            long j11 = (r10[r22] & 4294967295L) + (r11[r22] & 4294967295L) + (4294967295L & r12[r22]) + j10;
            r12[r22] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int addDWordAt(int r82, long j10, int[] r11, int r12) {
        long j11 = (r11[r0] & 4294967295L) + (j10 & 4294967295L);
        r11[r12 + 0] = (int) j11;
        long j12 = (4294967295L & r11[r5]) + (j10 >>> 32) + (j11 >>> 32);
        r11[r12 + 1] = (int) j12;
        if ((j12 >>> 32) == 0) {
            return 0;
        }
        return incAt(r82, r11, r12 + 2);
    }

    public static int addDWordAt(int r82, long j10, int[] r11, int r12, int r13) {
        int r02 = r12 + r13;
        long j11 = (r11[r02] & 4294967295L) + (j10 & 4294967295L);
        r11[r02] = (int) j11;
        long j12 = (4294967295L & r11[r0]) + (j10 >>> 32) + (j11 >>> 32);
        r11[r02 + 1] = (int) j12;
        if ((j12 >>> 32) == 0) {
            return 0;
        }
        return incAt(r82, r11, r12, r13 + 2);
    }

    public static int addDWordTo(int r92, long j10, int[] r12) {
        long j11 = (r12[0] & 4294967295L) + (j10 & 4294967295L);
        r12[0] = (int) j11;
        long j12 = (4294967295L & r12[1]) + (j10 >>> 32) + (j11 >>> 32);
        r12[1] = (int) j12;
        if ((j12 >>> 32) == 0) {
            return 0;
        }
        return incAt(r92, r12, 2);
    }

    public static int addDWordTo(int r82, long j10, int[] r11, int r12) {
        long j11 = (r11[r0] & 4294967295L) + (j10 & 4294967295L);
        r11[r12 + 0] = (int) j11;
        long j12 = (4294967295L & r11[r5]) + (j10 >>> 32) + (j11 >>> 32);
        r11[r12 + 1] = (int) j12;
        if ((j12 >>> 32) == 0) {
            return 0;
        }
        return incAt(r82, r11, r12, 2);
    }

    public static int addTo(int r10, int[] r11, int r12, int[] r13, int r14) {
        long j10 = 0;
        for (int r22 = 0; r22 < r10; r22++) {
            long j11 = (r11[r12 + r22] & 4294967295L) + (4294967295L & r13[r7]) + j10;
            r13[r14 + r22] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int addTo(int r92, int[] r10, int r11, int[] r12, int r13, int r14) {
        long j10 = r14 & 4294967295L;
        for (int r142 = 0; r142 < r92; r142++) {
            long j11 = (r10[r11 + r142] & 4294967295L) + (r12[r6] & 4294967295L) + j10;
            r12[r13 + r142] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int addTo(int r92, int[] r10, int[] r11) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            long j11 = (r10[r22] & 4294967295L) + (4294967295L & r11[r22]) + j10;
            r11[r22] = (int) j11;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int addToEachOther(int r11, int[] r12, int r13, int[] r14, int r15) {
        long j10 = 0;
        for (int r22 = 0; r22 < r11; r22++) {
            long j11 = (r12[r3] & 4294967295L) + (4294967295L & r14[r8]) + j10;
            int r02 = (int) j11;
            r12[r13 + r22] = r02;
            r14[r15 + r22] = r02;
            j10 = j11 >>> 32;
        }
        return (int) j10;
    }

    public static int addWordAt(int r6, int r72, int[] r82, int r92) {
        long j10 = (r72 & 4294967295L) + (4294967295L & r82[r92]);
        r82[r92] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return incAt(r6, r82, r92 + 1);
    }

    public static int addWordAt(int r6, int r72, int[] r82, int r92, int r10) {
        long j10 = r72 & 4294967295L;
        long j11 = j10 + (4294967295L & r82[r7]);
        r82[r92 + r10] = (int) j11;
        if ((j11 >>> 32) == 0) {
            return 0;
        }
        return incAt(r6, r82, r92, r10 + 1);
    }

    public static int addWordTo(int r6, int r72, int[] r82) {
        long j10 = (r72 & 4294967295L) + (4294967295L & r82[0]);
        r82[0] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return incAt(r6, r82, 1);
    }

    public static int addWordTo(int r6, int r72, int[] r82, int r92) {
        long j10 = (r72 & 4294967295L) + (4294967295L & r82[r92]);
        r82[r92] = (int) j10;
        if ((j10 >>> 32) == 0) {
            return 0;
        }
        return incAt(r6, r82, r92, 1);
    }

    public static int cadd(int r10, int r11, int[] r12, int[] r13, int[] r14) {
        long j10 = (-(r11 & 1)) & 4294967295L;
        long j11 = 0;
        for (int r112 = 0; r112 < r10; r112++) {
            long j12 = (r12[r112] & 4294967295L) + (r13[r112] & j10) + j11;
            r14[r112] = (int) j12;
            j11 = j12 >>> 32;
        }
        return (int) j11;
    }

    public static int caddTo(int r10, int r11, int[] r12, int[] r13) {
        long j10 = (-(r11 & 1)) & 4294967295L;
        long j11 = 0;
        for (int r112 = 0; r112 < r10; r112++) {
            long j12 = (r13[r112] & 4294967295L) + (r12[r112] & j10) + j11;
            r13[r112] = (int) j12;
            j11 = j12 >>> 32;
        }
        return (int) j11;
    }

    public static void cmov(int r42, int r52, int[] r6, int r72, int[] r82, int r92) {
        int r53 = -(r52 & 1);
        for (int r02 = 0; r02 < r42; r02++) {
            int r12 = r92 + r02;
            int r22 = r82[r12];
            r82[r12] = r22 ^ ((r6[r72 + r02] ^ r22) & r53);
        }
    }

    public static int compare(int r42, int[] r52, int r6, int[] r72, int r82) {
        for (int r43 = r42 - 1; r43 >= 0; r43--) {
            int r12 = r52[r6 + r43] ^ Integer.MIN_VALUE;
            int r22 = Integer.MIN_VALUE ^ r72[r82 + r43];
            if (r12 < r22) {
                return -1;
            }
            if (r12 > r22) {
                return 1;
            }
        }
        return 0;
    }

    public static int compare(int r42, int[] r52, int[] r6) {
        for (int r43 = r42 - 1; r43 >= 0; r43--) {
            int r12 = r52[r43] ^ Integer.MIN_VALUE;
            int r22 = Integer.MIN_VALUE ^ r6[r43];
            if (r12 < r22) {
                return -1;
            }
            if (r12 > r22) {
                return 1;
            }
        }
        return 0;
    }

    public static void copy(int r02, int[] r12, int r22, int[] r32, int r42) {
        System.arraycopy(r12, r22, r32, r42, r02);
    }

    public static void copy(int r12, int[] r22, int[] r32) {
        System.arraycopy(r22, 0, r32, 0, r12);
    }

    public static int[] copy(int r22, int[] r32) {
        int[] r02 = new int[r22];
        System.arraycopy(r32, 0, r02, 0, r22);
        return r02;
    }

    public static void copy64(int r02, long[] jArr, int r22, long[] jArr2, int r42) {
        System.arraycopy(jArr, r22, jArr2, r42, r02);
    }

    public static void copy64(int r12, long[] jArr, long[] jArr2) {
        System.arraycopy(jArr, 0, jArr2, 0, r12);
    }

    public static long[] copy64(int r22, long[] jArr) {
        long[] jArr2 = new long[r22];
        System.arraycopy(jArr, 0, jArr2, 0, r22);
        return jArr2;
    }

    public static int[] create(int r02) {
        return new int[r02];
    }

    public static long[] create64(int r02) {
        return new long[r02];
    }

    public static int csub(int r12, int r13, int[] r14, int r15, int[] r16, int r17, int[] r18, int r19) {
        long j10 = (-(r13 & 1)) & 4294967295L;
        long j11 = 0;
        for (int r6 = 0; r6 < r12; r6++) {
            long j12 = ((r14[r15 + r6] & 4294967295L) - (r16[r17 + r6] & j10)) + j11;
            r18[r19 + r6] = (int) j12;
            j11 = j12 >> 32;
        }
        return (int) j11;
    }

    public static int csub(int r10, int r11, int[] r12, int[] r13, int[] r14) {
        long j10 = (-(r11 & 1)) & 4294967295L;
        long j11 = 0;
        for (int r112 = 0; r112 < r10; r112++) {
            long j12 = ((r12[r112] & 4294967295L) - (r13[r112] & j10)) + j11;
            r14[r112] = (int) j12;
            j11 = j12 >> 32;
        }
        return (int) j11;
    }

    public static int dec(int r42, int[] r52) {
        for (int r12 = 0; r12 < r42; r12++) {
            int r32 = r52[r12] - 1;
            r52[r12] = r32;
            if (r32 != -1) {
                return 0;
            }
        }
        return -1;
    }

    public static int dec(int r42, int[] r52, int[] r6) {
        int r12 = 0;
        while (r12 < r42) {
            int r32 = r52[r12] - 1;
            r6[r12] = r32;
            r12++;
            if (r32 != -1) {
                while (r12 < r42) {
                    r6[r12] = r52[r12];
                    r12++;
                }
                return 0;
            }
        }
        return -1;
    }

    public static int decAt(int r22, int[] r32, int r42) {
        while (r42 < r22) {
            int r12 = r32[r42] - 1;
            r32[r42] = r12;
            if (r12 != -1) {
                return 0;
            }
            r42++;
        }
        return -1;
    }

    public static int decAt(int r32, int[] r42, int r52, int r6) {
        while (r6 < r32) {
            int r12 = r52 + r6;
            int r22 = r42[r12] - 1;
            r42[r12] = r22;
            if (r22 != -1) {
                return 0;
            }
            r6++;
        }
        return -1;
    }

    public static boolean diff(int r82, int[] r92, int r10, int[] r11, int r12, int[] r13, int r14) {
        boolean zGte = gte(r82, r92, r10, r11, r12);
        if (zGte) {
            sub(r82, r92, r10, r11, r12, r13, r14);
        } else {
            sub(r82, r11, r12, r92, r10, r13, r14);
        }
        return zGte;
    }

    public static boolean eq(int r32, int[] r42, int[] r52) {
        for (int r33 = r32 - 1; r33 >= 0; r33--) {
            if (r42[r33] != r52[r33]) {
                return false;
            }
        }
        return true;
    }

    public static int equalTo(int r32, int[] r42, int r52) {
        int r53 = r52 ^ r42[0];
        for (int r12 = 1; r12 < r32; r12++) {
            r53 |= r42[r12];
        }
        return (((r53 >>> 1) | (r53 & 1)) - 1) >> 31;
    }

    public static int equalTo(int r32, int[] r42, int r52, int r6) {
        int r62 = r6 ^ r42[r52];
        for (int r12 = 1; r12 < r32; r12++) {
            r62 |= r42[r52 + r12];
        }
        return (((r62 >>> 1) | (r62 & 1)) - 1) >> 31;
    }

    public static int equalTo(int r42, int[] r52, int r6, int[] r72, int r82) {
        int r12 = 0;
        for (int r02 = 0; r02 < r42; r02++) {
            r12 |= r52[r6 + r02] ^ r72[r82 + r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static int equalTo(int r42, int[] r52, int[] r6) {
        int r12 = 0;
        for (int r02 = 0; r02 < r42; r02++) {
            r12 |= r52[r02] ^ r6[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static int equalToZero(int r32, int[] r42) {
        int r12 = 0;
        for (int r02 = 0; r02 < r32; r02++) {
            r12 |= r42[r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static int equalToZero(int r32, int[] r42, int r52) {
        int r12 = 0;
        for (int r02 = 0; r02 < r32; r02++) {
            r12 |= r42[r52 + r02];
        }
        return (((r12 >>> 1) | (r12 & 1)) - 1) >> 31;
    }

    public static int[] fromBigInteger(int r32, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > r32) {
            throw new IllegalArgumentException();
        }
        int r33 = (r32 + 31) >> 5;
        int[] r02 = create(r33);
        for (int r12 = 0; r12 < r33; r12++) {
            r02[r12] = bigInteger.intValue();
            bigInteger = bigInteger.shiftRight(32);
        }
        return r02;
    }

    public static long[] fromBigInteger64(int r42, BigInteger bigInteger) {
        if (bigInteger.signum() < 0 || bigInteger.bitLength() > r42) {
            throw new IllegalArgumentException();
        }
        int r43 = (r42 + 63) >> 6;
        long[] jArrCreate64 = create64(r43);
        for (int r12 = 0; r12 < r43; r12++) {
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
            if (r12 < 0 || r12 >= r32.length) {
                return 0;
            }
            r33 = r32[r12] >>> (r42 & 31);
        }
        return r33 & 1;
    }

    public static int getBitLength(int r12, int[] r22) {
        for (int r13 = r12 - 1; r13 >= 0; r13--) {
            int r02 = r22[r13];
            if (r02 != 0) {
                return ((r13 * 32) + 32) - Integers.numberOfLeadingZeros(r02);
            }
        }
        return 0;
    }

    public static int getBitLength(int r12, int[] r22, int r32) {
        for (int r13 = r12 - 1; r13 >= 0; r13--) {
            int r02 = r22[r32 + r13];
            if (r02 != 0) {
                return ((r13 * 32) + 32) - Integers.numberOfLeadingZeros(r02);
            }
        }
        return 0;
    }

    public static boolean gte(int r42, int[] r52, int r6, int[] r72, int r82) {
        for (int r43 = r42 - 1; r43 >= 0; r43--) {
            int r12 = r52[r6 + r43] ^ Integer.MIN_VALUE;
            int r22 = Integer.MIN_VALUE ^ r72[r82 + r43];
            if (r12 < r22) {
                return false;
            }
            if (r12 > r22) {
                return true;
            }
        }
        return true;
    }

    public static boolean gte(int r42, int[] r52, int[] r6) {
        for (int r43 = r42 - 1; r43 >= 0; r43--) {
            int r12 = r52[r43] ^ Integer.MIN_VALUE;
            int r22 = Integer.MIN_VALUE ^ r6[r43];
            if (r12 < r22) {
                return false;
            }
            if (r12 > r22) {
                return true;
            }
        }
        return true;
    }

    public static int inc(int r42, int[] r52) {
        for (int r12 = 0; r12 < r42; r12++) {
            int r32 = r52[r12] + 1;
            r52[r12] = r32;
            if (r32 != 0) {
                return 0;
            }
        }
        return 1;
    }

    public static int inc(int r42, int[] r52, int[] r6) {
        int r12 = 0;
        while (r12 < r42) {
            int r32 = r52[r12] + 1;
            r6[r12] = r32;
            r12++;
            if (r32 != 0) {
                while (r12 < r42) {
                    r6[r12] = r52[r12];
                    r12++;
                }
                return 0;
            }
        }
        return 1;
    }

    public static int incAt(int r22, int[] r32, int r42) {
        while (r42 < r22) {
            int r12 = r32[r42] + 1;
            r32[r42] = r12;
            if (r12 != 0) {
                return 0;
            }
            r42++;
        }
        return 1;
    }

    public static int incAt(int r32, int[] r42, int r52, int r6) {
        while (r6 < r32) {
            int r12 = r52 + r6;
            int r22 = r42[r12] + 1;
            r42[r12] = r22;
            if (r22 != 0) {
                return 0;
            }
            r6++;
        }
        return 1;
    }

    public static boolean isOne(int r42, int[] r52) {
        if (r52[0] != 1) {
            return false;
        }
        for (int r12 = 1; r12 < r42; r12++) {
            if (r52[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static boolean isZero(int r32, int[] r42) {
        for (int r12 = 0; r12 < r32; r12++) {
            if (r42[r12] != 0) {
                return false;
            }
        }
        return true;
    }

    public static int lessThan(int r92, int[] r10, int r11, int[] r12, int r13) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            j10 = (((r10[r11 + r22] & 4294967295L) - (4294967295L & r12[r13 + r22])) + j10) >> 32;
        }
        return (int) j10;
    }

    public static int lessThan(int r92, int[] r10, int[] r11) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            j10 = (((r10[r22] & 4294967295L) - (4294967295L & r11[r22])) + j10) >> 32;
        }
        return (int) j10;
    }

    public static void mul(int r82, int[] r92, int r10, int[] r11, int r12, int[] r13, int r14) {
        r13[r14 + r82] = mulWord(r82, r92[r10], r11, r12, r13, r14);
        for (int r02 = 1; r02 < r82; r02++) {
            int r6 = r14 + r02;
            r13[r6 + r82] = mulWordAddTo(r82, r92[r10 + r02], r11, r12, r13, r6);
        }
    }

    public static void mul(int r82, int[] r92, int[] r10, int[] r11) {
        r11[r82] = mulWord(r82, r92[0], r10, r11);
        for (int r02 = 1; r02 < r82; r02++) {
            r11[r02 + r82] = mulWordAddTo(r82, r92[r02], r10, 0, r11, r02);
        }
    }

    public static void mul(int[] r82, int r92, int r10, int[] r11, int r12, int r13, int[] r14, int r15) {
        r14[r15 + r13] = mulWord(r13, r82[r92], r11, r12, r14, r15);
        for (int r02 = 1; r02 < r10; r02++) {
            int r6 = r15 + r02;
            r14[r6 + r13] = mulWordAddTo(r13, r82[r92 + r02], r11, r12, r14, r6);
        }
    }

    public static int mul31BothAdd(int r15, int r16, int[] r17, int r18, int[] r19, int[] r20, int r21) {
        long j10 = r16 & 4294967295L;
        long j11 = r18 & 4294967295L;
        long j12 = 0;
        int r82 = 0;
        do {
            long j13 = ((r19[r82] & 4294967295L) * j11) + ((r17[r82] & 4294967295L) * j10) + (r20[r9] & 4294967295L) + j12;
            r20[r21 + r82] = (int) j13;
            j12 = j13 >>> 32;
            r82++;
        } while (r82 < r15);
        return (int) j12;
    }

    public static int mulAddTo(int r92, int[] r10, int r11, int[] r12, int r13, int[] r14, int r15) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            long jMulWordAddTo = j10 + (mulWordAddTo(r92, r10[r11 + r22], r12, r13, r14, r15) & 4294967295L) + (r14[r3] & 4294967295L);
            r14[r15 + r92] = (int) jMulWordAddTo;
            j10 = jMulWordAddTo >>> 32;
            r15++;
        }
        return (int) j10;
    }

    public static int mulAddTo(int r92, int[] r10, int[] r11, int[] r12) {
        long j10 = 0;
        for (int r82 = 0; r82 < r92; r82++) {
            long jMulWordAddTo = j10 + (mulWordAddTo(r92, r10[r82], r11, 0, r12, r82) & 4294967295L) + (r12[r2] & 4294967295L);
            r12[r82 + r92] = (int) jMulWordAddTo;
            j10 = jMulWordAddTo >>> 32;
        }
        return (int) j10;
    }

    public static int mulWord(int r82, int r92, int[] r10, int r11, int[] r12, int r13) {
        long j10 = r92 & 4294967295L;
        long j11 = 0;
        int r93 = 0;
        do {
            long j12 = ((r10[r11 + r93] & 4294967295L) * j10) + j11;
            r12[r13 + r93] = (int) j12;
            j11 = j12 >>> 32;
            r93++;
        } while (r93 < r82);
        return (int) j11;
    }

    public static int mulWord(int r82, int r92, int[] r10, int[] r11) {
        long j10 = r92 & 4294967295L;
        long j11 = 0;
        int r93 = 0;
        do {
            long j12 = ((r10[r93] & 4294967295L) * j10) + j11;
            r11[r93] = (int) j12;
            j11 = j12 >>> 32;
            r93++;
        } while (r93 < r82);
        return (int) j11;
    }

    public static int mulWordAddTo(int r12, int r13, int[] r14, int r15, int[] r16, int r17) {
        long j10 = r13 & 4294967295L;
        long j11 = 0;
        int r6 = 0;
        do {
            long j12 = ((r14[r15 + r6] & 4294967295L) * j10) + (r16[r9] & 4294967295L) + j11;
            r16[r17 + r6] = (int) j12;
            j11 = j12 >>> 32;
            r6++;
        } while (r6 < r12);
        return (int) j11;
    }

    public static int mulWordDwordAddAt(int r10, int r11, long j10, int[] r14, int r15) {
        long j11 = r11 & 4294967295L;
        long j12 = ((j10 & 4294967295L) * j11) + (r14[r11] & 4294967295L) + 0;
        r14[r15 + 0] = (int) j12;
        long j13 = j11 * (j10 >>> 32);
        long j14 = j13 + (r14[r12] & 4294967295L) + (j12 >>> 32);
        r14[r15 + 1] = (int) j14;
        long j15 = j14 >>> 32;
        long j16 = j15 + (r14[r0] & 4294967295L);
        r14[r15 + 2] = (int) j16;
        if ((j16 >>> 32) == 0) {
            return 0;
        }
        return incAt(r10, r14, r15 + 3);
    }

    public static int shiftDownBit(int r22, int[] r32, int r42) {
        while (true) {
            r22--;
            if (r22 < 0) {
                return r42 << 31;
            }
            int r02 = r32[r22];
            r32[r22] = (r42 << 31) | (r02 >>> 1);
            r42 = r02;
        }
    }

    public static int shiftDownBit(int r32, int[] r42, int r52, int r6) {
        while (true) {
            r32--;
            if (r32 < 0) {
                return r6 << 31;
            }
            int r02 = r52 + r32;
            int r12 = r42[r02];
            r42[r02] = (r6 << 31) | (r12 >>> 1);
            r6 = r12;
        }
    }

    public static int shiftDownBit(int r32, int[] r42, int r52, int r6, int[] r72, int r82) {
        while (true) {
            r32--;
            if (r32 < 0) {
                return r6 << 31;
            }
            int r02 = r42[r52 + r32];
            r72[r82 + r32] = (r6 << 31) | (r02 >>> 1);
            r6 = r02;
        }
    }

    public static int shiftDownBit(int r22, int[] r32, int r42, int[] r52) {
        while (true) {
            r22--;
            if (r22 < 0) {
                return r42 << 31;
            }
            int r02 = r32[r22];
            r52[r22] = (r42 << 31) | (r02 >>> 1);
            r42 = r02;
        }
    }

    public static int shiftDownBits(int r32, int[] r42, int r52, int r6) {
        while (true) {
            r32--;
            if (r32 < 0) {
                return r6 << (-r52);
            }
            int r02 = r42[r32];
            r42[r32] = (r6 << (-r52)) | (r02 >>> r52);
            r6 = r02;
        }
    }

    public static int shiftDownBits(int r42, int[] r52, int r6, int r72, int r82) {
        while (true) {
            r42--;
            if (r42 < 0) {
                return r82 << (-r72);
            }
            int r02 = r6 + r42;
            int r12 = r52[r02];
            r52[r02] = (r82 << (-r72)) | (r12 >>> r72);
            r82 = r12;
        }
    }

    public static int shiftDownBits(int r42, int[] r52, int r6, int r72, int r82, int[] r92, int r10) {
        while (true) {
            r42--;
            if (r42 < 0) {
                return r82 << (-r72);
            }
            int r02 = r52[r6 + r42];
            r92[r10 + r42] = (r82 << (-r72)) | (r02 >>> r72);
            r82 = r02;
        }
    }

    public static int shiftDownBits(int r32, int[] r42, int r52, int r6, int[] r72) {
        while (true) {
            r32--;
            if (r32 < 0) {
                return r6 << (-r52);
            }
            int r02 = r42[r32];
            r72[r32] = (r6 << (-r52)) | (r02 >>> r52);
            r6 = r02;
        }
    }

    public static int shiftDownWord(int r12, int[] r22, int r32) {
        while (true) {
            r12--;
            if (r12 < 0) {
                return r32;
            }
            int r02 = r22[r12];
            r22[r12] = r32;
            r32 = r02;
        }
    }

    public static int shiftUpBit(int r32, int[] r42, int r52) {
        int r02 = 0;
        while (r02 < r32) {
            int r12 = r42[r02];
            r42[r02] = (r52 >>> 31) | (r12 << 1);
            r02++;
            r52 = r12;
        }
        return r52 >>> 31;
    }

    public static int shiftUpBit(int r42, int[] r52, int r6, int r72) {
        int r02 = 0;
        while (r02 < r42) {
            int r12 = r6 + r02;
            int r22 = r52[r12];
            r52[r12] = (r72 >>> 31) | (r22 << 1);
            r02++;
            r72 = r22;
        }
        return r72 >>> 31;
    }

    public static int shiftUpBit(int r42, int[] r52, int r6, int r72, int[] r82, int r92) {
        int r02 = 0;
        while (r02 < r42) {
            int r12 = r52[r6 + r02];
            r82[r92 + r02] = (r72 >>> 31) | (r12 << 1);
            r02++;
            r72 = r12;
        }
        return r72 >>> 31;
    }

    public static int shiftUpBit(int r32, int[] r42, int r52, int[] r6) {
        int r02 = 0;
        while (r02 < r32) {
            int r12 = r42[r02];
            r6[r02] = (r52 >>> 31) | (r12 << 1);
            r02++;
            r52 = r12;
        }
        return r52 >>> 31;
    }

    public static long shiftUpBit64(int r72, long[] jArr, int r92, long j10, long[] jArr2, int r13) {
        int r02 = 0;
        while (r02 < r72) {
            long j11 = jArr[r92 + r02];
            jArr2[r13 + r02] = (j10 >>> 63) | (j11 << 1);
            r02++;
            j10 = j11;
        }
        return j10 >>> 63;
    }

    public static int shiftUpBits(int r42, int[] r52, int r6, int r72) {
        int r02 = 0;
        while (r02 < r42) {
            int r12 = r52[r02];
            r52[r02] = (r72 >>> (-r6)) | (r12 << r6);
            r02++;
            r72 = r12;
        }
        return r72 >>> (-r6);
    }

    public static int shiftUpBits(int r52, int[] r6, int r72, int r82, int r92) {
        int r02 = 0;
        while (r02 < r52) {
            int r12 = r72 + r02;
            int r22 = r6[r12];
            r6[r12] = (r92 >>> (-r82)) | (r22 << r82);
            r02++;
            r92 = r22;
        }
        return r92 >>> (-r82);
    }

    public static int shiftUpBits(int r52, int[] r6, int r72, int r82, int r92, int[] r10, int r11) {
        int r02 = 0;
        while (r02 < r52) {
            int r12 = r6[r72 + r02];
            r10[r11 + r02] = (r92 >>> (-r82)) | (r12 << r82);
            r02++;
            r92 = r12;
        }
        return r92 >>> (-r82);
    }

    public static int shiftUpBits(int r42, int[] r52, int r6, int r72, int[] r82) {
        int r02 = 0;
        while (r02 < r42) {
            int r12 = r52[r02];
            r82[r02] = (r72 >>> (-r6)) | (r12 << r6);
            r02++;
            r72 = r12;
        }
        return r72 >>> (-r6);
    }

    public static long shiftUpBits64(int r72, long[] jArr, int r92, int r10, long j10) {
        int r02 = 0;
        while (r02 < r72) {
            int r12 = r92 + r02;
            long j11 = jArr[r12];
            jArr[r12] = (j10 >>> (-r10)) | (j11 << r10);
            r02++;
            j10 = j11;
        }
        return j10 >>> (-r10);
    }

    public static long shiftUpBits64(int r72, long[] jArr, int r92, int r10, long j10, long[] jArr2, int r14) {
        int r02 = 0;
        while (r02 < r72) {
            long j11 = jArr[r92 + r02];
            jArr2[r14 + r02] = (j10 >>> (-r10)) | (j11 << r10);
            r02++;
            j10 = j11;
        }
        return j10 >>> (-r10);
    }

    public static void square(int r11, int[] r12, int r13, int[] r14, int r15) {
        int r82;
        int r02 = r11 << 1;
        int r16 = 0;
        int r22 = r11;
        int r32 = r02;
        do {
            r22--;
            long j10 = r12[r13 + r22] & 4294967295L;
            long j11 = j10 * j10;
            int r33 = r32 - 1;
            r14[r15 + r33] = (r16 << 31) | ((int) (j11 >>> 33));
            r32 = r33 - 1;
            r82 = 1;
            r14[r15 + r32] = (int) (j11 >>> 1);
            r16 = (int) j11;
        } while (r22 > 0);
        int r17 = r15 + 2;
        long j12 = 0;
        while (r82 < r11) {
            long jSquareWordAddTo = j12 + (squareWordAddTo(r12, r13, r82, r14, r15) & 4294967295L) + (r14[r17] & 4294967295L);
            int r42 = r17 + 1;
            r14[r17] = (int) jSquareWordAddTo;
            long j13 = (jSquareWordAddTo >>> 32) + (r14[r42] & 4294967295L);
            r14[r42] = (int) j13;
            j12 = j13 >>> 32;
            r82++;
            r17 = r42 + 1;
        }
        shiftUpBit(r02, r14, r15, r12[r13] << 31);
    }

    public static void square(int r11, int[] r12, int[] r13) {
        int r42;
        int r02 = r11 << 1;
        int r43 = 0;
        int r22 = r11;
        int r32 = r02;
        while (true) {
            r22--;
            long j10 = r12[r22] & 4294967295L;
            long j11 = j10 * j10;
            int r33 = r32 - 1;
            r13[r33] = (r43 << 31) | ((int) (j11 >>> 33));
            r32 = r33 - 1;
            r42 = 1;
            r13[r32] = (int) (j11 >>> 1);
            int r6 = (int) j11;
            if (r22 <= 0) {
                break;
            } else {
                r43 = r6;
            }
        }
        long j12 = 0;
        int r52 = 2;
        while (r42 < r11) {
            long jSquareWordAddTo = j12 + (squareWordAddTo(r12, r42, r13) & 4294967295L) + (r13[r52] & 4294967295L);
            int r62 = r52 + 1;
            r13[r52] = (int) jSquareWordAddTo;
            long j13 = (jSquareWordAddTo >>> 32) + (r13[r62] & 4294967295L);
            r13[r62] = (int) j13;
            j12 = j13 >>> 32;
            r42++;
            r52 = r62 + 1;
        }
        shiftUpBit(r02, r13, r12[0] << 31);
    }

    public static int squareWordAddTo(int[] r14, int r15, int r16, int[] r17, int r18) {
        long j10 = r14[r15 + r16] & 4294967295L;
        long j11 = 0;
        int r82 = 0;
        int r52 = r18;
        do {
            long j12 = ((r14[r15 + r82] & 4294967295L) * j10) + (r17[r11] & 4294967295L) + j11;
            r17[r16 + r52] = (int) j12;
            j11 = j12 >>> 32;
            r52++;
            r82++;
        } while (r82 < r16);
        return (int) j11;
    }

    public static int squareWordAddTo(int[] r12, int r13, int[] r14) {
        long j10 = r12[r13] & 4294967295L;
        long j11 = 0;
        int r6 = 0;
        do {
            long j12 = ((r12[r6] & 4294967295L) * j10) + (r14[r9] & 4294967295L) + j11;
            r14[r13 + r6] = (int) j12;
            j11 = j12 >>> 32;
            r6++;
        } while (r6 < r13);
        return (int) j11;
    }

    public static int sub(int r92, int[] r10, int r11, int[] r12, int r13, int[] r14, int r15) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            long j11 = ((r10[r11 + r22] & 4294967295L) - (4294967295L & r12[r13 + r22])) + j10;
            r14[r15 + r22] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int sub(int r92, int[] r10, int[] r11, int[] r12) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            long j11 = ((r10[r22] & 4294967295L) - (4294967295L & r11[r22])) + j10;
            r12[r22] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int sub33At(int r72, int r82, int[] r92, int r10) {
        long j10 = (r92[r0] & 4294967295L) - (r82 & 4294967295L);
        r92[r10 + 0] = (int) j10;
        long j11 = ((4294967295L & r92[r2]) - 1) + (j10 >> 32);
        r92[r10 + 1] = (int) j11;
        if ((j11 >> 32) == 0) {
            return 0;
        }
        return decAt(r72, r92, r10 + 2);
    }

    public static int sub33At(int r72, int r82, int[] r92, int r10, int r11) {
        int r02 = r10 + r11;
        long j10 = (r92[r02] & 4294967295L) - (r82 & 4294967295L);
        r92[r02] = (int) j10;
        long j11 = ((4294967295L & r92[r0]) - 1) + (j10 >> 32);
        r92[r02 + 1] = (int) j11;
        if ((j11 >> 32) == 0) {
            return 0;
        }
        return decAt(r72, r92, r10, r11 + 2);
    }

    public static int sub33From(int r82, int r92, int[] r10) {
        long j10 = (r10[0] & 4294967295L) - (r92 & 4294967295L);
        r10[0] = (int) j10;
        long j11 = ((4294967295L & r10[1]) - 1) + (j10 >> 32);
        r10[1] = (int) j11;
        if ((j11 >> 32) == 0) {
            return 0;
        }
        return decAt(r82, r10, 2);
    }

    public static int sub33From(int r72, int r82, int[] r92, int r10) {
        long j10 = (r92[r0] & 4294967295L) - (r82 & 4294967295L);
        r92[r10 + 0] = (int) j10;
        long j11 = ((4294967295L & r92[r2]) - 1) + (j10 >> 32);
        r92[r10 + 1] = (int) j11;
        if ((j11 >> 32) == 0) {
            return 0;
        }
        return decAt(r72, r92, r10, 2);
    }

    public static int subBothFrom(int r11, int[] r12, int r13, int[] r14, int r15, int[] r16, int r17) {
        long j10 = 0;
        for (int r22 = 0; r22 < r11; r22++) {
            long j11 = (((r16[r4] & 4294967295L) - (r12[r13 + r22] & 4294967295L)) - (4294967295L & r14[r15 + r22])) + j10;
            r16[r17 + r22] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int subBothFrom(int r92, int[] r10, int[] r11, int[] r12) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            long j11 = (((r12[r22] & 4294967295L) - (r10[r22] & 4294967295L)) - (4294967295L & r11[r22])) + j10;
            r12[r22] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int subDWordAt(int r82, long j10, int[] r11, int r12) {
        long j11 = (r11[r0] & 4294967295L) - (j10 & 4294967295L);
        r11[r12 + 0] = (int) j11;
        long j12 = ((4294967295L & r11[r5]) - (j10 >>> 32)) + (j11 >> 32);
        r11[r12 + 1] = (int) j12;
        if ((j12 >> 32) == 0) {
            return 0;
        }
        return decAt(r82, r11, r12 + 2);
    }

    public static int subDWordAt(int r82, long j10, int[] r11, int r12, int r13) {
        int r02 = r12 + r13;
        long j11 = (r11[r02] & 4294967295L) - (j10 & 4294967295L);
        r11[r02] = (int) j11;
        long j12 = ((4294967295L & r11[r0]) - (j10 >>> 32)) + (j11 >> 32);
        r11[r02 + 1] = (int) j12;
        if ((j12 >> 32) == 0) {
            return 0;
        }
        return decAt(r82, r11, r12, r13 + 2);
    }

    public static int subDWordFrom(int r92, long j10, int[] r12) {
        long j11 = (r12[0] & 4294967295L) - (j10 & 4294967295L);
        r12[0] = (int) j11;
        long j12 = ((4294967295L & r12[1]) - (j10 >>> 32)) + (j11 >> 32);
        r12[1] = (int) j12;
        if ((j12 >> 32) == 0) {
            return 0;
        }
        return decAt(r92, r12, 2);
    }

    public static int subDWordFrom(int r82, long j10, int[] r11, int r12) {
        long j11 = (r11[r0] & 4294967295L) - (j10 & 4294967295L);
        r11[r12 + 0] = (int) j11;
        long j12 = ((4294967295L & r11[r5]) - (j10 >>> 32)) + (j11 >> 32);
        r11[r12 + 1] = (int) j12;
        if ((j12 >> 32) == 0) {
            return 0;
        }
        return decAt(r82, r11, r12, 2);
    }

    public static int subFrom(int r10, int[] r11, int r12, int[] r13, int r14) {
        long j10 = 0;
        for (int r22 = 0; r22 < r10; r22++) {
            long j11 = ((r13[r3] & 4294967295L) - (4294967295L & r11[r12 + r22])) + j10;
            r13[r14 + r22] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int subFrom(int r92, int[] r10, int[] r11) {
        long j10 = 0;
        for (int r22 = 0; r22 < r92; r22++) {
            long j11 = ((r11[r22] & 4294967295L) - (4294967295L & r10[r22])) + j10;
            r11[r22] = (int) j11;
            j10 = j11 >> 32;
        }
        return (int) j10;
    }

    public static int subWordAt(int r6, int r72, int[] r82, int r92) {
        long j10 = (r82[r92] & 4294967295L) - (4294967295L & r72);
        r82[r92] = (int) j10;
        if ((j10 >> 32) == 0) {
            return 0;
        }
        return decAt(r6, r82, r92 + 1);
    }

    public static int subWordAt(int r72, int r82, int[] r92, int r10, int r11) {
        long j10 = (r92[r0] & 4294967295L) - (4294967295L & r82);
        r92[r10 + r11] = (int) j10;
        if ((j10 >> 32) == 0) {
            return 0;
        }
        return decAt(r72, r92, r10, r11 + 1);
    }

    public static int subWordFrom(int r72, int r82, int[] r92) {
        long j10 = (r92[0] & 4294967295L) - (4294967295L & r82);
        r92[0] = (int) j10;
        if ((j10 >> 32) == 0) {
            return 0;
        }
        return decAt(r72, r92, 1);
    }

    public static int subWordFrom(int r72, int r82, int[] r92, int r10) {
        long j10 = (r92[r0] & 4294967295L) - (4294967295L & r82);
        r92[r10 + 0] = (int) j10;
        if ((j10 >> 32) == 0) {
            return 0;
        }
        return decAt(r72, r92, r10, 1);
    }

    public static BigInteger toBigInteger(int r42, int[] r52) {
        byte[] bArr = new byte[r42 << 2];
        for (int r12 = 0; r12 < r42; r12++) {
            int r22 = r52[r12];
            if (r22 != 0) {
                Pack.intToBigEndian(r22, bArr, ((r42 - 1) - r12) << 2);
            }
        }
        return new BigInteger(1, bArr);
    }

    public static void zero(int r22, int[] r32) {
        for (int r12 = 0; r12 < r22; r12++) {
            r32[r12] = 0;
        }
    }

    public static void zero(int r32, int[] r42, int r52) {
        for (int r12 = 0; r12 < r32; r12++) {
            r42[r52 + r12] = 0;
        }
    }

    public static void zero64(int r32, long[] jArr) {
        for (int r02 = 0; r02 < r32; r02++) {
            jArr[r02] = 0;
        }
    }
}
