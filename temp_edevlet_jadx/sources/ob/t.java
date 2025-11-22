package ob;

import cc.c1;
import cc.e0;
import cc.i1;
import cc.k1;
import cc.m0;
import cc.s1;
import cc.y;
import dc.b;
import dc.d;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import ma.w0;

/* loaded from: classes2.dex */
public final class t implements dc.b {

    /* renamed from: a, reason: collision with root package name */
    public final Map<c1, c1> f11299a;

    /* renamed from: b, reason: collision with root package name */
    public final d.a f11300b;

    /* renamed from: c, reason: collision with root package name */
    public final dc.f f11301c;

    /* renamed from: d, reason: collision with root package name */
    public final dc.e f11302d;

    /* renamed from: e, reason: collision with root package name */
    public final x9.p<e0, e0, Boolean> f11303e;

    public t(HashMap map, d.a equalityAxioms, dc.f kotlinTypeRefiner, dc.e kotlinTypePreparator, x9.p pVar) {
        kotlin.jvm.internal.h.f(equalityAxioms, "equalityAxioms");
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        kotlin.jvm.internal.h.f(kotlinTypePreparator, "kotlinTypePreparator");
        this.f11299a = map;
        this.f11300b = equalityAxioms;
        this.f11301c = kotlinTypeRefiner;
        this.f11302d = kotlinTypePreparator;
        this.f11303e = pVar;
    }

    @Override // fc.n
    public final boolean A(fc.m mVar, fc.l lVar) {
        return b.a.D(mVar, lVar);
    }

    @Override // fc.n
    public final fc.j B(fc.i iVar) {
        return b.a.c(iVar);
    }

    @Override // fc.n
    public final boolean C(fc.h hVar) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        y yVarG = b.a.g(hVar);
        return (yVarG != null ? b.a.f(yVarG) : null) != null;
    }

    @Override // fc.n
    public final dc.j D(fc.d dVar) {
        return b.a.g0(dVar);
    }

    @Override // fc.n
    public final int E(fc.h hVar) {
        return b.a.b(hVar);
    }

    @Override // fc.n
    public final fc.m F(fc.l lVar, int r22) {
        return b.a.q(lVar, r22);
    }

    @Override // fc.n
    public final boolean G(fc.l lVar) {
        return b.a.F(lVar);
    }

    @Override // fc.n
    public final boolean H(fc.i iVar) {
        return b.a.U(iVar);
    }

    @Override // fc.n
    public final boolean I(fc.l lVar) {
        return b.a.M(lVar);
    }

    @Override // fc.n
    public final boolean J(fc.l lVar) {
        return b.a.L(lVar);
    }

    @Override // fc.n
    public final s1 K(ArrayList arrayList) {
        return c5.v.w(arrayList);
    }

    @Override // fc.n
    public final boolean L(fc.d receiver) {
        kotlin.jvm.internal.h.f(receiver, "$receiver");
        return receiver instanceof pb.a;
    }

    @Override // fc.n
    public final fc.i M(fc.i iVar) {
        m0 m0VarZ;
        kotlin.jvm.internal.h.f(iVar, "<this>");
        cc.q qVarE = b.a.e(iVar);
        return (qVarE == null || (m0VarZ = b.a.Z(qVarE)) == null) ? iVar : m0VarZ;
    }

    @Override // fc.n
    public final boolean N(fc.l lVar) {
        return b.a.O(lVar);
    }

    @Override // fc.n
    public final boolean O(fc.l lVar) {
        return b.a.I(lVar);
    }

    @Override // fc.n
    public final s1 P(fc.k kVar) {
        return b.a.v(kVar);
    }

    @Override // fc.o
    public final boolean Q(fc.i iVar, fc.i iVar2) {
        return b.a.E(iVar, iVar2);
    }

    @Override // fc.n
    public final w0 R(fc.p pVar) {
        return b.a.w(pVar);
    }

    @Override // fc.n
    public final s1 S(fc.d dVar) {
        return b.a.X(dVar);
    }

    @Override // fc.n
    public final boolean T(fc.l lVar) {
        return b.a.H(lVar);
    }

    @Override // fc.n
    public final void U(fc.i iVar, fc.l lVar) {
    }

    @Override // fc.n
    public final c1 V(fc.h hVar) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        m0 m0VarI = b.a.i(hVar);
        if (m0VarI == null) {
            m0VarI = Z(hVar);
        }
        return b.a.f0(m0VarI);
    }

    @Override // fc.n
    public final boolean W(fc.h receiver) {
        kotlin.jvm.internal.h.f(receiver, "$receiver");
        return receiver instanceof db.j;
    }

    @Override // fc.n
    public final boolean X(fc.h hVar) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        return b.a.N(Z(hVar)) != b.a.N(g(hVar));
    }

    @Override // fc.n
    public final boolean Y(fc.h hVar) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        return b.a.O(V(hVar)) && !b.a.P(hVar);
    }

    @Override // fc.n
    public final m0 Z(fc.h hVar) {
        m0 m0VarW;
        kotlin.jvm.internal.h.f(hVar, "<this>");
        y yVarG = b.a.g(hVar);
        if (yVarG != null && (m0VarW = b.a.W(yVarG)) != null) {
            return m0VarW;
        }
        m0 m0VarI = b.a.i(hVar);
        kotlin.jvm.internal.h.c(m0VarI);
        return m0VarI;
    }

    @Override // dc.b, fc.n
    public final m0 a(fc.i iVar, boolean z10) {
        return b.a.i0(iVar, z10);
    }

    @Override // fc.n
    public final int a0(fc.m mVar) {
        return b.a.B(mVar);
    }

    @Override // dc.b, fc.n
    public final fc.d b(fc.i iVar) {
        return b.a.d(this, iVar);
    }

    @Override // fc.n
    public final boolean b0(fc.i iVar) {
        return b.a.J(iVar);
    }

    @Override // dc.b, fc.n
    public final m0 c(fc.f fVar) {
        return b.a.h0(fVar);
    }

    @Override // fc.n
    public final Set c0(fc.i iVar) {
        return b.a.b0(this, iVar);
    }

    @Override // dc.b, fc.n
    public final m0 d(fc.h hVar) {
        return b.a.i(hVar);
    }

    @Override // fc.n
    public final int d0(fc.l lVar) {
        return b.a.a0(lVar);
    }

    @Override // dc.b, fc.n
    public final m0 e(fc.f fVar) {
        return b.a.W(fVar);
    }

    @Override // fc.n
    public final boolean e0(fc.d dVar) {
        return b.a.R(dVar);
    }

    @Override // dc.b, fc.n
    public final c1 f(fc.i iVar) {
        return b.a.f0(iVar);
    }

    @Override // fc.n
    public final dc.c f0(fc.i iVar) {
        return b.a.d0(this, iVar);
    }

    @Override // fc.n
    public final m0 g(fc.h hVar) {
        m0 m0VarH0;
        kotlin.jvm.internal.h.f(hVar, "<this>");
        y yVarG = b.a.g(hVar);
        if (yVarG != null && (m0VarH0 = b.a.h0(yVarG)) != null) {
            return m0VarH0;
        }
        m0 m0VarI = b.a.i(hVar);
        kotlin.jvm.internal.h.c(m0VarI);
        return m0VarI;
    }

    @Override // fc.n
    public final int g0(fc.k kVar) {
        return b.a.A(kVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004a  */
    @Override // fc.n
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean h(fc.l r5, fc.l r6) {
        /*
            r4 = this;
            java.lang.String r0 = "c1"
            kotlin.jvm.internal.h.f(r5, r0)
            java.lang.String r0 = "c2"
            kotlin.jvm.internal.h.f(r6, r0)
            boolean r0 = r5 instanceof cc.c1
            java.lang.String r1 = "Failed requirement."
            if (r0 == 0) goto L5c
            boolean r0 = r6 instanceof cc.c1
            if (r0 == 0) goto L52
            boolean r0 = dc.b.a.a(r5, r6)
            r1 = 1
            if (r0 != 0) goto L51
            cc.c1 r5 = (cc.c1) r5
            cc.c1 r6 = (cc.c1) r6
            dc.d$a r0 = r4.f11300b
            boolean r0 = r0.a(r5, r6)
            r2 = 0
            if (r0 == 0) goto L29
            goto L4a
        L29:
            java.util.Map<cc.c1, cc.c1> r0 = r4.f11299a
            if (r0 != 0) goto L2e
            goto L4c
        L2e:
            java.lang.Object r3 = r0.get(r5)
            cc.c1 r3 = (cc.c1) r3
            java.lang.Object r0 = r0.get(r6)
            cc.c1 r0 = (cc.c1) r0
            if (r3 == 0) goto L42
            boolean r6 = kotlin.jvm.internal.h.a(r3, r6)
            if (r6 != 0) goto L4a
        L42:
            if (r0 == 0) goto L4c
            boolean r5 = kotlin.jvm.internal.h.a(r0, r5)
            if (r5 == 0) goto L4c
        L4a:
            r5 = 1
            goto L4d
        L4c:
            r5 = 0
        L4d:
            if (r5 == 0) goto L50
            goto L51
        L50:
            r1 = 0
        L51:
            return r1
        L52:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = r1.toString()
            r5.<init>(r6)
            throw r5
        L5c:
            java.lang.IllegalArgumentException r5 = new java.lang.IllegalArgumentException
            java.lang.String r6 = r1.toString()
            r5.<init>(r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: ob.t.h(fc.l, fc.l):boolean");
    }

    @Override // dc.b
    public final s1 h0(fc.i iVar, fc.i iVar2) {
        return b.a.m(this, iVar, iVar2);
    }

    @Override // fc.n
    public final s1 i(fc.h hVar) {
        return b.a.Y(hVar);
    }

    @Override // fc.n
    public final boolean i0(fc.i iVar) {
        kotlin.jvm.internal.h.f(iVar, "<this>");
        return b.a.L(b.a.f0(iVar));
    }

    @Override // fc.n
    public final fc.k j(fc.h hVar, int r22) {
        return b.a.n(hVar, r22);
    }

    @Override // fc.n
    public final int j0(fc.j jVar) {
        kotlin.jvm.internal.h.f(jVar, "<this>");
        if (jVar instanceof fc.i) {
            return b.a.b((fc.h) jVar);
        }
        if (jVar instanceof fc.a) {
            return ((fc.a) jVar).size();
        }
        throw new IllegalStateException(("unknown type argument list type: " + jVar + ", " + kotlin.jvm.internal.w.a(jVar.getClass())).toString());
    }

    @Override // fc.n
    public final boolean k(fc.i iVar) {
        return b.a.N(iVar);
    }

    @Override // fc.n
    public final boolean k0(fc.h hVar) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        m0 m0VarI = b.a.i(hVar);
        return (m0VarI != null ? b.a.e(m0VarI) : null) != null;
    }

    @Override // fc.n
    public final boolean l(fc.i iVar) {
        kotlin.jvm.internal.h.f(iVar, "<this>");
        m0 m0VarI = b.a.i(iVar);
        return (m0VarI != null ? b.a.d(this, m0VarI) : null) != null;
    }

    @Override // fc.n
    public final Collection<fc.h> l0(fc.l lVar) {
        return b.a.e0(lVar);
    }

    @Override // fc.n
    public final fc.k m(fc.i iVar, int r32) {
        kotlin.jvm.internal.h.f(iVar, "<this>");
        if (r32 >= 0 && r32 < b.a.b(iVar)) {
            return b.a.n(iVar, r32);
        }
        return null;
    }

    @Override // fc.n
    public final y n(fc.h hVar) {
        return b.a.g(hVar);
    }

    @Override // fc.n
    public final k1 o(fc.h hVar) {
        return b.a.j(hVar);
    }

    @Override // fc.n
    public final i1 p(fc.c cVar) {
        return b.a.c0(cVar);
    }

    @Override // fc.n
    public final m0 q(fc.i iVar) {
        return b.a.k(iVar);
    }

    @Override // fc.n
    public final boolean r(fc.i iVar) {
        return b.a.T(iVar);
    }

    @Override // fc.n
    public final fc.b s(fc.d dVar) {
        return b.a.l(dVar);
    }

    @Override // fc.n
    public final fc.k t(fc.j jVar, int r42) {
        kotlin.jvm.internal.h.f(jVar, "<this>");
        if (jVar instanceof fc.i) {
            return b.a.n((fc.h) jVar, r42);
        }
        if (jVar instanceof fc.a) {
            fc.k kVar = ((fc.a) jVar).get(r42);
            kotlin.jvm.internal.h.e(kVar, "get(index)");
            return kVar;
        }
        throw new IllegalStateException(("unknown type argument list type: " + jVar + ", " + kotlin.jvm.internal.w.a(jVar.getClass())).toString());
    }

    @Override // fc.n
    public final boolean u(fc.i iVar) {
        kotlin.jvm.internal.h.f(iVar, "<this>");
        return b.a.G(b.a.f0(iVar));
    }

    @Override // fc.n
    public final m0 v(fc.e eVar) {
        return b.a.Z(eVar);
    }

    @Override // fc.n
    public final boolean w(fc.k kVar) {
        return b.a.S(kVar);
    }

    @Override // fc.n
    public final boolean x(fc.l lVar) {
        return b.a.G(lVar);
    }

    @Override // fc.n
    public final cc.q y(fc.i iVar) {
        return b.a.e(iVar);
    }

    @Override // fc.n
    public final fc.h z(fc.h hVar) {
        return b.a.j0(this, hVar);
    }
}
