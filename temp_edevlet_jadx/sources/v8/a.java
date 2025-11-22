package v8;

/* loaded from: classes2.dex */
public final class a<T> implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final T f18301a;

    public a(T t10) {
        this.f18301a = t10;
    }

    public static a a(Object obj) {
        if (obj != null) {
            return new a(obj);
        }
        throw new NullPointerException("instance cannot be null");
    }

    @Override // k9.a
    public final T get() {
        return this.f18301a;
    }
}
