package pa;

import cc.c1;
import cc.q1;
import cc.s1;
import java.util.List;
import ma.r0;

/* loaded from: classes2.dex */
public abstract class f extends q implements ma.v0 {

    /* renamed from: e, reason: collision with root package name */
    public final ma.q f12889e;
    public List<? extends ma.w0> f;

    /* renamed from: g, reason: collision with root package name */
    public final g f12890g;

    public static final class a extends kotlin.jvm.internal.j implements x9.l<s1, Boolean> {
        public a() {
            super(1);
        }

        @Override // x9.l
        public final Boolean invoke(s1 s1Var) {
            s1 type = s1Var;
            kotlin.jvm.internal.h.e(type, "type");
            boolean z10 = false;
            if (!c5.v.y(type)) {
                ma.g gVarN = type.M0().n();
                if ((gVarN instanceof ma.w0) && !kotlin.jvm.internal.h.a(((ma.w0) gVarN).b(), f.this)) {
                    z10 = true;
                }
            }
            return Boolean.valueOf(z10);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public f(ma.j containingDeclaration, na.h hVar, lb.f fVar, ma.q visibilityImpl) {
        r0.a aVar = ma.r0.f10243a;
        kotlin.jvm.internal.h.f(containingDeclaration, "containingDeclaration");
        kotlin.jvm.internal.h.f(visibilityImpl, "visibilityImpl");
        super(containingDeclaration, hVar, fVar, aVar);
        this.f12889e = visibilityImpl;
        this.f12890g = new g(this);
    }

    @Override // ma.z
    public final boolean D0() {
        return false;
    }

    @Override // ma.z
    public final boolean G() {
        return false;
    }

    @Override // ma.h
    public final boolean H() {
        return q1.c(((ac.m) this).c0(), new a());
    }

    @Override // pa.q, pa.p, ma.j
    public final ma.g a() {
        return this;
    }

    @Override // pa.q, pa.p, ma.j
    public final ma.j a() {
        return this;
    }

    @Override // ma.n, ma.z
    public final ma.q getVisibility() {
        return this.f12889e;
    }

    @Override // ma.g
    public final c1 i() {
        return this.f12890g;
    }

    @Override // ma.z
    public final boolean isExternal() {
        return false;
    }

    @Override // ma.j
    public final <R, D> R o0(ma.l<R, D> lVar, D d10) {
        return lVar.k(this, d10);
    }

    @Override // ma.h
    public final List<ma.w0> s() {
        List list = this.f;
        if (list != null) {
            return list;
        }
        kotlin.jvm.internal.h.n("declaredTypeParametersImpl");
        throw null;
    }

    @Override // pa.p
    public final String toString() {
        return "typealias " + getName().o();
    }

    @Override // pa.q
    /* renamed from: z0 */
    public final ma.m a() {
        return this;
    }
}
