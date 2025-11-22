package org.bouncycastle.pqc.crypto.newhope;

import org.bouncycastle.crypto.hpke.HPKE;

/* loaded from: classes2.dex */
class Reduce {
    static final int QInv = 12287;
    static final int RLog = 18;
    static final int RMask = 262143;

    public static short barrett(short s7) {
        int r12 = s7 & HPKE.aead_EXPORT_ONLY;
        return (short) (r12 - (((r12 * 5) >>> 16) * 12289));
    }

    public static short montgomery(int r22) {
        return (short) (((((r22 * QInv) & RMask) * 12289) + r22) >>> 18);
    }
}
