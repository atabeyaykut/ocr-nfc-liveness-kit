package cc;

/* loaded from: classes2.dex */
public final class p0 extends s implements r1 {

    /* renamed from: b, reason: collision with root package name */
    public final m0 f2342b;

    /* renamed from: c, reason: collision with root package name */
    public final e0 f2343c;

    public p0(m0 delegate, e0 enhancement) {
        kotlin.jvm.internal.h.f(delegate, "delegate");
        kotlin.jvm.internal.h.f(enhancement, "enhancement");
        this.f2342b = delegate;
        this.f2343c = enhancement;
    }

    @Override // cc.r1
    public final e0 C() {
        return this.f2343c;
    }

    @Override // cc.r1
    public final s1 E0() {
        return this.f2342b;
    }

    @Override // cc.m0
    /* renamed from: T0 */
    public final m0 Q0(boolean z10) {
        s1 s1VarO = c5.v.O(this.f2342b.Q0(z10), this.f2343c.P0().Q0(z10));
        kotlin.jvm.internal.h.d(s1VarO, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return (m0) s1VarO;
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        s1 s1VarO = c5.v.O(this.f2342b.S0(newAttributes), this.f2343c);
        kotlin.jvm.internal.h.d(s1VarO, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return (m0) s1VarO;
    }

    @Override // cc.s
    public final m0 V0() {
        return this.f2342b;
    }

    @Override // cc.s
    public final s X0(m0 m0Var) {
        return new p0(m0Var, this.f2343c);
    }

    @Override // cc.s
    /* renamed from: Y0, reason: merged with bridge method [inline-methods] */
    public final p0 O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        e0 e0VarX = kotlinTypeRefiner.x(this.f2342b);
        kotlin.jvm.internal.h.d(e0VarX, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType");
        return new p0((m0) e0VarX, kotlinTypeRefiner.x(this.f2343c));
    }

    @Override // cc.m0
    public final String toString() {
        return "[@EnhancedForWarnings(" + this.f2343c + ")] " + this.f2342b;
    }
}
