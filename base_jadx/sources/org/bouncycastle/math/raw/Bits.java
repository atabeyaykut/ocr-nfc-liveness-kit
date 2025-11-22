package org.bouncycastle.math.raw;

/* loaded from: classes2.dex */
public abstract class Bits {
    public static int bitPermuteStep(int r12, int r22, int r32) {
        int r23 = r22 & ((r12 >>> r32) ^ r12);
        return r12 ^ (r23 ^ (r23 << r32));
    }

    public static long bitPermuteStep(long j10, long j11, int r6) {
        long j12 = j11 & ((j10 >>> r6) ^ j10);
        return j10 ^ (j12 ^ (j12 << r6));
    }

    public static int bitPermuteStepSimple(int r12, int r22, int r32) {
        return ((r12 >>> r32) & r22) | ((r12 & r22) << r32);
    }

    public static long bitPermuteStepSimple(long j10, long j11, int r6) {
        return ((j10 >>> r6) & j11) | ((j10 & j11) << r6);
    }
}
