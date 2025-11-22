package org.bouncycastle.pqc.crypto.crystals.dilithium;

/* loaded from: classes2.dex */
class Reduce {
    public static int conditionalAddQ(int r22) {
        return r22 + ((r22 >> 31) & DilithiumEngine.DilithiumQ);
    }

    public static int montgomeryReduce(long j10) {
        return (int) ((j10 - (((int) (58728449 * j10)) * 8380417)) >>> 32);
    }

    public static int reduce32(int r22) {
        return r22 - (((4194304 + r22) >> 23) * DilithiumEngine.DilithiumQ);
    }
}
