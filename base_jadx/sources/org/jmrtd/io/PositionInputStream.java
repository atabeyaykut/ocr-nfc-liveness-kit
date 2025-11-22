package org.jmrtd.io;

import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class PositionInputStream extends InputStream {
    private static final Logger LOGGER = Logger.getLogger("org.jmrtd");
    private static final long MARK_NOT_SET = -1;
    private InputStream carrier;
    private long position = 0;
    private long markedPosition = -1;

    public PositionInputStream(InputStream inputStream) {
        this.carrier = inputStream;
    }

    public long getPosition() {
        return this.position;
    }

    @Override // java.io.InputStream
    public synchronized void mark(int r32) {
        this.carrier.mark(r32);
        this.markedPosition = this.position;
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.carrier.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int r02 = this.carrier.read();
        if (r02 >= 0) {
            this.position++;
        }
        return r02;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int r42, int r52) throws IOException {
        int r32 = this.carrier.read(bArr, r42, r52);
        this.position += r32;
        return r32;
    }

    @Override // java.io.InputStream
    public synchronized void reset() throws IOException {
        this.carrier.reset();
        this.position = this.markedPosition;
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        long jSkip = this.carrier.skip(j10);
        if (jSkip <= 0) {
            LOGGER.warning("Carrier (" + this.carrier.getClass().getCanonicalName() + ")'s skip(" + j10 + ") only skipped " + jSkip + ", position = " + this.position);
        }
        this.position += jSkip;
        return jSkip;
    }
}
