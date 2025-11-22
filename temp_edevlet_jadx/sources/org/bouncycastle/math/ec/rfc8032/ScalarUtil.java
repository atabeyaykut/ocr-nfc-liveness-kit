package org.bouncycastle.math.ec.rfc8032;

import org.bouncycastle.util.Integers;

/* loaded from: classes2.dex */
abstract class ScalarUtil {
    private static final long M = 4294967295L;

    public static void addShifted_NP(int r20, int r21, int[] r22, int[] r23, int[] r24, int[] r25) {
        int[] r32 = r25;
        int r52 = 0;
        long j10 = 0;
        if (r21 == 0) {
            long j11 = 0;
            while (r52 <= r20) {
                long j12 = r24[r52] & 4294967295L;
                long j13 = j11 + j12 + (r23[r52] & 4294967295L);
                int r12 = (int) j13;
                j11 = j13 >>> 32;
                r24[r52] = r12;
                long j14 = j10 + (r22[r52] & 4294967295L) + j12 + (r12 & 4294967295L);
                r22[r52] = (int) j14;
                j10 = j14 >>> 32;
                r52++;
            }
            return;
        }
        if (r21 < 32) {
            long j15 = 0;
            long j16 = 0;
            int r33 = 0;
            int r82 = 0;
            int r92 = 0;
            while (r52 <= r20) {
                int r14 = r24[r52];
                int r42 = -r21;
                long j17 = j15 + (r22[r52] & 4294967295L) + (((r33 >>> r42) | (r14 << r21)) & 4294967295L);
                int r34 = r23[r52];
                long j18 = j16 + (r14 & 4294967295L) + (((r82 >>> r42) | (r34 << r21)) & 4294967295L);
                int r83 = (int) j18;
                j16 = j18 >>> 32;
                r24[r52] = r83;
                long j19 = j17 + (((r92 >>> r42) | (r83 << r21)) & 4294967295L);
                r22[r52] = (int) j19;
                j15 = j19 >>> 32;
                r52++;
                r92 = r83;
                r82 = r34;
                r33 = r14;
            }
            return;
        }
        System.arraycopy(r24, 0, r32, 0, r20);
        int r43 = r21 >>> 5;
        int r13 = r21 & 31;
        if (r13 == 0) {
            long j20 = 0;
            for (int r15 = r43; r15 <= r20; r15++) {
                int r53 = r15 - r43;
                long j21 = j20 + (r24[r15] & 4294967295L) + (r23[r53] & 4294967295L);
                r24[r15] = (int) j21;
                j20 = j21 >>> 32;
                long j22 = j10 + (r22[r15] & 4294967295L) + (r32[r53] & 4294967295L) + (r24[r53] & 4294967295L);
                r22[r15] = (int) j22;
                j10 = j22 >>> 32;
            }
            return;
        }
        int r142 = r43;
        long j23 = 0;
        long j24 = 0;
        int r84 = 0;
        int r93 = 0;
        while (r142 <= r20) {
            int r152 = r142 - r43;
            int r16 = r32[r152];
            int r6 = -r13;
            int r17 = r43;
            long j25 = j23 + (r22[r142] & 4294967295L) + (((r16 << r13) | (r52 >>> r6)) & 4294967295L);
            int r54 = r23[r152];
            long j26 = j24 + (r24[r142] & 4294967295L) + (((r54 << r13) | (r84 >>> r6)) & 4294967295L);
            r24[r142] = (int) j26;
            j24 = j26 >>> 32;
            int r44 = r24[r152];
            long j27 = j25 + (((r93 >>> r6) | (r44 << r13)) & 4294967295L);
            r22[r142] = (int) j27;
            j23 = j27 >>> 32;
            r142++;
            r32 = r25;
            r93 = r44;
            r84 = r54;
            r52 = r16;
            r43 = r17;
        }
    }

    public static void addShifted_UV(int r16, int r17, int[] r18, int[] r19, int[] r20, int[] r21) {
        int r02 = r16;
        int r12 = r17 >>> 5;
        int r22 = r17 & 31;
        long j10 = 0;
        if (r22 == 0) {
            long j11 = 0;
            for (int r23 = r12; r23 <= r02; r23++) {
                int r10 = r23 - r12;
                long j12 = j10 + (r18[r23] & 4294967295L) + (r20[r10] & 4294967295L);
                long j13 = j11 + (r19[r23] & 4294967295L) + (r21[r10] & 4294967295L);
                r18[r23] = (int) j12;
                j10 = j12 >>> 32;
                r19[r23] = (int) j13;
                j11 = j13 >>> 32;
            }
            return;
        }
        int r122 = r12;
        long j14 = 0;
        int r102 = 0;
        int r11 = 0;
        while (r122 <= r02) {
            int r13 = r122 - r12;
            int r14 = r20[r13];
            int r132 = r21[r13];
            long j15 = j10 + (r18[r122] & 4294967295L);
            long j16 = j15 + (((r102 >>> (-r22)) | (r14 << r22)) & 4294967295L);
            long j17 = j14 + (r19[r122] & 4294967295L) + (((r11 >>> r3) | (r132 << r22)) & 4294967295L);
            r18[r122] = (int) j16;
            j10 = j16 >>> 32;
            r19[r122] = (int) j17;
            j14 = j17 >>> 32;
            r122++;
            r02 = r16;
            r11 = r132;
            r102 = r14;
            r12 = r12;
        }
    }

    public static int getBitLength(int r22, int[] r32) {
        int r02 = r32[r22] >> 31;
        while (r22 > 0 && r32[r22] == r02) {
            r22--;
        }
        return ((r22 * 32) + 32) - Integers.numberOfLeadingZeros(r32[r22] ^ r02);
    }

    public static int getBitLengthPositive(int r12, int[] r22) {
        while (r12 > 0 && r22[r12] == 0) {
            r12--;
        }
        return ((r12 * 32) + 32) - Integers.numberOfLeadingZeros(r22[r12]);
    }

    public static boolean lessThan(int r32, int[] r42, int[] r52) {
        do {
            int r02 = r42[r32] - Integer.MIN_VALUE;
            int r22 = r52[r32] - Integer.MIN_VALUE;
            if (r02 < r22) {
                return true;
            }
            if (r02 > r22) {
                return false;
            }
            r32--;
        } while (r32 >= 0);
        return false;
    }

    public static void subShifted_NP(int r20, int r21, int[] r22, int[] r23, int[] r24, int[] r25) {
        int[] r32 = r25;
        int r52 = 0;
        long j10 = 0;
        if (r21 == 0) {
            long j11 = 0;
            while (r52 <= r20) {
                long j12 = r24[r52] & 4294967295L;
                long j13 = (j11 + j12) - (r23[r52] & 4294967295L);
                int r12 = (int) j13;
                j11 = j13 >> 32;
                r24[r52] = r12;
                long j14 = ((j10 + (r22[r52] & 4294967295L)) - j12) - (r12 & 4294967295L);
                r22[r52] = (int) j14;
                j10 = j14 >> 32;
                r52++;
            }
            return;
        }
        if (r21 < 32) {
            long j15 = 0;
            long j16 = 0;
            int r33 = 0;
            int r82 = 0;
            int r92 = 0;
            while (r52 <= r20) {
                int r14 = r24[r52];
                int r42 = -r21;
                long j17 = (j15 + (r22[r52] & 4294967295L)) - (((r33 >>> r42) | (r14 << r21)) & 4294967295L);
                int r34 = r23[r52];
                long j18 = (j16 + (r14 & 4294967295L)) - (((r82 >>> r42) | (r34 << r21)) & 4294967295L);
                int r83 = (int) j18;
                j16 = j18 >> 32;
                r24[r52] = r83;
                long j19 = j17 - (((r92 >>> r42) | (r83 << r21)) & 4294967295L);
                r22[r52] = (int) j19;
                j15 = j19 >> 32;
                r52++;
                r92 = r83;
                r82 = r34;
                r33 = r14;
            }
            return;
        }
        System.arraycopy(r24, 0, r32, 0, r20);
        int r43 = r21 >>> 5;
        int r13 = r21 & 31;
        if (r13 == 0) {
            long j20 = 0;
            for (int r15 = r43; r15 <= r20; r15++) {
                int r53 = r15 - r43;
                long j21 = (j20 + (r24[r15] & 4294967295L)) - (r23[r53] & 4294967295L);
                r24[r15] = (int) j21;
                j20 = j21 >> 32;
                long j22 = ((j10 + (r22[r15] & 4294967295L)) - (r32[r53] & 4294967295L)) - (r24[r53] & 4294967295L);
                r22[r15] = (int) j22;
                j10 = j22 >> 32;
            }
            return;
        }
        int r142 = r43;
        long j23 = 0;
        long j24 = 0;
        int r84 = 0;
        int r93 = 0;
        while (r142 <= r20) {
            int r152 = r142 - r43;
            int r16 = r32[r152];
            int r6 = -r13;
            int r17 = r43;
            long j25 = (j23 + (r22[r142] & 4294967295L)) - (((r16 << r13) | (r52 >>> r6)) & 4294967295L);
            int r54 = r23[r152];
            long j26 = (j24 + (r24[r142] & 4294967295L)) - (((r54 << r13) | (r84 >>> r6)) & 4294967295L);
            r24[r142] = (int) j26;
            j24 = j26 >> 32;
            int r44 = r24[r152];
            long j27 = j25 - (((r93 >>> r6) | (r44 << r13)) & 4294967295L);
            r22[r142] = (int) j27;
            j23 = j27 >> 32;
            r142++;
            r32 = r25;
            r93 = r44;
            r84 = r54;
            r52 = r16;
            r43 = r17;
        }
    }

    public static void subShifted_UV(int r16, int r17, int[] r18, int[] r19, int[] r20, int[] r21) {
        int r02 = r16;
        int r12 = r17 >>> 5;
        int r22 = r17 & 31;
        long j10 = 0;
        if (r22 == 0) {
            long j11 = 0;
            for (int r23 = r12; r23 <= r02; r23++) {
                int r10 = r23 - r12;
                long j12 = (j10 + (r18[r23] & 4294967295L)) - (r20[r10] & 4294967295L);
                long j13 = (j11 + (r19[r23] & 4294967295L)) - (r21[r10] & 4294967295L);
                r18[r23] = (int) j12;
                j10 = j12 >> 32;
                r19[r23] = (int) j13;
                j11 = j13 >> 32;
            }
            return;
        }
        int r122 = r12;
        long j14 = 0;
        int r102 = 0;
        int r11 = 0;
        while (r122 <= r02) {
            int r13 = r122 - r12;
            int r14 = r20[r13];
            int r132 = r21[r13];
            long j15 = j10 + (r18[r122] & 4294967295L);
            long j16 = j15 - (((r102 >>> (-r22)) | (r14 << r22)) & 4294967295L);
            long j17 = (j14 + (r19[r122] & 4294967295L)) - (((r11 >>> r3) | (r132 << r22)) & 4294967295L);
            r18[r122] = (int) j16;
            j10 = j16 >> 32;
            r19[r122] = (int) j17;
            j14 = j17 >> 32;
            r122++;
            r02 = r16;
            r11 = r132;
            r102 = r14;
            r12 = r12;
        }
    }
}
