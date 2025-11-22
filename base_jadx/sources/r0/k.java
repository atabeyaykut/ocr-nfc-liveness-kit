package r0;

/* loaded from: classes.dex */
public final class k<T> extends b<T> {

    /* renamed from: b, reason: collision with root package name */
    public final T f13762b;

    public k() {
        this(null);
    }

    public k(T t10) {
        super(t10);
        this.f13762b = t10;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof k) && kotlin.jvm.internal.h.a(this.f13762b, ((k) obj).f13762b);
        }
        return true;
    }

    public final int hashCode() {
        T t10 = this.f13762b;
        if (t10 != null) {
            return t10.hashCode();
        }
        return 0;
    }

    public final String toString() {
        return androidx.camera.core.impl.a.e(new StringBuilder("Loading(value="), this.f13762b, ")");
    }
}
