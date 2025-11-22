package org.bouncycastle.crypto.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import org.bouncycastle.crypto.Signer;

/* loaded from: classes2.dex */
public class SignerInputStream extends FilterInputStream {
    protected Signer signer;

    public SignerInputStream(InputStream inputStream, Signer signer) {
        super(inputStream);
        this.signer = signer;
    }

    public Signer getSigner() {
        return this.signer;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int r02 = ((FilterInputStream) this).in.read();
        if (r02 >= 0) {
            this.signer.update((byte) r02);
        }
        return r02;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int r32, int r42) throws IOException {
        int r43 = ((FilterInputStream) this).in.read(bArr, r32, r42);
        if (r43 > 0) {
            this.signer.update(bArr, r32, r43);
        }
        return r43;
    }
}
