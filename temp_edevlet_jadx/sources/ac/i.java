package ac;

import bc.c;
import com.google.android.gms.internal.clearcut.d0;
import gb.h;
import gb.m;
import gb.q;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.w;
import m9.g0;
import m9.t;
import m9.v;
import ma.l0;
import ma.q0;
import ma.v0;
import mb.p;
import yb.z;

/* loaded from: classes2.dex */
public abstract class i extends vb.j {
    public static final /* synthetic */ da.m<Object>[] f = {w.c(new r(w.a(i.class), "classNames", "getClassNames$deserialization()Ljava/util/Set;")), w.c(new r(w.a(i.class), "classifierNamesLazy", "getClassifierNamesLazy()Ljava/util/Set;"))};

    /* renamed from: b, reason: collision with root package name */
    public final yb.n f207b;

    /* renamed from: c, reason: collision with root package name */
    public final a f208c;

    /* renamed from: d, reason: collision with root package name */
    public final bc.i f209d;

    /* renamed from: e, reason: collision with root package name */
    public final bc.j f210e;

    public interface a {
        Collection a(lb.f fVar, ua.c cVar);

        Set<lb.f> b();

        Collection c(lb.f fVar, ua.c cVar);

        Set<lb.f> d();

        void e(ArrayList arrayList, vb.d dVar, x9.l lVar);

        v0 f(lb.f fVar);

        Set<lb.f> g();
    }

    public final class b implements a {

        /* renamed from: j, reason: collision with root package name */
        public static final /* synthetic */ da.m<Object>[] f211j = {w.c(new r(w.a(b.class), "functionNames", "getFunctionNames()Ljava/util/Set;")), w.c(new r(w.a(b.class), "variableNames", "getVariableNames()Ljava/util/Set;"))};

        /* renamed from: a, reason: collision with root package name */
        public final LinkedHashMap f212a;

        /* renamed from: b, reason: collision with root package name */
        public final LinkedHashMap f213b;

        /* renamed from: c, reason: collision with root package name */
        public final Map<lb.f, byte[]> f214c;

        /* renamed from: d, reason: collision with root package name */
        public final bc.g<lb.f, Collection<q0>> f215d;

        /* renamed from: e, reason: collision with root package name */
        public final bc.g<lb.f, Collection<l0>> f216e;
        public final bc.h<lb.f, v0> f;

        /* renamed from: g, reason: collision with root package name */
        public final bc.i f217g;

        /* renamed from: h, reason: collision with root package name */
        public final bc.i f218h;

        public static final class a extends kotlin.jvm.internal.j implements x9.a {

            /* renamed from: a, reason: collision with root package name */
            public final /* synthetic */ mb.r f220a;

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ ByteArrayInputStream f221b;

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ i f222c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(mb.b bVar, ByteArrayInputStream byteArrayInputStream, i iVar) {
                super(0);
                this.f220a = bVar;
                this.f221b = byteArrayInputStream;
                this.f222c = iVar;
            }

            @Override // x9.a
            public final Object invoke() {
                return ((mb.b) this.f220a).c(this.f221b, this.f222c.f207b.f19464a.f19456p);
            }
        }

        /* renamed from: ac.i$b$b, reason: collision with other inner class name */
        public static final class C0011b extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i f224b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0011b(i iVar) {
                super(0);
                this.f224b = iVar;
            }

            @Override // x9.a
            public final Set<? extends lb.f> invoke() {
                return g0.F(b.this.f212a.keySet(), this.f224b.o());
            }
        }

        public static final class c extends kotlin.jvm.internal.j implements x9.l<lb.f, Collection<? extends q0>> {
            public c() {
                super(1);
            }

            @Override // x9.l
            public final Collection<? extends q0> invoke(lb.f fVar) {
                Collection<gb.h> collectionZ;
                lb.f it = fVar;
                kotlin.jvm.internal.h.f(it, "it");
                b bVar = b.this;
                LinkedHashMap linkedHashMap = bVar.f212a;
                h.a PARSER = gb.h.f6326y;
                kotlin.jvm.internal.h.e(PARSER, "PARSER");
                byte[] bArr = (byte[]) linkedHashMap.get(it);
                i iVar = i.this;
                if (bArr != null) {
                    a aVar = new a(PARSER, new ByteArrayInputStream(bArr), iVar);
                    lc.h gVar = new lc.g(aVar, new lc.o(aVar));
                    if (!(gVar instanceof lc.a)) {
                        gVar = new lc.a(gVar);
                    }
                    collectionZ = b8.f.Z(lc.w.c1(gVar));
                } else {
                    collectionZ = v.f10173a;
                }
                ArrayList arrayList = new ArrayList(collectionZ.size());
                for (gb.h it2 : collectionZ) {
                    z zVar = iVar.f207b.f19471i;
                    kotlin.jvm.internal.h.e(it2, "it");
                    l lVarE = zVar.e(it2);
                    if (!iVar.r(lVarE)) {
                        lVarE = null;
                    }
                    if (lVarE != null) {
                        arrayList.add(lVarE);
                    }
                }
                iVar.j(it, arrayList);
                return d0.i(arrayList);
            }
        }

        public static final class d extends kotlin.jvm.internal.j implements x9.l<lb.f, Collection<? extends l0>> {
            public d() {
                super(1);
            }

            @Override // x9.l
            public final Collection<? extends l0> invoke(lb.f fVar) {
                Collection<gb.m> collectionZ;
                lb.f it = fVar;
                kotlin.jvm.internal.h.f(it, "it");
                b bVar = b.this;
                LinkedHashMap linkedHashMap = bVar.f213b;
                m.a PARSER = gb.m.f6391y;
                kotlin.jvm.internal.h.e(PARSER, "PARSER");
                byte[] bArr = (byte[]) linkedHashMap.get(it);
                i iVar = i.this;
                if (bArr != null) {
                    a aVar = new a(PARSER, new ByteArrayInputStream(bArr), iVar);
                    lc.h gVar = new lc.g(aVar, new lc.o(aVar));
                    if (!(gVar instanceof lc.a)) {
                        gVar = new lc.a(gVar);
                    }
                    collectionZ = b8.f.Z(lc.w.c1(gVar));
                } else {
                    collectionZ = v.f10173a;
                }
                ArrayList arrayList = new ArrayList(collectionZ.size());
                for (gb.m it2 : collectionZ) {
                    z zVar = iVar.f207b.f19471i;
                    kotlin.jvm.internal.h.e(it2, "it");
                    arrayList.add(zVar.f(it2));
                }
                iVar.k(it, arrayList);
                return d0.i(arrayList);
            }
        }

        public static final class e extends kotlin.jvm.internal.j implements x9.l<lb.f, v0> {
            public e() {
                super(1);
            }

            @Override // x9.l
            public final v0 invoke(lb.f fVar) {
                lb.f it = fVar;
                kotlin.jvm.internal.h.f(it, "it");
                b bVar = b.this;
                byte[] bArr = bVar.f214c.get(it);
                if (bArr != null) {
                    ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
                    i iVar = i.this;
                    q qVar = (q) q.f6504r.c(byteArrayInputStream, iVar.f207b.f19464a.f19456p);
                    if (qVar != null) {
                        return iVar.f207b.f19471i.g(qVar);
                    }
                }
                return null;
            }
        }

        public static final class f extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {

            /* renamed from: b, reason: collision with root package name */
            public final /* synthetic */ i f229b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public f(i iVar) {
                super(0);
                this.f229b = iVar;
            }

            @Override // x9.a
            public final Set<? extends lb.f> invoke() {
                return g0.F(b.this.f213b.keySet(), this.f229b.p());
            }
        }

        public b(List<gb.h> list, List<gb.m> list2, List<q> list3) {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Object obj : list) {
                lb.f fVarO = a6.a.o(i.this.f207b.f19465b, ((gb.h) ((p) obj)).f);
                Object arrayList = linkedHashMap.get(fVarO);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap.put(fVarO, arrayList);
                }
                ((List) arrayList).add(obj);
            }
            this.f212a = h(linkedHashMap);
            i iVar = i.this;
            LinkedHashMap linkedHashMap2 = new LinkedHashMap();
            for (Object obj2 : list2) {
                lb.f fVarO2 = a6.a.o(iVar.f207b.f19465b, ((gb.m) ((p) obj2)).f);
                Object arrayList2 = linkedHashMap2.get(fVarO2);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                    linkedHashMap2.put(fVarO2, arrayList2);
                }
                ((List) arrayList2).add(obj2);
            }
            this.f213b = h(linkedHashMap2);
            i.this.f207b.f19464a.f19444c.f();
            i iVar2 = i.this;
            LinkedHashMap linkedHashMap3 = new LinkedHashMap();
            for (Object obj3 : list3) {
                lb.f fVarO3 = a6.a.o(iVar2.f207b.f19465b, ((q) ((p) obj3)).f6508e);
                Object arrayList3 = linkedHashMap3.get(fVarO3);
                if (arrayList3 == null) {
                    arrayList3 = new ArrayList();
                    linkedHashMap3.put(fVarO3, arrayList3);
                }
                ((List) arrayList3).add(obj3);
            }
            this.f214c = h(linkedHashMap3);
            this.f215d = i.this.f207b.f19464a.f19442a.g(new c());
            this.f216e = i.this.f207b.f19464a.f19442a.g(new d());
            this.f = i.this.f207b.f19464a.f19442a.e(new e());
            i iVar3 = i.this;
            this.f217g = iVar3.f207b.f19464a.f19442a.d(new C0011b(iVar3));
            i iVar4 = i.this;
            this.f218h = iVar4.f207b.f19464a.f19442a.d(new f(iVar4));
        }

        public static LinkedHashMap h(LinkedHashMap linkedHashMap) throws IOException {
            LinkedHashMap linkedHashMap2 = new LinkedHashMap(b8.f.V(linkedHashMap.size()));
            for (Map.Entry entry : linkedHashMap.entrySet()) {
                Object key = entry.getKey();
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                Iterable<mb.a> iterable = (Iterable) entry.getValue();
                ArrayList arrayList = new ArrayList(m9.n.Q0(iterable));
                for (mb.a aVar : iterable) {
                    int r6 = aVar.c();
                    int r72 = mb.e.f(r6) + r6;
                    if (r72 > 4096) {
                        r72 = 4096;
                    }
                    mb.e eVarJ = mb.e.j(byteArrayOutputStream, r72);
                    eVarJ.v(r6);
                    aVar.d(eVarJ);
                    eVarJ.i();
                    arrayList.add(l9.m.f9594a);
                }
                linkedHashMap2.put(key, byteArrayOutputStream.toByteArray());
            }
            return linkedHashMap2;
        }

        @Override // ac.i.a
        public final Collection a(lb.f name, ua.c cVar) {
            kotlin.jvm.internal.h.f(name, "name");
            return !d().contains(name) ? v.f10173a : (Collection) ((c.k) this.f216e).invoke(name);
        }

        @Override // ac.i.a
        public final Set<lb.f> b() {
            return (Set) b8.f.O(this.f217g, f211j[0]);
        }

        @Override // ac.i.a
        public final Collection c(lb.f name, ua.c cVar) {
            kotlin.jvm.internal.h.f(name, "name");
            return !b().contains(name) ? v.f10173a : (Collection) ((c.k) this.f215d).invoke(name);
        }

        @Override // ac.i.a
        public final Set<lb.f> d() {
            return (Set) b8.f.O(this.f218h, f211j[1]);
        }

        @Override // ac.i.a
        public final void e(ArrayList arrayList, vb.d kindFilter, x9.l nameFilter) {
            ua.c cVar = ua.c.WHEN_GET_ALL_DESCRIPTORS;
            kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
            kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
            boolean zA = kindFilter.a(vb.d.f18426j);
            ob.l lVar = ob.l.f11286a;
            if (zA) {
                Set<lb.f> setD = d();
                ArrayList arrayList2 = new ArrayList();
                for (lb.f fVar : setD) {
                    if (((Boolean) nameFilter.invoke(fVar)).booleanValue()) {
                        arrayList2.addAll(a(fVar, cVar));
                    }
                }
                m9.o.R0(arrayList2, lVar);
                arrayList.addAll(arrayList2);
            }
            if (kindFilter.a(vb.d.f18425i)) {
                Set<lb.f> setB = b();
                ArrayList arrayList3 = new ArrayList();
                for (lb.f fVar2 : setB) {
                    if (((Boolean) nameFilter.invoke(fVar2)).booleanValue()) {
                        arrayList3.addAll(c(fVar2, cVar));
                    }
                }
                m9.o.R0(arrayList3, lVar);
                arrayList.addAll(arrayList3);
            }
        }

        @Override // ac.i.a
        public final v0 f(lb.f name) {
            kotlin.jvm.internal.h.f(name, "name");
            return this.f.invoke(name);
        }

        @Override // ac.i.a
        public final Set<lb.f> g() {
            return this.f214c.keySet();
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ x9.a<Collection<lb.f>> f230a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(x9.a<? extends Collection<lb.f>> aVar) {
            super(0);
            this.f230a = aVar;
        }

        @Override // x9.a
        public final Set<? extends lb.f> invoke() {
            return t.y1(this.f230a.invoke());
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<Set<? extends lb.f>> {
        public d() {
            super(0);
        }

        @Override // x9.a
        public final Set<? extends lb.f> invoke() {
            i iVar = i.this;
            Set<lb.f> setN = iVar.n();
            if (setN == null) {
                return null;
            }
            return g0.F(g0.F(iVar.m(), iVar.f208c.g()), setN);
        }
    }

    public i(yb.n c10, List<gb.h> list, List<gb.m> list2, List<q> list3, x9.a<? extends Collection<lb.f>> classNames) {
        kotlin.jvm.internal.h.f(c10, "c");
        kotlin.jvm.internal.h.f(classNames, "classNames");
        this.f207b = c10;
        yb.l lVar = c10.f19464a;
        lVar.f19444c.a();
        this.f208c = new b(list, list2, list3);
        c cVar = new c(classNames);
        bc.l lVar2 = lVar.f19442a;
        this.f209d = lVar2.d(cVar);
        this.f210e = lVar2.f(new d());
    }

    @Override // vb.j, vb.i
    public Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return this.f208c.a(name, cVar);
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> b() {
        return this.f208c.b();
    }

    @Override // vb.j, vb.i
    public Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return this.f208c.c(name, cVar);
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> d() {
        return this.f208c.d();
    }

    @Override // vb.j, vb.l
    public ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        if (q(name)) {
            return this.f207b.f19464a.b(l(name));
        }
        a aVar = this.f208c;
        if (aVar.g().contains(name)) {
            return aVar.f(name);
        }
        return null;
    }

    @Override // vb.j, vb.i
    public final Set<lb.f> g() {
        da.m<Object> p10 = f[1];
        bc.j jVar = this.f210e;
        kotlin.jvm.internal.h.f(jVar, "<this>");
        kotlin.jvm.internal.h.f(p10, "p");
        return (Set) jVar.invoke();
    }

    public abstract void h(ArrayList arrayList, x9.l lVar);

    public final Collection i(vb.d kindFilter, x9.l nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        ArrayList arrayList = new ArrayList(0);
        if (kindFilter.a(vb.d.f)) {
            h(arrayList, nameFilter);
        }
        a aVar = this.f208c;
        aVar.e(arrayList, kindFilter, nameFilter);
        if (kindFilter.a(vb.d.f18428l)) {
            for (lb.f fVar : m()) {
                if (((Boolean) nameFilter.invoke(fVar)).booleanValue()) {
                    d0.f(this.f207b.f19464a.b(l(fVar)), arrayList);
                }
            }
        }
        if (kindFilter.a(vb.d.f18423g)) {
            for (lb.f fVar2 : aVar.g()) {
                if (((Boolean) nameFilter.invoke(fVar2)).booleanValue()) {
                    d0.f(aVar.f(fVar2), arrayList);
                }
            }
        }
        return d0.i(arrayList);
    }

    public void j(lb.f name, ArrayList arrayList) {
        kotlin.jvm.internal.h.f(name, "name");
    }

    public void k(lb.f name, ArrayList arrayList) {
        kotlin.jvm.internal.h.f(name, "name");
    }

    public abstract lb.b l(lb.f fVar);

    public final Set<lb.f> m() {
        return (Set) b8.f.O(this.f209d, f[0]);
    }

    public abstract Set<lb.f> n();

    public abstract Set<lb.f> o();

    public abstract Set<lb.f> p();

    public boolean q(lb.f name) {
        kotlin.jvm.internal.h.f(name, "name");
        return m().contains(name);
    }

    public boolean r(l lVar) {
        return true;
    }
}
