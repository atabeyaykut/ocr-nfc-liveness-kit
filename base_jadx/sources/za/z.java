package za;

import cc.e0;
import cc.f0;
import cc.m0;
import cc.q1;
import cc.t1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import p4.g7;

/* loaded from: classes2.dex */
public final class z extends pa.c {

    /* renamed from: l, reason: collision with root package name */
    public final g7 f20017l;

    /* renamed from: m, reason: collision with root package name */
    public final cb.x f20018m;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(g7 g7Var, cb.x javaTypeParameter, int r13, ma.j containingDeclaration) {
        super(g7Var.b(), containingDeclaration, new ya.e(g7Var, javaTypeParameter, false), javaTypeParameter.getName(), t1.INVARIANT, false, r13, ((ya.c) g7Var.f12358a).f19344m);
        kotlin.jvm.internal.h.f(javaTypeParameter, "javaTypeParameter");
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        this.f20017l = g7Var;
        this.f20018m = javaTypeParameter;
    }

    @Override // pa.k
    public final List<e0> E0(List<? extends e0> list) {
        g7 g7Var = this.f20017l;
        db.t tVar = ((ya.c) g7Var.f12358a).f19349r;
        tVar.getClass();
        List<? extends e0> list2 = list;
        ArrayList arrayList = new ArrayList(m9.n.Q0(list2));
        for (e0 e0Var : list2) {
            db.s predicate = db.s.f4806a;
            kotlin.jvm.internal.h.f(e0Var, "<this>");
            kotlin.jvm.internal.h.f(predicate, "predicate");
            if (!q1.c(e0Var, predicate)) {
                e0 e0VarA = tVar.a(new db.v(this, false, g7Var, va.c.TYPE_PARAMETER_BOUNDS), e0Var, m9.v.f10173a, null, false);
                if (e0VarA != null) {
                    e0Var = e0VarA;
                }
            }
            arrayList.add(e0Var);
        }
        return arrayList;
    }

    @Override // pa.k
    public final void K0(e0 type) {
        kotlin.jvm.internal.h.f(type, "type");
    }

    @Override // pa.k
    public final List<e0> L0() {
        Collection<cb.j> upperBounds = this.f20018m.getUpperBounds();
        boolean zIsEmpty = upperBounds.isEmpty();
        g7 g7Var = this.f20017l;
        if (zIsEmpty) {
            m0 m0VarF = g7Var.a().m().f();
            kotlin.jvm.internal.h.e(m0VarF, "c.module.builtIns.anyType");
            return b8.f.S(f0.c(m0VarF, g7Var.a().m().o()));
        }
        Collection<cb.j> collection = upperBounds;
        ArrayList arrayList = new ArrayList(m9.n.Q0(collection));
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            arrayList.add(((ab.d) g7Var.f12362e).e((cb.j) it.next(), c5.v.K(2, false, false, this, 3)));
        }
        return arrayList;
    }
}
