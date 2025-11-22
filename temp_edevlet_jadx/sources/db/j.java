package db;

import cc.a1;
import cc.e0;
import cc.f0;
import cc.m0;
import cc.q1;
import cc.s1;
import cc.y;

/* loaded from: classes2.dex */
public final class j extends cc.s implements cc.o {

    /* renamed from: b, reason: collision with root package name */
    public final m0 f4756b;

    public j(m0 delegate) {
        kotlin.jvm.internal.h.f(delegate, "delegate");
        this.f4756b = delegate;
    }

    public static m0 Y0(m0 m0Var) {
        m0 m0VarQ0 = m0Var.Q0(false);
        return !q1.h(m0Var) ? m0VarQ0 : new j(m0VarQ0);
    }

    @Override // cc.s, cc.e0
    public final boolean N0() {
        return false;
    }

    @Override // cc.m0, cc.s1
    public final s1 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return new j(this.f4756b.S0(newAttributes));
    }

    @Override // cc.m0
    /* renamed from: T0 */
    public final m0 Q0(boolean z10) {
        return z10 ? this.f4756b.Q0(true) : this;
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return new j(this.f4756b.S0(newAttributes));
    }

    @Override // cc.s
    public final m0 V0() {
        return this.f4756b;
    }

    @Override // cc.s
    public final cc.s X0(m0 m0Var) {
        return new j(m0Var);
    }

    @Override // cc.o
    public final s1 e0(e0 replacement) {
        kotlin.jvm.internal.h.f(replacement, "replacement");
        s1 s1VarP0 = replacement.P0();
        kotlin.jvm.internal.h.f(s1VarP0, "<this>");
        if (!q1.h(s1VarP0) && !q1.g(s1VarP0)) {
            return s1VarP0;
        }
        if (s1VarP0 instanceof m0) {
            return Y0((m0) s1VarP0);
        }
        if (s1VarP0 instanceof y) {
            y yVar = (y) s1VarP0;
            return c5.v.O(f0.c(Y0(yVar.f2377b), Y0(yVar.f2378c)), c5.v.s(s1VarP0));
        }
        throw new IllegalStateException(("Incorrect type: " + s1VarP0).toString());
    }

    @Override // cc.o
    public final boolean z0() {
        return true;
    }
}
