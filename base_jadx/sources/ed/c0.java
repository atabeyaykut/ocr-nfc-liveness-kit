package ed;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class c0 extends InputStream {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ d0 f5299a;

    public c0(d0 d0Var) {
        this.f5299a = d0Var;
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        d0 d0Var = this.f5299a;
        if (d0Var.f5302c) {
            throw new IOException("closed");
        }
        return (int) Math.min(d0Var.f5301b.f5304b, Integer.MAX_VALUE);
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5299a.close();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        d0 d0Var = this.f5299a;
        if (d0Var.f5302c) {
            throw new IOException("closed");
        }
        e eVar = d0Var.f5301b;
        if (eVar.f5304b == 0 && d0Var.f5300a.w(eVar, 8192L) == -1) {
            return -1;
        }
        return d0Var.f5301b.readByte() & 255;
    }

    public final String toString() {
        return this.f5299a + ".inputStream()";
    }

    @Override // java.io.InputStream
    public final int read(byte[] data, int r10, int r11) throws IOException {
        kotlin.jvm.internal.h.f(data, "data");
        d0 d0Var = this.f5299a;
        if (d0Var.f5302c) {
            throw new IOException("closed");
        }
        a6.a.g(data.length, r10, r11);
        e eVar = d0Var.f5301b;
        if (eVar.f5304b == 0 && d0Var.f5300a.w(eVar, 8192L) == -1) {
            return -1;
        }
        return d0Var.f5301b.read(data, r10, r11);
    }
}
