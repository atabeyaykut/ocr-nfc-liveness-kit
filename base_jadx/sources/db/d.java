package db;

import cc.c1;
import cc.m0;
import cc.s1;
import cc.y;
import db.a;
import dc.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public final class d extends kotlin.jvm.internal.j implements x9.l<a.C0070a, Iterable<? extends a.C0070a>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a<Object> f4739a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(a aVar) {
        super(1);
        this.f4739a = aVar;
    }

    @Override // x9.l
    public final Iterable<? extends a.C0070a> invoke(a.C0070a c0070a) {
        a.C0070a c0070a2;
        y yVarG;
        y yVarG2;
        a.C0070a it = c0070a;
        kotlin.jvm.internal.h.f(it, "it");
        a<Object> aVar = this.f4739a;
        boolean z10 = ((v) aVar).f4818e;
        fc.h hVar = it.f4733a;
        if (z10) {
            if (((hVar == null || (yVarG2 = b.a.g(hVar)) == null) ? null : b.a.h(yVarG2)) != null) {
                return null;
            }
        }
        if (hVar == null) {
            return null;
        }
        m0 m0VarI = b.a.i(hVar);
        if (m0VarI == null && ((yVarG = b.a.g(hVar)) == null || (m0VarI = b.a.W(yVarG)) == null)) {
            m0VarI = b.a.i(hVar);
            kotlin.jvm.internal.h.c(m0VarI);
        }
        c1 c1VarF0 = b.a.f0(m0VarI);
        if (c1VarF0 == null) {
            return null;
        }
        List listR = b.a.r(c1VarF0);
        List listO = b.a.o(hVar);
        Iterator it2 = listR.iterator();
        Iterator it3 = listO.iterator();
        ArrayList arrayList = new ArrayList(Math.min(m9.n.Q0(listR), m9.n.Q0(listO)));
        while (it2.hasNext() && it3.hasNext()) {
            Object next = it2.next();
            fc.k kVar = (fc.k) it3.next();
            fc.m mVar = (fc.m) next;
            boolean zS = b.a.S(kVar);
            va.t tVar = it.f4734b;
            if (zS) {
                c0070a2 = new a.C0070a(null, tVar, mVar);
            } else {
                s1 s1VarV = b.a.v(kVar);
                aVar.getClass();
                va.e eVar = ((ya.c) ((v) aVar).f4816c.f12358a).f19348q;
                kotlin.jvm.internal.h.f(s1VarV, "<this>");
                c0070a2 = new a.C0070a(s1VarV, eVar.b(tVar, s1VarV.getAnnotations()), mVar);
            }
            arrayList.add(c0070a2);
        }
        return arrayList;
    }
}
