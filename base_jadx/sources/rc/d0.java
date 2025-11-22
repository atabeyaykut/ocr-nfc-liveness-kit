package rc;

import java.io.Closeable;

/* loaded from: classes2.dex */
public abstract class d0 implements Closeable {

    /* renamed from: a, reason: collision with root package name */
    public static final a f14433a = new a();

    public static final class a {
    }

    public abstract long a();

    public abstract t b();

    public abstract ed.g c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        sc.c.c(c());
    }
}
