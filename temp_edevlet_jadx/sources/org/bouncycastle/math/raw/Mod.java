package org.bouncycastle.math.raw;

import androidx.appcompat.widget.v;
import java.util.Random;
import org.bouncycastle.util.Integers;

/* loaded from: classes2.dex */
public abstract class Mod {
    private static final int M30 = 1073741823;
    private static final long M32L = 4294967295L;

    private static int add30(int r42, int[] r52, int[] r6) {
        int r43 = r42 - 1;
        int r12 = 0;
        for (int r02 = 0; r02 < r43; r02++) {
            int r22 = r52[r02] + r6[r02] + r12;
            r52[r02] = M30 & r22;
            r12 = r22 >> 30;
        }
        int r03 = r52[r43] + r6[r43] + r12;
        r52[r43] = r03;
        return r03 >> 30;
    }

    public static void checkedModOddInverse(int[] r02, int[] r12, int[] r22) {
        if (modOddInverse(r02, r12, r22) == 0) {
            throw new ArithmeticException("Inverse does not exist.");
        }
    }

    public static void checkedModOddInverseVar(int[] r02, int[] r12, int[] r22) {
        if (!modOddInverseVar(r02, r12, r22)) {
            throw new ArithmeticException("Inverse does not exist.");
        }
    }

    private static void cnegate30(int r32, int r42, int[] r52) {
        int r33 = r32 - 1;
        int r12 = 0;
        for (int r02 = 0; r02 < r33; r02++) {
            int r22 = ((r52[r02] ^ r42) - r42) + r12;
            r52[r02] = M30 & r22;
            r12 = r22 >> 30;
        }
        r52[r33] = ((r52[r33] ^ r42) - r42) + r12;
    }

    private static void cnormalize30(int r72, int r82, int[] r92, int[] r10) {
        int r73 = r72 - 1;
        int r02 = r92[r73] >> 31;
        int r32 = 0;
        for (int r22 = 0; r22 < r73; r22++) {
            int r52 = (((r92[r22] + (r10[r22] & r02)) ^ r82) - r82) + r32;
            r92[r22] = r52 & M30;
            r32 = r52 >> 30;
        }
        int r03 = (((r92[r73] + (r02 & r10[r73])) ^ r82) - r82) + r32;
        r92[r73] = r03;
        int r83 = r03 >> 31;
        int r04 = 0;
        for (int r12 = 0; r12 < r73; r12++) {
            int r23 = r92[r12] + (r10[r12] & r83) + r04;
            r92[r12] = r23 & M30;
            r04 = r23 >> 30;
        }
        r92[r73] = r92[r73] + (r83 & r10[r73]) + r04;
    }

    private static void decode30(int r82, int[] r92, int[] r10) {
        int r02 = 0;
        long j10 = 0;
        int r12 = 0;
        int r22 = 0;
        while (r82 > 0) {
            while (r02 < Math.min(32, r82)) {
                j10 |= r92[r12] << r02;
                r02 += 30;
                r12++;
            }
            r10[r22] = (int) j10;
            j10 >>>= 32;
            r02 -= 32;
            r82 -= 32;
            r22++;
        }
    }

    private static int divsteps30Var(int r17, int r18, int r19, int[] r20) {
        int r10;
        int r22 = r17;
        int r32 = r18;
        int r42 = r19;
        int r52 = 30;
        int r6 = 1;
        int r72 = 0;
        int r82 = 0;
        int r92 = 1;
        while (true) {
            int r11 = Integers.numberOfTrailingZeros(((-1) << r52) | r42);
            int r43 = r42 >> r11;
            r6 <<= r11;
            r72 <<= r11;
            r22 -= r11;
            r52 -= r11;
            if (r52 <= 0) {
                r20[0] = r6;
                r20[1] = r72;
                r20[2] = r82;
                r20[3] = r92;
                return r22;
            }
            if (r22 <= 0) {
                r22 = 2 - r22;
                int r33 = -r32;
                int r62 = -r6;
                int r73 = -r72;
                r10 = ((-1) >>> (32 - (r22 > r52 ? r52 : r22))) & 63 & (((r43 * r43) - 2) * r43 * r33);
                r43 = r33;
                r32 = r43;
                int r15 = r82;
                r82 = r62;
                r6 = r15;
                int r16 = r92;
                r92 = r73;
                r72 = r16;
            } else {
                r10 = ((-1) >>> (32 - (r22 > r52 ? r52 : r22))) & 15 & (((((r32 + 1) & 4) << 1) + r32) * (-r43));
            }
            r42 = r43 + (r32 * r10);
            r82 += r6 * r10;
            r92 += r10 * r72;
        }
    }

    private static void encode30(int r11, int[] r12, int[] r13) {
        int r02 = 0;
        long j10 = 0;
        int r14 = 0;
        int r22 = 0;
        while (r11 > 0) {
            if (r02 < Math.min(30, r11)) {
                j10 |= (r12[r14] & 4294967295L) << r02;
                r02 += 32;
                r14++;
            }
            r13[r22] = ((int) j10) & M30;
            j10 >>>= 30;
            r02 -= 30;
            r11 -= 30;
            r22++;
        }
    }

    private static int equalTo(int r32, int[] r42, int r52) {
        int r53 = r52 ^ r42[0];
        for (int r12 = 1; r12 < r32; r12++) {
            r53 |= r42[r12];
        }
        return (((r53 >>> 1) | (r53 & 1)) - 1) >> 31;
    }

    private static boolean equalToVar(int r42, int[] r52, int r6) {
        int r62 = r6 ^ r52[0];
        if (r62 != 0) {
            return false;
        }
        for (int r22 = 1; r22 < r42; r22++) {
            r62 |= r52[r22];
        }
        return r62 == 0;
    }

    private static int getMaximumDivsteps(int r42) {
        return (int) (((r42 * 188898) + (r42 < 46 ? 308405 : 181188)) >>> 16);
    }

    private static int getMaximumHDDivsteps(int r42) {
        return (int) (((r42 * 150964) + 99243) >>> 16);
    }

    private static int hddivsteps30(int r12, int r13, int r14, int[] r15) {
        int r02 = 1073741824;
        int r22 = 1073741824;
        int r42 = 0;
        int r52 = 0;
        for (int r32 = 0; r32 < 30; r32++) {
            int r6 = r12 >> 31;
            int r82 = -(r14 & 1);
            int r142 = r14 - ((r13 ^ r6) & r82);
            int r53 = r52 - ((r02 ^ r6) & r82);
            int r23 = r22 - ((r42 ^ r6) & r82);
            int r62 = (~r6) & r82;
            r12 = (r12 ^ r62) + 1;
            r13 += r142 & r62;
            r02 += r53 & r62;
            r42 += r62 & r23;
            r14 = r142 >> 1;
            r52 = r53 >> 1;
            r22 = r23 >> 1;
        }
        r15[0] = r02;
        r15[1] = r42;
        r15[2] = r52;
        r15[3] = r22;
        return r12;
    }

    public static int inverse32(int r22) {
        int r02 = (2 - (r22 * r22)) * r22;
        int r12 = (2 - (r22 * r02)) * r02;
        int r03 = (2 - (r22 * r12)) * r12;
        return (2 - (r22 * r03)) * r03;
    }

    public static int modOddInverse(int[] r19, int[] r20, int[] r21) {
        int length = r19.length;
        int r22 = (length << 5) - Integers.numberOfLeadingZeros(r19[length - 1]);
        int r12 = (r22 + 29) / 30;
        int[] r10 = new int[4];
        int[] r11 = new int[r12];
        int[] r122 = new int[r12];
        int[] r13 = new int[r12];
        int[] r14 = new int[r12];
        int[] r15 = new int[r12];
        char c10 = 0;
        r122[0] = 1;
        encode30(r22, r20, r14);
        encode30(r22, r19, r15);
        System.arraycopy(r15, 0, r13, 0, r12);
        int r02 = inverse32(r15[0]);
        int maximumHDDivsteps = getMaximumHDDivsteps(r22);
        int r42 = 0;
        int r72 = 0;
        while (r72 < maximumHDDivsteps) {
            int r16 = hddivsteps30(r42, r13[c10], r14[c10], r10);
            updateDE30(r12, r11, r122, r10, r02, r15);
            updateFG30(r12, r13, r14, r10);
            r72 += 30;
            r42 = r16;
            maximumHDDivsteps = maximumHDDivsteps;
            c10 = 0;
        }
        int r03 = r13[r12 - 1] >> 31;
        cnegate30(r12, r03, r13);
        cnormalize30(r12, r03, r11, r15);
        decode30(r22, r11, r21);
        return equalTo(r12, r13, 1) & equalTo(r12, r14, 0);
    }

    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static boolean modOddInverseVar(int[] r19, int[] r20, int[] r21) {
        int length = r19.length;
        int r32 = (length << 5) - Integers.numberOfLeadingZeros(r19[length - 1]);
        int r42 = (r32 + 29) / 30;
        int bitLength = r32 - Nat.getBitLength(length, r20);
        int[] r11 = new int[4];
        int[] r12 = new int[r42];
        int[] r13 = new int[r42];
        int[] r14 = new int[r42];
        int[] r15 = new int[r42];
        int[] r10 = new int[r42];
        r13[0] = 1;
        encode30(r32, r20, r15);
        encode30(r32, r19, r10);
        System.arraycopy(r10, 0, r14, 0, r42);
        int r02 = -bitLength;
        int r16 = inverse32(r10[0]);
        int maximumDivsteps = getMaximumDivsteps(r32);
        int r6 = r42;
        for (?? r92 = 0; !equalToVar(r6, r15, r92); r92 = 0) {
            if (bitLength >= maximumDivsteps) {
                return r92;
            }
            int r03 = divsteps30Var(r02, r14[r92], r15[r92], r11);
            int r82 = r6;
            updateDE30(r42, r12, r13, r11, r16, r10);
            updateFG30(r82, r14, r15, r11);
            r6 = trimFG30(r82, r14, r15);
            r02 = r03;
            bitLength += 30;
            maximumDivsteps = maximumDivsteps;
        }
        int r04 = r6;
        int r17 = r14[r04 - 1] >> 31;
        int r52 = r12[r42 - 1] >> 31;
        if (r52 < 0) {
            r52 = add30(r42, r12, r10);
        }
        if (r17 < 0) {
            r52 = negate30(r42, r12);
            negate30(r04, r14);
        }
        if (!equalToVar(r04, r14, 1)) {
            return false;
        }
        if (r52 < 0) {
            add30(r42, r12, r10);
        }
        decode30(r32, r12, r21);
        return true;
    }

    public static int modOddIsCoprime(int[] r92, int[] r10) {
        int length = r92.length;
        int r12 = (length << 5) - Integers.numberOfLeadingZeros(r92[length - 1]);
        int r02 = (r12 + 29) / 30;
        int[] r32 = new int[4];
        int[] r42 = new int[r02];
        int[] r52 = new int[r02];
        int[] r6 = new int[r02];
        encode30(r12, r10, r52);
        encode30(r12, r92, r6);
        System.arraycopy(r6, 0, r42, 0, r02);
        int maximumHDDivsteps = getMaximumHDDivsteps(r12);
        int r62 = 0;
        for (int r13 = 0; r13 < maximumHDDivsteps; r13 += 30) {
            r62 = hddivsteps30(r62, r42[0], r52[0], r32);
            updateFG30(r02, r42, r52, r32);
        }
        cnegate30(r02, r42[r02 - 1] >> 31, r42);
        return equalTo(r02, r52, 0) & equalTo(r02, r42, 1);
    }

    public static boolean modOddIsCoprimeVar(int[] r82, int[] r92) {
        int length = r82.length;
        int r12 = (length << 5) - Integers.numberOfLeadingZeros(r82[length - 1]);
        int r22 = (r12 + 29) / 30;
        int bitLength = r12 - Nat.getBitLength(length, r92);
        int[] r32 = new int[4];
        int[] r42 = new int[r22];
        int[] r52 = new int[r22];
        int[] r6 = new int[r22];
        encode30(r12, r92, r52);
        encode30(r12, r82, r6);
        System.arraycopy(r6, 0, r42, 0, r22);
        int r93 = -bitLength;
        int maximumDivsteps = getMaximumDivsteps(r12);
        while (!equalToVar(r22, r52, 0)) {
            if (bitLength >= maximumDivsteps) {
                return false;
            }
            bitLength += 30;
            r93 = divsteps30Var(r93, r42[0], r52[0], r32);
            updateFG30(r22, r42, r52, r32);
            r22 = trimFG30(r22, r42, r52);
        }
        if ((r42[r22 - 1] >> 31) < 0) {
            negate30(r22, r42);
        }
        return equalToVar(r22, r42, 1);
    }

    private static int negate30(int r32, int[] r42) {
        int r33 = r32 - 1;
        int r12 = 0;
        for (int r02 = 0; r02 < r33; r02++) {
            int r13 = r12 - r42[r02];
            r42[r02] = M30 & r13;
            r12 = r13 >> 30;
        }
        int r14 = r12 - r42[r33];
        r42[r33] = r14;
        return r14 >> 30;
    }

    public static int[] random(int[] r72) {
        int length = r72.length;
        Random random = new Random();
        int[] r22 = Nat.create(length);
        int r32 = length - 1;
        int r42 = r72[r32];
        int r43 = r42 | (r42 >>> 1);
        int r44 = r43 | (r43 >>> 2);
        int r45 = r44 | (r44 >>> 4);
        int r46 = r45 | (r45 >>> 8);
        int r47 = r46 | (r46 >>> 16);
        do {
            for (int r52 = 0; r52 != length; r52++) {
                r22[r52] = random.nextInt();
            }
            r22[r32] = r22[r32] & r47;
        } while (Nat.gte(length, r22, r72));
        return r22;
    }

    private static int trimFG30(int r52, int[] r6, int[] r72) {
        int r02 = r52 - 1;
        int r12 = r6[r02];
        int r03 = r72[r02];
        int r22 = r52 - 2;
        if (((r22 >> 31) | ((r12 >> 31) ^ r12) | ((r03 >> 31) ^ r03)) != 0) {
            return r52;
        }
        r6[r22] = (r12 << 30) | r6[r22];
        r72[r22] = r72[r22] | (r03 << 30);
        return r52 - 1;
    }

    private static void updateDE30(int r33, int[] r34, int[] r35, int[] r36, int r37, int[] r38) {
        int r02 = r33;
        int r22 = r36[0];
        int r32 = r36[1];
        int r42 = r36[2];
        int r52 = r36[3];
        int r6 = r02 - 1;
        int r72 = r34[r6] >> 31;
        int r82 = r35[r6] >> 31;
        int r92 = (r22 & r72) + (r32 & r82);
        int r73 = (r72 & r42) + (r82 & r52);
        int r83 = r38[0];
        long j10 = r22;
        long j11 = r34[0];
        long j12 = r32;
        long j13 = r35[0];
        long j14 = (j12 * j13) + (j10 * j11);
        long j15 = r42;
        long j16 = r52;
        long j17 = (j13 * j16) + (j11 * j15);
        long j18 = r83;
        long j19 = r92 - (((((int) j14) * r37) + r92) & M30);
        long j20 = (j18 * j19) + j14;
        long j21 = r73 - (((((int) j17) * r37) + r73) & M30);
        long j22 = (j18 * j21) + j17;
        long j23 = j20 >> 30;
        long j24 = j22 >> 30;
        int r74 = 1;
        while (r74 < r02) {
            int r14 = r38[r74];
            long j25 = j24;
            long j26 = r34[r74];
            long j27 = j21;
            long j28 = r35[r74];
            long j29 = r14;
            long jB = v.b(j29, j19, (j12 * j28) + (j10 * j26), j23);
            long jB2 = v.b(j29, j27, (j28 * j16) + (j26 * j15), j25);
            int r23 = r74 - 1;
            r34[r23] = ((int) jB) & M30;
            j23 = jB >> 30;
            r35[r23] = M30 & ((int) jB2);
            j24 = jB2 >> 30;
            r74++;
            r02 = r33;
            j21 = j27;
        }
        r34[r6] = (int) j23;
        r35[r6] = (int) j24;
    }

    private static void updateFG30(int r27, int[] r28, int[] r29, int[] r30) {
        int r02 = r27;
        int r22 = r30[0];
        int r32 = r30[1];
        int r42 = r30[2];
        int r52 = r30[3];
        long j10 = r22;
        long j11 = r28[0];
        long j12 = r32;
        long j13 = r29[0];
        long j14 = (j12 * j13) + (j10 * j11);
        long j15 = r42;
        long j16 = r52;
        long j17 = (j13 * j16) + (j11 * j15);
        long j18 = j14 >> 30;
        long j19 = j17 >> 30;
        int r12 = 1;
        while (r12 < r02) {
            int r302 = r12;
            long j20 = r28[r12];
            long j21 = r29[r12];
            long jB = v.b(j12, j21, j10 * j20, j18);
            long jB2 = v.b(j21, j16, j20 * j15, j19);
            int r6 = r302 - 1;
            r28[r6] = ((int) jB) & M30;
            r29[r6] = M30 & ((int) jB2);
            j19 = jB2 >> 30;
            r12 = r302 + 1;
            r02 = r27;
            j18 = jB >> 30;
            j10 = j10;
        }
        int r03 = r27 - 1;
        r28[r03] = (int) j18;
        r29[r03] = (int) j19;
    }
}
