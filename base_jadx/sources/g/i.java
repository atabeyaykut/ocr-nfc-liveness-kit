package g;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class i extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f5721a;

    /* renamed from: b, reason: collision with root package name */
    public int f5722b = 1073741824;

    public i(InputStream inputStream) {
        this.f5721a = inputStream;
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.f5722b;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5721a.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        int r02 = this.f5721a.read();
        if (r02 == -1) {
            this.f5722b = 0;
        }
        return r02;
    }

    @Override // java.io.InputStream
    public final long skip(long j10) {
        return this.f5721a.skip(j10);
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int r22 = this.f5721a.read(bArr);
        if (r22 == -1) {
            this.f5722b = 0;
        }
        return r22;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int r32, int r42) throws IOException {
        int r22 = this.f5721a.read(bArr, r32, r42);
        if (r22 == -1) {
            this.f5722b = 0;
        }
        return r22;
    }
}
