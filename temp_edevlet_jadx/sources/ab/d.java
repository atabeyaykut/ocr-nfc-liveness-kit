package ab;

import c5.v;
import c5.y;
import cb.a0;
import cb.u;
import cb.w;
import cc.c1;
import cc.e0;
import cc.f0;
import cc.f1;
import cc.m0;
import cc.s1;
import cc.t1;
import ec.i;
import m9.t;
import na.h;
import p4.g7;
import ya.j;
import yb.l;

/* loaded from: classes2.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final g7 f151a;

    /* renamed from: b, reason: collision with root package name */
    public final j f152b;

    /* renamed from: c, reason: collision with root package name */
    public final f f153c;

    /* renamed from: d, reason: collision with root package name */
    public final f1 f154d;

    public d(g7 c10, j typeParameterResolver) {
        kotlin.jvm.internal.h.f(c10, "c");
        kotlin.jvm.internal.h.f(typeParameterResolver, "typeParameterResolver");
        this.f151a = c10;
        this.f152b = typeParameterResolver;
        f fVar = new f();
        this.f153c = fVar;
        this.f154d = new f1(fVar);
    }

    public static final ec.f d(cb.j jVar) {
        return i.c(ec.h.UNRESOLVED_JAVA_CLASS, jVar.j());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x01d4  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0397  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x013d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0155  */
    /* JADX WARN: Type inference failed for: r13v11 */
    /* JADX WARN: Type inference failed for: r13v12, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r13v13, types: [java.util.ArrayList] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final cc.m0 a(cb.j r20, ab.a r21, cc.m0 r22) {
        /*
            Method dump skipped, instructions count: 990
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: ab.d.a(cb.j, ab.a, cc.m0):cc.m0");
    }

    public final c1 b(cb.j jVar) {
        lb.b bVarL = lb.b.l(new lb.c(jVar.w()));
        l lVarC = ((ya.c) this.f151a.f12358a).f19336d.c();
        c1 c1VarI = lVarC.f19452l.a(bVarL, b8.f.S(0)).i();
        kotlin.jvm.internal.h.e(c1VarI, "c.components.deserialize…istOf(0)).typeConstructor");
        return c1VarI;
    }

    public final s1 c(cb.f arrayType, a aVar, boolean z10) {
        kotlin.jvm.internal.h.f(arrayType, "arrayType");
        w wVarJ = arrayType.J();
        u uVar = wVarJ instanceof u ? (u) wVarJ : null;
        ja.l type = uVar != null ? uVar.getType() : null;
        g7 g7Var = this.f151a;
        ya.e eVar = new ya.e(g7Var, arrayType, true);
        boolean z11 = aVar.f144d;
        if (type != null) {
            m0 m0VarQ = g7Var.a().m().q(type);
            kotlin.jvm.internal.h.e(m0VarQ, "c.module.builtIns.getPri…KotlinType(primitiveType)");
            y.z(m0VarQ, h.a.a(t.k1(eVar, m0VarQ.getAnnotations())));
            return z11 ? m0VarQ : f0.c(m0VarQ, m0VarQ.Q0(true));
        }
        e0 e0VarE = e(wVarJ, v.K(2, z11, false, null, 6));
        t1 t1Var = t1.OUT_VARIANCE;
        t1 t1Var2 = t1.INVARIANT;
        if (!z11) {
            return f0.c(g7Var.a().m().i(t1Var2, e0VarE, eVar), g7Var.a().m().i(t1Var, e0VarE, eVar).Q0(true));
        }
        if (!z10) {
            t1Var = t1Var2;
        }
        return g7Var.a().m().i(t1Var, e0VarE, eVar);
    }

    public final e0 e(w wVar, a aVar) {
        m0 m0VarA;
        boolean z10 = wVar instanceof u;
        g7 g7Var = this.f151a;
        if (z10) {
            ja.l type = ((u) wVar).getType();
            m0 m0VarS = type != null ? g7Var.a().m().s(type) : g7Var.a().m().w();
            kotlin.jvm.internal.h.e(m0VarS, "{\n                val pr…ns.unitType\n            }");
            return m0VarS;
        }
        boolean z11 = false;
        if (!(wVar instanceof cb.j)) {
            if (wVar instanceof cb.f) {
                return c((cb.f) wVar, aVar, false);
            }
            if (wVar instanceof a0) {
                sa.e0 e0VarS = ((a0) wVar).s();
                if (e0VarS != null) {
                    return e(e0VarS, aVar);
                }
            } else if (wVar != null) {
                throw new UnsupportedOperationException("Unsupported type: " + wVar);
            }
            return g7Var.a().m().o();
        }
        cb.j jVar = (cb.j) wVar;
        if (!aVar.f144d && aVar.f141a != 1) {
            z11 = true;
        }
        boolean zV = jVar.v();
        if (zV || z11) {
            m0 m0VarA2 = a(jVar, aVar.f(3), null);
            if (m0VarA2 != null && (m0VarA = a(jVar, aVar.f(2), m0VarA2)) != null) {
                return zV ? new h(m0VarA2, m0VarA) : f0.c(m0VarA2, m0VarA);
            }
        } else {
            m0 m0VarA3 = a(jVar, aVar, null);
            if (m0VarA3 != null) {
                return m0VarA3;
            }
        }
        return d(jVar);
    }
}
