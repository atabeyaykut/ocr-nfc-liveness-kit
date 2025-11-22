package cc;

import cc.e1;
import cc.f1;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

/* loaded from: classes2.dex */
public final class h1 extends kotlin.jvm.internal.j implements x9.l<f1.a, e0> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ f1 f2319a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public h1(f1 f1Var) {
        super(1);
        this.f2319a = f1Var;
    }

    @Override // x9.l
    public final e0 invoke(f1.a aVar) {
        s1 s1VarA;
        f1.a aVar2 = aVar;
        ma.w0 w0Var = aVar2.f2304a;
        f1 f1Var = this.f2319a;
        f1Var.getClass();
        x xVar = aVar2.f2305b;
        Set<ma.w0> setC = xVar.c();
        if (setC == null || !setC.contains(w0Var.a())) {
            m0 m0VarQ = w0Var.q();
            kotlin.jvm.internal.h.e(m0VarQ, "typeParameter.defaultType");
            LinkedHashSet<ma.w0> linkedHashSet = new LinkedHashSet();
            c5.y.m(m0VarQ, m0VarQ, linkedHashSet, setC);
            int r32 = b8.f.V(m9.n.Q0(linkedHashSet));
            if (r32 < 16) {
                r32 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(r32);
            for (ma.w0 w0Var2 : linkedHashSet) {
                linkedHashMap.put(w0Var2.i(), (setC == null || !setC.contains(w0Var2)) ? f1Var.f2300a.q(w0Var2, xVar, f1Var, f1Var.a(w0Var2, xVar.d(w0Var))) : q1.n(w0Var2, xVar));
            }
            e1.a aVar3 = e1.f2291b;
            p1 p1VarE = p1.e(new d1(linkedHashMap, false));
            List<e0> upperBounds = w0Var.getUpperBounds();
            kotlin.jvm.internal.h.e(upperBounds, "typeParameter.upperBounds");
            n9.f fVarB = f1Var.b(p1VarE, upperBounds, xVar);
            if (!fVarB.isEmpty()) {
                f1Var.f2301b.getClass();
                if (fVarB.l() == 1) {
                    return (e0) m9.t.o1(fVarB);
                }
                throw new IllegalArgumentException("Should only be one computed upper bound if no need to intersect all bounds".toString());
            }
        }
        m0 m0VarA = xVar.a();
        return (m0VarA == null || (s1VarA = c5.y.A(m0VarA)) == null) ? (ec.f) f1Var.f2302c.getValue() : s1VarA;
    }
}
