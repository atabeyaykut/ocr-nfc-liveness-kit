package q1;

import androidx.annotation.NonNull;
import java.io.FilterInputStream;
import java.io.IOException;

/* loaded from: classes.dex */
public final class j extends FilterInputStream {

    /* renamed from: a, reason: collision with root package name */
    public int f13314a;

    public j(@NonNull d dVar) {
        super(dVar);
        this.f13314a = Integer.MIN_VALUE;
    }

    public final long a(long j10) {
        int r02 = this.f13314a;
        if (r02 == 0) {
            return -1L;
        }
        return (r02 == Integer.MIN_VALUE || j10 <= ((long) r02)) ? j10 : r02;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        int r02 = this.f13314a;
        return r02 == Integer.MIN_VALUE ? super.available() : Math.min(r02, super.available());
    }

    public final void b(long j10) {
        int r02 = this.f13314a;
        if (r02 == Integer.MIN_VALUE || j10 == -1) {
            return;
        }
        this.f13314a = (int) (r02 - j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int r12) {
        super.mark(r12);
        this.f13314a = r12;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (a(1L) == -1) {
            return -1;
        }
        int r22 = super.read();
        b(1L);
        return r22;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(@NonNull byte[] bArr, int r42, int r52) throws IOException {
        int r53 = (int) a(r52);
        if (r53 == -1) {
            return -1;
        }
        int r32 = super.read(bArr, r42, r53);
        b(r32);
        return r32;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() throws IOException {
        super.reset();
        this.f13314a = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j10) throws IOException {
        long jA = a(j10);
        if (jA == -1) {
            return 0L;
        }
        long jSkip = super.skip(jA);
        b(jSkip);
        return jSkip;
    }
}
