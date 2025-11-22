package cc;

import java.util.List;

/* loaded from: classes2.dex */
public abstract class d extends m0 {

    /* renamed from: b, reason: collision with root package name */
    public final dc.n f2280b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2281c;

    /* renamed from: d, reason: collision with root package name */
    public final ec.e f2282d;

    public d(dc.n originalTypeVariable, boolean z10) {
        kotlin.jvm.internal.h.f(originalTypeVariable, "originalTypeVariable");
        this.f2280b = originalTypeVariable;
        this.f2281c = z10;
        this.f2282d = ec.i.b(5, originalTypeVariable.toString());
    }

    @Override // cc.e0
    public final List<i1> K0() {
        return m9.v.f10173a;
    }

    @Override // cc.e0
    public final a1 L0() {
        a1.f2258b.getClass();
        return a1.f2259c;
    }

    @Override // cc.e0
    public final boolean N0() {
        return this.f2281c;
    }

    @Override // cc.e0
    public final e0 O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // cc.s1
    /* renamed from: R0 */
    public final s1 O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        return this;
    }

    @Override // cc.m0, cc.s1
    public final s1 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return this;
    }

    @Override // cc.m0
    /* renamed from: T0 */
    public final m0 Q0(boolean z10) {
        return z10 == this.f2281c ? this : V0(z10);
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return this;
    }

    public abstract u0 V0(boolean z10);

    @Override // cc.e0
    public vb.i o() {
        return this.f2282d;
    }
}
