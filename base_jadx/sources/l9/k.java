package l9;

import java.io.Serializable;

/* loaded from: classes2.dex */
public final class k<A, B, C> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final A f9591a;

    /* renamed from: b, reason: collision with root package name */
    public final B f9592b;

    /* renamed from: c, reason: collision with root package name */
    public final C f9593c;

    /* JADX WARN: Multi-variable type inference failed */
    public k(Object obj, Serializable serializable, Object obj2) {
        this.f9591a = obj;
        this.f9592b = serializable;
        this.f9593c = obj2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return kotlin.jvm.internal.h.a(this.f9591a, kVar.f9591a) && kotlin.jvm.internal.h.a(this.f9592b, kVar.f9592b) && kotlin.jvm.internal.h.a(this.f9593c, kVar.f9593c);
    }

    public final int hashCode() {
        A a10 = this.f9591a;
        int r12 = (a10 == null ? 0 : a10.hashCode()) * 31;
        B b10 = this.f9592b;
        int r13 = (r12 + (b10 == null ? 0 : b10.hashCode())) * 31;
        C c10 = this.f9593c;
        return r13 + (c10 != null ? c10.hashCode() : 0);
    }

    public final String toString() {
        return "(" + this.f9591a + ", " + this.f9592b + ", " + this.f9593c + ')';
    }
}
