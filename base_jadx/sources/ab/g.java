package ab;

import c5.v;
import cc.a1;
import cc.c1;
import cc.e0;
import cc.f0;
import cc.f1;
import cc.i1;
import cc.k1;
import cc.l1;
import cc.m0;
import cc.t1;
import ec.i;
import ja.k;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.j;
import m9.n;
import ma.w0;
import x9.l;

/* loaded from: classes2.dex */
public final class g extends l1 {

    /* renamed from: d, reason: collision with root package name */
    public static final ab.a f156d = v.K(2, false, true, null, 5).f(3);

    /* renamed from: e, reason: collision with root package name */
    public static final ab.a f157e = v.K(2, false, true, null, 5).f(2);

    /* renamed from: b, reason: collision with root package name */
    public final f f158b;

    /* renamed from: c, reason: collision with root package name */
    public final f1 f159c;

    public static final class a extends j implements l<dc.f, m0> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ ma.e f160a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(ma.e eVar, ab.a aVar, g gVar, m0 m0Var) {
            super(1);
            this.f160a = eVar;
        }

        @Override // x9.l
        public final m0 invoke(dc.f fVar) {
            lb.b bVarF;
            dc.f kotlinTypeRefiner = fVar;
            kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
            ma.e eVar = this.f160a;
            if (!(eVar instanceof ma.e)) {
                eVar = null;
            }
            if (eVar != null && (bVarF = sb.b.f(eVar)) != null) {
                kotlinTypeRefiner.t(bVarF);
            }
            return null;
        }
    }

    public g() {
        f fVar = new f();
        this.f158b = fVar;
        this.f159c = new f1(fVar);
    }

    @Override // cc.l1
    public final i1 d(e0 e0Var) {
        return new k1(h(e0Var, new ab.a(2, false, false, null, 62)));
    }

    public final l9.g<m0, Boolean> g(m0 m0Var, ma.e eVar, ab.a aVar) {
        if (m0Var.M0().getParameters().isEmpty()) {
            return new l9.g<>(m0Var, Boolean.FALSE);
        }
        if (k.y(m0Var)) {
            i1 i1Var = m0Var.K0().get(0);
            t1 t1VarB = i1Var.b();
            e0 type = i1Var.getType();
            kotlin.jvm.internal.h.e(type, "componentTypeProjection.type");
            return new l9.g<>(f0.f(m0Var.L0(), m0Var.M0(), b8.f.S(new k1(h(type, aVar), t1VarB)), m0Var.N0(), null), Boolean.FALSE);
        }
        if (v.y(m0Var)) {
            return new l9.g<>(i.c(ec.h.ERROR_RAW_TYPE, m0Var.M0().toString()), Boolean.FALSE);
        }
        vb.i iVarJ = eVar.J(this);
        kotlin.jvm.internal.h.e(iVarJ, "declaration.getMemberScope(this)");
        a1 a1VarL0 = m0Var.L0();
        c1 c1VarI = eVar.i();
        kotlin.jvm.internal.h.e(c1VarI, "declaration.typeConstructor");
        List<w0> parameters = eVar.i().getParameters();
        kotlin.jvm.internal.h.e(parameters, "declaration.typeConstructor.parameters");
        List<w0> list = parameters;
        ArrayList arrayList = new ArrayList(n.Q0(list));
        for (w0 parameter : list) {
            kotlin.jvm.internal.h.e(parameter, "parameter");
            f1 f1Var = this.f159c;
            arrayList.add(this.f158b.q(parameter, aVar, f1Var, f1Var.a(parameter, aVar)));
        }
        return new l9.g<>(f0.g(a1VarL0, c1VarI, arrayList, m0Var.N0(), iVarJ, new a(eVar, aVar, this, m0Var)), Boolean.TRUE);
    }

    public final e0 h(e0 e0Var, ab.a aVar) {
        ma.g gVarN = e0Var.M0().n();
        if (gVarN instanceof w0) {
            aVar.getClass();
            return h(this.f159c.a((w0) gVarN, ab.a.e(aVar, 0, true, null, null, 59)), aVar);
        }
        if (!(gVarN instanceof ma.e)) {
            throw new IllegalStateException(("Unexpected declaration kind: " + gVarN).toString());
        }
        ma.g gVarN2 = v.M(e0Var).M0().n();
        if (gVarN2 instanceof ma.e) {
            l9.g<m0, Boolean> gVarG = g(v.E(e0Var), (ma.e) gVarN, f156d);
            m0 m0Var = gVarG.f9582a;
            boolean zBooleanValue = gVarG.f9583b.booleanValue();
            l9.g<m0, Boolean> gVarG2 = g(v.M(e0Var), (ma.e) gVarN2, f157e);
            m0 m0Var2 = gVarG2.f9582a;
            return (zBooleanValue || gVarG2.f9583b.booleanValue()) ? new h(m0Var, m0Var2) : f0.c(m0Var, m0Var2);
        }
        throw new IllegalStateException(("For some reason declaration for upper bound is not a class but \"" + gVarN2 + "\" while for lower it's \"" + gVarN + '\"').toString());
    }
}
