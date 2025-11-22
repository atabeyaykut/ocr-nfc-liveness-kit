package c6;

/* loaded from: classes2.dex */
public final class t<T> implements a7.b<T> {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f2224c = new Object();

    /* renamed from: a, reason: collision with root package name */
    public volatile Object f2225a = f2224c;

    /* renamed from: b, reason: collision with root package name */
    public volatile a7.b<T> f2226b;

    public t(a7.b<T> bVar) {
        this.f2226b = bVar;
    }

    @Override // a7.b
    public final T get() {
        T t10 = (T) this.f2225a;
        Object obj = f2224c;
        if (t10 == obj) {
            synchronized (this) {
                t10 = (T) this.f2225a;
                if (t10 == obj) {
                    t10 = this.f2226b.get();
                    this.f2225a = t10;
                    this.f2226b = null;
                }
            }
        }
        return t10;
    }
}
