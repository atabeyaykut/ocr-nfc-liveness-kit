package ed;

import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class n implements j0 {

    /* renamed from: a, reason: collision with root package name */
    public final j0 f5344a;

    public n(j0 delegate) {
        kotlin.jvm.internal.h.f(delegate, "delegate");
        this.f5344a = delegate;
    }

    @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5344a.close();
    }

    @Override // ed.j0
    public final k0 h() {
        return this.f5344a.h();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) getClass().getSimpleName());
        sb2.append('(');
        sb2.append(this.f5344a);
        sb2.append(')');
        return sb2.toString();
    }

    @Override // ed.j0
    public long w(e sink, long j10) throws IOException {
        kotlin.jvm.internal.h.f(sink, "sink");
        return this.f5344a.w(sink, j10);
    }
}
