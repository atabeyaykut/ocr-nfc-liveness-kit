package cc;

import cc.q;
import java.util.ArrayList;
import java.util.LinkedHashSet;

/* loaded from: classes2.dex */
public final class q0 {
    public static final s1 a(s1 s1Var, boolean z10) {
        kotlin.jvm.internal.h.f(s1Var, "<this>");
        q qVarA = q.a.a(s1Var, z10);
        if (qVarA != null) {
            return qVarA;
        }
        m0 m0VarB = b(s1Var);
        return m0VarB != null ? m0VarB : s1Var.Q0(false);
    }

    public static final m0 b(e0 e0Var) {
        c0 c0Var;
        c1 c1VarM0 = e0Var.M0();
        c0 c0Var2 = c1VarM0 instanceof c0 ? (c0) c1VarM0 : null;
        if (c0Var2 == null) {
            return null;
        }
        LinkedHashSet<e0> linkedHashSet = c0Var2.f2275b;
        ArrayList arrayList = new ArrayList(m9.n.Q0(linkedHashSet));
        boolean z10 = false;
        for (e0 e0VarA : linkedHashSet) {
            if (q1.g(e0VarA)) {
                e0VarA = a(e0VarA.P0(), false);
                z10 = true;
            }
            arrayList.add(e0VarA);
        }
        if (z10) {
            e0 e0VarA2 = c0Var2.f2274a;
            if (e0VarA2 == null) {
                e0VarA2 = null;
            } else if (q1.g(e0VarA2)) {
                e0VarA2 = a(e0VarA2.P0(), false);
            }
            arrayList.isEmpty();
            LinkedHashSet linkedHashSet2 = new LinkedHashSet(arrayList);
            linkedHashSet2.hashCode();
            c0Var = new c0(linkedHashSet2, e0VarA2);
        } else {
            c0Var = null;
        }
        if (c0Var == null) {
            return null;
        }
        return c0Var.c();
    }

    public static final m0 c(m0 m0Var, m0 abbreviatedType) {
        kotlin.jvm.internal.h.f(m0Var, "<this>");
        kotlin.jvm.internal.h.f(abbreviatedType, "abbreviatedType");
        return c5.v.y(m0Var) ? m0Var : new a(m0Var, abbreviatedType);
    }
}
