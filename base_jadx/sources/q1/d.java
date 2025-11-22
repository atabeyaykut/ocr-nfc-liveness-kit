package q1;

import androidx.annotation.GuardedBy;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class d extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("POOL")
    public static final ArrayDeque f13300c;

    /* renamed from: a, reason: collision with root package name */
    public InputStream f13301a;

    /* renamed from: b, reason: collision with root package name */
    public IOException f13302b;

    static {
        char[] cArr = m.f13318a;
        f13300c = new ArrayDeque(0);
    }

    public final void a() {
        this.f13302b = null;
        this.f13301a = null;
        ArrayDeque arrayDeque = f13300c;
        synchronized (arrayDeque) {
            arrayDeque.offer(this);
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f13301a.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f13301a.close();
    }

    @Override // java.io.InputStream
    public final void mark(int r22) {
        this.f13301a.mark(r22);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f13301a.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.f13301a.read();
        } catch (IOException e10) {
            this.f13302b = e10;
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.f13301a.read(bArr);
        } catch (IOException e10) {
            this.f13302b = e10;
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int r32, int r42) throws IOException {
        try {
            return this.f13301a.read(bArr, r32, r42);
        } catch (IOException e10) {
            this.f13302b = e10;
            throw e10;
        }
    }

    @Override // java.io.InputStream
    public final synchronized void reset() throws IOException {
        this.f13301a.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j10) throws IOException {
        try {
            return this.f13301a.skip(j10);
        } catch (IOException e10) {
            this.f13302b = e10;
            throw e10;
        }
    }
}
