package cc;

import java.util.Collection;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class h extends n {

    /* renamed from: b, reason: collision with root package name */
    public final bc.i<a> f2311b;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final Collection<e0> f2312a;

        /* renamed from: b, reason: collision with root package name */
        public List<? extends e0> f2313b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Collection<? extends e0> allSupertypes) {
            kotlin.jvm.internal.h.f(allSupertypes, "allSupertypes");
            this.f2312a = allSupertypes;
            this.f2313b = b8.f.S(ec.i.f5280d);
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<a> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final a invoke() {
            return new a(h.this.d());
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<Boolean, a> {

        /* renamed from: a, reason: collision with root package name */
        public static final c f2315a = new c();

        public c() {
            super(1);
        }

        @Override // x9.l
        public final a invoke(Boolean bool) {
            bool.booleanValue();
            return new a(b8.f.S(ec.i.f5280d));
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.l<a, l9.m> {
        public d() {
            super(1);
        }

        @Override // x9.l
        public final l9.m invoke(a aVar) {
            a supertypes = aVar;
            kotlin.jvm.internal.h.f(supertypes, "supertypes");
            h hVar = h.this;
            List listA = hVar.g().a(hVar, supertypes.f2312a, new i(hVar), new j(hVar));
            if (listA.isEmpty()) {
                e0 e0VarE = hVar.e();
                List listS = e0VarE != null ? b8.f.S(e0VarE) : null;
                if (listS == null) {
                    listS = m9.v.f10173a;
                }
                listA = listS;
            }
            List<e0> listV1 = listA instanceof List ? (List) listA : null;
            if (listV1 == null) {
                listV1 = m9.t.v1(listA);
            }
            List<e0> listI = hVar.i(listV1);
            kotlin.jvm.internal.h.f(listI, "<set-?>");
            supertypes.f2313b = listI;
            return l9.m.f9594a;
        }
    }

    public h(bc.l storageManager) {
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        this.f2311b = storageManager.a(new b(), c.f2315a, new d());
    }

    public abstract Collection<e0> d();

    public e0 e() {
        return null;
    }

    public Collection f() {
        return m9.v.f10173a;
    }

    public abstract ma.u0 g();

    @Override // cc.c1
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public final List<e0> l() {
        return this.f2311b.invoke().f2313b;
    }

    public List<e0> i(List<e0> list) {
        return list;
    }

    public void j(e0 type) {
        kotlin.jvm.internal.h.f(type, "type");
    }
}
