package org.bouncycastle.jcajce.provider.digest;

import java.security.DigestException;
import java.security.MessageDigest;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
public class BCMessageDigest extends MessageDigest {
    protected Digest digest;
    protected int digestSize;

    public BCMessageDigest(Digest digest) {
        super(digest.getAlgorithmName());
        this.digest = digest;
        this.digestSize = digest.getDigestSize();
    }

    @Override // java.security.MessageDigestSpi
    public int engineDigest(byte[] bArr, int r32, int r42) throws DigestException {
        int r02 = this.digestSize;
        if (r42 < r02) {
            throw new DigestException("partial digests not returned");
        }
        if (bArr.length - r32 < r02) {
            throw new DigestException("insufficient space in the output buffer to store the digest");
        }
        this.digest.doFinal(bArr, r32);
        return this.digestSize;
    }

    @Override // java.security.MessageDigestSpi
    public byte[] engineDigest() {
        byte[] bArr = new byte[this.digestSize];
        this.digest.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.security.MessageDigestSpi
    public int engineGetDigestLength() {
        return this.digestSize;
    }

    @Override // java.security.MessageDigestSpi
    public void engineReset() {
        this.digest.reset();
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte b10) {
        this.digest.update(b10);
    }

    @Override // java.security.MessageDigestSpi
    public void engineUpdate(byte[] bArr, int r32, int r42) {
        this.digest.update(bArr, r32, r42);
    }
}
