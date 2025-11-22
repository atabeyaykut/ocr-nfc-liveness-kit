package za;

import cc.e0;
import cc.q1;
import ja.o;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.load.java.JavaIncompatibilityRulesOverridabilityCondition;
import m9.g0;
import ma.a1;
import ma.l0;
import ma.o0;
import ma.q0;
import na.h;
import p4.g7;
import pa.m0;
import pa.n0;
import pa.v0;
import va.c0;
import va.l;
import vb.i;
import wa.k;
import za.o;

/* loaded from: classes2.dex */
public final class k extends o {

    /* renamed from: n, reason: collision with root package name */
    public final ma.e f19931n;

    /* renamed from: o, reason: collision with root package name */
    public final cb.g f19932o;

    /* renamed from: p, reason: collision with root package name */
    public final boolean f19933p;

    /* renamed from: q, reason: collision with root package name */
    public final bc.i<List<ma.d>> f19934q;

    /* renamed from: r, reason: collision with root package name */
    public final bc.i<Set<lb.f>> f19935r;

    /* renamed from: s, reason: collision with root package name */
    public final bc.i<Set<lb.f>> f19936s;

    /* renamed from: t, reason: collision with root package name */
    public final bc.i<Map<lb.f, cb.n>> f19937t;

    /* renamed from: u, reason: collision with root package name */
    public final bc.h<lb.f, ma.e> f19938u;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<List<? extends ma.d>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ k f19939a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ g7 f19940b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(g7 g7Var, k kVar) {
            super(0);
            this.f19939a = kVar;
            this.f19940b = g7Var;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:34:0x01c7  */
        /* JADX WARN: Type inference failed for: r12v1, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r12v2, types: [java.util.List] */
        /* JADX WARN: Type inference failed for: r12v3, types: [java.util.ArrayList] */
        /* JADX WARN: Type inference failed for: r14v1, types: [pa.l, pa.x, xa.b] */
        /* JADX WARN: Type inference failed for: r1v14, types: [za.k] */
        /* JADX WARN: Type inference failed for: r1v20, types: [za.k] */
        @Override // x9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.util.List<? extends ma.d> invoke() {
            /*
                Method dump skipped, instructions count: 828
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: za.k.a.invoke():java.lang.Object");
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<Map<lb.f, ? extends cb.n>> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final Map<lb.f, ? extends cb.n> invoke() {
            Collection<cb.n> collectionA = k.this.f19932o.A();
            ArrayList arrayList = new ArrayList();
            for (Object obj : collectionA) {
                if (((cb.n) obj).D()) {
                    arrayList.add(obj);
                }
            }
            int r02 = b8.f.V(m9.n.Q0(arrayList));
            if (r02 < 16) {
                r02 = 16;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap(r02);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Object next = it.next();
                linkedHashMap.put(((cb.n) next).getName(), next);
            }
            return linkedHashMap;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ g7 f19942a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ k f19943b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(g7 g7Var, k kVar) {
            super(0);
            this.f19942a = g7Var;
            this.f19943b = kVar;
        }

        @Override // x9.a
        public final Set<? extends lb.f> invoke() {
            g7 g7Var = this.f19942a;
            return m9.t.y1(((ya.c) g7Var.f12358a).f19354x.a(g7Var, this.f19943b.f19931n));
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.l<lb.f, Collection<? extends q0>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ q0 f19944a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ k f19945b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(q0 q0Var, k kVar) {
            super(1);
            this.f19944a = q0Var;
            this.f19945b = kVar;
        }

        @Override // x9.l
        public final Collection<? extends q0> invoke(lb.f fVar) {
            lb.f accessorName = fVar;
            kotlin.jvm.internal.h.f(accessorName, "accessorName");
            q0 q0Var = this.f19944a;
            if (kotlin.jvm.internal.h.a(q0Var.getName(), accessorName)) {
                return b8.f.S(q0Var);
            }
            k kVar = this.f19945b;
            return m9.t.m1(k.w(kVar, accessorName), k.v(kVar, accessorName));
        }
    }

    public static final class e extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {
        public e() {
            super(0);
        }

        @Override // x9.a
        public final Set<? extends lb.f> invoke() {
            return m9.t.y1(k.this.f19932o.I());
        }
    }

    public static final class f extends kotlin.jvm.internal.j implements x9.l<lb.f, ma.e> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ k f19947a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ g7 f19948b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(g7 g7Var, k kVar) {
            super(1);
            this.f19947a = kVar;
            this.f19948b = g7Var;
        }

        @Override // x9.l
        public final ma.e invoke(lb.f fVar) {
            lb.f name = fVar;
            kotlin.jvm.internal.h.f(name, "name");
            k kVar = this.f19947a;
            boolean zContains = kVar.f19935r.invoke().contains(name);
            ma.e eVar = kVar.f19931n;
            g7 g7Var = this.f19948b;
            if (zContains) {
                va.l lVar = ((ya.c) g7Var.f12358a).f19334b;
                lb.b bVarF = sb.b.f(eVar);
                kotlin.jvm.internal.h.c(bVarF);
                sa.r rVarC = lVar.c(new l.a(bVarF.d(name), kVar.f19932o, 2));
                if (rVarC == null) {
                    return null;
                }
                za.e eVar2 = new za.e(g7Var, eVar, rVarC, null);
                ((ya.c) g7Var.f12358a).f19350s.a(eVar2);
                return eVar2;
            }
            if (!kVar.f19936s.invoke().contains(name)) {
                cb.n nVar = kVar.f19937t.invoke().get(name);
                if (nVar == null) {
                    return null;
                }
                return pa.s.K0(g7Var.b(), kVar.f19931n, name, g7Var.b().d(new l(kVar)), a6.a.v(g7Var, nVar), ((ya.c) g7Var.f12358a).f19341j.a(nVar));
            }
            n9.a aVar = new n9.a();
            ((ya.c) g7Var.f12358a).f19354x.d(g7Var, eVar, name, aVar);
            if (aVar.f10609e != null) {
                throw new IllegalStateException();
            }
            aVar.w();
            aVar.f10608d = true;
            int r22 = aVar.l();
            if (r22 == 0) {
                return null;
            }
            if (r22 == 1) {
                return (ma.e) m9.t.p1(aVar);
            }
            throw new IllegalStateException(("Multiple classes with same name are generated: " + aVar).toString());
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(g7 c10, ma.e ownerDescriptor, cb.g jClass, boolean z10, k kVar) {
        super(c10, kVar);
        kotlin.jvm.internal.h.f(c10, "c");
        kotlin.jvm.internal.h.f(ownerDescriptor, "ownerDescriptor");
        kotlin.jvm.internal.h.f(jClass, "jClass");
        this.f19931n = ownerDescriptor;
        this.f19932o = jClass;
        this.f19933p = z10;
        this.f19934q = c10.b().d(new a(c10, this));
        this.f19935r = c10.b().d(new e());
        this.f19936s = c10.b().d(new c(c10, this));
        this.f19937t = c10.b().d(new b());
        this.f19938u = c10.b().e(new f(c10, this));
    }

    public static q0 C(q0 q0Var, ma.u uVar, AbstractCollection abstractCollection) {
        boolean z10 = true;
        if (!abstractCollection.isEmpty()) {
            Iterator it = abstractCollection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                q0 q0Var2 = (q0) it.next();
                if (!kotlin.jvm.internal.h.a(q0Var, q0Var2) && q0Var2.Y() == null && F(q0Var2, uVar)) {
                    z10 = false;
                    break;
                }
            }
        }
        if (z10) {
            return q0Var;
        }
        ma.u uVarBuild = q0Var.r().o().build();
        kotlin.jvm.internal.h.c(uVarBuild);
        return (q0) uVarBuild;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static ma.q0 D(ma.q0 r5) {
        /*
            java.util.List r0 = r5.g()
            java.lang.String r1 = "valueParameters"
            kotlin.jvm.internal.h.e(r0, r1)
            java.lang.Object r0 = m9.t.j1(r0)
            ma.a1 r0 = (ma.a1) r0
            r2 = 0
            if (r0 == 0) goto L7b
            cc.e0 r3 = r0.getType()
            cc.c1 r3 = r3.M0()
            ma.g r3 = r3.n()
            if (r3 == 0) goto L33
            lb.d r3 = sb.b.h(r3)
            boolean r4 = r3.e()
            if (r4 == 0) goto L2b
            goto L2c
        L2b:
            r3 = r2
        L2c:
            if (r3 == 0) goto L33
            lb.c r3 = r3.h()
            goto L34
        L33:
            r3 = r2
        L34:
            lb.c r4 = ja.o.f
            boolean r3 = kotlin.jvm.internal.h.a(r3, r4)
            if (r3 == 0) goto L3d
            goto L3e
        L3d:
            r0 = r2
        L3e:
            if (r0 != 0) goto L41
            goto L7b
        L41:
            ma.u$a r2 = r5.r()
            java.util.List r5 = r5.g()
            kotlin.jvm.internal.h.e(r5, r1)
            java.util.List r5 = m9.t.X0(r5)
            ma.u$a r5 = r2.c(r5)
            cc.e0 r0 = r0.getType()
            java.util.List r0 = r0.K0()
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            cc.i1 r0 = (cc.i1) r0
            cc.e0 r0 = r0.getType()
            ma.u$a r5 = r5.n(r0)
            ma.u r5 = r5.build()
            ma.q0 r5 = (ma.q0) r5
            r0 = r5
            pa.p0 r0 = (pa.p0) r0
            if (r0 != 0) goto L77
            goto L7a
        L77:
            r1 = 1
            r0.f13024y = r1
        L7a:
            return r5
        L7b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: za.k.D(ma.q0):ma.q0");
    }

    public static boolean F(ma.a aVar, ma.a aVar2) {
        int r02 = ob.n.f.n(aVar2, aVar, true).c();
        androidx.camera.core.impl.a.k(r02, "DEFAULT.isOverridableByW…iptor, this, true).result");
        return r02 == 1 && !JavaIncompatibilityRulesOverridabilityCondition.a.a(aVar2, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [ma.q0, ma.u] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, ma.a] */
    /* JADX WARN: Type inference failed for: r3v2, types: [ma.u] */
    public static boolean G(q0 q0Var, q0 q0Var2) {
        int r02 = kotlin.reflect.jvm.internal.impl.load.java.b.f8981m;
        kotlin.jvm.internal.h.f(q0Var, "<this>");
        if (kotlin.jvm.internal.h.a(q0Var.getName().o(), "removeAt") && kotlin.jvm.internal.h.a(eb.w.b(q0Var), kotlin.reflect.jvm.internal.impl.load.java.e.f8993h.f8999b)) {
            q0Var2 = q0Var2.a();
        }
        kotlin.jvm.internal.h.e(q0Var2, "if (superDescriptor.isRe…iginal else subDescriptor");
        return F(q0Var2, q0Var);
    }

    public static q0 H(l0 l0Var, String str, x9.l lVar) {
        q0 q0Var;
        Iterator it = ((Iterable) lVar.invoke(lb.f.t(str))).iterator();
        do {
            q0Var = null;
            if (!it.hasNext()) {
                break;
            }
            q0 q0Var2 = (q0) it.next();
            if (q0Var2.g().size() == 0) {
                dc.m mVar = dc.d.f4825a;
                e0 returnType = q0Var2.getReturnType();
                if (returnType == null ? false : mVar.d(returnType, l0Var.getType())) {
                    q0Var = q0Var2;
                }
            }
        } while (q0Var == null);
        return q0Var;
    }

    public static q0 J(l0 l0Var, x9.l lVar) {
        q0 q0Var;
        e0 returnType;
        String strO = l0Var.getName().o();
        kotlin.jvm.internal.h.e(strO, "name.asString()");
        Iterator it = ((Iterable) lVar.invoke(lb.f.t(va.w.b(strO)))).iterator();
        do {
            q0Var = null;
            if (!it.hasNext()) {
                break;
            }
            q0 q0Var2 = (q0) it.next();
            if (q0Var2.g().size() == 1 && (returnType = q0Var2.getReturnType()) != null) {
                lb.f fVar = ja.k.f8326e;
                if (ja.k.D(returnType, o.a.f8375d)) {
                    dc.m mVar = dc.d.f4825a;
                    List<a1> listG = q0Var2.g();
                    kotlin.jvm.internal.h.e(listG, "descriptor.valueParameters");
                    if (mVar.c(((a1) m9.t.p1(listG)).getType(), l0Var.getType())) {
                        q0Var = q0Var2;
                    }
                }
            }
        } while (q0Var == null);
        return q0Var;
    }

    public static boolean M(q0 q0Var, ma.u uVar) {
        String strA = eb.w.a(q0Var, 2);
        ma.u uVarA = uVar.a();
        kotlin.jvm.internal.h.e(uVarA, "builtinWithErasedParameters.original");
        return kotlin.jvm.internal.h.a(strA, eb.w.a(uVarA, 2)) && !F(q0Var, uVar);
    }

    public static final ArrayList v(k kVar, lb.f fVar) {
        Collection<cb.q> collectionB = kVar.f19977e.invoke().b(fVar);
        ArrayList arrayList = new ArrayList(m9.n.Q0(collectionB));
        Iterator<T> it = collectionB.iterator();
        while (it.hasNext()) {
            arrayList.add(kVar.t((cb.q) it.next()));
        }
        return arrayList;
    }

    public static final ArrayList w(k kVar, lb.f fVar) {
        LinkedHashSet linkedHashSetK = kVar.K(fVar);
        ArrayList arrayList = new ArrayList();
        for (Object obj : linkedHashSetK) {
            q0 q0Var = (q0) obj;
            kotlin.jvm.internal.h.f(q0Var, "<this>");
            boolean z10 = true;
            if (!(kotlin.reflect.jvm.internal.impl.load.java.d.b(q0Var) != null) && kotlin.reflect.jvm.internal.impl.load.java.c.a(q0Var) == null) {
                z10 = false;
            }
            if (!z10) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public final void A(Set set, AbstractCollection abstractCollection, kc.d dVar, x9.l lVar) {
        q0 q0VarJ;
        n0 n0VarJ;
        Iterator it = set.iterator();
        while (it.hasNext()) {
            l0 l0Var = (l0) it.next();
            xa.d dVar2 = null;
            if (E(l0Var, lVar)) {
                q0 q0VarI = I(l0Var, lVar);
                kotlin.jvm.internal.h.c(q0VarI);
                if (l0Var.f0()) {
                    q0VarJ = J(l0Var, lVar);
                    kotlin.jvm.internal.h.c(q0VarJ);
                } else {
                    q0VarJ = null;
                }
                if (q0VarJ != null) {
                    q0VarJ.j();
                    q0VarI.j();
                }
                xa.d dVar3 = new xa.d(this.f19931n, q0VarI, q0VarJ, l0Var);
                e0 returnType = q0VarI.getReturnType();
                kotlin.jvm.internal.h.c(returnType);
                m9.v vVar = m9.v.f10173a;
                dVar3.Q0(returnType, vVar, p(), null, vVar);
                m0 m0VarI = ob.h.i(dVar3, q0VarI.getAnnotations(), false, q0VarI.getSource());
                m0VarI.f12934m = q0VarI;
                m0VarI.M0(dVar3.getType());
                if (q0VarJ != null) {
                    List<a1> listG = q0VarJ.g();
                    kotlin.jvm.internal.h.e(listG, "setterMethod.valueParameters");
                    a1 a1Var = (a1) m9.t.c1(listG);
                    if (a1Var == null) {
                        throw new AssertionError("No parameter found for " + q0VarJ);
                    }
                    n0VarJ = ob.h.j(dVar3, q0VarJ.getAnnotations(), a1Var.getAnnotations(), false, q0VarJ.getVisibility(), q0VarJ.getSource());
                    n0VarJ.f12934m = q0VarJ;
                } else {
                    n0VarJ = null;
                }
                dVar3.O0(m0VarI, n0VarJ, null, null);
                dVar2 = dVar3;
            }
            if (dVar2 != null) {
                abstractCollection.add(dVar2);
                if (dVar != null) {
                    dVar.add(l0Var);
                    return;
                }
                return;
            }
        }
    }

    public final Collection<e0> B() {
        boolean z10 = this.f19933p;
        ma.e eVar = this.f19931n;
        if (!z10) {
            return ((ya.c) this.f19974b.f12358a).f19352u.b().w(eVar);
        }
        Collection<e0> collectionL = eVar.i().l();
        kotlin.jvm.internal.h.e(collectionL, "ownerDescriptor.typeConstructor.supertypes");
        return collectionL;
    }

    public final boolean E(l0 l0Var, x9.l<? super lb.f, ? extends Collection<? extends q0>> lVar) {
        if (b8.f.Q(l0Var)) {
            return false;
        }
        q0 q0VarI = I(l0Var, lVar);
        q0 q0VarJ = J(l0Var, lVar);
        if (q0VarI == null) {
            return false;
        }
        if (l0Var.f0()) {
            return q0VarJ != null && q0VarJ.j() == q0VarI.j();
        }
        return true;
    }

    public final q0 I(l0 l0Var, x9.l<? super lb.f, ? extends Collection<? extends q0>> lVar) {
        lb.f fVar;
        m0 m0VarL = l0Var.l();
        String strO = null;
        ma.m0 m0Var = m0VarL != null ? (ma.m0) kotlin.reflect.jvm.internal.impl.load.java.d.b(m0VarL) : null;
        if (m0Var != null) {
            ja.k.z(m0Var);
            ma.b bVarB = sb.b.b(sb.b.k(m0Var), va.h.f18347a);
            if (bVarB != null && (fVar = va.g.f18343a.get(sb.b.g(bVarB))) != null) {
                strO = fVar.o();
            }
        }
        if (strO != null && !kotlin.reflect.jvm.internal.impl.load.java.d.d(this.f19931n, m0Var)) {
            return H(l0Var, strO, lVar);
        }
        String strO2 = l0Var.getName().o();
        kotlin.jvm.internal.h.e(strO2, "name.asString()");
        return H(l0Var, va.w.a(strO2), lVar);
    }

    public final LinkedHashSet K(lb.f fVar) {
        Collection<e0> collectionB = B();
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = collectionB.iterator();
        while (it.hasNext()) {
            m9.p.T0(((e0) it.next()).o().c(fVar, ua.c.WHEN_GET_SUPER_MEMBERS), linkedHashSet);
        }
        return linkedHashSet;
    }

    public final Set<l0> L(lb.f fVar) {
        Collection<e0> collectionB = B();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = collectionB.iterator();
        while (it.hasNext()) {
            Collection collectionA = ((e0) it.next()).o().a(fVar, ua.c.WHEN_GET_SUPER_MEMBERS);
            ArrayList arrayList2 = new ArrayList(m9.n.Q0(collectionA));
            Iterator it2 = collectionA.iterator();
            while (it2.hasNext()) {
                arrayList2.add((l0) it2.next());
            }
            m9.p.T0(arrayList2, arrayList);
        }
        return m9.t.y1(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:114:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x00d2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:143:? A[LOOP:5: B:27:0x007d->B:143:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x00cd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:148:? A[LOOP:6: B:33:0x0098->B:148:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00ca  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0158  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x01b4  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean N(ma.q0 r10) {
        /*
            Method dump skipped, instructions count: 504
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: za.k.N(ma.q0):boolean");
    }

    public final void O(lb.f name, ua.a aVar) {
        kotlin.jvm.internal.h.f(name, "name");
        ta.a.a(((ya.c) this.f19974b.f12358a).f19345n, (ua.c) aVar, this.f19931n, name);
    }

    @Override // za.o, vb.j, vb.i
    public final Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        O(name, cVar);
        return super.a(name, cVar);
    }

    @Override // za.o, vb.j, vb.i
    public final Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        O(name, cVar);
        return super.c(name, cVar);
    }

    @Override // vb.j, vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        bc.h<lb.f, ma.e> hVar;
        ma.e eVarInvoke;
        kotlin.jvm.internal.h.f(name, "name");
        O(name, cVar);
        k kVar = (k) this.f19975c;
        return (kVar == null || (hVar = kVar.f19938u) == null || (eVarInvoke = hVar.invoke(name)) == null) ? this.f19938u.invoke(name) : eVarInvoke;
    }

    @Override // za.o
    public final Set h(vb.d kindFilter, i.a.C0290a c0290a) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        return g0.F(this.f19935r.invoke(), this.f19937t.invoke().keySet());
    }

    @Override // za.o
    public final Set i(vb.d kindFilter, i.a.C0290a c0290a) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        ma.e eVar = this.f19931n;
        Collection<e0> collectionL = eVar.i().l();
        kotlin.jvm.internal.h.e(collectionL, "ownerDescriptor.typeConstructor.supertypes");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        Iterator<T> it = collectionL.iterator();
        while (it.hasNext()) {
            m9.p.T0(((e0) it.next()).o().b(), linkedHashSet);
        }
        bc.i<za.b> iVar = this.f19977e;
        linkedHashSet.addAll(iVar.invoke().a());
        linkedHashSet.addAll(iVar.invoke().e());
        linkedHashSet.addAll(h(kindFilter, c0290a));
        g7 g7Var = this.f19974b;
        linkedHashSet.addAll(((ya.c) g7Var.f12358a).f19354x.c(g7Var, eVar));
        return linkedHashSet;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x004d  */
    @Override // za.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void j(java.util.ArrayList r22, lb.f r23) {
        /*
            r21 = this;
            r0 = r21
            r1 = r22
            r2 = r23
            java.lang.String r3 = "name"
            kotlin.jvm.internal.h.f(r2, r3)
            cb.g r3 = r0.f19932o
            boolean r3 = r3.r()
            ma.e r4 = r0.f19931n
            p4.g7 r5 = r0.f19974b
            if (r3 == 0) goto Lab
            bc.i<za.b> r3 = r0.f19977e
            java.lang.Object r6 = r3.invoke()
            za.b r6 = (za.b) r6
            cb.v r6 = r6.d(r2)
            if (r6 == 0) goto Lab
            boolean r6 = r22.isEmpty()
            r7 = 1
            r8 = 0
            if (r6 == 0) goto L2e
            goto L4a
        L2e:
            java.util.Iterator r6 = r22.iterator()
        L32:
            boolean r9 = r6.hasNext()
            if (r9 == 0) goto L4a
            java.lang.Object r9 = r6.next()
            ma.q0 r9 = (ma.q0) r9
            java.util.List r9 = r9.g()
            boolean r9 = r9.isEmpty()
            if (r9 == 0) goto L32
            r6 = 0
            goto L4b
        L4a:
            r6 = 1
        L4b:
            if (r6 == 0) goto Lab
            java.lang.Object r3 = r3.invoke()
            za.b r3 = (za.b) r3
            cb.v r3 = r3.d(r2)
            kotlin.jvm.internal.h.c(r3)
            ya.e r6 = a6.a.v(r5, r3)
            lb.f r9 = r3.getName()
            java.lang.Object r10 = r5.f12358a
            ya.c r10 = (ya.c) r10
            bb.b r10 = r10.f19341j
            ra.i$a r10 = r10.a(r3)
            xa.e r6 = xa.e.Y0(r4, r6, r9, r10, r7)
            r9 = 0
            r10 = 6
            r11 = 2
            ab.a r9 = c5.v.K(r11, r8, r8, r9, r10)
            java.lang.Object r10 = r5.f12362e
            ab.d r10 = (ab.d) r10
            cb.w r3 = r3.getType()
            cc.e0 r17 = r10.e(r3, r9)
            r12 = 0
            ma.o0 r13 = r21.p()
            m9.v r16 = m9.v.f10173a
            ma.a0 r18 = ma.a0.a.a(r8, r8, r7)
            ma.p$h r19 = ma.p.f10225e
            r20 = 0
            r11 = r6
            r14 = r16
            r15 = r16
            r11.X0(r12, r13, r14, r15, r16, r17, r18, r19, r20)
            r6.Z0(r8, r8)
            java.lang.Object r3 = r5.f12358a
            ya.c r3 = (ya.c) r3
            wa.h r3 = r3.f19338g
            wa.h$a r3 = (wa.h.a) r3
            r3.getClass()
            r1.add(r6)
        Lab:
            java.lang.Object r3 = r5.f12358a
            ya.c r3 = (ya.c) r3
            tb.d r3 = r3.f19354x
            r3.f(r5, r4, r2, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: za.k.j(java.util.ArrayList, lb.f):void");
    }

    @Override // za.o
    public final za.b k() {
        return new za.a(this.f19932o, za.f.f19928a);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x003f  */
    @Override // za.o
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(java.util.LinkedHashSet r11, lb.f r12) {
        /*
            r10 = this;
            java.lang.String r0 = "name"
            kotlin.jvm.internal.h.f(r12, r0)
            java.util.LinkedHashSet r6 = r10.K(r12)
            kotlin.reflect.jvm.internal.impl.load.java.e$a r0 = kotlin.reflect.jvm.internal.impl.load.java.e.f8987a
            java.util.ArrayList r0 = kotlin.reflect.jvm.internal.impl.load.java.e.f8996k
            boolean r0 = r0.contains(r12)
            r7 = 1
            if (r0 != 0) goto L63
            int r0 = kotlin.reflect.jvm.internal.impl.load.java.c.f8982m
            boolean r0 = kotlin.reflect.jvm.internal.impl.load.java.c.b(r12)
            if (r0 != 0) goto L63
            boolean r0 = r6.isEmpty()
            r1 = 0
            if (r0 == 0) goto L24
            goto L3c
        L24:
            java.util.Iterator r0 = r6.iterator()
        L28:
            boolean r2 = r0.hasNext()
            if (r2 == 0) goto L3c
            java.lang.Object r2 = r0.next()
            ma.u r2 = (ma.u) r2
            boolean r2 = r2.isSuspend()
            if (r2 == 0) goto L28
            r0 = 0
            goto L3d
        L3c:
            r0 = 1
        L3d:
            if (r0 == 0) goto L63
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r2 = r6.iterator()
        L48:
            boolean r3 = r2.hasNext()
            if (r3 == 0) goto L5f
            java.lang.Object r3 = r2.next()
            r4 = r3
            ma.q0 r4 = (ma.q0) r4
            boolean r4 = r10.N(r4)
            if (r4 == 0) goto L48
            r0.add(r3)
            goto L48
        L5f:
            r10.y(r11, r12, r0, r1)
            return
        L63:
            kc.d r8 = new kc.d
            r8.<init>()
            m9.v r2 = m9.v.f10173a
            ma.e r3 = r10.f19931n
            yb.u$a r4 = yb.u.f19485k0
            p4.g7 r0 = r10.f19974b
            java.lang.Object r0 = r0.f12358a
            ya.c r0 = (ya.c) r0
            dc.l r0 = r0.f19352u
            ob.n r5 = r0.a()
            r0 = r12
            r1 = r6
            java.util.LinkedHashSet r9 = c5.y.C(r0, r1, r2, r3, r4, r5)
            za.g r5 = new za.g
            r5.<init>(r10)
            r0 = r10
            r1 = r12
            r2 = r11
            r3 = r9
            r4 = r11
            r0.z(r1, r2, r3, r4, r5)
            za.h r5 = new za.h
            r5.<init>(r10)
            r4 = r8
            r0.z(r1, r2, r3, r4, r5)
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r1 = r6.iterator()
        L9f:
            boolean r2 = r1.hasNext()
            if (r2 == 0) goto Lb6
            java.lang.Object r2 = r1.next()
            r3 = r2
            ma.q0 r3 = (ma.q0) r3
            boolean r3 = r10.N(r3)
            if (r3 == 0) goto L9f
            r0.add(r2)
            goto L9f
        Lb6:
            java.util.ArrayList r0 = m9.t.m1(r8, r0)
            r10.y(r11, r12, r0, r7)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: za.k.m(java.util.LinkedHashSet, lb.f):void");
    }

    @Override // za.o
    public final void n(ArrayList arrayList, lb.f name) {
        Set setY1;
        cb.q qVar;
        kotlin.jvm.internal.h.f(name, "name");
        boolean zP = this.f19932o.p();
        g7 g7Var = this.f19974b;
        if (zP && (qVar = (cb.q) m9.t.q1(this.f19977e.invoke().b(name))) != null) {
            xa.f fVarR0 = xa.f.R0(this.f19931n, a6.a.v(g7Var, qVar), c0.a(qVar.getVisibility()), false, qVar.getName(), ((ya.c) g7Var.f12358a).f19341j.a(qVar), false);
            m0 m0VarC = ob.h.c(fVarR0, h.a.f10653a);
            fVarR0.O0(m0VarC, null, null, null);
            kotlin.jvm.internal.h.f(g7Var, "<this>");
            e0 e0VarL = o.l(qVar, new g7((ya.c) g7Var.f12358a, new ya.g(g7Var, fVarR0, qVar, 0), (l9.e) g7Var.f12360c));
            m9.v vVar = m9.v.f10173a;
            fVarR0.Q0(e0VarL, vVar, p(), null, vVar);
            m0VarC.M0(e0VarL);
            arrayList.add(fVarR0);
        }
        Set<l0> setL = L(name);
        if (setL.isEmpty()) {
            return;
        }
        kc.d dVar = new kc.d();
        kc.d dVar2 = new kc.d();
        A(setL, arrayList, dVar, new i(this));
        if (dVar.isEmpty()) {
            setY1 = m9.t.y1(setL);
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            for (Object obj : setL) {
                if (!dVar.contains(obj)) {
                    linkedHashSet.add(obj);
                }
            }
            setY1 = linkedHashSet;
        }
        A(setY1, dVar2, null, new j(this));
        LinkedHashSet linkedHashSetF = g0.F(setL, dVar2);
        ma.e eVar = this.f19931n;
        ya.c cVar = (ya.c) g7Var.f12358a;
        arrayList.addAll(c5.y.C(name, linkedHashSetF, arrayList, eVar, cVar.f, cVar.f19352u.a()));
    }

    @Override // za.o
    public final Set o(vb.d kindFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        if (this.f19932o.p()) {
            return b();
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet(this.f19977e.invoke().f());
        Collection<e0> collectionL = this.f19931n.i().l();
        kotlin.jvm.internal.h.e(collectionL, "ownerDescriptor.typeConstructor.supertypes");
        Iterator<T> it = collectionL.iterator();
        while (it.hasNext()) {
            m9.p.T0(((e0) it.next()).o().d(), linkedHashSet);
        }
        return linkedHashSet;
    }

    @Override // za.o
    public final o0 p() {
        ma.e eVar = this.f19931n;
        if (eVar != null) {
            int r12 = ob.i.f11277a;
            return eVar.J0();
        }
        ob.i.a(0);
        throw null;
    }

    @Override // za.o
    public final ma.j q() {
        return this.f19931n;
    }

    @Override // za.o
    public final boolean r(xa.e eVar) {
        if (this.f19932o.p()) {
            return false;
        }
        return N(eVar);
    }

    @Override // za.o
    public final o.a s(cb.q method, ArrayList arrayList, e0 e0Var, List valueParameters) {
        kotlin.jvm.internal.h.f(method, "method");
        kotlin.jvm.internal.h.f(valueParameters, "valueParameters");
        ((k.a) ((ya.c) this.f19974b.f12358a).f19337e).getClass();
        if (this.f19931n == null) {
            k.a.a(1);
            throw null;
        }
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return new o.a(valueParameters, arrayList, listEmptyList, e0Var);
        }
        k.b.a(3);
        throw null;
    }

    @Override // za.o
    public final String toString() {
        return "Lazy Java member scope for " + this.f19932o.d();
    }

    public final void x(ArrayList arrayList, xa.b bVar, int r17, cb.q qVar, e0 e0Var, e0 e0Var2) {
        arrayList.add(new v0(bVar, null, r17, h.a.f10653a, qVar.getName(), q1.i(e0Var), qVar.K(), false, false, e0Var2 != null ? q1.i(e0Var2) : null, ((ya.c) this.f19974b.f12358a).f19341j.a(qVar)));
    }

    public final void y(LinkedHashSet linkedHashSet, lb.f fVar, ArrayList arrayList, boolean z10) {
        ma.e eVar = this.f19931n;
        ya.c cVar = (ya.c) this.f19974b.f12358a;
        LinkedHashSet<q0> linkedHashSetC = c5.y.C(fVar, arrayList, linkedHashSet, eVar, cVar.f, cVar.f19352u.a());
        if (!z10) {
            linkedHashSet.addAll(linkedHashSetC);
            return;
        }
        ArrayList arrayListM1 = m9.t.m1(linkedHashSetC, linkedHashSet);
        ArrayList arrayList2 = new ArrayList(m9.n.Q0(linkedHashSetC));
        for (q0 q0VarC : linkedHashSetC) {
            q0 q0Var = (q0) kotlin.reflect.jvm.internal.impl.load.java.d.c(q0VarC);
            if (q0Var != null) {
                q0VarC = C(q0VarC, q0Var, arrayListM1);
            }
            arrayList2.add(q0VarC);
        }
        linkedHashSet.addAll(arrayList2);
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x00fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void z(lb.f r9, java.util.LinkedHashSet r10, java.util.LinkedHashSet r11, java.util.AbstractSet r12, x9.l r13) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: za.k.z(lb.f, java.util.LinkedHashSet, java.util.LinkedHashSet, java.util.AbstractSet, x9.l):void");
    }
}
