package za;

import bc.c;
import cc.e0;
import cc.s1;
import com.google.android.gms.internal.clearcut.d0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import m9.a0;
import ma.a0;
import ma.a1;
import ma.l0;
import ma.o0;
import ma.q0;
import ma.w0;
import na.h;
import p4.g7;
import pa.v0;
import va.c0;
import vb.c;
import vb.i;
import wa.h;
import wa.k;

/* loaded from: classes2.dex */
public abstract class o extends vb.j {

    /* renamed from: m, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f19973m = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(o.class), "functionNamesLazy", "getFunctionNamesLazy()Ljava/util/Set;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(o.class), "propertyNamesLazy", "getPropertyNamesLazy()Ljava/util/Set;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(o.class), "classNamesLazy", "getClassNamesLazy()Ljava/util/Set;"))};

    /* renamed from: b, reason: collision with root package name */
    public final g7 f19974b;

    /* renamed from: c, reason: collision with root package name */
    public final o f19975c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.i<Collection<ma.j>> f19976d;

    /* renamed from: e, reason: collision with root package name */
    public final bc.i<za.b> f19977e;
    public final bc.g<lb.f, Collection<q0>> f;

    /* renamed from: g, reason: collision with root package name */
    public final bc.h<lb.f, l0> f19978g;

    /* renamed from: h, reason: collision with root package name */
    public final bc.g<lb.f, Collection<q0>> f19979h;

    /* renamed from: i, reason: collision with root package name */
    public final bc.i f19980i;

    /* renamed from: j, reason: collision with root package name */
    public final bc.i f19981j;

    /* renamed from: k, reason: collision with root package name */
    public final bc.i f19982k;

    /* renamed from: l, reason: collision with root package name */
    public final bc.g<lb.f, List<l0>> f19983l;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final e0 f19984a;

        /* renamed from: b, reason: collision with root package name */
        public final e0 f19985b;

        /* renamed from: c, reason: collision with root package name */
        public final List<a1> f19986c;

        /* renamed from: d, reason: collision with root package name */
        public final List<w0> f19987d;

        /* renamed from: e, reason: collision with root package name */
        public final boolean f19988e;
        public final List<String> f;

        public a(List valueParameters, ArrayList arrayList, List list, e0 e0Var) {
            kotlin.jvm.internal.h.f(valueParameters, "valueParameters");
            this.f19984a = e0Var;
            this.f19985b = null;
            this.f19986c = valueParameters;
            this.f19987d = arrayList;
            this.f19988e = false;
            this.f = list;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return kotlin.jvm.internal.h.a(this.f19984a, aVar.f19984a) && kotlin.jvm.internal.h.a(this.f19985b, aVar.f19985b) && kotlin.jvm.internal.h.a(this.f19986c, aVar.f19986c) && kotlin.jvm.internal.h.a(this.f19987d, aVar.f19987d) && this.f19988e == aVar.f19988e && kotlin.jvm.internal.h.a(this.f, aVar.f);
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final int hashCode() {
            int r02 = this.f19984a.hashCode() * 31;
            e0 e0Var = this.f19985b;
            int r03 = androidx.camera.camera2.internal.c.c(this.f19987d, androidx.camera.camera2.internal.c.c(this.f19986c, (r02 + (e0Var == null ? 0 : e0Var.hashCode())) * 31, 31), 31);
            boolean z10 = this.f19988e;
            int r12 = z10;
            if (z10 != 0) {
                r12 = 1;
            }
            return this.f.hashCode() + ((r03 + r12) * 31);
        }

        public final String toString() {
            StringBuilder sb2 = new StringBuilder("MethodSignatureData(returnType=");
            sb2.append(this.f19984a);
            sb2.append(", receiverType=");
            sb2.append(this.f19985b);
            sb2.append(", valueParameters=");
            sb2.append(this.f19986c);
            sb2.append(", typeParameters=");
            sb2.append(this.f19987d);
            sb2.append(", hasStableParameterNames=");
            sb2.append(this.f19988e);
            sb2.append(", errors=");
            return android.support.v4.media.a.j(sb2, this.f, ')');
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final List<a1> f19989a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f19990b;

        /* JADX WARN: Multi-variable type inference failed */
        public b(List<? extends a1> list, boolean z10) {
            this.f19989a = list;
            this.f19990b = z10;
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<Collection<? extends ma.j>> {
        public c() {
            super(0);
        }

        @Override // x9.a
        public final Collection<? extends ma.j> invoke() {
            vb.d kindFilter = vb.d.f18429m;
            vb.i.f18449a.getClass();
            i.a.C0290a nameFilter = i.a.f18451b;
            o oVar = o.this;
            oVar.getClass();
            kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
            kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
            ua.c cVar = ua.c.WHEN_GET_ALL_DESCRIPTORS;
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            if (kindFilter.a(vb.d.f18428l)) {
                for (lb.f fVar : oVar.h(kindFilter, nameFilter)) {
                    if (((Boolean) nameFilter.invoke(fVar)).booleanValue()) {
                        d0.f(oVar.e(fVar, cVar), linkedHashSet);
                    }
                }
            }
            boolean zA = kindFilter.a(vb.d.f18425i);
            List<vb.c> list = kindFilter.f18436a;
            if (zA && !list.contains(c.a.f18417a)) {
                for (lb.f fVar2 : oVar.i(kindFilter, nameFilter)) {
                    if (((Boolean) nameFilter.invoke(fVar2)).booleanValue()) {
                        linkedHashSet.addAll(oVar.c(fVar2, cVar));
                    }
                }
            }
            if (kindFilter.a(vb.d.f18426j) && !list.contains(c.a.f18417a)) {
                for (lb.f fVar3 : oVar.o(kindFilter)) {
                    if (((Boolean) nameFilter.invoke(fVar3)).booleanValue()) {
                        linkedHashSet.addAll(oVar.a(fVar3, cVar));
                    }
                }
            }
            return m9.t.v1(linkedHashSet);
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {
        public d() {
            super(0);
        }

        @Override // x9.a
        public final Set<? extends lb.f> invoke() {
            return o.this.h(vb.d.f18431o, null);
        }
    }

    public static final class e extends kotlin.jvm.internal.j implements x9.l<lb.f, l0> {
        public e() {
            super(1);
        }

        /* JADX WARN: Removed duplicated region for block: B:48:0x00ff  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final ma.l0 invoke(lb.f r21) {
            /*
                Method dump skipped, instructions count: 287
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: za.o.e.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public static final class f extends kotlin.jvm.internal.j implements x9.l<lb.f, Collection<? extends q0>> {
        public f() {
            super(1);
        }

        @Override // x9.l
        public final Collection<? extends q0> invoke(lb.f fVar) {
            lb.f name = fVar;
            kotlin.jvm.internal.h.f(name, "name");
            o oVar = o.this;
            o oVar2 = oVar.f19975c;
            if (oVar2 != null) {
                return (Collection) ((c.k) oVar2.f).invoke(name);
            }
            ArrayList arrayList = new ArrayList();
            Iterator<cb.q> it = oVar.f19977e.invoke().b(name).iterator();
            while (it.hasNext()) {
                xa.e eVarT = oVar.t(it.next());
                if (oVar.r(eVarT)) {
                    ((h.a) ((ya.c) oVar.f19974b.f12358a).f19338g).getClass();
                    arrayList.add(eVarT);
                }
            }
            oVar.j(arrayList, name);
            return arrayList;
        }
    }

    public static final class g extends kotlin.jvm.internal.j implements x9.a<za.b> {
        public g() {
            super(0);
        }

        @Override // x9.a
        public final za.b invoke() {
            return o.this.k();
        }
    }

    public static final class h extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {
        public h() {
            super(0);
        }

        @Override // x9.a
        public final Set<? extends lb.f> invoke() {
            return o.this.i(vb.d.f18432p, null);
        }
    }

    public static final class i extends kotlin.jvm.internal.j implements x9.l<lb.f, Collection<? extends q0>> {
        public i() {
            super(1);
        }

        @Override // x9.l
        public final Collection<? extends q0> invoke(lb.f fVar) {
            lb.f name = fVar;
            kotlin.jvm.internal.h.f(name, "name");
            o oVar = o.this;
            LinkedHashSet linkedHashSet = new LinkedHashSet((Collection) ((c.k) oVar.f).invoke(name));
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : linkedHashSet) {
                String strA = eb.w.a((q0) obj, 2);
                Object arrayList = linkedHashMap.get(strA);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(strA, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            for (List list : linkedHashMap.values()) {
                if (list.size() != 1) {
                    List list2 = list;
                    Collection collectionA = ob.u.a(list2, r.f20006a);
                    linkedHashSet.removeAll(list2);
                    linkedHashSet.addAll(collectionA);
                }
            }
            oVar.m(linkedHashSet, name);
            g7 g7Var = oVar.f19974b;
            return m9.t.v1(((ya.c) g7Var.f12358a).f19349r.c(g7Var, linkedHashSet));
        }
    }

    public static final class j extends kotlin.jvm.internal.j implements x9.l<lb.f, List<? extends l0>> {
        public j() {
            super(1);
        }

        @Override // x9.l
        public final List<? extends l0> invoke(lb.f fVar) {
            lb.f name = fVar;
            kotlin.jvm.internal.h.f(name, "name");
            ArrayList arrayList = new ArrayList();
            o oVar = o.this;
            d0.f(oVar.f19978g.invoke(name), arrayList);
            oVar.n(arrayList, name);
            if (ob.i.n(oVar.q(), 5)) {
                return m9.t.v1(arrayList);
            }
            g7 g7Var = oVar.f19974b;
            return m9.t.v1(((ya.c) g7Var.f12358a).f19349r.c(g7Var, arrayList));
        }
    }

    public static final class k extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {
        public k() {
            super(0);
        }

        @Override // x9.a
        public final Set<? extends lb.f> invoke() {
            return o.this.o(vb.d.f18433q);
        }
    }

    public o(g7 c10, o oVar) {
        kotlin.jvm.internal.h.f(c10, "c");
        this.f19974b = c10;
        this.f19975c = oVar;
        this.f19976d = c10.b().h(new c());
        this.f19977e = c10.b().d(new g());
        this.f = c10.b().g(new f());
        this.f19978g = c10.b().e(new e());
        this.f19979h = c10.b().g(new i());
        this.f19980i = c10.b().d(new h());
        this.f19981j = c10.b().d(new k());
        this.f19982k = c10.b().d(new d());
        this.f19983l = c10.b().g(new j());
    }

    public static e0 l(cb.q method, g7 g7Var) {
        kotlin.jvm.internal.h.f(method, "method");
        return ((ab.d) g7Var.f12362e).e(method.h(), c5.v.K(2, method.i().p(), false, null, 6));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static b u(g7 g7Var, pa.x xVar, List jValueParameters) {
        l9.g gVar;
        lb.f name;
        String strD;
        kotlin.jvm.internal.h.f(jValueParameters, "jValueParameters");
        m9.z zVarZ1 = m9.t.z1(jValueParameters);
        ArrayList arrayList = new ArrayList(m9.n.Q0(zVarZ1));
        Iterator it = zVarZ1.iterator();
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            a0 a0Var = (a0) it;
            if (!a0Var.hasNext()) {
                return new b(m9.t.v1(arrayList), z11);
            }
            m9.y yVar = (m9.y) a0Var.next();
            int r10 = yVar.f10176a;
            cb.z zVar = (cb.z) yVar.f10177b;
            ya.e eVarV = a6.a.v(g7Var, zVar);
            ab.a aVarK = c5.v.K(2, z10, z10, null, 7);
            if (zVar.a()) {
                cb.w type = zVar.getType();
                cb.f fVar = type instanceof cb.f ? (cb.f) type : null;
                if (fVar == null) {
                    throw new AssertionError("Vararg parameter should be an array: " + zVar);
                }
                s1 s1VarC = ((ab.d) g7Var.f12362e).c(fVar, aVarK, true);
                gVar = new l9.g(s1VarC, g7Var.a().m().g(s1VarC));
            } else {
                gVar = new l9.g(((ab.d) g7Var.f12362e).e(zVar.getType(), aVarK), null);
            }
            e0 e0Var = (e0) gVar.f9582a;
            e0 e0Var2 = (e0) gVar.f9583b;
            if (kotlin.jvm.internal.h.a(xVar.getName().o(), "equals") && jValueParameters.size() == 1 && kotlin.jvm.internal.h.a(g7Var.a().m().o(), e0Var)) {
                strD = "other";
            } else {
                name = zVar.getName();
                if (name == null) {
                    z11 = true;
                }
                if (name == null) {
                    strD = android.support.v4.media.a.d("p", r10);
                } else {
                    arrayList.add(new v0(xVar, null, r10, eVarV, name, e0Var, false, false, false, e0Var2, ((ya.c) g7Var.f12358a).f19341j.a(zVar)));
                    z10 = false;
                }
            }
            name = lb.f.t(strD);
            arrayList.add(new v0(xVar, null, r10, eVarV, name, e0Var, false, false, false, e0Var2, ((ya.c) g7Var.f12358a).f19341j.a(zVar)));
            z10 = false;
        }
    }

    @Override // vb.j, vb.i
    public Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return !d().contains(name) ? m9.v.f10173a : (Collection) ((c.k) this.f19983l).invoke(name);
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> b() {
        return (Set) b8.f.O(this.f19980i, f19973m[0]);
    }

    @Override // vb.j, vb.i
    public Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return !b().contains(name) ? m9.v.f10173a : (Collection) ((c.k) this.f19979h).invoke(name);
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> d() {
        return (Set) b8.f.O(this.f19981j, f19973m[1]);
    }

    @Override // vb.j, vb.l
    public Collection<ma.j> f(vb.d kindFilter, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        return this.f19976d.invoke();
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> g() {
        return (Set) b8.f.O(this.f19982k, f19973m[2]);
    }

    public abstract Set h(vb.d dVar, i.a.C0290a c0290a);

    public abstract Set i(vb.d dVar, i.a.C0290a c0290a);

    public void j(ArrayList arrayList, lb.f name) {
        kotlin.jvm.internal.h.f(name, "name");
    }

    public abstract za.b k();

    public abstract void m(LinkedHashSet linkedHashSet, lb.f fVar);

    public abstract void n(ArrayList arrayList, lb.f fVar);

    public abstract Set o(vb.d dVar);

    public abstract o0 p();

    public abstract ma.j q();

    public boolean r(xa.e eVar) {
        return true;
    }

    public abstract a s(cb.q qVar, ArrayList arrayList, e0 e0Var, List list);

    public final xa.e t(cb.q method) {
        kotlin.jvm.internal.h.f(method, "method");
        g7 g7Var = this.f19974b;
        xa.e eVarY0 = xa.e.Y0(q(), a6.a.v(g7Var, method), method.getName(), ((ya.c) g7Var.f12358a).f19341j.a(method), this.f19977e.invoke().d(method.getName()) != null && method.g().isEmpty());
        kotlin.jvm.internal.h.f(g7Var, "<this>");
        g7 g7Var2 = new g7((ya.c) g7Var.f12358a, new ya.g(g7Var, eVarY0, method, 0), (l9.e) g7Var.f12360c);
        ArrayList typeParameters = method.getTypeParameters();
        ArrayList arrayList = new ArrayList(m9.n.Q0(typeParameters));
        Iterator it = typeParameters.iterator();
        while (it.hasNext()) {
            w0 w0VarA = ((ya.j) g7Var2.f12359b).a((cb.x) it.next());
            kotlin.jvm.internal.h.c(w0VarA);
            arrayList.add(w0VarA);
        }
        b bVarU = u(g7Var2, eVarY0, method.g());
        e0 e0VarL = l(method, g7Var2);
        List<a1> list = bVarU.f19989a;
        a aVarS = s(method, arrayList, e0VarL, list);
        e0 e0Var = aVarS.f19985b;
        eVarY0.X0(e0Var != null ? ob.h.h(eVarY0, e0Var, h.a.f10653a) : null, p(), m9.v.f10173a, aVarS.f19987d, aVarS.f19986c, aVarS.f19984a, a0.a.a(false, method.isAbstract(), !method.isFinal()), c0.a(method.getVisibility()), aVarS.f19985b != null ? b8.f.W(new l9.g(xa.e.K, m9.t.a1(list))) : m9.w.f10174a);
        eVarY0.Z0(aVarS.f19988e, bVarU.f19990b);
        List<String> list2 = aVarS.f;
        if (!(!list2.isEmpty())) {
            return eVarY0;
        }
        ((k.a) ((ya.c) g7Var2.f12358a).f19337e).getClass();
        if (list2 != null) {
            throw new UnsupportedOperationException("Should not be called");
        }
        k.a.a(6);
        throw null;
    }

    public String toString() {
        return "Lazy scope for " + q();
    }
}
