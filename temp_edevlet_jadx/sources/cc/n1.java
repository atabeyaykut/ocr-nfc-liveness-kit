package cc;

import java.util.List;
import na.h;

/* loaded from: classes2.dex */
public final class n1 {
    public static final m0 a(e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        s1 s1VarP0 = e0Var.P0();
        m0 m0Var = s1VarP0 instanceof m0 ? (m0) s1VarP0 : null;
        if (m0Var != null) {
            return m0Var;
        }
        throw new IllegalStateException(("This is should be simple type: " + e0Var).toString());
    }

    public static final m0 b(m0 m0Var, List<? extends i1> newArguments, a1 newAttributes) {
        kotlin.jvm.internal.h.f(m0Var, "<this>");
        kotlin.jvm.internal.h.f(newArguments, "newArguments");
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return (newArguments.isEmpty() && newAttributes == m0Var.L0()) ? m0Var : newArguments.isEmpty() ? m0Var.S0(newAttributes) : f0.f(newAttributes, m0Var.M0(), newArguments, m0Var.N0(), null);
    }

    public static e0 c(e0 e0Var, List newArguments, na.h newAnnotations, int r52) {
        if ((r52 & 1) != 0) {
            newArguments = e0Var.K0();
        }
        if ((r52 & 2) != 0) {
            newAnnotations = e0Var.getAnnotations();
        }
        List newArgumentsForUpperBound = (r52 & 4) != 0 ? newArguments : null;
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        kotlin.jvm.internal.h.f(newArguments, "newArguments");
        kotlin.jvm.internal.h.f(newAnnotations, "newAnnotations");
        kotlin.jvm.internal.h.f(newArgumentsForUpperBound, "newArgumentsForUpperBound");
        if ((newArguments.isEmpty() || newArguments == e0Var.K0()) && newAnnotations == e0Var.getAnnotations()) {
            return e0Var;
        }
        a1 a1VarL0 = e0Var.L0();
        if ((newAnnotations instanceof na.l) && newAnnotations.isEmpty()) {
            newAnnotations = h.a.f10653a;
        }
        a1 a1VarH = c5.v.H(a1VarL0, newAnnotations);
        s1 s1VarP0 = e0Var.P0();
        if (s1VarP0 instanceof y) {
            y yVar = (y) s1VarP0;
            return f0.c(b(yVar.f2377b, newArguments, a1VarH), b(yVar.f2378c, newArgumentsForUpperBound, a1VarH));
        }
        if (s1VarP0 instanceof m0) {
            return b((m0) s1VarP0, newArguments, a1VarH);
        }
        throw new j7.p();
    }

    public static /* synthetic */ m0 d(m0 m0Var, List list, a1 a1Var, int r42) {
        if ((r42 & 1) != 0) {
            list = m0Var.K0();
        }
        if ((r42 & 2) != 0) {
            a1Var = m0Var.L0();
        }
        return b(m0Var, list, a1Var);
    }
}
