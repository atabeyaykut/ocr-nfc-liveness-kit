package org.bouncycastle.crypto.digests;

import androidx.appcompat.graphics.drawable.a;
import org.bouncycastle.crypto.CryptoServiceProperties;
import org.bouncycastle.crypto.CryptoServicePurpose;
import org.bouncycastle.crypto.Xof;

/* loaded from: classes2.dex */
public class SHAKEDigest extends KeccakDigest implements Xof {
    public SHAKEDigest() {
        this(128);
    }

    public SHAKEDigest(int r22) {
        super(checkBitLength(r22), CryptoServicePurpose.ANY);
    }

    public SHAKEDigest(int r12, CryptoServicePurpose cryptoServicePurpose) {
        super(checkBitLength(r12), cryptoServicePurpose);
    }

    public SHAKEDigest(CryptoServicePurpose cryptoServicePurpose) {
        this(128, cryptoServicePurpose);
    }

    public SHAKEDigest(SHAKEDigest sHAKEDigest) {
        super(sHAKEDigest);
    }

    private static int checkBitLength(int r32) {
        if (r32 == 128 || r32 == 256) {
            return r32;
        }
        throw new IllegalArgumentException(a.f("'bitStrength' ", r32, " not supported for SHAKE"));
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest
    public CryptoServiceProperties cryptoServiceProperties() {
        return Utils.getDefaultProperties(this, this.purpose);
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r32) {
        return doFinal(bArr, r32, getDigestSize());
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest
    public int doFinal(byte[] bArr, int r82, byte b10, int r10) {
        return doFinal(bArr, r82, getDigestSize(), b10, r10);
    }

    @Override // org.bouncycastle.crypto.Xof
    public int doFinal(byte[] bArr, int r22, int r32) {
        int r12 = doOutput(bArr, r22, r32);
        reset();
        return r12;
    }

    public int doFinal(byte[] bArr, int r42, int r52, byte b10, int r72) {
        if (r72 < 0 || r72 > 7) {
            throw new IllegalArgumentException("'partialBits' must be in the range [0,7]");
        }
        int r6 = (b10 & ((1 << r72) - 1)) | (15 << r72);
        int r73 = r72 + 4;
        if (r73 >= 8) {
            absorb((byte) r6);
            r73 -= 8;
            r6 >>>= 8;
        }
        if (r73 > 0) {
            absorbBits(r6, r73);
        }
        squeeze(bArr, r42, r52 * 8);
        reset();
        return r52;
    }

    public int doOutput(byte[] bArr, int r6, int r72) {
        if (!this.squeezing) {
            absorbBits(15, 4);
        }
        squeeze(bArr, r6, r72 * 8);
        return r72;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "SHAKE" + this.fixedOutputLength;
    }

    @Override // org.bouncycastle.crypto.digests.KeccakDigest, org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.fixedOutputLength / 4;
    }
}
