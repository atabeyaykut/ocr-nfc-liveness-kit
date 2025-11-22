package ec;

import cc.l1;
import cc.p1;
import m9.v;
import ma.a0;
import ma.b;
import ma.k;
import ma.p;
import ma.r0;
import na.h;
import pa.l;
import pa.n;

/* loaded from: classes2.dex */
public final class a extends n {
    /* JADX WARN: Illegal instructions before constructor call */
    public a(lb.f fVar) {
        i iVar = i.f5277a;
        c cVar = i.f5278b;
        a0 a0Var = a0.OPEN;
        v vVar = v.f10173a;
        r0.a aVar = r0.f10243a;
        super(cVar, fVar, a0Var, 1, vVar, bc.c.f1191e);
        l lVar = new l(this, null, h.a.f10653a, true, b.a.DECLARATION, aVar);
        lVar.V0(vVar, p.f10224d);
        String str = lVar.getName().f9676a;
        kotlin.jvm.internal.h.e(str, "errorConstructor.name.toString()");
        e eVarB = i.b(9, str, "");
        h hVar = h.ERROR_CLASS;
        lVar.S0(new f(i.d(hVar, new String[0]), eVarB, hVar, vVar, false, new String[0]));
        K0(eVarB, x5.a.r(lVar), lVar);
    }

    @Override // pa.b, pa.b0
    public final vb.i C(l1 typeSubstitution, dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(typeSubstitution, "typeSubstitution");
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        String str = getName().f9676a;
        kotlin.jvm.internal.h.e(str, "name.toString()");
        return i.b(9, str, typeSubstitution.toString());
    }

    @Override // pa.b
    /* renamed from: E0 */
    public final ma.e c(p1 substitutor) {
        kotlin.jvm.internal.h.f(substitutor, "substitutor");
        return this;
    }

    @Override // pa.b, ma.t0
    public final k c(p1 substitutor) {
        kotlin.jvm.internal.h.f(substitutor, "substitutor");
        return this;
    }

    @Override // pa.n
    public final String toString() {
        String strO = getName().o();
        kotlin.jvm.internal.h.e(strO, "name.asString()");
        return strO;
    }
}
