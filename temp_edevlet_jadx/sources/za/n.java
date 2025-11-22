package za;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import p4.g7;
import vb.i;
import za.b;

/* loaded from: classes2.dex */
public final class n extends y {

    /* renamed from: n, reason: collision with root package name */
    public final cb.t f19960n;

    /* renamed from: o, reason: collision with root package name */
    public final m f19961o;

    /* renamed from: p, reason: collision with root package name */
    public final bc.j<Set<String>> f19962p;

    /* renamed from: q, reason: collision with root package name */
    public final bc.h<a, ma.e> f19963q;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final lb.f f19964a;

        /* renamed from: b, reason: collision with root package name */
        public final cb.g f19965b;

        public a(lb.f name, cb.g gVar) {
            kotlin.jvm.internal.h.f(name, "name");
            this.f19964a = name;
            this.f19965b = gVar;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof a) {
                if (kotlin.jvm.internal.h.a(this.f19964a, ((a) obj).f19964a)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return this.f19964a.hashCode();
        }
    }

    public static abstract class b {

        public static final class a extends b {

            /* renamed from: a, reason: collision with root package name */
            public final ma.e f19966a;

            public a(ma.e eVar) {
                this.f19966a = eVar;
            }
        }

        /* renamed from: za.n$b$b, reason: collision with other inner class name */
        public static final class C0317b extends b {

            /* renamed from: a, reason: collision with root package name */
            public static final C0317b f19967a = new C0317b();
        }

        public static final class c extends b {

            /* renamed from: a, reason: collision with root package name */
            public static final c f19968a = new c();
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<a, ma.e> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ n f19969a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ g7 f19970b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(g7 g7Var, n nVar) {
            super(1);
            this.f19969a = nVar;
            this.f19970b = g7Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0082  */
        @Override // x9.l
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final ma.e invoke(za.n.a r9) {
            /*
                Method dump skipped, instructions count: 238
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: za.n.c.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public static final class d extends kotlin.jvm.internal.j implements x9.a<Set<? extends String>> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ g7 f19971a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ n f19972b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(g7 g7Var, n nVar) {
            super(0);
            this.f19971a = g7Var;
            this.f19972b = nVar;
        }

        @Override // x9.a
        public final Set<? extends String> invoke() {
            ((ya.c) this.f19971a.f12358a).f19334b.a(this.f19972b.f19961o.f12914e);
            return null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public n(g7 g7Var, cb.t jPackage, m ownerDescriptor) {
        super(g7Var);
        kotlin.jvm.internal.h.f(jPackage, "jPackage");
        kotlin.jvm.internal.h.f(ownerDescriptor, "ownerDescriptor");
        this.f19960n = jPackage;
        this.f19961o = ownerDescriptor;
        this.f19962p = g7Var.b().f(new d(g7Var, this));
        this.f19963q = g7Var.b().e(new c(g7Var, this));
    }

    @Override // za.o, vb.j, vb.i
    public final Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return m9.v.f10173a;
    }

    @Override // vb.j, vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return v(name, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0055  */
    @Override // za.o, vb.j, vb.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.Collection<ma.j> f(vb.d r5, x9.l<? super lb.f, java.lang.Boolean> r6) {
        /*
            r4 = this;
            java.lang.String r0 = "kindFilter"
            kotlin.jvm.internal.h.f(r5, r0)
            java.lang.String r0 = "nameFilter"
            kotlin.jvm.internal.h.f(r6, r0)
            vb.d$a r0 = vb.d.f18420c
            int r0 = vb.d.f18428l
            int r1 = vb.d.f18422e
            r0 = r0 | r1
            boolean r5 = r5.a(r0)
            if (r5 != 0) goto L1a
            m9.v r5 = m9.v.f10173a
            goto L5d
        L1a:
            bc.i<java.util.Collection<ma.j>> r5 = r4.f19976d
            java.lang.Object r5 = r5.invoke()
            java.lang.Iterable r5 = (java.lang.Iterable) r5
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.Iterator r5 = r5.iterator()
        L2b:
            boolean r1 = r5.hasNext()
            if (r1 == 0) goto L5c
            java.lang.Object r1 = r5.next()
            r2 = r1
            ma.j r2 = (ma.j) r2
            boolean r3 = r2 instanceof ma.e
            if (r3 == 0) goto L55
            ma.e r2 = (ma.e) r2
            lb.f r2 = r2.getName()
            java.lang.String r3 = "it.name"
            kotlin.jvm.internal.h.e(r2, r3)
            java.lang.Object r2 = r6.invoke(r2)
            java.lang.Boolean r2 = (java.lang.Boolean) r2
            boolean r2 = r2.booleanValue()
            if (r2 == 0) goto L55
            r2 = 1
            goto L56
        L55:
            r2 = 0
        L56:
            if (r2 == 0) goto L2b
            r0.add(r1)
            goto L2b
        L5c:
            r5 = r0
        L5d:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: za.n.f(vb.d, x9.l):java.util.Collection");
    }

    @Override // za.o
    public final Set h(vb.d kindFilter, i.a.C0290a c0290a) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        if (!kindFilter.a(vb.d.f18422e)) {
            return m9.x.f10175a;
        }
        Set<String> setInvoke = this.f19962p.invoke();
        x9.l lVar = c0290a;
        if (setInvoke != null) {
            HashSet hashSet = new HashSet();
            Iterator<T> it = setInvoke.iterator();
            while (it.hasNext()) {
                hashSet.add(lb.f.t((String) it.next()));
            }
            return hashSet;
        }
        if (c0290a == null) {
            lVar = kc.b.f8824a;
        }
        this.f19960n.F(lVar);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        m9.u uVar = m9.u.f10172a;
        while (uVar.hasNext()) {
            cb.g gVar = (cb.g) uVar.next();
            gVar.G();
            lb.f name = gVar.getName();
            if (name != null) {
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // za.o
    public final Set i(vb.d kindFilter, i.a.C0290a c0290a) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        return m9.x.f10175a;
    }

    @Override // za.o
    public final za.b k() {
        return b.a.f19890a;
    }

    @Override // za.o
    public final void m(LinkedHashSet linkedHashSet, lb.f name) {
        kotlin.jvm.internal.h.f(name, "name");
    }

    @Override // za.o
    public final Set o(vb.d kindFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        return m9.x.f10175a;
    }

    @Override // za.o
    public final ma.j q() {
        return this.f19961o;
    }

    public final ma.e v(lb.f name, cb.g gVar) {
        lb.f fVar = lb.h.f9679a;
        kotlin.jvm.internal.h.f(name, "name");
        String strO = name.o();
        kotlin.jvm.internal.h.e(strO, "name.asString()");
        boolean z10 = false;
        if ((strO.length() > 0) && !name.f9677b) {
            z10 = true;
        }
        if (!z10) {
            return null;
        }
        Set<String> setInvoke = this.f19962p.invoke();
        if (gVar != null || setInvoke == null || setInvoke.contains(name.o())) {
            return this.f19963q.invoke(new a(name, gVar));
        }
        return null;
    }
}
