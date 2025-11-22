package k4;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class f extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public long f8744a;

    /* renamed from: b, reason: collision with root package name */
    public long f8745b;

    public f(InputStream inputStream) {
        super(inputStream);
        this.f8745b = -1L;
        inputStream.getClass();
        this.f8744a = 1048577L;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        return (int) Math.min(((FilterInputStream) this).in.available(), this.f8744a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int r32) {
        ((FilterInputStream) this).in.mark(r32);
        this.f8745b = this.f8744a;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (this.f8744a == 0) {
            return -1;
        }
        int r02 = ((FilterInputStream) this).in.read();
        if (r02 != -1) {
            this.f8744a--;
        }
        return r02;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int r82, int r92) throws IOException {
        long j10 = this.f8744a;
        if (j10 == 0) {
            return -1;
        }
        int r72 = ((FilterInputStream) this).in.read(bArr, r82, (int) Math.min(r92, j10));
        if (r72 != -1) {
            this.f8744a -= r72;
        }
        return r72;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        if (!((FilterInputStream) this).in.markSupported()) {
            throw new IOException("Mark not supported");
        }
        if (this.f8745b == -1) {
            throw new IOException("Mark not set");
        }
        ((FilterInputStream) this).in.reset();
        this.f8744a = this.f8745b;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jSkip = ((FilterInputStream) this).in.skip(Math.min(j10, this.f8744a));
        this.f8744a -= jSkip;
        return jSkip;
    }
}
