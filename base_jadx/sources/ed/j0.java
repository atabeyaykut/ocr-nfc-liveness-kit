package ed;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes2.dex */
public interface j0 extends Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close() throws IOException;

    k0 h();

    long w(e eVar, long j10) throws IOException;
}
