package cc;

/* loaded from: classes2.dex */
public final class v extends y {

    /* renamed from: d, reason: collision with root package name */
    public final a1 f2369d;

    /* JADX WARN: Illegal instructions before constructor call */
    public v(ja.k kVar, a1 attributes) {
        kotlin.jvm.internal.h.f(attributes, "attributes");
        m0 m0VarN = kVar.n();
        kotlin.jvm.internal.h.e(m0VarN, "builtIns.nothingType");
        super(m0VarN, kVar.o());
        this.f2369d = attributes;
    }

    @Override // cc.y, cc.e0
    public final a1 L0() {
        return this.f2369d;
    }

    @Override // cc.y, cc.e0
    public final boolean N0() {
        return false;
    }

    @Override // cc.e0
    public final e0 O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // cc.s1
    public final s1 Q0(boolean z10) {
        return this;
    }

    @Override // cc.s1
    public final s1 R0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // cc.s1
    public final s1 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return new v(c5.y.o(this.f2378c), newAttributes);
    }

    @Override // cc.y
    public final m0 T0() {
        return this.f2378c;
    }

    @Override // cc.y
    public final String U0(nb.c renderer, nb.j options) {
        kotlin.jvm.internal.h.f(renderer, "renderer");
        kotlin.jvm.internal.h.f(options, "options");
        return "dynamic";
    }
}
