package cc;

/* loaded from: classes2.dex */
public final class a0 extends y implements r1 {

    /* renamed from: d, reason: collision with root package name */
    public final y f2256d;

    /* renamed from: e, reason: collision with root package name */
    public final e0 f2257e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a0(y origin, e0 enhancement) {
        super(origin.f2377b, origin.f2378c);
        kotlin.jvm.internal.h.f(origin, "origin");
        kotlin.jvm.internal.h.f(enhancement, "enhancement");
        this.f2256d = origin;
        this.f2257e = enhancement;
    }

    @Override // cc.r1
    public final e0 C() {
        return this.f2257e;
    }

    @Override // cc.r1
    public final s1 E0() {
        return this.f2256d;
    }

    @Override // cc.s1
    public final s1 Q0(boolean z10) {
        return c5.v.O(this.f2256d.Q0(z10), this.f2257e.P0().Q0(z10));
    }

    @Override // cc.s1
    public final s1 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return c5.v.O(this.f2256d.S0(newAttributes), this.f2257e);
    }

    @Override // cc.y
    public final m0 T0() {
        return this.f2256d.T0();
    }

    @Override // cc.y
    public final String U0(nb.c renderer, nb.j options) {
        kotlin.jvm.internal.h.f(renderer, "renderer");
        kotlin.jvm.internal.h.f(options, "options");
        return options.g() ? renderer.u(this.f2257e) : this.f2256d.U0(renderer, options);
    }

    @Override // cc.s1
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public final a0 O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        e0 e0VarX = kotlinTypeRefiner.x(this.f2256d);
        kotlin.jvm.internal.h.d(e0VarX, "null cannot be cast to non-null type org.jetbrains.kotlin.types.FlexibleType");
        return new a0((y) e0VarX, kotlinTypeRefiner.x(this.f2257e));
    }

    @Override // cc.y
    public final String toString() {
        return "[@EnhancedForWarnings(" + this.f2257e + ")] " + this.f2256d;
    }
}
