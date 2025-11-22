package r0;

/* loaded from: classes.dex */
public final class c1<T> extends b<T> {

    /* renamed from: b, reason: collision with root package name */
    public final T f13723b;

    public c1(T t10) {
        super(t10);
        this.f13723b = t10;
    }

    @Override // r0.b
    public final T a() {
        return this.f13723b;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof c1) && kotlin.jvm.internal.h.a(this.f13723b, ((c1) obj).f13723b);
        }
        return true;
    }

    public final int hashCode() {
        T t10 = this.f13723b;
        if (t10 != null) {
            return t10.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return androidx.camera.core.impl.a.e(new StringBuilder("Success(value="), this.f13723b, ")");
    }
}
