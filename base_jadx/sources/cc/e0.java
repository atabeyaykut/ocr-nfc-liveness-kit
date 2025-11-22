package cc;

import java.util.List;

/* loaded from: classes2.dex */
public abstract class e0 implements na.a, fc.h {

    /* renamed from: a, reason: collision with root package name */
    public int f2290a;

    public abstract List<i1> K0();

    public abstract a1 L0();

    public abstract c1 M0();

    public abstract boolean N0();

    public abstract e0 O0(dc.f fVar);

    public abstract s1 P0();

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        if (N0() == e0Var.N0()) {
            s1 a10 = P0();
            s1 b10 = e0Var.P0();
            kotlin.jvm.internal.h.f(a10, "a");
            kotlin.jvm.internal.h.f(b10, "b");
            if (a6.a.A(dc.p.f4850a, a10, b10)) {
                return true;
            }
        }
        return false;
    }

    @Override // na.a
    public final na.h getAnnotations() {
        return l.a(L0());
    }

    public final int hashCode() {
        int r02;
        int r03 = this.f2290a;
        if (r03 != 0) {
            return r03;
        }
        if (c5.v.y(this)) {
            r02 = super.hashCode();
        } else {
            r02 = (N0() ? 1 : 0) + ((K0().hashCode() + (M0().hashCode() * 31)) * 31);
        }
        this.f2290a = r02;
        return r02;
    }

    public abstract vb.i o();
}
