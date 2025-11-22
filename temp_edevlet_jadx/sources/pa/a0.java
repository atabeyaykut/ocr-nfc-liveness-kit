package pa;

import cc.a1;
import cc.c1;
import cc.i1;
import cc.l1;
import cc.p1;
import cc.q1;
import cc.t1;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import ma.y0;

/* loaded from: classes2.dex */
public final class a0 extends b0 {

    /* renamed from: a, reason: collision with root package name */
    public final b0 f12872a;

    /* renamed from: b, reason: collision with root package name */
    public final p1 f12873b;

    /* renamed from: c, reason: collision with root package name */
    public p1 f12874c;

    /* renamed from: d, reason: collision with root package name */
    public ArrayList f12875d;

    /* renamed from: e, reason: collision with root package name */
    public ArrayList f12876e;
    public cc.m f;

    public a0(b0 b0Var, p1 p1Var) {
        this.f12872a = b0Var;
        this.f12873b = p1Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x005b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static /* synthetic */ void z0(int r15) {
        /*
            Method dump skipped, instructions count: 318
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: pa.a0.z0(int):void");
    }

    @Override // pa.b0
    public final vb.i C(l1 l1Var, dc.f fVar) {
        if (l1Var == null) {
            z0(5);
            throw null;
        }
        if (fVar == null) {
            z0(6);
            throw null;
        }
        vb.i iVarC = this.f12872a.C(l1Var, fVar);
        if (!this.f12873b.h()) {
            return new vb.n(iVarC, E0());
        }
        if (iVarC != null) {
            return iVarC;
        }
        z0(7);
        throw null;
    }

    @Override // ma.e
    public final vb.i C0() {
        vb.i iVarE0 = e0(sb.b.i(ob.i.d(this.f12872a)));
        if (iVarE0 != null) {
            return iVarE0;
        }
        z0(12);
        throw null;
    }

    @Override // ma.z
    public final boolean D0() {
        return this.f12872a.D0();
    }

    @Override // ma.e
    public final Collection<ma.e> E() {
        Collection<ma.e> collectionE = this.f12872a.E();
        if (collectionE != null) {
            return collectionE;
        }
        z0(31);
        throw null;
    }

    public final p1 E0() {
        if (this.f12874c == null) {
            p1 p1Var = this.f12873b;
            if (p1Var.h()) {
                this.f12874c = p1Var;
            } else {
                List<ma.w0> parameters = this.f12872a.i().getParameters();
                this.f12875d = new ArrayList(parameters.size());
                this.f12874c = a6.a.B(parameters, p1Var.g(), this, this.f12875d);
                ArrayList arrayList = this.f12875d;
                kotlin.jvm.internal.h.f(arrayList, "<this>");
                ArrayList arrayList2 = new ArrayList();
                for (Object obj : arrayList) {
                    if (Boolean.valueOf(!((ma.w0) obj).l0()).booleanValue()) {
                        arrayList2.add(obj);
                    }
                }
                this.f12876e = arrayList2;
            }
        }
        return this.f12874c;
    }

    @Override // ma.e
    public final boolean F() {
        return this.f12872a.F();
    }

    @Override // ma.e
    public final List<ma.o0> F0() {
        List<ma.o0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        z0(17);
        throw null;
    }

    @Override // ma.z
    public final boolean G() {
        return this.f12872a.G();
    }

    @Override // ma.h
    public final boolean H() {
        return this.f12872a.H();
    }

    @Override // ma.e
    public final boolean H0() {
        return this.f12872a.H0();
    }

    @Override // ma.e
    public final vb.i J(l1 l1Var) {
        if (l1Var == null) {
            z0(10);
            throw null;
        }
        vb.i iVarC = C(l1Var, sb.b.i(ob.i.d(this)));
        if (iVarC != null) {
            return iVarC;
        }
        z0(11);
        throw null;
    }

    @Override // ma.e
    public final ma.o0 J0() {
        throw new UnsupportedOperationException();
    }

    @Override // ma.e
    public final ma.d M() {
        return this.f12872a.M();
    }

    @Override // ma.e
    public final vb.i N() {
        vb.i iVarN = this.f12872a.N();
        if (iVarN != null) {
            return iVarN;
        }
        z0(15);
        throw null;
    }

    @Override // ma.e
    public final ma.e P() {
        return this.f12872a.P();
    }

    @Override // pa.b0, ma.j
    public final ma.e a() {
        ma.e eVarA = this.f12872a.a();
        if (eVarA != null) {
            return eVarA;
        }
        z0(21);
        throw null;
    }

    @Override // ma.e, ma.k, ma.j
    public final ma.j b() {
        ma.j jVarB = this.f12872a.b();
        if (jVarB != null) {
            return jVarB;
        }
        z0(22);
        throw null;
    }

    @Override // ma.t0
    public final ma.k c(p1 p1Var) {
        if (p1Var != null) {
            return p1Var.h() ? this : new a0(this, p1.f(p1Var.g(), E0().g()));
        }
        z0(23);
        throw null;
    }

    @Override // pa.b0
    public final vb.i e0(dc.f fVar) {
        if (fVar == null) {
            z0(13);
            throw null;
        }
        vb.i iVarE0 = this.f12872a.e0(fVar);
        if (!this.f12873b.h()) {
            return new vb.n(iVarE0, E0());
        }
        if (iVarE0 != null) {
            return iVarE0;
        }
        z0(14);
        throw null;
    }

    @Override // na.a
    public final na.h getAnnotations() {
        na.h annotations = this.f12872a.getAnnotations();
        if (annotations != null) {
            return annotations;
        }
        z0(19);
        throw null;
    }

    @Override // ma.j
    public final lb.f getName() {
        lb.f name = this.f12872a.getName();
        if (name != null) {
            return name;
        }
        z0(20);
        throw null;
    }

    @Override // ma.m
    public final ma.r0 getSource() {
        return ma.r0.f10243a;
    }

    @Override // ma.e, ma.n, ma.z
    public final ma.q getVisibility() {
        ma.q visibility = this.f12872a.getVisibility();
        if (visibility != null) {
            return visibility;
        }
        z0(27);
        throw null;
    }

    @Override // ma.e
    public final int h() {
        int r02 = this.f12872a.h();
        if (r02 != 0) {
            return r02;
        }
        z0(25);
        throw null;
    }

    @Override // ma.g
    public final c1 i() {
        c1 c1VarI = this.f12872a.i();
        if (this.f12873b.h()) {
            if (c1VarI != null) {
                return c1VarI;
            }
            z0(0);
            throw null;
        }
        if (this.f == null) {
            p1 p1VarE0 = E0();
            Collection<cc.e0> collectionL = c1VarI.l();
            ArrayList arrayList = new ArrayList(collectionL.size());
            Iterator<cc.e0> it = collectionL.iterator();
            while (it.hasNext()) {
                arrayList.add(p1VarE0.k(it.next(), t1.INVARIANT));
            }
            this.f = new cc.m(this, this.f12875d, arrayList, bc.c.f1191e);
        }
        cc.m mVar = this.f;
        if (mVar != null) {
            return mVar;
        }
        z0(1);
        throw null;
    }

    @Override // ma.z
    public final boolean isExternal() {
        return this.f12872a.isExternal();
    }

    @Override // ma.e
    public final boolean isInline() {
        return this.f12872a.isInline();
    }

    @Override // ma.e, ma.z
    public final ma.a0 j() {
        ma.a0 a0VarJ = this.f12872a.j();
        if (a0VarJ != null) {
            return a0VarJ;
        }
        z0(26);
        throw null;
    }

    @Override // ma.e
    public final Collection<ma.d> k() {
        Collection<ma.d> collectionK = this.f12872a.k();
        ArrayList arrayList = new ArrayList(collectionK.size());
        for (ma.d dVar : collectionK) {
            arrayList.add(((ma.d) dVar.r().h(dVar.a()).a(dVar.j()).q(dVar.getVisibility()).p(dVar.k0()).k().build()).c(E0()));
        }
        return arrayList;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.f(this, d10);
    }

    @Override // ma.e, ma.g
    public final cc.m0 q() {
        a1 a1VarC;
        List<i1> listE = q1.e(i().getParameters());
        na.h annotations = getAnnotations();
        kotlin.jvm.internal.h.f(annotations, "annotations");
        if (annotations.isEmpty()) {
            a1.f2258b.getClass();
            a1VarC = a1.f2259c;
        } else {
            a1.a aVar = a1.f2258b;
            List listS = b8.f.S(new cc.k(annotations));
            aVar.getClass();
            a1VarC = a1.a.c(listS);
        }
        return cc.f0.h(listE, C0(), a1VarC, i(), false);
    }

    @Override // ma.e, ma.h
    public final List<ma.w0> s() {
        E0();
        ArrayList arrayList = this.f12876e;
        if (arrayList != null) {
            return arrayList;
        }
        z0(30);
        throw null;
    }

    @Override // ma.e
    public final boolean u() {
        return this.f12872a.u();
    }

    @Override // ma.e
    public final vb.i x0() {
        vb.i iVarX0 = this.f12872a.x0();
        if (iVarX0 != null) {
            return iVarX0;
        }
        z0(28);
        throw null;
    }

    @Override // ma.e
    public final boolean y() {
        return this.f12872a.y();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // ma.e
    public final y0<cc.m0> y0() {
        y0<cc.m0> y0VarY0 = this.f12872a.y0();
        if (y0VarY0 == null) {
            return null;
        }
        boolean z10 = y0VarY0 instanceof ma.v;
        t1 t1Var = t1.INVARIANT;
        p1 p1Var = this.f12873b;
        if (z10) {
            ma.v vVar = (ma.v) y0VarY0;
            cc.m0 m0Var = (cc.m0) vVar.f10249b;
            if (m0Var != null && !p1Var.h()) {
                m0Var = (cc.m0) E0().k(m0Var, t1Var);
            }
            return new ma.v(vVar.f10248a, m0Var);
        }
        if (!(y0VarY0 instanceof ma.c0)) {
            throw new j7.p();
        }
        Iterable<l9.g> iterableA = y0VarY0.a();
        ArrayList arrayList = new ArrayList(m9.n.Q0(iterableA));
        for (l9.g gVar : iterableA) {
            lb.f fVar = (lb.f) gVar.f9582a;
            cc.m0 m0Var2 = (cc.m0) ((fc.i) gVar.f9583b);
            if (m0Var2 != null && !p1Var.h()) {
                m0Var2 = (cc.m0) E0().k(m0Var2, t1Var);
            }
            arrayList.add(new l9.g(fVar, m0Var2));
        }
        return new ma.c0(arrayList);
    }
}
