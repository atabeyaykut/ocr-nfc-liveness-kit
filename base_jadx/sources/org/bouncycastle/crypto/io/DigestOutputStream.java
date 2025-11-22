package org.bouncycastle.crypto.io;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
public class DigestOutputStream extends OutputStream {
    protected Digest digest;

    public DigestOutputStream(Digest digest) {
        this.digest = digest;
    }

    public byte[] getDigest() {
        byte[] bArr = new byte[this.digest.getDigestSize()];
        this.digest.doFinal(bArr, 0);
        return bArr;
    }

    @Override // java.io.OutputStream
    public void write(int r22) throws IOException {
        this.digest.update((byte) r22);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int r32, int r42) throws IOException {
        this.digest.update(bArr, r32, r42);
    }
}
