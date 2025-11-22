package kotlinx.coroutines.scheduling;

/* loaded from: classes2.dex */
public final class c extends f {

    /* renamed from: b, reason: collision with root package name */
    public static final c f9209b = new c();

    public c() {
        super(j.f9216b, j.f9217c, j.f9218d);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("Dispatchers.Default cannot be closed");
    }

    @Override // nc.y
    public final String toString() {
        return "Dispatchers.Default";
    }
}
