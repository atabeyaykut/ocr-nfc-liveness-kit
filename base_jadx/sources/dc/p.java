package dc;

import cc.c1;
import cc.i1;
import cc.k1;
import cc.m0;
import cc.s1;
import cc.y;
import dc.b;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Set;
import kotlin.jvm.internal.w;
import ma.w0;

/* loaded from: classes2.dex */
public final class p implements b {

    /* renamed from: a, reason: collision with root package name */
    public static final p f4850a = new p();

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
    public final j D(fc.d dVar) {
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
    public final c f0(fc.i iVar) {
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

    @Override // fc.n
    public final boolean h(fc.l lVar, fc.l lVar2) {
        return b.a.a(lVar, lVar2);
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
        throw new IllegalStateException(("unknown type argument list type: " + jVar + ", " + w.a(jVar.getClass())).toString());
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

    public final boolean m0(fc.h hVar) {
        kotlin.jvm.internal.h.f(hVar, "<this>");
        return (hVar instanceof fc.i) && b.a.N((fc.i) hVar);
    }

    @Override // fc.n
    public final y n(fc.h hVar) {
        return b.a.g(hVar);
    }

    public final fc.h n0(fc.h hVar) {
        m0 m0VarI0;
        kotlin.jvm.internal.h.f(hVar, "<this>");
        m0 m0VarI = b.a.i(hVar);
        return (m0VarI == null || (m0VarI0 = b.a.i0(m0VarI, true)) == null) ? hVar : m0VarI0;
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
        throw new IllegalStateException(("unknown type argument list type: " + jVar + ", " + w.a(jVar.getClass())).toString());
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
