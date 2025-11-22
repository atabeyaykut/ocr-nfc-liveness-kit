package org.bouncycastle.crypto.digests;

import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.io.LimitedBuffer;

/* loaded from: classes2.dex */
public class Prehash implements Digest {
    private final String algorithmName;
    private final LimitedBuffer buf;

    private Prehash(Digest digest) {
        this.algorithmName = digest.getAlgorithmName();
        this.buf = new LimitedBuffer(digest.getDigestSize());
    }

    public static Prehash forDigest(Digest digest) {
        return new Prehash(digest);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int r42) {
        try {
            if (getDigestSize() == this.buf.size()) {
                return this.buf.copyTo(bArr, r42);
            }
            throw new IllegalStateException("Incorrect prehash size");
        } finally {
            reset();
        }
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return this.algorithmName;
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.buf.limit();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.buf.reset();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b10) {
        this.buf.write(b10);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int r32, int r42) {
        this.buf.write(bArr, r32, r42);
    }
}
