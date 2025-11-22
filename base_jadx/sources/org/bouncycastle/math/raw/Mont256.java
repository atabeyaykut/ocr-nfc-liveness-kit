package org.bouncycastle.math.raw;

/* loaded from: classes2.dex */
public abstract class Mont256 {
    private static final long M = 4294967295L;

    public static int inverse32(int r22) {
        int r02 = (2 - (r22 * r22)) * r22;
        int r12 = (2 - (r22 * r02)) * r02;
        int r03 = (2 - (r22 * r12)) * r12;
        return (2 - (r22 * r03)) * r03;
    }

    public static void multAdd(int[] r27, int[] r28, int[] r29, int[] r30, int r31) {
        char c10 = 0;
        long j10 = r28[0] & 4294967295L;
        int r72 = 0;
        int r82 = 0;
        while (r72 < 8) {
            long j11 = r27[r72] & 4294967295L;
            long j12 = j11 * j10;
            long j13 = j10;
            long j14 = (((int) r10) * r31) & 4294967295L;
            int r19 = r72;
            int r20 = r82;
            long j15 = (r30[c10] & 4294967295L) * j14;
            long j16 = ((((j12 & 4294967295L) + (r29[c10] & 4294967295L)) + (j15 & 4294967295L)) >>> 32) + (j12 >>> 32) + (j15 >>> 32);
            int r73 = 1;
            for (int r83 = 8; r73 < r83; r83 = 8) {
                long j17 = (r28[r73] & 4294967295L) * j11;
                long j18 = (r30[r73] & 4294967295L) * j14;
                long j19 = (j17 & 4294967295L) + (j18 & 4294967295L) + (r29[r73] & 4294967295L) + j16;
                r29[r73 - 1] = (int) j19;
                j16 = (j19 >>> 32) + (j17 >>> 32) + (j18 >>> 32);
                r73++;
                j14 = j14;
            }
            long j20 = j16 + (r20 & 4294967295L);
            r29[7] = (int) j20;
            r82 = (int) (j20 >>> 32);
            r72 = r19 + 1;
            j10 = j13;
            c10 = 0;
        }
        if (r82 != 0 || Nat256.gte(r29, r30)) {
            Nat256.sub(r29, r30, r29);
        }
    }

    public static void multAddXF(int[] r26, int[] r27, int[] r28, int[] r29) {
        char c10 = 0;
        long j10 = r27[0] & 4294967295L;
        int r72 = 0;
        int r82 = 0;
        while (true) {
            if (r72 >= 8) {
                break;
            }
            long j11 = r26[r72] & 4294967295L;
            long j12 = (j11 * j10) + (r28[c10] & 4294967295L);
            long j13 = j12 & 4294967295L;
            long j14 = (j12 >>> 32) + j13;
            int r22 = 1;
            for (int r92 = 8; r22 < r92; r92 = 8) {
                long j15 = j10;
                long j16 = (r27[r22] & 4294967295L) * j11;
                long j17 = (r29[r22] & 4294967295L) * j13;
                long j18 = (j16 & 4294967295L) + (j17 & 4294967295L) + (r28[r22] & 4294967295L) + j14;
                r28[r22 - 1] = (int) j18;
                j14 = (j18 >>> 32) + (j16 >>> 32) + (j17 >>> 32);
                r22++;
                j10 = j15;
                j11 = j11;
                j13 = j13;
            }
            long j19 = j14 + (r82 & 4294967295L);
            r28[7] = (int) j19;
            r82 = (int) (j19 >>> 32);
            r72++;
            j10 = j10;
            c10 = 0;
        }
        if (r82 != 0 || Nat256.gte(r28, r29)) {
            Nat256.sub(r28, r29, r28);
        }
    }

    public static void reduce(int[] r17, int[] r18, int r19) {
        char c10 = 0;
        int r32 = 0;
        while (r32 < 8) {
            long j10 = (r5 * r19) & 4294967295L;
            long j11 = (((r18[c10] & 4294967295L) * j10) + (r17[c10] & 4294967295L)) >>> 32;
            int r12 = 1;
            while (r12 < 8) {
                long j12 = ((r18[r12] & 4294967295L) * j10) + (r17[r12] & 4294967295L) + j11;
                r17[r12 - 1] = (int) j12;
                j11 = j12 >>> 32;
                r12++;
                r32 = r32;
            }
            r17[7] = (int) j11;
            r32++;
            c10 = 0;
        }
        if (Nat256.gte(r17, r18)) {
            Nat256.sub(r17, r18, r17);
        }
    }

    public static void reduceXF(int[] r14, int[] r15) {
        for (int r12 = 0; r12 < 8; r12++) {
            long j10 = r14[0] & 4294967295L;
            long j11 = j10;
            for (int r72 = 1; r72 < 8; r72++) {
                long j12 = ((r15[r72] & 4294967295L) * j10) + (r14[r72] & 4294967295L) + j11;
                r14[r72 - 1] = (int) j12;
                j11 = j12 >>> 32;
            }
            r14[7] = (int) j11;
        }
        if (Nat256.gte(r14, r15)) {
            Nat256.sub(r14, r15, r14);
        }
    }
}
