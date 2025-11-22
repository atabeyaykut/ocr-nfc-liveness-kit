package org.bouncycastle.util.io;

import java.io.OutputStream;

/* loaded from: classes2.dex */
public class LimitedBuffer extends OutputStream {
    private final byte[] buf;
    private int count = 0;

    public LimitedBuffer(int r12) {
        this.buf = new byte[r12];
    }

    public int copyTo(byte[] bArr, int r52) {
        System.arraycopy(this.buf, 0, bArr, r52, this.count);
        return this.count;
    }

    public int limit() {
        return this.buf.length;
    }

    public void reset() {
        this.count = 0;
    }

    public int size() {
        return this.count;
    }

    @Override // java.io.OutputStream
    public void write(int r42) {
        byte[] bArr = this.buf;
        int r12 = this.count;
        this.count = r12 + 1;
        bArr[r12] = (byte) r42;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        System.arraycopy(bArr, 0, this.buf, this.count, bArr.length);
        this.count += bArr.length;
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int r42, int r52) {
        System.arraycopy(bArr, r42, this.buf, this.count, r52);
        this.count += r52;
    }
}
