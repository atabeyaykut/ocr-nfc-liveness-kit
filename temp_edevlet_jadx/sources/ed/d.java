package ed;

import java.io.EOFException;

/* loaded from: classes2.dex */
public final class d implements h0 {
    @Override // ed.h0
    public final void M(e source, long j10) throws EOFException {
        kotlin.jvm.internal.h.f(source, "source");
        source.skip(j10);
    }

    @Override // ed.h0, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // ed.h0, java.io.Flushable
    public final void flush() {
    }

    @Override // ed.h0
    public final k0 h() {
        return k0.f5333d;
    }
}
