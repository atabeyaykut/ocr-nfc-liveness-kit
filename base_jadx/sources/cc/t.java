package cc;

/* loaded from: classes2.dex */
public abstract class t extends s {

    /* renamed from: b, reason: collision with root package name */
    public final m0 f2358b;

    public t(m0 delegate) {
        kotlin.jvm.internal.h.f(delegate, "delegate");
        this.f2358b = delegate;
    }

    @Override // cc.m0
    /* renamed from: T0 */
    public final m0 Q0(boolean z10) {
        return z10 == N0() ? this : this.f2358b.Q0(z10).S0(L0());
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return newAttributes != L0() ? new o0(this, newAttributes) : this;
    }

    @Override // cc.s
    public final m0 V0() {
        return this.f2358b;
    }
}
