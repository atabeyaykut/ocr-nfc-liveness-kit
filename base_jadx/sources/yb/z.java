package yb;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import ma.a1;
import ma.b;
import ma.r0;
import ma.w0;
import na.h;
import pa.v0;
import yb.g0;

/* loaded from: classes2.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    public final n f19492a;

    /* renamed from: b, reason: collision with root package name */
    public final f f19493b;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends na.c>> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ mb.p f19495b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ yb.c f19496c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(mb.p pVar, yb.c cVar) {
            super(0);
            this.f19495b = pVar;
            this.f19496c = cVar;
        }

        @Override // x9.a
        public final List<? extends na.c> invoke() {
            z zVar = z.this;
            g0 g0VarA = zVar.a(zVar.f19492a.f19466c);
            List<? extends na.c> listV1 = g0VarA != null ? m9.t.v1(zVar.f19492a.f19464a.f19446e.b(g0VarA, this.f19495b, this.f19496c)) : null;
            return listV1 == null ? m9.v.f10173a : listV1;
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<List<? extends na.c>> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ boolean f19498b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ gb.m f19499c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(boolean z10, gb.m mVar) {
            super(0);
            this.f19498b = z10;
            this.f19499c = mVar;
        }

        @Override // x9.a
        public final List<? extends na.c> invoke() {
            List<? extends na.c> listV1;
            z zVar = z.this;
            g0 g0VarA = zVar.a(zVar.f19492a.f19466c);
            if (g0VarA != null) {
                n nVar = zVar.f19492a;
                boolean z10 = this.f19498b;
                gb.m mVar = this.f19499c;
                listV1 = m9.t.v1(z10 ? nVar.f19464a.f19446e.h(g0VarA, mVar) : nVar.f19464a.f19446e.k(g0VarA, mVar));
            } else {
                listV1 = null;
            }
            return listV1 == null ? m9.v.f10173a : listV1;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<List<? extends na.c>> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ g0 f19501b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ mb.p f19502c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ yb.c f19503d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ int f19504e;
        public final /* synthetic */ gb.t f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(g0 g0Var, mb.p pVar, yb.c cVar, int r52, gb.t tVar) {
            super(0);
            this.f19501b = g0Var;
            this.f19502c = pVar;
            this.f19503d = cVar;
            this.f19504e = r52;
            this.f = tVar;
        }

        @Override // x9.a
        public final List<? extends na.c> invoke() {
            return m9.t.v1(z.this.f19492a.f19464a.f19446e.c(this.f19501b, this.f19502c, this.f19503d, this.f19504e, this.f));
        }
    }

    public z(n c10) {
        kotlin.jvm.internal.h.f(c10, "c");
        this.f19492a = c10;
        l lVar = c10.f19464a;
        this.f19493b = new f(lVar.f19443b, lVar.f19452l);
    }

    public final g0 a(ma.j jVar) {
        if (jVar instanceof ma.e0) {
            lb.c cVarD = ((ma.e0) jVar).d();
            n nVar = this.f19492a;
            return new g0.b(cVarD, nVar.f19465b, nVar.f19467d, nVar.f19469g);
        }
        if (jVar instanceof ac.d) {
            return ((ac.d) jVar).f180z;
        }
        return null;
    }

    public final na.h b(mb.p pVar, int r42, yb.c cVar) {
        return !ib.b.f7326c.c(r42).booleanValue() ? h.a.f10653a : new ac.o(this.f19492a.f19464a.f19442a, new a(pVar, cVar));
    }

    public final na.h c(gb.m mVar, boolean z10) {
        return !ib.b.f7326c.c(mVar.f6394d).booleanValue() ? h.a.f10653a : new ac.o(this.f19492a.f19464a.f19442a, new b(z10, mVar));
    }

    public final ac.c d(gb.c cVar, boolean z10) {
        n nVar = this.f19492a;
        ma.j jVar = nVar.f19466c;
        kotlin.jvm.internal.h.d(jVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassDescriptor");
        ma.e eVar = (ma.e) jVar;
        int r12 = cVar.f6256d;
        yb.c cVar2 = yb.c.FUNCTION;
        ac.c cVar3 = new ac.c(eVar, null, b(cVar, r12, cVar2), z10, b.a.DECLARATION, cVar, nVar.f19465b, nVar.f19467d, nVar.f19468e, nVar.f19469g, null);
        n nVarA = nVar.a(cVar3, m9.v.f10173a, nVar.f19465b, nVar.f19467d, nVar.f19468e, nVar.f);
        List<gb.t> list = cVar.f6257e;
        kotlin.jvm.internal.h.e(list, "proto.valueParameterList");
        cVar3.V0(nVarA.f19471i.h(list, cVar, cVar2), i0.a((gb.w) ib.b.f7327d.c(cVar.f6256d)));
        cVar3.S0(eVar.q());
        cVar3.f13021t = eVar.G();
        cVar3.f13025z = !ib.b.f7336n.c(cVar.f6256d).booleanValue();
        return cVar3;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final ac.l e(gb.h r31) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yb.z.e(gb.h):ac.l");
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00f2  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0107  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final ac.k f(gb.m r30) {
        /*
            Method dump skipped, instructions count: 949
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: yb.z.f(gb.m):ac.k");
    }

    public final ac.m g(gb.q proto) {
        n nVar;
        gb.p underlyingType;
        gb.p expandedType;
        kotlin.jvm.internal.h.f(proto, "proto");
        List<gb.a> list = proto.f6513l;
        kotlin.jvm.internal.h.e(list, "proto.annotationList");
        List<gb.a> list2 = list;
        ArrayList arrayList = new ArrayList(m9.n.Q0(list2));
        Iterator<T> it = list2.iterator();
        while (true) {
            boolean zHasNext = it.hasNext();
            nVar = this.f19492a;
            if (!zHasNext) {
                break;
            }
            gb.a it2 = (gb.a) it.next();
            kotlin.jvm.internal.h.e(it2, "it");
            arrayList.add(this.f19493b.a(it2, nVar.f19465b));
        }
        ac.m mVar = new ac.m(nVar.f19464a.f19442a, nVar.f19466c, h.a.a(arrayList), a6.a.o(nVar.f19465b, proto.f6508e), i0.a((gb.w) ib.b.f7327d.c(proto.f6507d)), proto, nVar.f19465b, nVar.f19467d, nVar.f19468e, nVar.f19469g);
        List<gb.r> list3 = proto.f;
        kotlin.jvm.internal.h.e(list3, "proto.typeParameterList");
        k0 k0Var = nVar.a(mVar, list3, nVar.f19465b, nVar.f19467d, nVar.f19468e, nVar.f).f19470h;
        List<w0> listB = k0Var.b();
        ib.g typeTable = nVar.f19467d;
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        int r52 = proto.f6506c;
        if ((r52 & 4) == 4) {
            underlyingType = proto.f6509g;
            kotlin.jvm.internal.h.e(underlyingType, "underlyingType");
        } else {
            if (!((r52 & 8) == 8)) {
                throw new IllegalStateException("No underlyingType in ProtoBuf.TypeAlias".toString());
            }
            underlyingType = typeTable.a(proto.f6510h);
        }
        cc.m0 m0VarD = k0Var.d(underlyingType, false);
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        int r42 = proto.f6506c;
        if ((r42 & 16) == 16) {
            expandedType = proto.f6511j;
            kotlin.jvm.internal.h.e(expandedType, "expandedType");
        } else {
            if (!((r42 & 32) == 32)) {
                throw new IllegalStateException("No expandedType in ProtoBuf.TypeAlias".toString());
            }
            expandedType = typeTable.a(proto.f6512k);
        }
        mVar.E0(listB, m0VarD, k0Var.d(expandedType, false));
        return mVar;
    }

    public final List<a1> h(List<gb.t> list, mb.p pVar, yb.c cVar) {
        n nVar = this.f19492a;
        ma.j jVar = nVar.f19466c;
        kotlin.jvm.internal.h.d(jVar, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.CallableDescriptor");
        ma.a aVar = (ma.a) jVar;
        ma.j jVarB = aVar.b();
        kotlin.jvm.internal.h.e(jVarB, "callableDescriptor.containingDeclaration");
        g0 g0VarA = a(jVarB);
        List<gb.t> list2 = list;
        ArrayList arrayList = new ArrayList(m9.n.Q0(list2));
        int r12 = 0;
        for (Object obj : list2) {
            int r24 = r12 + 1;
            if (r12 < 0) {
                b8.f.k0();
                throw null;
            }
            gb.t tVar = (gb.t) obj;
            int r10 = (tVar.f6562c & 1) == 1 ? tVar.f6563d : 0;
            na.h oVar = (g0VarA == null || !androidx.room.util.a.i(ib.b.f7326c, r10, "HAS_ANNOTATIONS.get(flags)")) ? h.a.f10653a : new ac.o(nVar.f19464a.f19442a, new c(g0VarA, pVar, cVar, r12, tVar));
            lb.f fVarO = a6.a.o(nVar.f19465b, tVar.f6564e);
            ib.g typeTable = nVar.f19467d;
            gb.p pVarE = ib.f.e(tVar, typeTable);
            k0 k0Var = nVar.f19470h;
            cc.e0 e0VarG = k0Var.g(pVarE);
            boolean zI = androidx.room.util.a.i(ib.b.G, r10, "DECLARES_DEFAULT_VALUE.get(flags)");
            boolean zI2 = androidx.room.util.a.i(ib.b.H, r10, "IS_CROSSINLINE.get(flags)");
            Boolean boolC = ib.b.I.c(r10);
            kotlin.jvm.internal.h.e(boolC, "IS_NOINLINE.get(flags)");
            boolean zBooleanValue = boolC.booleanValue();
            kotlin.jvm.internal.h.f(typeTable, "typeTable");
            int r32 = tVar.f6562c;
            gb.p pVarA = (r32 & 16) == 16 ? tVar.f6566h : (r32 & 32) == 32 ? typeTable.a(tVar.f6567j) : null;
            cc.e0 e0VarG2 = pVarA != null ? k0Var.g(pVarA) : null;
            ArrayList arrayList2 = arrayList;
            arrayList2.add(new v0(aVar, null, r12, oVar, fVarO, e0VarG, zI, zI2, zBooleanValue, e0VarG2, r0.f10243a));
            arrayList = arrayList2;
            r12 = r24;
        }
        return m9.t.v1(arrayList);
    }
}
