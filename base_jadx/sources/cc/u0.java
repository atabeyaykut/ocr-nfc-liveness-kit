package cc;

/* loaded from: classes2.dex */
public final class u0 extends d {

    /* renamed from: e, reason: collision with root package name */
    public final c1 f2368e;
    public final vb.i f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public u0(dc.n originalTypeVariable, boolean z10, c1 constructor) {
        super(originalTypeVariable, z10);
        kotlin.jvm.internal.h.f(originalTypeVariable, "originalTypeVariable");
        kotlin.jvm.internal.h.f(constructor, "constructor");
        this.f2368e = constructor;
        this.f = originalTypeVariable.m().f().o();
    }

    @Override // cc.e0
    public final c1 M0() {
        return this.f2368e;
    }

    @Override // cc.d
    public final u0 V0(boolean z10) {
        return new u0(this.f2280b, z10, this.f2368e);
    }

    @Override // cc.d, cc.e0
    public final vb.i o() {
        return this.f;
    }

    @Override // cc.m0
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Stub (BI): ");
        sb2.append(this.f2280b);
        sb2.append(this.f2281c ? "?" : "");
        return sb2.toString();
    }
}
