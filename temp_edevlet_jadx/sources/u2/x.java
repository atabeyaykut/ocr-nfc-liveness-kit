package u2;

import java.io.Closeable;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class x implements Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        ((k) this).f17845d.get().close();
    }
}
