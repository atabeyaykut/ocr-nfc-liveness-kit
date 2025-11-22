package org.bouncycastle.crypto.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes2.dex */
public class DigestInputStream extends FilterInputStream {
    protected Digest digest;

    public DigestInputStream(InputStream inputStream, Digest digest) {
        super(inputStream);
        this.digest = digest;
    }

    public Digest getDigest() {
        return this.digest;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int r02 = ((FilterInputStream) this).in.read();
        if (r02 >= 0) {
            this.digest.update((byte) r02);
        }
        return r02;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int r32, int r42) throws IOException {
        int r43 = ((FilterInputStream) this).in.read(bArr, r32, r42);
        if (r43 > 0) {
            this.digest.update(bArr, r32, r43);
        }
        return r43;
    }
}
