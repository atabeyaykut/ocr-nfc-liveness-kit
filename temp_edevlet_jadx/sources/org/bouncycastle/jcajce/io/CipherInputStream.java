package org.bouncycastle.jcajce.io;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import org.bouncycastle.crypto.io.InvalidCipherTextIOException;

/* loaded from: classes2.dex */
public class CipherInputStream extends FilterInputStream {
    private byte[] buf;
    private int bufOff;
    private final Cipher cipher;
    private boolean finalized;
    private final byte[] inputBuffer;
    private int maxBuf;

    public CipherInputStream(InputStream inputStream, Cipher cipher) {
        super(inputStream);
        this.inputBuffer = new byte[512];
        this.finalized = false;
        this.cipher = cipher;
    }

    private byte[] finaliseCipher() throws InvalidCipherTextIOException {
        try {
            if (this.finalized) {
                return null;
            }
            this.finalized = true;
            return this.cipher.doFinal();
        } catch (GeneralSecurityException e10) {
            throw new InvalidCipherTextIOException("Error finalising cipher", e10);
        }
    }

    private int nextChunk() throws IOException {
        if (this.finalized) {
            return -1;
        }
        this.bufOff = 0;
        this.maxBuf = 0;
        while (true) {
            int r22 = this.maxBuf;
            if (r22 != 0) {
                return r22;
            }
            int r23 = ((FilterInputStream) this).in.read(this.inputBuffer);
            if (r23 == -1) {
                byte[] bArrFinaliseCipher = finaliseCipher();
                this.buf = bArrFinaliseCipher;
                if (bArrFinaliseCipher == null || bArrFinaliseCipher.length == 0) {
                    return -1;
                }
                int length = bArrFinaliseCipher.length;
                this.maxBuf = length;
                return length;
            }
            byte[] bArrUpdate = this.cipher.update(this.inputBuffer, 0, r23);
            this.buf = bArrUpdate;
            if (bArrUpdate != null) {
                this.maxBuf = bArrUpdate.length;
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        return this.maxBuf - this.bufOff;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            ((FilterInputStream) this).in.close();
            this.bufOff = 0;
            this.maxBuf = 0;
        } finally {
            if (!this.finalized) {
                finaliseCipher();
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int r12) {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (this.bufOff >= this.maxBuf && nextChunk() < 0) {
            return -1;
        }
        byte[] bArr = this.buf;
        int r12 = this.bufOff;
        this.bufOff = r12 + 1;
        return bArr[r12] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int r42, int r52) throws IOException {
        if (this.bufOff >= this.maxBuf && nextChunk() < 0) {
            return -1;
        }
        int r53 = Math.min(r52, available());
        System.arraycopy(this.buf, this.bufOff, bArr, r42, r53);
        this.bufOff += r53;
        return r53;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        if (j10 <= 0) {
            return 0L;
        }
        int r52 = (int) Math.min(j10, available());
        this.bufOff += r52;
        return r52;
    }
}
