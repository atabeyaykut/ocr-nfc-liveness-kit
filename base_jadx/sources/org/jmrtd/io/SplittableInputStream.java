package org.jmrtd.io;

import java.io.IOException;
import java.io.InputStream;
import org.jmrtd.io.InputStreamBuffer;

/* loaded from: classes2.dex */
public class SplittableInputStream extends InputStream {
    private InputStreamBuffer.SubInputStream carrier;
    private InputStreamBuffer inputStreamBuffer;

    public SplittableInputStream(InputStream inputStream, int r32) {
        InputStreamBuffer inputStreamBuffer = new InputStreamBuffer(inputStream, r32);
        this.inputStreamBuffer = inputStreamBuffer;
        this.carrier = inputStreamBuffer.getInputStream();
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.carrier.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.carrier.close();
    }

    public int getBytesBuffered() {
        return this.inputStreamBuffer.getBytesBuffered();
    }

    public InputStream getInputStream(int r72) {
        try {
            InputStreamBuffer.SubInputStream inputStream = this.inputStreamBuffer.getInputStream();
            long jSkip = 0;
            while (true) {
                long j10 = r72;
                if (jSkip >= j10) {
                    return inputStream;
                }
                jSkip += inputStream.skip(j10 - jSkip);
            }
        } catch (IOException e10) {
            throw new IllegalStateException(e10);
        }
    }

    public int getLength() {
        return this.inputStreamBuffer.getLength();
    }

    public int getPosition() {
        return this.carrier.getPosition();
    }

    @Override // java.io.InputStream
    public synchronized void mark(int r22) {
        this.carrier.mark(r22);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.carrier.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.carrier.read();
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.carrier.reset();
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        return this.carrier.skip(j10);
    }

    public void updateFrom(SplittableInputStream splittableInputStream) {
        this.inputStreamBuffer.updateFrom(splittableInputStream.inputStreamBuffer);
    }
}
