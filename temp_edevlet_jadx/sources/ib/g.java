package ib;

import gb.p;
import gb.s;
import java.util.ArrayList;
import java.util.List;
import m9.n;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final List<p> f7353a;

    public g(s sVar) {
        List<p> list = sVar.f6553c;
        int r32 = 0;
        if ((sVar.f6552b & 1) == 1) {
            int r72 = sVar.f6554d;
            kotlin.jvm.internal.h.e(list, "typeTable.typeList");
            List<p> list2 = list;
            ArrayList arrayList = new ArrayList(n.Q0(list2));
            for (Object obj : list2) {
                int r52 = r32 + 1;
                if (r32 < 0) {
                    b8.f.k0();
                    throw null;
                }
                p pVarL = (p) obj;
                if (r32 >= r72) {
                    pVarL.getClass();
                    p.c cVarS = p.s(pVarL);
                    cVarS.f6489d |= 2;
                    cVarS.f = true;
                    pVarL = cVarS.l();
                    if (!pVarL.b()) {
                        throw new c0.a();
                    }
                }
                arrayList.add(pVarL);
                r32 = r52;
            }
            list = arrayList;
        }
        kotlin.jvm.internal.h.e(list, "run {\n        val origin… else originalTypes\n    }");
        this.f7353a = list;
    }

    public final p a(int r22) {
        return this.f7353a.get(r22);
    }
}
