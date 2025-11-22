package ed;

import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public final class r implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public final InputStream f5355a;

    /* renamed from: b, reason: collision with root package name */
    public final k0 f5356b;

    public r(InputStream input, k0 timeout) {
        kotlin.jvm.internal.h.f(input, "input");
        kotlin.jvm.internal.h.f(timeout, "timeout");
        this.f5355a = input;
        this.f5356b = timeout;
    }

    @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f5355a.close();
    }

    @Override // ed.j0
    public final k0 h() {
        return this.f5356b;
    }

    public final String toString() {
        return "source(" + this.f5355a + ')';
    }

    @Override // ed.j0
    public final long w(e sink, long j10) throws IOException {
        kotlin.jvm.internal.h.f(sink, "sink");
        if (j10 == 0) {
            return 0L;
        }
        if (!(j10 >= 0)) {
            throw new IllegalArgumentException(kotlin.jvm.internal.h.k(Long.valueOf(j10), "byteCount < 0: ").toString());
        }
        try {
            this.f5356b.f();
            e0 e0VarB = sink.B(1);
            int r52 = this.f5355a.read(e0VarB.f5305a, e0VarB.f5307c, (int) Math.min(j10, 8192 - e0VarB.f5307c));
            if (r52 != -1) {
                e0VarB.f5307c += r52;
                long j11 = r52;
                sink.f5304b += j11;
                return j11;
            }
            if (e0VarB.f5306b != e0VarB.f5307c) {
                return -1L;
            }
            sink.f5303a = e0VarB.a();
            f0.a(e0VarB);
            return -1L;
        } catch (AssertionError e10) {
            if (v.c(e10)) {
                throw new IOException(e10);
            }
            throw e10;
        }
    }
}
