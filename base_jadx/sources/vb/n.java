package vb;

import c5.y;
import cc.l1;
import cc.p1;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import ma.t0;
import vb.l;

/* loaded from: classes2.dex */
public final class n implements i {

    /* renamed from: b, reason: collision with root package name */
    public final i f18460b;

    /* renamed from: c, reason: collision with root package name */
    public final p1 f18461c;

    /* renamed from: d, reason: collision with root package name */
    public HashMap f18462d;

    /* renamed from: e, reason: collision with root package name */
    public final l9.j f18463e;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Collection<? extends ma.j>> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final Collection<? extends ma.j> invoke() {
            n nVar = n.this;
            return nVar.h(l.a.a(nVar.f18460b, null, 3));
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<p1> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ p1 f18465a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(p1 p1Var) {
            super(0);
            this.f18465a = p1Var;
        }

        @Override // x9.a
        public final p1 invoke() {
            l1 l1VarG = this.f18465a.g();
            l1VarG.getClass();
            return p1.e(l1VarG);
        }
    }

    public n(i workerScope, p1 givenSubstitutor) {
        kotlin.jvm.internal.h.f(workerScope, "workerScope");
        kotlin.jvm.internal.h.f(givenSubstitutor, "givenSubstitutor");
        this.f18460b = workerScope;
        y.w(new b(givenSubstitutor));
        l1 l1VarG = givenSubstitutor.g();
        kotlin.jvm.internal.h.e(l1VarG, "givenSubstitutor.substitution");
        this.f18461c = p1.e(pb.d.b(l1VarG));
        this.f18463e = y.w(new a());
    }

    @Override // vb.i
    public final Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return h(this.f18460b.a(name, cVar));
    }

    @Override // vb.i
    public final Set<lb.f> b() {
        return this.f18460b.b();
    }

    @Override // vb.i
    public final Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return h(this.f18460b.c(name, cVar));
    }

    @Override // vb.i
    public final Set<lb.f> d() {
        return this.f18460b.d();
    }

    @Override // vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        ma.g gVarE = this.f18460b.e(name, cVar);
        if (gVarE != null) {
            return (ma.g) i(gVarE);
        }
        return null;
    }

    @Override // vb.l
    public final Collection<ma.j> f(d kindFilter, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        return (Collection) this.f18463e.getValue();
    }

    @Override // vb.i
    public final Set<lb.f> g() {
        return this.f18460b.g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <D extends ma.j> Collection<D> h(Collection<? extends D> collection) {
        if (this.f18461c.h() || collection.isEmpty()) {
            return collection;
        }
        int size = collection.size();
        LinkedHashSet linkedHashSet = new LinkedHashSet(size >= 3 ? (size / 3) + size + 1 : 3);
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            linkedHashSet.add(i((ma.j) it.next()));
        }
        return linkedHashSet;
    }

    public final <D extends ma.j> D i(D d10) {
        p1 p1Var = this.f18461c;
        if (p1Var.h()) {
            return d10;
        }
        if (this.f18462d == null) {
            this.f18462d = new HashMap();
        }
        HashMap map = this.f18462d;
        kotlin.jvm.internal.h.c(map);
        Object objC = map.get(d10);
        if (objC == null) {
            if (!(d10 instanceof t0)) {
                throw new IllegalStateException(("Unknown descriptor in scope: " + d10).toString());
            }
            objC = ((t0) d10).c(p1Var);
            if (objC == null) {
                throw new AssertionError("We expect that no conflict should happen while substitution is guaranteed to generate invariant projection, but " + d10 + " substitution fails");
            }
            map.put(d10, objC);
        }
        return (D) objC;
    }
}
