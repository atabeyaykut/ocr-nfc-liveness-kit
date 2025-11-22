package hc;

import kotlin.jvm.internal.h;

/* loaded from: classes2.dex */
public final class a<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f7076a;

    /* renamed from: b, reason: collision with root package name */
    public final T f7077b;

    public a(T t10, T t11) {
        this.f7076a = t10;
        this.f7077b = t11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return h.a(this.f7076a, aVar.f7076a) && h.a(this.f7077b, aVar.f7077b);
    }

    public final int hashCode() {
        T t10 = this.f7076a;
        int r12 = (t10 == null ? 0 : t10.hashCode()) * 31;
        T t11 = this.f7077b;
        return r12 + (t11 != null ? t11.hashCode() : 0);
    }

    public final String toString() {
        return "ApproximationBounds(lower=" + this.f7076a + ", upper=" + this.f7077b + ')';
    }
}
