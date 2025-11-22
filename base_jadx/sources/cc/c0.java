package cc;

import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import vb.o;

/* loaded from: classes2.dex */
public final class c0 implements c1, fc.g {

    /* renamed from: a, reason: collision with root package name */
    public final e0 f2274a;

    /* renamed from: b, reason: collision with root package name */
    public final LinkedHashSet<e0> f2275b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2276c;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<dc.f, m0> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final m0 invoke(dc.f fVar) {
            dc.f kotlinTypeRefiner = fVar;
            kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
            return c0.this.e(kotlinTypeRefiner).c();
        }
    }

    public static final class b<T> implements Comparator {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ x9.l f2278a;

        public b(x9.l lVar) {
            this.f2278a = lVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            e0 it = (e0) t10;
            kotlin.jvm.internal.h.e(it, "it");
            x9.l lVar = this.f2278a;
            String string = lVar.invoke(it).toString();
            e0 it2 = (e0) t11;
            kotlin.jvm.internal.h.e(it2, "it");
            return b8.f.q(string, lVar.invoke(it2).toString());
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.l<e0, CharSequence> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ x9.l<e0, Object> f2279a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public c(x9.l<? super e0, ? extends Object> lVar) {
            super(1);
            this.f2279a = lVar;
        }

        @Override // x9.l
        public final CharSequence invoke(e0 e0Var) {
            e0 it = e0Var;
            kotlin.jvm.internal.h.e(it, "it");
            return this.f2279a.invoke(it).toString();
        }
    }

    public c0(AbstractCollection typesToIntersect) {
        kotlin.jvm.internal.h.f(typesToIntersect, "typesToIntersect");
        typesToIntersect.isEmpty();
        LinkedHashSet<e0> linkedHashSet = new LinkedHashSet<>(typesToIntersect);
        this.f2275b = linkedHashSet;
        this.f2276c = linkedHashSet.hashCode();
    }

    public c0(LinkedHashSet linkedHashSet, e0 e0Var) {
        this(linkedHashSet);
        this.f2274a = e0Var;
    }

    public final m0 c() {
        a1.f2258b.getClass();
        return f0.g(a1.f2259c, this, m9.v.f10173a, false, o.a.a("member scope for intersection type", this.f2275b), new a());
    }

    public final String d(x9.l<? super e0, ? extends Object> getProperTypeRelatedToStringify) {
        kotlin.jvm.internal.h.f(getProperTypeRelatedToStringify, "getProperTypeRelatedToStringify");
        return m9.t.g1(m9.t.s1(this.f2275b, new b(getProperTypeRelatedToStringify)), " & ", "{", "}", new c(getProperTypeRelatedToStringify), 24);
    }

    public final c0 e(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        LinkedHashSet<e0> linkedHashSet = this.f2275b;
        ArrayList arrayList = new ArrayList(m9.n.Q0(linkedHashSet));
        Iterator<T> it = linkedHashSet.iterator();
        boolean z10 = false;
        while (it.hasNext()) {
            arrayList.add(((e0) it.next()).O0(kotlinTypeRefiner));
            z10 = true;
        }
        c0 c0Var = null;
        if (z10) {
            e0 e0Var = this.f2274a;
            c0Var = new c0(new c0(arrayList).f2275b, e0Var != null ? e0Var.O0(kotlinTypeRefiner) : null);
        }
        return c0Var == null ? this : c0Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof c0) {
            return kotlin.jvm.internal.h.a(this.f2275b, ((c0) obj).f2275b);
        }
        return false;
    }

    @Override // cc.c1
    public final List<ma.w0> getParameters() {
        return m9.v.f10173a;
    }

    public final int hashCode() {
        return this.f2276c;
    }

    @Override // cc.c1
    public final Collection<e0> l() {
        return this.f2275b;
    }

    @Override // cc.c1
    public final ja.k m() {
        ja.k kVarM = this.f2275b.iterator().next().M0().m();
        kotlin.jvm.internal.h.e(kVarM, "intersectedTypes.iterato…xt().constructor.builtIns");
        return kVarM;
    }

    @Override // cc.c1
    public final ma.g n() {
        return null;
    }

    @Override // cc.c1
    public final boolean o() {
        return false;
    }

    public final String toString() {
        return d(d0.f2283a);
    }
}
