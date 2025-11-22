package ed;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public final class y implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final OutputStream f5361a;

    /* renamed from: b, reason: collision with root package name */
    public final k0 f5362b;

    public y(OutputStream outputStream, k0 k0Var) {
        this.f5361a = outputStream;
        this.f5362b = k0Var;
    }

    @Override // ed.h0
    public final void M(e source, long j10) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        a6.a.g(source.f5304b, 0L, j10);
        while (j10 > 0) {
            this.f5362b.f();
            e0 e0Var = source.f5303a;
            kotlin.jvm.internal.h.c(e0Var);
            int r22 = (int) Math.min(j10, e0Var.f5307c - e0Var.f5306b);
            this.f5361a.write(e0Var.f5305a, e0Var.f5306b, r22);
            int r12 = e0Var.f5306b + r22;
            e0Var.f5306b = r12;
            long j11 = r22;
            j10 -= j11;
            source.f5304b -= j11;
            if (r12 == e0Var.f5307c) {
                source.f5303a = e0Var.a();
                f0.a(e0Var);
            }
        }
    }

    @Override // ed.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5361a.close();
    }

    @Override // ed.h0, java.io.Flushable
    public final void flush() throws IOException {
        this.f5361a.flush();
    }

    @Override // ed.h0
    public final k0 h() {
        return this.f5362b;
    }

    public final String toString() {
        return "sink(" + this.f5361a + ')';
    }
}
