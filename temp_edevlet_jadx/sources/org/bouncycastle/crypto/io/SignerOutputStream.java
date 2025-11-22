package org.bouncycastle.crypto.io;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.crypto.Signer;

/* loaded from: classes2.dex */
public class SignerOutputStream extends OutputStream {
    protected Signer signer;

    public SignerOutputStream(Signer signer) {
        this.signer = signer;
    }

    public Signer getSigner() {
        return this.signer;
    }

    @Override // java.io.OutputStream
    public void write(int r22) throws IOException {
        this.signer.update((byte) r22);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int r32, int r42) throws IOException {
        this.signer.update(bArr, r32, r42);
    }
}
