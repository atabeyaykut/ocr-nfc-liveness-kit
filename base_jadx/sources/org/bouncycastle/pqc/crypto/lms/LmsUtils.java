package org.bouncycastle.pqc.crypto.lms;

import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
class LmsUtils {
    public static void byteArray(byte[] bArr, int r12, int r22, Digest digest) {
        digest.update(bArr, r12, r22);
    }

    public static void byteArray(byte[] bArr, Digest digest) {
        digest.update(bArr, 0, bArr.length);
    }

    public static int calculateStrength(LMSParameters lMSParameters) {
        if (lMSParameters == null) {
            throw new NullPointerException("lmsParameters cannot be null");
        }
        LMSigParameters lMSigParam = lMSParameters.getLMSigParam();
        return lMSigParam.getM() * (1 << lMSigParam.getH());
    }

    public static void u16str(short s7, Digest digest) {
        digest.update((byte) (s7 >>> 8));
        digest.update((byte) s7);
    }

    public static void u32str(int r12, Digest digest) {
        digest.update((byte) (r12 >>> 24));
        digest.update((byte) (r12 >>> 16));
        digest.update((byte) (r12 >>> 8));
        digest.update((byte) r12);
    }
}
