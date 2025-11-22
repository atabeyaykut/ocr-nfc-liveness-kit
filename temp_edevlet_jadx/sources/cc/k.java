package cc;

/* loaded from: classes2.dex */
public final class k extends y0<k> {

    /* renamed from: a, reason: collision with root package name */
    public final na.h f2325a;

    public k(na.h annotations) {
        kotlin.jvm.internal.h.f(annotations, "annotations");
        this.f2325a = annotations;
    }

    @Override // cc.y0
    public final k a(y0 y0Var) {
        k kVar = (k) y0Var;
        return kVar == null ? this : new k(com.google.android.gms.internal.clearcut.d0.j(this.f2325a, kVar.f2325a));
    }

    @Override // cc.y0
    public final da.d<? extends k> b() {
        return kotlin.jvm.internal.w.a(k.class);
    }

    @Override // cc.y0
    public final k c(y0 y0Var) {
        if (kotlin.jvm.internal.h.a((k) y0Var, this)) {
            return this;
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof k) {
            return kotlin.jvm.internal.h.a(((k) obj).f2325a, this.f2325a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f2325a.hashCode();
    }
}
