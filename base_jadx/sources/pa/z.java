package pa;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import na.h;
import vb.b;
import vb.i;

/* loaded from: classes2.dex */
public final class z extends p implements ma.i0 {

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ da.m<Object>[] f13052h = {kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(z.class), "fragments", "getFragments()Ljava/util/List;")), kotlin.jvm.internal.w.c(new kotlin.jvm.internal.r(kotlin.jvm.internal.w.a(z.class), "empty", "getEmpty()Z"))};

    /* renamed from: c, reason: collision with root package name */
    public final g0 f13053c;

    /* renamed from: d, reason: collision with root package name */
    public final lb.c f13054d;

    /* renamed from: e, reason: collision with root package name */
    public final bc.i f13055e;
    public final bc.i f;

    /* renamed from: g, reason: collision with root package name */
    public final vb.h f13056g;

    public static final class a extends kotlin.jvm.internal.j implements x9.a<Boolean> {
        public a() {
            super(0);
        }

        @Override // x9.a
        public final Boolean invoke() {
            z zVar = z.this;
            g0 g0Var = zVar.f13053c;
            g0Var.z0();
            return Boolean.valueOf(c5.v.x((o) g0Var.f12901l.getValue(), zVar.f13054d));
        }
    }

    public static final class b extends kotlin.jvm.internal.j implements x9.a<List<? extends ma.e0>> {
        public b() {
            super(0);
        }

        @Override // x9.a
        public final List<? extends ma.e0> invoke() {
            z zVar = z.this;
            g0 g0Var = zVar.f13053c;
            g0Var.z0();
            return c5.v.F((o) g0Var.f12901l.getValue(), zVar.f13054d);
        }
    }

    public static final class c extends kotlin.jvm.internal.j implements x9.a<vb.i> {
        public c() {
            super(0);
        }

        @Override // x9.a
        public final vb.i invoke() {
            z zVar = z.this;
            if (zVar.isEmpty()) {
                return i.b.f18453b;
            }
            List<ma.e0> listD = zVar.D();
            ArrayList arrayList = new ArrayList(m9.n.Q0(listD));
            Iterator<T> it = listD.iterator();
            while (it.hasNext()) {
                arrayList.add(((ma.e0) it.next()).o());
            }
            g0 g0Var = zVar.f13053c;
            lb.c cVar = zVar.f13054d;
            return b.a.a("package view scope for " + cVar + " in " + g0Var.getName(), m9.t.n1(new q0(g0Var, cVar), arrayList));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public z(g0 module, lb.c fqName, bc.l storageManager) {
        super(h.a.f10653a, fqName.g());
        kotlin.jvm.internal.h.f(module, "module");
        kotlin.jvm.internal.h.f(fqName, "fqName");
        kotlin.jvm.internal.h.f(storageManager, "storageManager");
        this.f13053c = module;
        this.f13054d = fqName;
        this.f13055e = storageManager.d(new b());
        this.f = storageManager.d(new a());
        this.f13056g = new vb.h(storageManager, new c());
    }

    @Override // ma.i0
    public final List<ma.e0> D() {
        return (List) b8.f.O(this.f13055e, f13052h[0]);
    }

    @Override // ma.j
    public final ma.j b() {
        lb.c cVar = this.f13054d;
        if (cVar.d()) {
            return null;
        }
        lb.c cVarE = cVar.e();
        kotlin.jvm.internal.h.e(cVarE, "fqName.parent()");
        return this.f13053c.I0(cVarE);
    }

    @Override // ma.i0
    public final lb.c d() {
        return this.f13054d;
    }

    public final boolean equals(Object obj) {
        ma.i0 i0Var = obj instanceof ma.i0 ? (ma.i0) obj : null;
        if (i0Var == null) {
            return false;
        }
        if (kotlin.jvm.internal.h.a(this.f13054d, i0Var.d())) {
            return kotlin.jvm.internal.h.a(this.f13053c, i0Var.u0());
        }
        return false;
    }

    public final int hashCode() {
        return this.f13054d.hashCode() + (this.f13053c.hashCode() * 31);
    }

    @Override // ma.i0
    public final boolean isEmpty() {
        return ((Boolean) b8.f.O(this.f, f13052h[1])).booleanValue();
    }

    @Override // ma.i0
    public final vb.i o() {
        return this.f13056g;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.l(this, d10);
    }

    @Override // ma.i0
    public final g0 u0() {
        return this.f13053c;
    }
}
