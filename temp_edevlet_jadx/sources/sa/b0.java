package sa;

import java.util.Collection;

/* loaded from: classes2.dex */
public final class b0 extends v implements cb.t {

    /* renamed from: a, reason: collision with root package name */
    public final lb.c f15327a;

    public b0(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        this.f15327a = fqName;
    }

    @Override // cb.t
    public final void F(x9.l nameFilter) {
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
    }

    @Override // cb.t
    public final lb.c d() {
        return this.f15327a;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof b0) {
            if (kotlin.jvm.internal.h.a(this.f15327a, ((b0) obj).f15327a)) {
                return true;
            }
        }
        return false;
    }

    @Override // cb.d
    public final /* bridge */ /* synthetic */ Collection getAnnotations() {
        return m9.v.f10173a;
    }

    public final int hashCode() {
        return this.f15327a.hashCode();
    }

    @Override // cb.d
    public final cb.a n(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        return null;
    }

    @Override // cb.d
    public final void o() {
    }

    public final String toString() {
        return b0.class.getName() + ": " + this.f15327a;
    }

    @Override // cb.t
    public final void x() {
    }
}
