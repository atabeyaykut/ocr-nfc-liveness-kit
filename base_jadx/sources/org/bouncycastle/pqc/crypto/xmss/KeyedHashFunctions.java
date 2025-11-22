package org.bouncycastle.pqc.crypto.xmss;

import org.bouncycastle.asn1.ASN1ObjectIdentifier;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Xof;

/* loaded from: classes2.dex */
final class KeyedHashFunctions {
    private final Digest digest;
    private final int digestSize;

    public KeyedHashFunctions(ASN1ObjectIdentifier aSN1ObjectIdentifier, int r22) {
        if (aSN1ObjectIdentifier == null) {
            throw new NullPointerException("digest == null");
        }
        this.digest = DigestUtil.getDigest(aSN1ObjectIdentifier);
        this.digestSize = r22;
    }

    private byte[] coreDigest(int r42, byte[] bArr, byte[] bArr2) {
        byte[] bytesBigEndian = XMSSUtil.toBytesBigEndian(r42, this.digestSize);
        this.digest.update(bytesBigEndian, 0, bytesBigEndian.length);
        this.digest.update(bArr, 0, bArr.length);
        this.digest.update(bArr2, 0, bArr2.length);
        int r43 = this.digestSize;
        byte[] bArr3 = new byte[r43];
        Digest digest = this.digest;
        if (digest instanceof Xof) {
            ((Xof) digest).doFinal(bArr3, 0, r43);
        } else {
            digest.doFinal(bArr3, 0);
        }
        return bArr3;
    }

    public byte[] F(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int r12 = this.digestSize;
        if (length != r12) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == r12) {
            return coreDigest(0, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    public byte[] H(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int r12 = this.digestSize;
        if (length != r12) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == r12 * 2) {
            return coreDigest(1, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong in length");
    }

    public byte[] HMsg(byte[] bArr, byte[] bArr2) {
        if (bArr.length == this.digestSize * 3) {
            return coreDigest(2, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong key length");
    }

    public byte[] PRF(byte[] bArr, byte[] bArr2) {
        if (bArr.length != this.digestSize) {
            throw new IllegalArgumentException("wrong key length");
        }
        if (bArr2.length == 32) {
            return coreDigest(3, bArr, bArr2);
        }
        throw new IllegalArgumentException("wrong address length");
    }
}
