package ya;

import bc.c;
import cb.t;
import com.google.android.gms.internal.clearcut.d0;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import m9.v;
import ma.h0;
import p4.g7;
import sa.b0;
import x9.l;
import ya.j;
import za.m;

/* loaded from: classes2.dex */
public final class f implements h0 {

    /* renamed from: a, reason: collision with root package name */
    public final g7 f19361a;

    /* renamed from: b, reason: collision with root package name */
    public final bc.a<lb.c, m> f19362b;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<m> {

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ t f19364b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(t tVar) {
            super(0);
            this.f19364b = tVar;
        }

        @Override // x9.a
        public final m invoke() {
            return new m(f.this.f19361a, this.f19364b);
        }
    }

    public f(c cVar) {
        g7 g7Var = new g7(cVar, j.a.f19372a, new l9.b());
        this.f19361a = g7Var;
        this.f19362b = g7Var.b().c();
    }

    @Override // ma.f0
    public final List<m> a(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        return b8.f.U(d(fqName));
    }

    @Override // ma.h0
    public final void b(lb.c fqName, ArrayList arrayList) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        d0.f(d(fqName), arrayList);
    }

    @Override // ma.h0
    public final boolean c(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        return ((c) this.f19361a.f12358a).f19334b.b(fqName) == null;
    }

    public final m d(lb.c cVar) {
        b0 b0VarB = ((c) this.f19361a.f12358a).f19334b.b(cVar);
        if (b0VarB == null) {
            return null;
        }
        return (m) ((c.b) this.f19362b).c(cVar, new a(b0VarB));
    }

    @Override // ma.f0
    public final Collection n(lb.c fqName, l nameFilter) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        m mVarD = d(fqName);
        List<lb.c> listInvoke = mVarD != null ? mVarD.f19955l.invoke() : null;
        if (listInvoke == null) {
            listInvoke = v.f10173a;
        }
        return listInvoke;
    }

    public final String toString() {
        return "LazyJavaPackageFragmentProvider of module " + ((c) this.f19361a.f12358a).f19346o;
    }
}
