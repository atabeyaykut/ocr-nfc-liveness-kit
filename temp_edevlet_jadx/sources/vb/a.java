package vb;

import java.util.Collection;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class a implements i {
    @Override // vb.i
    public Collection a(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return i().a(name, cVar);
    }

    @Override // vb.i
    public final Set<lb.f> b() {
        return i().b();
    }

    @Override // vb.i
    public Collection c(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return i().c(name, cVar);
    }

    @Override // vb.i
    public final Set<lb.f> d() {
        return i().d();
    }

    @Override // vb.l
    public final ma.g e(lb.f name, ua.c cVar) {
        kotlin.jvm.internal.h.f(name, "name");
        return i().e(name, cVar);
    }

    @Override // vb.l
    public Collection<ma.j> f(d kindFilter, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(kindFilter, "kindFilter");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        return i().f(kindFilter, nameFilter);
    }

    @Override // vb.i
    public final Set<lb.f> g() {
        return i().g();
    }

    public final i h() {
        if (!(i() instanceof a)) {
            return i();
        }
        i iVarI = i();
        kotlin.jvm.internal.h.d(iVarI, "null cannot be cast to non-null type org.jetbrains.kotlin.resolve.scopes.AbstractScopeAdapter");
        return ((a) iVarI).h();
    }

    public abstract i i();
}
