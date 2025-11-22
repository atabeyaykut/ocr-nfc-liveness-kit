package va;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public final class e extends b<na.c> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public e(s javaTypeEnhancementState) {
        super(javaTypeEnhancementState);
        kotlin.jvm.internal.h.f(javaTypeEnhancementState, "javaTypeEnhancementState");
    }

    public static List l(qb.g gVar) {
        if (!(gVar instanceof qb.b)) {
            return gVar instanceof qb.k ? b8.f.S(((qb.k) gVar).f13473c.q()) : m9.v.f10173a;
        }
        Iterable iterable = (Iterable) ((qb.b) gVar).f13469a;
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            m9.p.T0(l((qb.g) it.next()), arrayList);
        }
        return arrayList;
    }

    @Override // va.b
    public final ArrayList a(Object obj, boolean z10) {
        na.c cVar = (na.c) obj;
        kotlin.jvm.internal.h.f(cVar, "<this>");
        Map<lb.f, qb.g<?>> mapA = cVar.a();
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<lb.f, qb.g<?>> entry : mapA.entrySet()) {
            m9.p.T0((!z10 || kotlin.jvm.internal.h.a(entry.getKey(), x.f18384b)) ? l(entry.getValue()) : m9.v.f10173a, arrayList);
        }
        return arrayList;
    }

    @Override // va.b
    public final lb.c e(na.c cVar) {
        na.c cVar2 = cVar;
        kotlin.jvm.internal.h.f(cVar2, "<this>");
        return cVar2.d();
    }

    @Override // va.b
    public final ma.e f(Object obj) {
        na.c cVar = (na.c) obj;
        kotlin.jvm.internal.h.f(cVar, "<this>");
        ma.e eVarD = sb.b.d(cVar);
        kotlin.jvm.internal.h.c(eVarD);
        return eVarD;
    }

    @Override // va.b
    public final Iterable<na.c> g(na.c cVar) {
        na.h annotations;
        na.c cVar2 = cVar;
        kotlin.jvm.internal.h.f(cVar2, "<this>");
        ma.e eVarD = sb.b.d(cVar2);
        return (eVarD == null || (annotations = eVarD.getAnnotations()) == null) ? m9.v.f10173a : annotations;
    }
}
