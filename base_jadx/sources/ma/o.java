package ma;

/* loaded from: classes2.dex */
public abstract class o extends q {

    /* renamed from: a, reason: collision with root package name */
    public final e1 f10220a;

    public o(e1 delegate) {
        kotlin.jvm.internal.h.f(delegate, "delegate");
        this.f10220a = delegate;
    }

    @Override // ma.q
    public final e1 a() {
        return this.f10220a;
    }

    @Override // ma.q
    public final String b() {
        return this.f10220a.b();
    }

    @Override // ma.q
    public final q d() {
        return p.g(this.f10220a.c());
    }
}
