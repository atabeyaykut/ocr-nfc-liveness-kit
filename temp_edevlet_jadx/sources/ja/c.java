package ja;

import ja.o;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import m9.t;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a, reason: collision with root package name */
    public static final LinkedHashSet f8320a;

    static {
        Set<l> set = l.f8334e;
        ArrayList arrayList = new ArrayList(m9.n.Q0(set));
        for (l primitiveType : set) {
            kotlin.jvm.internal.h.f(primitiveType, "primitiveType");
            arrayList.add(o.f8364k.c(primitiveType.f8343a));
        }
        lb.c cVarH = o.a.f.h();
        kotlin.jvm.internal.h.e(cVarH, "string.toSafe()");
        ArrayList arrayListN1 = t.n1(cVarH, arrayList);
        lb.c cVarH2 = o.a.f8378h.h();
        kotlin.jvm.internal.h.e(cVarH2, "_boolean.toSafe()");
        ArrayList arrayListN12 = t.n1(cVarH2, arrayListN1);
        lb.c cVarH3 = o.a.f8380j.h();
        kotlin.jvm.internal.h.e(cVarH3, "_enum.toSafe()");
        ArrayList arrayListN13 = t.n1(cVarH3, arrayListN12);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator it = arrayListN13.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(lb.b.l((lb.c) it.next()));
        }
        f8320a = linkedHashSet;
    }
}
