package cc;

import java.util.Collection;

/* loaded from: classes2.dex */
public final class i extends kotlin.jvm.internal.j implements x9.l<c1, Iterable<? extends e0>> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ h f2320a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(h hVar) {
        super(1);
        this.f2320a = hVar;
    }

    @Override // x9.l
    public final Iterable<? extends e0> invoke(c1 c1Var) {
        Collection<e0> supertypes;
        c1 it = c1Var;
        kotlin.jvm.internal.h.f(it, "it");
        this.f2320a.getClass();
        h hVar = it instanceof h ? (h) it : null;
        if (hVar != null) {
            supertypes = m9.t.m1(hVar.f(), hVar.f2311b.invoke().f2312a);
        } else {
            supertypes = it.l();
            kotlin.jvm.internal.h.e(supertypes, "supertypes");
        }
        return supertypes;
    }
}
