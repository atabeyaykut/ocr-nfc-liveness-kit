package ja;

import c5.v;
import c5.y;
import cc.e0;
import cc.f0;
import cc.i1;
import cc.m0;
import com.google.android.gms.internal.clearcut.d0;
import ja.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ka.c;
import m9.t;
import m9.w;
import na.h;

/* loaded from: classes2.dex */
public final class f {
    /* JADX WARN: Multi-variable type inference failed */
    public static final int a(e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        na.c cVarN = e0Var.getAnnotations().n(o.a.f8387q);
        if (cVarN == null) {
            return 0;
        }
        qb.g gVar = (qb.g) m9.e0.Q0(cVarN.a(), o.f8358d);
        kotlin.jvm.internal.h.d(gVar, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.constants.IntValue");
        return ((Number) ((qb.n) gVar).f13469a).intValue();
    }

    public static final m0 b(k kVar, na.h hVar, e0 e0Var, List list, ArrayList arrayList, e0 e0Var2, boolean z10) {
        ma.e eVarK;
        ArrayList arrayList2 = new ArrayList(list.size() + arrayList.size() + (e0Var != null ? 1 : 0) + 1);
        List list2 = list;
        ArrayList arrayList3 = new ArrayList(m9.n.Q0(list2));
        Iterator it = list2.iterator();
        while (it.hasNext()) {
            arrayList3.add(y.d((e0) it.next()));
        }
        arrayList2.addAll(arrayList3);
        d0.f(e0Var != null ? y.d(e0Var) : null, arrayList2);
        int r52 = 0;
        for (Object obj : arrayList) {
            int r72 = r52 + 1;
            if (r52 < 0) {
                b8.f.k0();
                throw null;
            }
            arrayList2.add(y.d((e0) obj));
            r52 = r72;
        }
        arrayList2.add(y.d(e0Var2));
        int size = list.size() + arrayList.size() + (e0Var != null ? 1 : 0);
        if (z10) {
            eVarK = kVar.v(size);
        } else {
            lb.f fVar = o.f8355a;
            eVarK = kVar.k("Function" + size);
        }
        kotlin.jvm.internal.h.e(eVarK, "if (isSuspendFunction) b…tFunction(parameterCount)");
        if (e0Var != null) {
            lb.c cVar = o.a.f8386p;
            if (!hVar.P(cVar)) {
                hVar = h.a.a(t.l1(hVar, new na.j(kVar, cVar, w.f10174a)));
            }
        }
        if (!list.isEmpty()) {
            int size2 = list.size();
            lb.c cVar2 = o.a.f8387q;
            if (!hVar.P(cVar2)) {
                hVar = h.a.a(t.l1(hVar, new na.j(kVar, cVar2, b8.f.W(new l9.g(o.f8358d, new qb.n(size2))))));
            }
        }
        return f0.e(v.L(hVar), eVarK, arrayList2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final lb.f c(e0 e0Var) {
        String str;
        na.c cVarN = e0Var.getAnnotations().n(o.a.f8388r);
        if (cVarN == null) {
            return null;
        }
        Object objQ1 = t.q1(cVarN.a().values());
        qb.w wVar = objQ1 instanceof qb.w ? (qb.w) objQ1 : null;
        if (wVar != null && (str = (String) wVar.f13469a) != null) {
            if (!lb.f.u(str)) {
                str = null;
            }
            if (str != null) {
                return lb.f.t(str);
            }
        }
        return null;
    }

    public static final List<e0> d(e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        h(e0Var);
        int r02 = a(e0Var);
        if (r02 == 0) {
            return m9.v.f10173a;
        }
        List<i1> listSubList = e0Var.K0().subList(0, r02);
        ArrayList arrayList = new ArrayList(m9.n.Q0(listSubList));
        Iterator<T> it = listSubList.iterator();
        while (it.hasNext()) {
            e0 type = ((i1) it.next()).getType();
            kotlin.jvm.internal.h.e(type, "it.type");
            arrayList.add(type);
        }
        return arrayList;
    }

    public static final ka.c e(ma.g gVar) {
        if (!(gVar instanceof ma.e) || !k.K(gVar)) {
            return null;
        }
        lb.d dVarH = sb.b.h(gVar);
        if (!dVarH.e() || dVarH.d()) {
            return null;
        }
        c.a aVar = ka.c.f8799c;
        String strO = dVarH.g().o();
        kotlin.jvm.internal.h.e(strO, "shortName().asString()");
        lb.c cVarE = dVarH.h().e();
        kotlin.jvm.internal.h.e(cVarE, "toSafe().parent()");
        aVar.getClass();
        c.a.C0163a c0163aA = c.a.a(strO, cVarE);
        if (c0163aA != null) {
            return c0163aA.f8806a;
        }
        return null;
    }

    public static final e0 f(e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        h(e0Var);
        if (e0Var.getAnnotations().n(o.a.f8386p) != null) {
            return e0Var.K0().get(a(e0Var)).getType();
        }
        return null;
    }

    public static final List<i1> g(e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        h(e0Var);
        List<i1> listK0 = e0Var.K0();
        int r12 = a(e0Var);
        int r32 = 0;
        if (h(e0Var)) {
            if (e0Var.getAnnotations().n(o.a.f8386p) != null) {
                r32 = 1;
            }
        }
        return listK0.subList(r32 + r12, listK0.size() - 1);
    }

    public static final boolean h(e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        ma.g gVarN = e0Var.M0().n();
        if (gVarN == null) {
            return false;
        }
        ka.c cVarE = e(gVarN);
        return cVarE == ka.c.f8800d || cVarE == ka.c.f8801e;
    }

    public static final boolean i(e0 e0Var) {
        kotlin.jvm.internal.h.f(e0Var, "<this>");
        ma.g gVarN = e0Var.M0().n();
        return (gVarN != null ? e(gVarN) : null) == ka.c.f8801e;
    }
}
