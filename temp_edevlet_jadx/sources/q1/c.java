package q1;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class c extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public final long f13298a;

    /* renamed from: b, reason: collision with root package name */
    public int f13299b;

    public c(@NonNull InputStream inputStream, long j10) {
        super(inputStream);
        this.f13298a = j10;
    }

    public final void a(int r72) throws IOException {
        int r02 = this.f13299b;
        if (r72 >= 0) {
            this.f13299b = r02 + r72;
            return;
        }
        long j10 = this.f13298a;
        if (j10 - r02 <= 0) {
            return;
        }
        throw new IOException("Failed to read all expected data, expected: " + j10 + ", but read: " + this.f13299b);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int available() throws IOException {
        return (int) Math.max(this.f13298a - this.f13299b, ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read() throws IOException {
        int r02;
        r02 = super.read();
        a(r02 >= 0 ? 1 : -1);
        return r02;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized int read(byte[] bArr, int r22, int r32) throws IOException {
        int r12;
        r12 = super.read(bArr, r22, r32);
        a(r12);
        return r12;
    }
}
