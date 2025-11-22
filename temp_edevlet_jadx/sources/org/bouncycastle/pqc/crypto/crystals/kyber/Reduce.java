package org.bouncycastle.pqc.crypto.crystals.kyber;

/* loaded from: classes2.dex */
class Reduce {
    public static short barretReduce(short s7) {
        return (short) (s7 - ((short) (((short) ((((short) 20159) * s7) >> 26)) * 3329)));
    }

    public static short conditionalSubQ(short s7) {
        short s10 = (short) (s7 - 3329);
        return (short) (s10 + ((s10 >> 15) & KyberEngine.KyberQ));
    }

    public static short montgomeryReduce(int r12) {
        return (short) ((r12 - (((short) (KyberEngine.KyberQinv * r12)) * 3329)) >> 16);
    }
}
