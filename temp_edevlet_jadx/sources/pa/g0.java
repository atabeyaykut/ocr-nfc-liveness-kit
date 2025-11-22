package pa;

import bc.c;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import na.h;
import pa.j0;

/* loaded from: classes2.dex */
public final class g0 extends p implements ma.b0 {

    /* renamed from: c, reason: collision with root package name */
    public final bc.l f12894c;

    /* renamed from: d, reason: collision with root package name */
    public final ja.k f12895d;

    /* renamed from: e, reason: collision with root package name */
    public final Map<com.airbnb.epoxy.a, Object> f12896e;
    public final j0 f;

    /* renamed from: g, reason: collision with root package name */
    public c0 f12897g;

    /* renamed from: h, reason: collision with root package name */
    public ma.f0 f12898h;

    /* renamed from: j, reason: collision with root package name */
    public final boolean f12899j;

    /* renamed from: k, reason: collision with root package name */
    public final bc.g<lb.c, ma.i0> f12900k;

    /* renamed from: l, reason: collision with root package name */
    public final l9.j f12901l;

    public g0() {
        throw null;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public g0(lb.f fVar, bc.l lVar, ja.k kVar, int r52) {
        super(h.a.f10653a, fVar);
        m9.w capabilities = (r52 & 16) != 0 ? m9.w.f10174a : null;
        kotlin.jvm.internal.h.f(capabilities, "capabilities");
        this.f12894c = lVar;
        this.f12895d = kVar;
        if (!fVar.f9677b) {
            throw new IllegalArgumentException("Module name must be special: " + fVar);
        }
        this.f12896e = capabilities;
        j0.f12917a.getClass();
        j0 j0Var = (j0) G0(j0.a.f12919b);
        this.f = j0Var == null ? j0.b.f12920b : j0Var;
        this.f12899j = true;
        this.f12900k = lVar.g(new f0(this));
        this.f12901l = c5.y.w(new e0(this));
    }

    @Override // ma.b0
    public final <T> T G0(com.airbnb.epoxy.a capability) {
        kotlin.jvm.internal.h.f(capability, "capability");
        T t10 = (T) this.f12896e.get(capability);
        if (t10 == null) {
            return null;
        }
        return t10;
    }

    @Override // ma.b0
    public final ma.i0 I0(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        z0();
        return (ma.i0) ((c.k) this.f12900k).invoke(fqName);
    }

    @Override // ma.b0
    public final boolean V(ma.b0 targetModule) {
        kotlin.jvm.internal.h.f(targetModule, "targetModule");
        if (kotlin.jvm.internal.h.a(this, targetModule)) {
            return true;
        }
        c0 c0Var = this.f12897g;
        kotlin.jvm.internal.h.c(c0Var);
        return m9.t.V0(c0Var.b(), targetModule) || s0().contains(targetModule) || targetModule.s0().contains(this);
    }

    @Override // ma.j
    public final ma.j b() {
        return null;
    }

    @Override // ma.b0
    public final ja.k m() {
        return this.f12895d;
    }

    @Override // ma.b0
    public final Collection<lb.c> n(lb.c fqName, x9.l<? super lb.f, Boolean> nameFilter) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        kotlin.jvm.internal.h.f(nameFilter, "nameFilter");
        z0();
        z0();
        return ((o) this.f12901l.getValue()).n(fqName, nameFilter);
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.m(this, d10);
    }

    @Override // ma.b0
    public final List<ma.b0> s0() {
        c0 c0Var = this.f12897g;
        if (c0Var != null) {
            return c0Var.c();
        }
        StringBuilder sb2 = new StringBuilder("Dependencies of module ");
        String str = getName().f9676a;
        kotlin.jvm.internal.h.e(str, "name.toString()");
        sb2.append(str);
        sb2.append(" were not set");
        throw new AssertionError(sb2.toString());
    }

    public final void z0() {
        l9.m mVar;
        if (this.f12899j) {
            return;
        }
        ma.y yVar = (ma.y) G0(ma.x.f10250a);
        if (yVar != null) {
            yVar.a();
            mVar = l9.m.f9594a;
        } else {
            mVar = null;
        }
        if (mVar != null) {
            return;
        }
        throw new ma.w("Accessing invalid module descriptor " + this, 0);
    }
}
