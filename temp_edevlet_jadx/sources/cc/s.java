package cc;

import java.util.List;

/* loaded from: classes2.dex */
public abstract class s extends m0 {
    @Override // cc.e0
    public final List<i1> K0() {
        return V0().K0();
    }

    @Override // cc.e0
    public a1 L0() {
        return V0().L0();
    }

    @Override // cc.e0
    public final c1 M0() {
        return V0().M0();
    }

    @Override // cc.e0
    public boolean N0() {
        return V0().N0();
    }

    public abstract m0 V0();

    @Override // cc.s1
    /* renamed from: W0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public m0 R0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        e0 e0VarX = kotlinTypeRefiner.x(V0());
        kotlin.jvm.internal.h.d(e0VarX, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return X0((m0) e0VarX);
    }

    public abstract s X0(m0 m0Var);

    @Override // cc.e0
    public final vb.i o() {
        return V0().o();
    }
}
