package cc;

/* loaded from: classes2.dex */
public final class z extends y implements o {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(m0 lowerBound, m0 upperBound) {
        super(lowerBound, upperBound);
        kotlin.jvm.internal.h.f(lowerBound, "lowerBound");
        kotlin.jvm.internal.h.f(upperBound, "upperBound");
    }

    @Override // cc.s1
    public final s1 Q0(boolean z10) {
        return f0.c(this.f2377b.Q0(z10), this.f2378c.Q0(z10));
    }

    @Override // cc.s1
    public final s1 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return f0.c(this.f2377b.S0(newAttributes), this.f2378c.S0(newAttributes));
    }

    @Override // cc.y
    public final m0 T0() {
        return this.f2377b;
    }

    @Override // cc.y
    public final String U0(nb.c renderer, nb.j options) {
        kotlin.jvm.internal.h.f(renderer, "renderer");
        kotlin.jvm.internal.h.f(options, "options");
        boolean zM = options.m();
        m0 m0Var = this.f2378c;
        m0 m0Var2 = this.f2377b;
        if (!zM) {
            return renderer.r(renderer.u(m0Var2), renderer.u(m0Var), c5.y.o(this));
        }
        return "(" + renderer.u(m0Var2) + ".." + renderer.u(m0Var) + ')';
    }

    @Override // cc.s1
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public final y O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        e0 e0VarX = kotlinTypeRefiner.x(this.f2377b);
        kotlin.jvm.internal.h.d(e0VarX, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        e0 e0VarX2 = kotlinTypeRefiner.x(this.f2378c);
        kotlin.jvm.internal.h.d(e0VarX2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new z((m0) e0VarX, (m0) e0VarX2);
    }

    @Override // cc.o
    public final s1 e0(e0 replacement) {
        s1 s1VarC;
        kotlin.jvm.internal.h.f(replacement, "replacement");
        s1 s1VarP0 = replacement.P0();
        if (s1VarP0 instanceof y) {
            s1VarC = s1VarP0;
        } else {
            if (!(s1VarP0 instanceof m0)) {
                throw new j7.p();
            }
            m0 m0Var = (m0) s1VarP0;
            s1VarC = f0.c(m0Var, m0Var.Q0(true));
        }
        return c5.v.v(s1VarC, s1VarP0);
    }

    @Override // cc.y
    public final String toString() {
        return "(" + this.f2377b + ".." + this.f2378c + ')';
    }

    @Override // cc.o
    public final boolean z0() {
        m0 m0Var = this.f2377b;
        return (m0Var.M0().n() instanceof ma.w0) && kotlin.jvm.internal.h.a(m0Var.M0(), this.f2378c.M0());
    }
}
