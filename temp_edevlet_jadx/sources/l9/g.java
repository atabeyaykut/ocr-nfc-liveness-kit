package l9;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class g<A, B> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final A f9582a;

    /* renamed from: b, reason: collision with root package name */
    public final B f9583b;

    public g(A a10, B b10) {
        this.f9582a = a10;
        this.f9583b = b10;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return kotlin.jvm.internal.h.a(this.f9582a, gVar.f9582a) && kotlin.jvm.internal.h.a(this.f9583b, gVar.f9583b);
    }

    public final int hashCode() {
        A a10 = this.f9582a;
        int r12 = (a10 == null ? 0 : a10.hashCode()) * 31;
        B b10 = this.f9583b;
        return r12 + (b10 != null ? b10.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f9582a + ", " + this.f9583b + ')';
    }
}
