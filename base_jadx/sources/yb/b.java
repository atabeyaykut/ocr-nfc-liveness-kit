package yb;

import bc.c;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.builtins.a;

/* loaded from: classes2.dex */
public abstract class b implements ma.h0 {

    /* renamed from: a, reason: collision with root package name */
    public final bc.l f19377a;

    /* renamed from: b, reason: collision with root package name */
    public final x f19378b;

    /* renamed from: c, reason: collision with root package name */
    public final ma.b0 f19379c;

    /* renamed from: d, reason: collision with root package name */
    public l f19380d;

    /* renamed from: e, reason: collision with root package name */
    public final bc.h<lb.c, ma.e0> f19381e;

    public b(bc.c cVar, ra.f fVar, pa.g0 g0Var) {
        this.f19377a = cVar;
        this.f19378b = fVar;
        this.f19379c = g0Var;
        this.f19381e = cVar.e(new a(this));
    }

    @Override // ma.f0
    public final List<ma.e0> a(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        return b8.f.U(this.f19381e.invoke(fqName));
    }

    @Override // ma.h0
    public final void b(lb.c fqName, ArrayList arrayList) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        com.google.android.gms.internal.clearcut.d0.f(this.f19381e.invoke(fqName), arrayList);
    }

    @Override // ma.h0
    public final boolean c(lb.c fqName) {
        ma.m mVarA;
        kotlin.jvm.internal.h.f(fqName, "fqName");
        bc.h<lb.c, ma.e0> hVar = this.f19381e;
        Object obj = ((c.j) hVar).f1203b.get(fqName);
        if ((obj == null || obj == c.l.COMPUTING) ? false : true) {
            mVarA = (ma.e0) hVar.invoke(fqName);
        } else {
            la.t tVar = (la.t) this;
            InputStream inputStreamC = tVar.f19378b.c(fqName);
            mVarA = inputStreamC != null ? a.C0169a.a(fqName, tVar.f19377a, tVar.f19379c, inputStreamC, false) : null;
        }
        return mVarA == null;
    }

    @Override // ma.f0
    public final Collection<lb.c> n(lb.c fqName, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        return m9.x.f10175a;
    }
}
