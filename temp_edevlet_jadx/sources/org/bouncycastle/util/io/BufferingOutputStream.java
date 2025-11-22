package org.bouncycastle.util.io;

import java.io.IOException;
import java.io.OutputStream;
import org.bouncycastle.util.Arrays;

/* loaded from: classes2.dex */
public class BufferingOutputStream extends OutputStream {
    private final byte[] buf;
    private int bufOff;
    private final OutputStream other;

    public BufferingOutputStream(OutputStream outputStream) {
        this.other = outputStream;
        this.buf = new byte[4096];
    }

    public BufferingOutputStream(OutputStream outputStream, int r22) {
        this.other = outputStream;
        this.buf = new byte[r22];
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
        this.other.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        this.other.write(this.buf, 0, this.bufOff);
        this.bufOff = 0;
        Arrays.fill(this.buf, (byte) 0);
    }

    @Override // java.io.OutputStream
    public void write(int r42) throws IOException {
        byte[] bArr = this.buf;
        int r12 = this.bufOff;
        int r22 = r12 + 1;
        this.bufOff = r22;
        bArr[r12] = (byte) r42;
        if (r22 == bArr.length) {
            flush();
        }
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int r52, int r6) throws IOException {
        byte[] bArr2;
        byte[] bArr3 = this.buf;
        int length = bArr3.length;
        int r22 = this.bufOff;
        if (r6 < length - r22) {
            System.arraycopy(bArr, r52, bArr3, r22, r6);
        } else {
            int length2 = bArr3.length - r22;
            System.arraycopy(bArr, r52, bArr3, r22, length2);
            this.bufOff += length2;
            flush();
            int length3 = r52 + length2;
            r6 -= length2;
            while (true) {
                bArr2 = this.buf;
                if (r6 < bArr2.length) {
                    break;
                }
                this.other.write(bArr, length3, bArr2.length);
                byte[] bArr4 = this.buf;
                length3 += bArr4.length;
                r6 -= bArr4.length;
            }
            if (r6 <= 0) {
                return;
            } else {
                System.arraycopy(bArr, length3, bArr2, this.bufOff, r6);
            }
        }
        this.bufOff += r6;
    }
}
