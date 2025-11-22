package ac;

import cc.c1;
import cc.e0;
import cc.m0;
import gb.b;
import gb.q;
import gb.r;
import ib.h;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.internal.w;
import m9.p;
import m9.t;
import m9.v;
import ma.a0;
import ma.d0;
import ma.l0;
import ma.o0;
import ma.p0;
import ma.q0;
import ma.r0;
import ma.u0;
import ma.w0;
import ma.x0;
import ma.y0;
import na.h;
import ob.h;
import pa.s;
import vb.i;
import vb.l;
import yb.g0;
import yb.h0;
import yb.i0;
import yb.u;
import yb.z;

/* loaded from: classes2.dex */
public final class d extends pa.b implements ma.j {
    public final na.h A;

    /* renamed from: e, reason: collision with root package name */
    public final gb.b f164e;
    public final ib.a f;

    /* renamed from: g, reason: collision with root package name */
    public final r0 f165g;

    /* renamed from: h, reason: collision with root package name */
    public final lb.b f166h;

    /* renamed from: j, reason: collision with root package name */
    public final a0 f167j;

    /* renamed from: k, reason: collision with root package name */
    public final ma.o f168k;

    /* renamed from: l, reason: collision with root package name */
    public final int f169l;

    /* renamed from: m, reason: collision with root package name */
    public final yb.n f170m;

    /* renamed from: n, reason: collision with root package name */
    public final vb.j f171n;

    /* renamed from: p, reason: collision with root package name */
    public final b f172p;

    /* renamed from: q, reason: collision with root package name */
    public final p0<a> f173q;

    /* renamed from: r, reason: collision with root package name */
    public final c f174r;

    /* renamed from: s, reason: collision with root package name */
    public final ma.j f175s;

    /* renamed from: t, reason: collision with root package name */
    public final bc.j<ma.d> f176t;

    /* renamed from: v, reason: collision with root package name */
    public final bc.i<Collection<ma.d>> f177v;
    public final bc.j<ma.e> w;

    /* renamed from: x, reason: collision with root package name */
    public final bc.i<Collection<ma.e>> f178x;

    /* renamed from: y, reason: collision with root package name */
    public final bc.j<y0<m0>> f179y;

    /* renamed from: z, reason: collision with root package name */
    public final g0.a f180z;

    public final class a extends ac.i {

        /* renamed from: g, reason: collision with root package name */
        public final dc.f f181g;

        /* renamed from: h, reason: collision with root package name */
        public final bc.i<Collection<ma.j>> f182h;

        /* renamed from: i, reason: collision with root package name */
        public final bc.i<Collection<e0>> f183i;

        /* renamed from: j, reason: collision with root package name */
        public final /* synthetic */ d f184j;

        /* renamed from: ac.d$a$a, reason: collision with other inner class name */
        public static final class C0009a extends kotlin.jvm.internal.j implements x9.a<List<? extends lb.f>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ List<lb.f> f185a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0009a(ArrayList arrayList) {
                super(0);
                this.f185a = arrayList;
            }

            @Override // x9.a
            public final List<? extends lb.f> invoke() {
                return this.f185a;
            }
        }

        public static final class b extends kotlin.jvm.internal.j implements x9.a<Collection<? extends ma.j>> {
            public b() {
                super(0);
            }

            @Override // x9.a
            public final Collection<? extends ma.j> invoke() {
                vb.d dVar = vb.d.f18429m;
                vb.i.f18449a.getClass();
                return a.this.i(dVar, i.a.f18451b);
            }
        }

        public static final class c extends kotlin.jvm.internal.j implements x9.a<Collection<? extends e0>> {
            public c() {
                super(0);
            }

            @Override // x9.a
            public final Collection<? extends e0> invoke() {
                a aVar = a.this;
                return aVar.f181g.w(aVar.f184j);
            }
        }

        public a(d dVar, dc.f kotlinTypeRefiner) {
            kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
            this.f184j = dVar;
            yb.n nVar = dVar.f170m;
            gb.b bVar = dVar.f164e;
            List<gb.h> list = bVar.f6222s;
            kotlin.jvm.internal.h.e(list, "classProto.functionList");
            List<gb.m> list2 = bVar.f6223t;
            kotlin.jvm.internal.h.e(list2, "classProto.propertyList");
            List<q> list3 = bVar.f6224v;
            kotlin.jvm.internal.h.e(list3, "classProto.typeAliasList");
            List<Integer> list4 = bVar.f6216l;
            kotlin.jvm.internal.h.e(list4, "classProto.nestedClassNameList");
            List<Integer> list5 = list4;
            ib.c cVar = dVar.f170m.f19465b;
            ArrayList arrayList = new ArrayList(m9.n.Q0(list5));
            Iterator<T> it = list5.iterator();
            while (it.hasNext()) {
                arrayList.add(a6.a.o(cVar, ((Number) it.next()).intValue()));
            }
            super(nVar, list, list2, list3, new C0009a(arrayList));
            this.f181g = kotlinTypeRefiner;
            this.f182h = this.f207b.f19464a.f19442a.d(new b());
            this.f183i = this.f207b.f19464a.f19442a.d(new c());
        }

        @Override // ac.i, vb.j, vb.i
        public final Collection a(lb.f name, ua.c cVar) {
            kotlin.jvm.internal.h.f(name, "name");
            t(name, cVar);
            return super.a(name, cVar);
        }

        @Override // ac.i, vb.j, vb.i
        public final Collection c(lb.f name, ua.c cVar) {
            kotlin.jvm.internal.h.f(name, "name");
            t(name, cVar);
            return super.c(name, cVar);
        }

        @Override // ac.i, vb.j, vb.l
        public final ma.g e(lb.f name, ua.c cVar) {
            ma.e eVarInvoke;
            kotlin.jvm.internal.h.f(name, "name");
            t(name, cVar);
            c cVar2 = this.f184j.f174r;
            return (cVar2 == null || (eVarInvoke = cVar2.f192b.invoke(name)) == null) ? super.e(name, cVar) : eVarInvoke;
        }

        @Override // vb.j, vb.l
        public final Collection<ma.j> f(vb.d kindFilter, x9.l<? super lb.f, Boolean> nameFilter) {
            kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
            kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
            return this.f182h.invoke();
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0 */
        /* JADX WARN: Type inference failed for: r1v1 */
        /* JADX WARN: Type inference failed for: r1v2, types: [java.util.Collection] */
        /* JADX WARN: Type inference failed for: r1v3, types: [m9.v] */
        /* JADX WARN: Type inference failed for: r1v4, types: [java.util.ArrayList] */
        @Override // ac.i
        public final void h(ArrayList arrayList, x9.l nameFilter) {
            ?? arrayList2;
            kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
            c cVar = this.f184j.f174r;
            if (cVar != null) {
                Set<lb.f> setKeySet = cVar.f191a.keySet();
                arrayList2 = new ArrayList();
                for (lb.f name : setKeySet) {
                    kotlin.jvm.internal.h.f(name, "name");
                    ma.e eVarInvoke = cVar.f192b.invoke(name);
                    if (eVarInvoke != null) {
                        arrayList2.add(eVarInvoke);
                    }
                }
            } else {
                arrayList2 = 0;
            }
            if (arrayList2 == 0) {
                arrayList2 = v.f10173a;
            }
            arrayList.addAll(arrayList2);
        }

        @Override // ac.i
        public final void j(lb.f name, ArrayList arrayList) {
            kotlin.jvm.internal.h.f(name, "name");
            ArrayList arrayList2 = new ArrayList();
            Iterator<e0> it = this.f183i.invoke().iterator();
            while (it.hasNext()) {
                arrayList2.addAll(it.next().o().c(name, ua.c.FOR_ALREADY_TRACKED));
            }
            arrayList.addAll(this.f207b.f19464a.f19454n.d(name, this.f184j));
            s(name, arrayList2, arrayList);
        }

        @Override // ac.i
        public final void k(lb.f name, ArrayList arrayList) {
            kotlin.jvm.internal.h.f(name, "name");
            ArrayList arrayList2 = new ArrayList();
            Iterator<e0> it = this.f183i.invoke().iterator();
            while (it.hasNext()) {
                arrayList2.addAll(it.next().o().a(name, ua.c.FOR_ALREADY_TRACKED));
            }
            s(name, arrayList2, arrayList);
        }

        @Override // ac.i
        public final lb.b l(lb.f name) {
            kotlin.jvm.internal.h.f(name, "name");
            return this.f184j.f166h.d(name);
        }

        @Override // ac.i
        public final Set<lb.f> n() {
            List<e0> listL = this.f184j.f172p.l();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it = listL.iterator();
            while (it.hasNext()) {
                Set<lb.f> setG = ((e0) it.next()).o().g();
                if (setG == null) {
                    return null;
                }
                p.T0(setG, linkedHashSet);
            }
            return linkedHashSet;
        }

        @Override // ac.i
        public final Set<lb.f> o() {
            d dVar = this.f184j;
            List<e0> listL = dVar.f172p.l();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it = listL.iterator();
            while (it.hasNext()) {
                p.T0(((e0) it.next()).o().b(), linkedHashSet);
            }
            linkedHashSet.addAll(this.f207b.f19464a.f19454n.b(dVar));
            return linkedHashSet;
        }

        @Override // ac.i
        public final Set<lb.f> p() {
            List<e0> listL = this.f184j.f172p.l();
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            Iterator<T> it = listL.iterator();
            while (it.hasNext()) {
                p.T0(((e0) it.next()).o().d(), linkedHashSet);
            }
            return linkedHashSet;
        }

        @Override // ac.i
        public final boolean r(l lVar) {
            return this.f207b.f19464a.f19455o.c(this.f184j, lVar);
        }

        public final void s(lb.f fVar, ArrayList arrayList, ArrayList arrayList2) {
            this.f207b.f19464a.f19457q.a().h(fVar, arrayList, new ArrayList(arrayList2), this.f184j, new ac.e(arrayList2));
        }

        public final void t(lb.f name, ua.a aVar) {
            kotlin.jvm.internal.h.f(name, "name");
            ta.a.a(this.f207b.f19464a.f19449i, (ua.c) aVar, this.f184j, name);
        }
    }

    public final class b extends cc.b {

        /* renamed from: c, reason: collision with root package name */
        public final bc.i<List<w0>> f188c;

        public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends w0>> {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ d f190a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar) {
                super(0);
                this.f190a = dVar;
            }

            @Override // x9.a
            public final List<? extends w0> invoke() {
                return x0.b(this.f190a);
            }
        }

        public b() {
            super(d.this.f170m.f19464a.f19442a);
            this.f188c = d.this.f170m.f19464a.f19442a.d(new a(d.this));
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r4v15, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r4v16 */
        /* JADX WARN: Type inference failed for: r4v17 */
        /* JADX WARN: Type inference failed for: r4v3 */
        /* JADX WARN: Type inference failed for: r4v4 */
        @Override // cc.h
        public final Collection<e0> d() {
            lb.c cVarB;
            d dVar = d.this;
            gb.b bVar = dVar.f164e;
            yb.n nVar = dVar.f170m;
            ib.g typeTable = nVar.f19467d;
            kotlin.jvm.internal.h.f(bVar, "<this>");
            kotlin.jvm.internal.h.f(typeTable, "typeTable");
            List<gb.p> list = bVar.f6213h;
            boolean z10 = !list.isEmpty();
            ?? arrayList = list;
            if (!z10) {
                arrayList = 0;
            }
            if (arrayList == 0) {
                List<Integer> supertypeIdList = bVar.f6214j;
                kotlin.jvm.internal.h.e(supertypeIdList, "supertypeIdList");
                List<Integer> list2 = supertypeIdList;
                arrayList = new ArrayList(m9.n.Q0(list2));
                for (Integer it : list2) {
                    kotlin.jvm.internal.h.e(it, "it");
                    arrayList.add(typeTable.a(it.intValue()));
                }
            }
            Iterable iterable = (Iterable) arrayList;
            ArrayList arrayList2 = new ArrayList(m9.n.Q0(iterable));
            Iterator it2 = iterable.iterator();
            while (it2.hasNext()) {
                arrayList2.add(nVar.f19470h.g((gb.p) it2.next()));
            }
            ArrayList arrayListM1 = t.m1(nVar.f19464a.f19454n.e(dVar), arrayList2);
            ArrayList arrayList3 = new ArrayList();
            Iterator it3 = arrayListM1.iterator();
            while (it3.hasNext()) {
                ma.g gVarN = ((e0) it3.next()).M0().n();
                d0.b bVar2 = gVarN instanceof d0.b ? (d0.b) gVarN : null;
                if (bVar2 != null) {
                    arrayList3.add(bVar2);
                }
            }
            if (!arrayList3.isEmpty()) {
                u uVar = nVar.f19464a.f19448h;
                ArrayList arrayList4 = new ArrayList(m9.n.Q0(arrayList3));
                Iterator it4 = arrayList3.iterator();
                while (it4.hasNext()) {
                    d0.b bVar3 = (d0.b) it4.next();
                    lb.b bVarF = sb.b.f(bVar3);
                    arrayList4.add((bVarF == null || (cVarB = bVarF.b()) == null) ? bVar3.getName().o() : cVarB.b());
                }
                uVar.h(dVar, arrayList4);
            }
            return t.v1(arrayListM1);
        }

        @Override // cc.h
        public final u0 g() {
            return u0.a.f10247a;
        }

        @Override // cc.c1
        public final List<w0> getParameters() {
            return this.f188c.invoke();
        }

        @Override // cc.b, cc.n, cc.c1
        public final ma.g n() {
            return d.this;
        }

        @Override // cc.c1
        public final boolean o() {
            return true;
        }

        @Override // cc.b
        /* renamed from: p */
        public final ma.e n() {
            return d.this;
        }

        public final String toString() {
            String str = d.this.getName().f9676a;
            kotlin.jvm.internal.h.e(str, "name.toString()");
            return str;
        }
    }

    public final class c {

        /* renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f191a;

        /* renamed from: b, reason: collision with root package name */
        public final bc.h<lb.f, ma.e> f192b;

        /* renamed from: c, reason: collision with root package name */
        public final bc.i<Set<lb.f>> f193c;

        public static final class a extends kotlin.jvm.internal.j implements x9.l<lb.f, ma.e> {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ d f196b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(d dVar) {
                super(1);
                this.f196b = dVar;
            }

            @Override // x9.l
            public final ma.e invoke(lb.f fVar) {
                lb.f name = fVar;
                kotlin.jvm.internal.h.f(name, "name");
                c cVar = c.this;
                gb.f fVar2 = (gb.f) cVar.f191a.get(name);
                if (fVar2 == null) {
                    return null;
                }
                d dVar = this.f196b;
                return s.K0(dVar.f170m.f19464a.f19442a, dVar, name, cVar.f193c, new ac.a(dVar.f170m.f19464a.f19442a, new ac.f(dVar, fVar2)), r0.f10243a);
            }
        }

        public static final class b extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {
            public b() {
                super(0);
            }

            @Override // x9.a
            public final Set<? extends lb.f> invoke() {
                yb.n nVar;
                c cVar = c.this;
                cVar.getClass();
                HashSet hashSet = new HashSet();
                d dVar = d.this;
                Iterator it = dVar.f172p.l().iterator();
                while (it.hasNext()) {
                    for (ma.j jVar : l.a.a(((e0) it.next()).o(), null, 3)) {
                        if ((jVar instanceof q0) || (jVar instanceof l0)) {
                            hashSet.add(jVar.getName());
                        }
                    }
                }
                gb.b bVar = dVar.f164e;
                List<gb.h> list = bVar.f6222s;
                kotlin.jvm.internal.h.e(list, "classProto.functionList");
                Iterator<T> it2 = list.iterator();
                while (true) {
                    boolean zHasNext = it2.hasNext();
                    nVar = dVar.f170m;
                    if (!zHasNext) {
                        break;
                    }
                    hashSet.add(a6.a.o(nVar.f19465b, ((gb.h) it2.next()).f));
                }
                List<gb.m> list2 = bVar.f6223t;
                kotlin.jvm.internal.h.e(list2, "classProto.propertyList");
                Iterator<T> it3 = list2.iterator();
                while (it3.hasNext()) {
                    hashSet.add(a6.a.o(nVar.f19465b, ((gb.m) it3.next()).f));
                }
                return m9.g0.F(hashSet, hashSet);
            }
        }

        public c() {
            List<gb.f> list = d.this.f164e.w;
            kotlin.jvm.internal.h.e(list, "classProto.enumEntryList");
            List<gb.f> list2 = list;
            int r12 = b8.f.V(m9.n.Q0(list2));
            LinkedHashMap linkedHashMap = new LinkedHashMap(r12 < 16 ? 16 : r12);
            for (Object obj : list2) {
                linkedHashMap.put(a6.a.o(d.this.f170m.f19465b, ((gb.f) obj).f6297d), obj);
            }
            this.f191a = linkedHashMap;
            d dVar = d.this;
            this.f192b = dVar.f170m.f19464a.f19442a.e(new a(dVar));
            this.f193c = d.this.f170m.f19464a.f19442a.d(new b());
        }
    }

    /* renamed from: ac.d$d, reason: collision with other inner class name */
    public static final class C0010d extends kotlin.jvm.internal.j implements x9.a<List<? extends na.c>> {
        public C0010d() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends na.c> invoke() {
            d dVar = d.this;
            return t.v1(dVar.f170m.f19464a.f19446e.e(dVar.f180z));
        }
    }

    public static final class e extends kotlin.jvm.internal.j implements x9.a<ma.e> {
        public e() {
            super(0);
        }

        @Override // x9.a
        public final ma.e invoke() {
            d dVar = d.this;
            gb.b bVar = dVar.f164e;
            if ((bVar.f6209c & 4) == 4) {
                ma.g gVarE = dVar.K0().e(a6.a.o(dVar.f170m.f19465b, bVar.f), ua.c.FROM_DESERIALIZATION);
                if (gVarE instanceof ma.e) {
                    return (ma.e) gVarE;
                }
            }
            return null;
        }
    }

    public static final class f extends kotlin.jvm.internal.j implements x9.a<Collection<? extends ma.d>> {
        public f() {
            super(0);
        }

        @Override // x9.a
        public final Collection<? extends ma.d> invoke() {
            d dVar = d.this;
            List<gb.c> list = dVar.f164e.f6221r;
            kotlin.jvm.internal.h.e(list, "classProto.constructorList");
            ArrayList arrayList = new ArrayList();
            for (Object obj : list) {
                if (androidx.room.util.a.i(ib.b.f7335m, ((gb.c) obj).f6256d, "IS_SECONDARY.get(it.flags)")) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList(m9.n.Q0(arrayList));
            Iterator it = arrayList.iterator();
            while (true) {
                boolean zHasNext = it.hasNext();
                yb.n nVar = dVar.f170m;
                if (!zHasNext) {
                    return t.m1(nVar.f19464a.f19454n.a(dVar), t.m1(b8.f.U(dVar.M()), arrayList2));
                }
                gb.c it2 = (gb.c) it.next();
                z zVar = nVar.f19471i;
                kotlin.jvm.internal.h.e(it2, "it");
                arrayList2.add(zVar.d(it2, false));
            }
        }
    }

    public /* synthetic */ class g extends kotlin.jvm.internal.f implements x9.l<dc.f, a> {
        public g(Object obj) {
            super(1, obj);
        }

        @Override // kotlin.jvm.internal.a, da.c
        public final String getName() {
            return "<init>";
        }

        @Override // kotlin.jvm.internal.a
        public final da.f getOwner() {
            return w.a(a.class);
        }

        @Override // kotlin.jvm.internal.a
        public final String getSignature() {
            return "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V";
        }

        @Override // x9.l
        public final a invoke(dc.f fVar) {
            dc.f p02 = fVar;
            kotlin.jvm.internal.h.f(p02, "p0");
            return new a((d) this.receiver, p02);
        }
    }

    public static final class h extends kotlin.jvm.internal.j implements x9.a<ma.d> {
        public h() {
            super(0);
        }

        @Override // x9.a
        public final ma.d invoke() {
            Object next;
            d dVar = d.this;
            if (androidx.camera.core.impl.utils.f.c(dVar.f169l)) {
                h.a aVar = new h.a(dVar);
                aVar.S0(dVar.q());
                return aVar;
            }
            List<gb.c> list = dVar.f164e.f6221r;
            kotlin.jvm.internal.h.e(list, "classProto.constructorList");
            Iterator<T> it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (!ib.b.f7335m.c(((gb.c) next).f6256d).booleanValue()) {
                    break;
                }
            }
            gb.c cVar = (gb.c) next;
            if (cVar != null) {
                return dVar.f170m.f19471i.d(cVar, true);
            }
            return null;
        }
    }

    public static final class i extends kotlin.jvm.internal.j implements x9.a<Collection<? extends ma.e>> {
        public i() {
            super(0);
        }

        @Override // x9.a
        public final Collection<? extends ma.e> invoke() {
            a0 a0Var = a0.SEALED;
            v vVar = v.f10173a;
            d dVar = d.this;
            if (dVar.f167j != a0Var) {
                return vVar;
            }
            List<Integer> fqNames = dVar.f164e.f6225x;
            kotlin.jvm.internal.h.e(fqNames, "fqNames");
            if (!(!fqNames.isEmpty())) {
                if (dVar.f167j != a0Var) {
                    return vVar;
                }
                LinkedHashSet linkedHashSet = new LinkedHashSet();
                ma.j jVar = dVar.f175s;
                if (jVar instanceof ma.e0) {
                    ob.b.t(dVar, linkedHashSet, ((ma.e0) jVar).o(), false);
                }
                vb.i iVarX0 = dVar.x0();
                kotlin.jvm.internal.h.e(iVarX0, "sealedClass.unsubstitutedInnerClassesScope");
                ob.b.t(dVar, linkedHashSet, iVarX0, true);
                return t.s1(linkedHashSet, new ob.a());
            }
            ArrayList arrayList = new ArrayList();
            for (Integer index : fqNames) {
                yb.n nVar = dVar.f170m;
                yb.l lVar = nVar.f19464a;
                kotlin.jvm.internal.h.e(index, "index");
                ma.e eVarB = lVar.b(a6.a.n(nVar.f19465b, index.intValue()));
                if (eVarB != null) {
                    arrayList.add(eVarB);
                }
            }
            return arrayList;
        }
    }

    public static final class j extends kotlin.jvm.internal.j implements x9.a<y0<m0>> {
        public j() {
            super(0);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
        /* JADX WARN: Type inference failed for: r11v3, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List<gb.p>] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r4v6, types: [java.util.ArrayList] */
        @Override // x9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final ma.y0<cc.m0> invoke() {
            /*
                Method dump skipped, instructions count: 684
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: ac.d.j.invoke():java.lang.Object");
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(yb.n outerContext, gb.b classProto, ib.c nameResolver, ib.a metadataVersion, r0 sourceElement) {
        int r02;
        super(outerContext.f19464a.f19442a, a6.a.n(nameResolver, classProto.f6211e).j());
        kotlin.jvm.internal.h.f(outerContext, "outerContext");
        kotlin.jvm.internal.h.f(classProto, "classProto");
        kotlin.jvm.internal.h.f(nameResolver, "nameResolver");
        kotlin.jvm.internal.h.f(metadataVersion, "metadataVersion");
        kotlin.jvm.internal.h.f(sourceElement, "sourceElement");
        this.f164e = classProto;
        this.f = metadataVersion;
        this.f165g = sourceElement;
        this.f166h = a6.a.n(nameResolver, classProto.f6211e);
        this.f167j = h0.a((gb.j) ib.b.f7328e.c(classProto.f6210d));
        this.f168k = i0.a((gb.w) ib.b.f7327d.c(classProto.f6210d));
        b.c cVar = (b.c) ib.b.f.c(classProto.f6210d);
        switch (cVar == null ? -1 : h0.a.f19421b[cVar.ordinal()]) {
            case 2:
                r02 = 2;
                break;
            case 3:
                r02 = 3;
                break;
            case 4:
                r02 = 4;
                break;
            case 5:
                r02 = 5;
                break;
            case 6:
            case 7:
                r02 = 6;
                break;
            default:
                r02 = 1;
                break;
        }
        this.f169l = r02;
        List<r> list = classProto.f6212g;
        kotlin.jvm.internal.h.e(list, "classProto.typeParameterList");
        gb.s sVar = classProto.H;
        kotlin.jvm.internal.h.e(sVar, "classProto.typeTable");
        ib.g gVar = new ib.g(sVar);
        ib.h hVar = ib.h.f7354b;
        gb.v vVar = classProto.K;
        kotlin.jvm.internal.h.e(vVar, "classProto.versionRequirementTable");
        yb.n nVarA = outerContext.a(this, list, nameResolver, gVar, h.a.a(vVar), metadataVersion);
        this.f170m = nVarA;
        yb.l lVar = nVarA.f19464a;
        this.f171n = r02 == 3 ? new vb.m(lVar.f19442a, this) : i.b.f18453b;
        this.f172p = new b();
        p0.a aVar = p0.f10236e;
        bc.l lVar2 = lVar.f19442a;
        dc.f fVarB = lVar.f19457q.b();
        g gVar2 = new g(this);
        aVar.getClass();
        this.f173q = p0.a.a(gVar2, this, lVar2, fVarB);
        this.f174r = r02 == 3 ? new c() : null;
        ma.j jVar = outerContext.f19466c;
        this.f175s = jVar;
        h hVar2 = new h();
        bc.l lVar3 = lVar.f19442a;
        this.f176t = lVar3.f(hVar2);
        this.f177v = lVar3.d(new f());
        this.w = lVar3.f(new e());
        this.f178x = lVar3.d(new i());
        this.f179y = lVar3.f(new j());
        ib.c cVar2 = nVarA.f19465b;
        ib.g gVar3 = nVarA.f19467d;
        d dVar = jVar instanceof d ? (d) jVar : null;
        this.f180z = new g0.a(classProto, cVar2, gVar3, sourceElement, dVar != null ? dVar.f180z : null);
        this.A = !ib.b.f7326c.c(classProto.f6210d).booleanValue() ? h.a.f10653a : new o(lVar3, new C0010d());
    }

    @Override // ma.z
    public final boolean D0() {
        return false;
    }

    @Override // ma.e
    public final Collection<ma.e> E() {
        return this.f178x.invoke();
    }

    @Override // ma.e
    public final boolean F() {
        return androidx.room.util.a.i(ib.b.f7333k, this.f164e.f6210d, "IS_VALUE_CLASS.get(classProto.flags)") && this.f.a(1, 4, 2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v12, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4 */
    @Override // pa.b, ma.e
    public final List<o0> F0() {
        yb.n nVar = this.f170m;
        ib.g typeTable = nVar.f19467d;
        gb.b bVar = this.f164e;
        kotlin.jvm.internal.h.f(bVar, "<this>");
        kotlin.jvm.internal.h.f(typeTable, "typeTable");
        List<gb.p> list = bVar.f6218n;
        boolean z10 = !list.isEmpty();
        ?? arrayList = list;
        if (!z10) {
            arrayList = 0;
        }
        if (arrayList == 0) {
            List<Integer> contextReceiverTypeIdList = bVar.f6219p;
            kotlin.jvm.internal.h.e(contextReceiverTypeIdList, "contextReceiverTypeIdList");
            List<Integer> list2 = contextReceiverTypeIdList;
            arrayList = new ArrayList(m9.n.Q0(list2));
            for (Integer it : list2) {
                kotlin.jvm.internal.h.e(it, "it");
                arrayList.add(typeTable.a(it.intValue()));
            }
        }
        Iterable iterable = (Iterable) arrayList;
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(iterable));
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList2.add(new pa.o0(J0(), new wb.b(this, nVar.f19470h.g((gb.p) it2.next()), null), h.a.f10653a));
        }
        return arrayList2;
    }

    @Override // ma.z
    public final boolean G() {
        return androidx.room.util.a.i(ib.b.f7332j, this.f164e.f6210d, "IS_EXPECT_CLASS.get(classProto.flags)");
    }

    @Override // ma.h
    public final boolean H() {
        return androidx.room.util.a.i(ib.b.f7329g, this.f164e.f6210d, "IS_INNER.get(classProto.flags)");
    }

    @Override // ma.e
    public final boolean H0() {
        return androidx.room.util.a.i(ib.b.f7330h, this.f164e.f6210d, "IS_DATA.get(classProto.flags)");
    }

    public final a K0() {
        return (a) this.f173q.a(this.f170m.f19464a.f19457q.b());
    }

    @Override // ma.e
    public final ma.d M() {
        return this.f176t.invoke();
    }

    @Override // ma.e
    public final vb.i N() {
        return this.f171n;
    }

    @Override // ma.e
    public final ma.e P() {
        return this.w.invoke();
    }

    @Override // ma.e, ma.k, ma.j
    public final ma.j b() {
        return this.f175s;
    }

    @Override // pa.b0
    public final vb.i e0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this.f173q.a(kotlinTypeRefiner);
    }

    @Override // na.a
    public final na.h getAnnotations() {
        return this.A;
    }

    @Override // ma.m
    public final r0 getSource() {
        return this.f165g;
    }

    @Override // ma.e, ma.n, ma.z
    public final ma.q getVisibility() {
        return this.f168k;
    }

    @Override // ma.e
    public final int h() {
        return this.f169l;
    }

    @Override // ma.g
    public final c1 i() {
        return this.f172p;
    }

    @Override // ma.z
    public final boolean isExternal() {
        return androidx.room.util.a.i(ib.b.f7331i, this.f164e.f6210d, "IS_EXTERNAL_CLASS.get(classProto.flags)");
    }

    @Override // ma.e
    public final boolean isInline() {
        int r42;
        if (!androidx.room.util.a.i(ib.b.f7333k, this.f164e.f6210d, "IS_VALUE_CLASS.get(classProto.flags)")) {
            return false;
        }
        ib.a aVar = this.f;
        int r22 = aVar.f7320b;
        return r22 < 1 || (r22 <= 1 && ((r42 = aVar.f7321c) < 4 || (r42 <= 4 && aVar.f7322d <= 1)));
    }

    @Override // ma.e, ma.z
    public final a0 j() {
        return this.f167j;
    }

    @Override // ma.e
    public final Collection<ma.d> k() {
        return this.f177v.invoke();
    }

    @Override // ma.e, ma.h
    public final List<w0> s() {
        return this.f170m.f19470h.b();
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("deserialized ");
        sb2.append(G() ? "expect " : "");
        sb2.append("class ");
        sb2.append(getName());
        return sb2.toString();
    }

    @Override // ma.e
    public final boolean u() {
        return ib.b.f.c(this.f164e.f6210d) == b.c.COMPANION_OBJECT;
    }

    @Override // ma.e
    public final boolean y() {
        return androidx.room.util.a.i(ib.b.f7334l, this.f164e.f6210d, "IS_FUN_INTERFACE.get(classProto.flags)");
    }

    @Override // ma.e
    public final y0<m0> y0() {
        return this.f179y.invoke();
    }
}
