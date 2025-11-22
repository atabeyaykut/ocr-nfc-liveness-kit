package la;

import c5.y;
import cc.d1;
import cc.e1;
import cc.m0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import m9.e0;
import ma.w0;

/* loaded from: classes2.dex */
public final class v {
    public static final d1 a(ma.e eVar, pa.b to) {
        kotlin.jvm.internal.h.f(to, "to");
        eVar.s().size();
        to.s().size();
        e1.a aVar = e1.f2291b;
        List<w0> listS = eVar.s();
        kotlin.jvm.internal.h.e(listS, "from.declaredTypeParameters");
        List<w0> list = listS;
        ArrayList arrayList = new ArrayList(m9.n.Q0(list));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(((w0) it.next()).i());
        }
        List<w0> listS2 = to.s();
        kotlin.jvm.internal.h.e(listS2, "to.declaredTypeParameters");
        List<w0> list2 = listS2;
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(list2));
        Iterator<T> it2 = list2.iterator();
        while (it2.hasNext()) {
            m0 m0VarQ = ((w0) it2.next()).q();
            kotlin.jvm.internal.h.e(m0VarQ, "it.defaultType");
            arrayList2.add(y.d(m0VarQ));
        }
        return new d1(e0.S0(m9.t.A1(arrayList, arrayList2)), false);
    }
}
