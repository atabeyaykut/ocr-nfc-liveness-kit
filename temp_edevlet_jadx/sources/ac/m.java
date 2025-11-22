package ac;

import cc.e0;
import cc.m0;
import cc.n1;
import cc.p1;
import cc.q0;
import cc.q1;
import cc.t1;
import gb.q;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import m9.v;
import ma.a0;
import ma.a1;
import ma.b;
import ma.w0;
import ma.x0;
import na.h;
import pa.o0;
import pa.r0;
import pa.s0;
import pa.x;
import vb.i;

/* loaded from: classes2.dex */
public final class m extends pa.f implements h {

    /* renamed from: h, reason: collision with root package name */
    public final bc.l f235h;

    /* renamed from: j, reason: collision with root package name */
    public final q f236j;

    /* renamed from: k, reason: collision with root package name */
    public final ib.c f237k;

    /* renamed from: l, reason: collision with root package name */
    public final ib.g f238l;

    /* renamed from: m, reason: collision with root package name */
    public final ib.h f239m;

    /* renamed from: n, reason: collision with root package name */
    public final g f240n;

    /* renamed from: p, reason: collision with root package name */
    public Collection<? extends r0> f241p;

    /* renamed from: q, reason: collision with root package name */
    public m0 f242q;

    /* renamed from: r, reason: collision with root package name */
    public m0 f243r;

    /* renamed from: s, reason: collision with root package name */
    public List<? extends w0> f244s;

    /* renamed from: t, reason: collision with root package name */
    public m0 f245t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public m(bc.l storageManager, ma.j containingDeclaration, na.h hVar, lb.f fVar, ma.q visibility, q proto, ib.c nameResolver, ib.g typeTable, ib.h versionRequirementTable, g gVar) {
        super(containingDeclaration, hVar, fVar, visibility);
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.h.f(visibility, "visibility");
        kotlin.jvm.internal.h.f(proto, "proto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        kotlin.jvm.internal.h.f(versionRequirementTable, "versionRequirementTable");
        this.f235h = storageManager;
        this.f236j = proto;
        this.f237k = nameResolver;
        this.f238l = typeTable;
        this.f239m = versionRequirementTable;
        this.f240n = gVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r16v1, types: [pa.x] */
    /* JADX WARN: Type inference failed for: r5v3, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r7v0, types: [ma.u, pa.s0] */
    public final void E0(List<? extends w0> list, m0 underlyingType, m0 expandedType) {
        vb.i iVarC0;
        ma.d dVarC;
        o0 o0Var;
        v vVar;
        kotlin.jvm.internal.h.f(underlyingType, "underlyingType");
        kotlin.jvm.internal.h.f(expandedType, "expandedType");
        this.f = list;
        this.f242q = underlyingType;
        this.f243r = expandedType;
        this.f244s = x0.b(this);
        ma.e eVarP = p();
        if (eVarP == null || (iVarC0 = eVarP.C0()) == null) {
            iVarC0 = i.b.f18453b;
        }
        this.f245t = q1.p(this, iVarC0, new pa.e(this));
        ma.e eVarP2 = p();
        v vVar2 = v.f10173a;
        if (eVarP2 != null) {
            Collection<ma.d> collectionK = eVarP2.k();
            kotlin.jvm.internal.h.e(collectionK, "classDescriptor.constructors");
            ?? arrayList = new ArrayList();
            for (ma.d it : collectionK) {
                s0.a aVar = s0.M;
                kotlin.jvm.internal.h.e(it, "it");
                aVar.getClass();
                bc.l storageManager = this.f235h;
                kotlin.jvm.internal.h.f(storageManager, "storageManager");
                o0 o0VarH = null;
                p1 p1VarD = p() == null ? null : p1.d(R());
                if (p1VarD != null && (dVarC = it.c(p1VarD)) != null) {
                    na.h annotations = it.getAnnotations();
                    b.a aVarK0 = it.k0();
                    kotlin.jvm.internal.h.e(aVarK0, "constructor.kind");
                    ma.r0 source = getSource();
                    kotlin.jvm.internal.h.e(source, "typeAliasDescriptor.source");
                    ?? s0Var = new s0(storageManager, this, dVarC, null, annotations, aVarK0, source);
                    List<a1> listG = it.g();
                    if (listG == null) {
                        x.C(28);
                        throw null;
                    }
                    ArrayList arrayListM0 = x.M0(s0Var, listG, p1VarD, false, false, null);
                    if (arrayListM0 != null) {
                        m0 m0VarC = q0.c(c5.v.E(dVarC.getReturnType().P0()), q());
                        ma.o0 o0VarA0 = it.a0();
                        h.a.C0201a c0201a = h.a.f10653a;
                        t1 t1Var = t1.INVARIANT;
                        if (o0VarA0 != null) {
                            o0Var = s0Var;
                            o0VarH = ob.h.h(o0Var, p1VarD.i(o0VarA0.getType(), t1Var), c0201a);
                        } else {
                            o0Var = s0Var;
                        }
                        o0 o0Var2 = o0VarH;
                        ma.e eVarP3 = p();
                        if (eVarP3 != null) {
                            List<ma.o0> listP0 = it.p0();
                            kotlin.jvm.internal.h.e(listP0, "constructor.contextReceiverParameters");
                            List<ma.o0> list2 = listP0;
                            ?? arrayList2 = new ArrayList(m9.n.Q0(list2));
                            for (ma.o0 o0Var3 : list2) {
                                e0 e0VarI = p1VarD.i(o0Var3.getType(), t1Var);
                                wb.g value = o0Var3.getValue();
                                kotlin.jvm.internal.h.d(value, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.receivers.ImplicitContextReceiver");
                                arrayList2.add(new o0(eVarP3, new wb.b(eVarP3, e0VarI, ((wb.f) value).a()), c0201a));
                            }
                            vVar = arrayList2;
                        } else {
                            vVar = vVar2;
                        }
                        o0Var.N0(o0Var2, null, vVar, s(), arrayListM0, m0VarC, a0.FINAL, this.f12889e);
                        o0VarH = o0Var;
                    }
                }
                if (o0VarH != null) {
                    arrayList.add(o0VarH);
                }
            }
            vVar2 = arrayList;
        }
        this.f241p = vVar2;
    }

    @Override // ac.h
    public final ib.g O() {
        throw null;
    }

    @Override // ma.v0
    public final m0 R() {
        m0 m0Var = this.f243r;
        if (m0Var != null) {
            return m0Var;
        }
        kotlin.jvm.internal.h.n("expandedType");
        throw null;
    }

    @Override // ac.h
    public final ib.c U() {
        throw null;
    }

    @Override // ac.h
    public final g X() {
        return this.f240n;
    }

    @Override // ma.t0
    public final ma.k c(p1 substitutor) {
        kotlin.jvm.internal.h.f(substitutor, "substitutor");
        if (substitutor.h()) {
            return this;
        }
        bc.l lVar = this.f235h;
        ma.j containingDeclaration = b();
        kotlin.jvm.internal.h.e(containingDeclaration, "containingDeclaration");
        na.h annotations = getAnnotations();
        kotlin.jvm.internal.h.e(annotations, "annotations");
        lb.f name = getName();
        kotlin.jvm.internal.h.e(name, "name");
        m mVar = new m(lVar, containingDeclaration, annotations, name, this.f12889e, this.f236j, this.f237k, this.f238l, this.f239m, this.f240n);
        List<w0> listS = s();
        m0 m0VarC0 = c0();
        t1 t1Var = t1.INVARIANT;
        mVar.E0(listS, n1.a(substitutor.i(m0VarC0, t1Var)), n1.a(substitutor.i(R(), t1Var)));
        return mVar;
    }

    @Override // ma.v0
    public final m0 c0() {
        m0 m0Var = this.f242q;
        if (m0Var != null) {
            return m0Var;
        }
        kotlin.jvm.internal.h.n("underlyingType");
        throw null;
    }

    @Override // ma.v0
    public final ma.e p() {
        if (c5.v.y(R())) {
            return null;
        }
        ma.g gVarN = R().M0().n();
        if (gVarN instanceof ma.e) {
            return (ma.e) gVarN;
        }
        return null;
    }

    @Override // ma.g
    public final m0 q() {
        m0 m0Var = this.f245t;
        if (m0Var != null) {
            return m0Var;
        }
        kotlin.jvm.internal.h.n("defaultTypeImpl");
        throw null;
    }
}
