package org.bouncycastle.crypto.prng.drbg;

import java.util.Hashtable;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.pqc.crypto.sphincs.SPHINCSKeyParameters;
import org.bouncycastle.pqc.jcajce.spec.McElieceCCA2KeyGenParameterSpec;
import org.bouncycastle.util.Integers;

/* loaded from: classes2.dex */
class Utils {
    static final Hashtable maxSecurityStrengths;

    static {
        Hashtable hashtable = new Hashtable();
        maxSecurityStrengths = hashtable;
        hashtable.put(McElieceCCA2KeyGenParameterSpec.SHA1, Integers.valueOf(128));
        hashtable.put(McElieceCCA2KeyGenParameterSpec.SHA224, Integers.valueOf(192));
        hashtable.put("SHA-256", Integers.valueOf(256));
        hashtable.put(McElieceCCA2KeyGenParameterSpec.SHA384, Integers.valueOf(256));
        hashtable.put("SHA-512", Integers.valueOf(256));
        hashtable.put("SHA-512/224", Integers.valueOf(192));
        hashtable.put(SPHINCSKeyParameters.SHA512_256, Integers.valueOf(256));
    }

    public static int getMaxSecurityStrength(Digest digest) {
        return ((Integer) maxSecurityStrengths.get(digest.getAlgorithmName())).intValue();
    }

    public static int getMaxSecurityStrength(Mac mac) {
        String algorithmName = mac.getAlgorithmName();
        return ((Integer) maxSecurityStrengths.get(algorithmName.substring(0, algorithmName.indexOf("/")))).intValue();
    }

    public static byte[] hash_df(Digest digest, byte[] bArr, int r12) {
        int r02 = (r12 + 7) / 8;
        byte[] bArr2 = new byte[r02];
        int digestSize = r02 / digest.getDigestSize();
        int digestSize2 = digest.getDigestSize();
        byte[] bArr3 = new byte[digestSize2];
        int r52 = 1;
        int r6 = 0;
        for (int r72 = 0; r72 <= digestSize; r72++) {
            digest.update((byte) r52);
            digest.update((byte) (r12 >> 24));
            digest.update((byte) (r12 >> 16));
            digest.update((byte) (r12 >> 8));
            digest.update((byte) r12);
            digest.update(bArr, 0, bArr.length);
            digest.doFinal(bArr3, 0);
            int r82 = r72 * digestSize2;
            int r92 = r02 - r82;
            if (r92 > digestSize2) {
                r92 = digestSize2;
            }
            System.arraycopy(bArr3, 0, bArr2, r82, r92);
            r52++;
        }
        int r122 = r12 % 8;
        if (r122 != 0) {
            int r10 = 8 - r122;
            int r11 = 0;
            while (r6 != r02) {
                int r123 = bArr2[r6] & 255;
                bArr2[r6] = (byte) ((r11 << (8 - r10)) | (r123 >>> r10));
                r6++;
                r11 = r123;
            }
        }
        return bArr2;
    }

    public static boolean isTooLarge(byte[] bArr, int r12) {
        return bArr != null && bArr.length > r12;
    }
}
