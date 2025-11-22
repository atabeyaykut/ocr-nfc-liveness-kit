package cc;

import java.util.List;

/* loaded from: classes2.dex */
public abstract class y extends s1 implements fc.f {

    /* renamed from: b, reason: collision with root package name */
    public final m0 f2377b;

    /* renamed from: c, reason: collision with root package name */
    public final m0 f2378c;

    public y(m0 lowerBound, m0 upperBound) {
        kotlin.jvm.internal.h.f(lowerBound, "lowerBound");
        kotlin.jvm.internal.h.f(upperBound, "upperBound");
        this.f2377b = lowerBound;
        this.f2378c = upperBound;
    }

    @Override // cc.e0
    public final List<i1> K0() {
        return T0().K0();
    }

    @Override // cc.e0
    public a1 L0() {
        return T0().L0();
    }

    @Override // cc.e0
    public final c1 M0() {
        return T0().M0();
    }

    @Override // cc.e0
    public boolean N0() {
        return T0().N0();
    }

    public abstract m0 T0();

    public abstract String U0(nb.c cVar, nb.j jVar);

    @Override // cc.e0
    public vb.i o() {
        return T0().o();
    }

    public String toString() {
        return nb.c.f10698b.u(this);
    }
}
