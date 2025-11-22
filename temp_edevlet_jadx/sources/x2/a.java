package x2;

/* loaded from: classes.dex */
public final class a<T> implements k9.a<T>, w2.a<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f19125c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile k9.a<T> f19126a;

    /* renamed from: b, reason: collision with root package name */
    public volatile Object f19127b = f19125c;

    public a(k9.a<T> aVar) {
        this.f19126a = aVar;
    }

    public static k9.a a(b bVar) {
        return bVar instanceof a ? bVar : new a(bVar);
    }

    @Override // k9.a
    public final T get() {
        T t10 = (T) this.f19127b;
        Object obj = f19125c;
        if (t10 == obj) {
            synchronized (this) {
                t10 = (T) this.f19127b;
                if (t10 == obj) {
                    t10 = this.f19126a.get();
                    Object obj2 = this.f19127b;
                    if ((obj2 != obj) && obj2 != t10) {
                        throw new IllegalStateException("Scoped provider was invoked recursively returning different results: " + obj2 + " & " + t10 + ". This is likely due to a circular dependency.");
                    }
                    this.f19127b = t10;
                    this.f19126a = null;
                }
            }
        }
        return t10;
    }
}
