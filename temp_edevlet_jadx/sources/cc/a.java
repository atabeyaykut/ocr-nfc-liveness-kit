package cc;

/* loaded from: classes2.dex */
public final class a extends s {

    /* renamed from: b, reason: collision with root package name */
    public final m0 f2254b;

    /* renamed from: c, reason: collision with root package name */
    public final m0 f2255c;

    public a(m0 delegate, m0 abbreviation) {
        kotlin.jvm.internal.h.f(delegate, "delegate");
        kotlin.jvm.internal.h.f(abbreviation, "abbreviation");
        this.f2254b = delegate;
        this.f2255c = abbreviation;
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return new a(this.f2254b.S0(newAttributes), this.f2255c);
    }

    @Override // cc.s
    public final m0 V0() {
        return this.f2254b;
    }

    @Override // cc.s
    public final s X0(m0 m0Var) {
        return new a(m0Var, this.f2255c);
    }

    @Override // cc.m0
    /* renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public final a Q0(boolean z10) {
        return new a(this.f2254b.Q0(z10), this.f2255c.Q0(z10));
    }

    @Override // cc.s
    /* renamed from: Z0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final a O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        e0 e0VarX = kotlinTypeRefiner.x(this.f2254b);
        kotlin.jvm.internal.h.d(e0VarX, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        e0 e0VarX2 = kotlinTypeRefiner.x(this.f2255c);
        kotlin.jvm.internal.h.d(e0VarX2, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new a((m0) e0VarX, (m0) e0VarX2);
    }
}
