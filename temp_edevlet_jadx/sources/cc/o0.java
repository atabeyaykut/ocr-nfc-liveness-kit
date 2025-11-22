package cc;

/* loaded from: classes2.dex */
public final class o0 extends t {

    /* renamed from: c, reason: collision with root package name */
    public final a1 f2340c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o0(m0 delegate, a1 attributes) {
        super(delegate);
        kotlin.jvm.internal.h.f(delegate, "delegate");
        kotlin.jvm.internal.h.f(attributes, "attributes");
        this.f2340c = attributes;
    }

    @Override // cc.s, cc.e0
    public final a1 L0() {
        return this.f2340c;
    }

    @Override // cc.s
    public final s X0(m0 m0Var) {
        return new o0(m0Var, this.f2340c);
    }
}
