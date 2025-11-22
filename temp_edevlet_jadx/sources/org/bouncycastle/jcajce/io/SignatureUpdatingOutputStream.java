package org.bouncycastle.jcajce.io;

import java.io.IOException;
import java.io.OutputStream;
import java.security.Signature;
import java.security.SignatureException;
import org.bouncycastle.util.Exceptions;

/* loaded from: classes2.dex */
class SignatureUpdatingOutputStream extends OutputStream {
    private Signature sig;

    public SignatureUpdatingOutputStream(Signature signature) {
        this.sig = signature;
    }

    @Override // java.io.OutputStream
    public void write(int r22) throws SignatureException, IOException {
        try {
            this.sig.update((byte) r22);
        } catch (SignatureException e10) {
            throw Exceptions.ioException(e10.getMessage(), e10);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws SignatureException, IOException {
        try {
            this.sig.update(bArr);
        } catch (SignatureException e10) {
            throw Exceptions.ioException(e10.getMessage(), e10);
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int r32, int r42) throws SignatureException, IOException {
        try {
            this.sig.update(bArr, r32, r42);
        } catch (SignatureException e10) {
            throw Exceptions.ioException(e10.getMessage(), e10);
        }
    }
}
