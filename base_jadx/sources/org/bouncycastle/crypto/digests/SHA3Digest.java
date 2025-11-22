package org.bouncycastle.crypto.digests;

import androidx.appcompat.graphics.drawable.a;
import org.bouncycastle.crypto.CryptoServicePurpose;

/* loaded from: classes2.dex */
public class SHA3Digest extends KeccakDigest {
    public SHA3Digest() {
        this(256, CryptoServicePurpose.ANY);
    }

    public SHA3Digest(int r22) {
        super(checkBitLength(r22), CryptoServicePurpose.ANY);
    }

    public SHA3Digest(int r12, CryptoServicePurpose cryptoServicePurpose) {
        super(checkBitLength(r12), cryptoServicePurpose);
    }

    public SHA3Digest(CryptoServicePurpose cryptoServicePurpose) {
        this(256, cryptoServicePurpose);
    }

    public SHA3Digest(SHA3Digest sHA3Digest) {
        super(sHA3Digest);
    }

    private static int checkBitLength(int r32) {
        if (r32 == 224 || r32 == 256 || r32 == 384 || r32 == 512) {
            return r32;
        }
        throw new IllegalArgumentException(a.f("'bitLength' ", r32, " not supported for SHA-3"));
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r32) {
        absorbBits(2, 2);
        return super.doFinal(bArr, r32);
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest
    public int doFinal(byte[] bArr, int r42, byte b10, int r6) {
        if (r6 < 0 || r6 > 7) {
            throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
        }
        int r52 = (b10 & ((1 << r6) - 1)) | (2 << r6);
        int r62 = r6 + 2;
        if (r62 >= 8) {
            absorb((byte) r52);
            r62 -= 8;
            r52 >>>= 8;
        }
        return super.doFinal(bArr, r42, (byte) r52, r62);
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHA3-" + this.fixedOutputLength;
    }
}
