package org.bouncycastle.pqc.legacy.crypto.qtesla;

import org.bouncycastle.crypto.digests.CSHAKEDigest;
import org.bouncycastle.crypto.digests.SHAKEDigest;

/* loaded from: classes2.dex */
class HashUtils {
    static final int SECURE_HASH_ALGORITHM_KECCAK_128_RATE = 168;
    static final int SECURE_HASH_ALGORITHM_KECCAK_256_RATE = 136;

    public static void customizableSecureHashAlgorithmKECCAK128Simple(byte[] bArr, int r52, int r6, short s7, byte[] bArr2, int r92, int r10) {
        CSHAKEDigest cSHAKEDigest = new CSHAKEDigest(128, null, new byte[]{(byte) s7, (byte) (s7 >> 8)});
        cSHAKEDigest.update(bArr2, r92, r10);
        cSHAKEDigest.doFinal(bArr, r52, r6);
    }

    public static void customizableSecureHashAlgorithmKECCAK256Simple(byte[] bArr, int r52, int r6, short s7, byte[] bArr2, int r92, int r10) {
        CSHAKEDigest cSHAKEDigest = new CSHAKEDigest(256, null, new byte[]{(byte) s7, (byte) (s7 >> 8)});
        cSHAKEDigest.update(bArr2, r92, r10);
        cSHAKEDigest.doFinal(bArr, r52, r6);
    }

    public static void secureHashAlgorithmKECCAK128(byte[] bArr, int r32, int r42, byte[] bArr2, int r6, int r72) {
        SHAKEDigest sHAKEDigest = new SHAKEDigest(128);
        sHAKEDigest.update(bArr2, r6, r72);
        sHAKEDigest.doFinal(bArr, r32, r42);
    }

    public static void secureHashAlgorithmKECCAK256(byte[] bArr, int r32, int r42, byte[] bArr2, int r6, int r72) {
        SHAKEDigest sHAKEDigest = new SHAKEDigest(256);
        sHAKEDigest.update(bArr2, r6, r72);
        sHAKEDigest.doFinal(bArr, r32, r42);
    }
}
