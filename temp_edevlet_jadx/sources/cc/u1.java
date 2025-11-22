package cc;

import java.util.List;

/* loaded from: classes2.dex */
public abstract class u1 extends e0 {
    @Override // cc.e0
    public final List<i1> K0() {
        return Q0().K0();
    }

    @Override // cc.e0
    public final a1 L0() {
        return Q0().L0();
    }

    @Override // cc.e0
    public final c1 M0() {
        return Q0().M0();
    }

    @Override // cc.e0
    public final boolean N0() {
        return Q0().N0();
    }

    @Override // cc.e0
    public final s1 P0() {
        e0 e0VarQ0 = Q0();
        while (e0VarQ0 instanceof u1) {
            e0VarQ0 = ((u1) e0VarQ0).Q0();
        }
        kotlin.jvm.internal.h.d(e0VarQ0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType");
        return (s1) e0VarQ0;
    }

    public abstract e0 Q0();

    public boolean R0() {
        return true;
    }

    @Override // cc.e0
    public final vb.i o() {
        return Q0().o();
    }

    public final String toString() {
        return R0() ? Q0().toString() : "<Not computed yet>";
    }
}
