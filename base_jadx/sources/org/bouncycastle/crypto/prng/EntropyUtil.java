package org.bouncycastle.crypto.prng;

/* loaded from: classes2.dex */
public class EntropyUtil {
    public static byte[] generateSeed(EntropySource entropySource, int r82) {
        byte[] bArr = new byte[r82];
        if (r82 * 8 <= entropySource.entropySize()) {
            System.arraycopy(entropySource.getEntropy(), 0, bArr, 0, r82);
        } else {
            int r12 = entropySource.entropySize() / 8;
            for (int r22 = 0; r22 < r82; r22 += r12) {
                byte[] entropy = entropySource.getEntropy();
                int r6 = r82 - r22;
                if (entropy.length <= r6) {
                    System.arraycopy(entropy, 0, bArr, r22, entropy.length);
                } else {
                    System.arraycopy(entropy, 0, bArr, r22, r6);
                }
            }
        }
        return bArr;
    }
}
