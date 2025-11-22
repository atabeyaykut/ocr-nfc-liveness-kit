package ed;

import java.io.IOException;

/* loaded from: classes2.dex */
public abstract class m implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final h0 f5342a;

    public m(h0 delegate) {
        kotlin.jvm.internal.h.f(delegate, "delegate");
        this.f5342a = delegate;
    }

    @Override // ed.h0
    public void M(e source, long j10) throws IOException {
        kotlin.jvm.internal.h.f(source, "source");
        this.f5342a.M(source, j10);
    }

    @Override // ed.h0, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f5342a.close();
    }

    @Override // ed.h0, java.io.Flushable
    public void flush() throws IOException {
        this.f5342a.flush();
    }

    @Override // ed.h0
    public final k0 h() {
        return this.f5342a.h();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append((Object) getClass().getSimpleName());
        sb2.append('(');
        sb2.append(this.f5342a);
        sb2.append(')');
        return sb2.toString();
    }
}
