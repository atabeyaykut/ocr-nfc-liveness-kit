package r0;

import r0.p;

/* loaded from: classes.dex */
public final class b1<S extends p> {

    /* renamed from: a, reason: collision with root package name */
    public final f1 f13707a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<S, S> f13708b;

    public b1(f1 f1Var, u0 u0Var) {
        this.f13707a = f1Var;
        this.f13708b = u0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b1)) {
            return false;
        }
        b1 b1Var = (b1) obj;
        return kotlin.jvm.internal.h.a(this.f13707a, b1Var.f13707a) && kotlin.jvm.internal.h.a(this.f13708b, b1Var.f13708b);
    }

    public final int hashCode() {
        f1 f1Var = this.f13707a;
        int r12 = (f1Var != null ? f1Var.hashCode() : 0) * 31;
        x9.l<S, S> lVar = this.f13708b;
        return r12 + (lVar != null ? lVar.hashCode() : 0);
    }

    public final String toString() {
        return "StateRestorer(viewModelContext=" + this.f13707a + ", toRestoredState=" + this.f13708b + ")";
    }
}
