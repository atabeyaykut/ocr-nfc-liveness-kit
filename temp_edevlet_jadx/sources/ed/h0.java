package ed;

import java.io.Closeable;
import java.io.Flushable;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface h0 extends Closeable, Flushable {
    void M(e eVar, long j10) throws IOException;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    void flush() throws IOException;

    k0 h();
}
