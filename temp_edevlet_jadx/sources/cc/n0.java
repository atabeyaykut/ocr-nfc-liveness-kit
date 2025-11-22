package cc;

import java.util.List;

/* loaded from: classes2.dex */
public final class n0 extends m0 {

    /* renamed from: b, reason: collision with root package name */
    public final c1 f2336b;

    /* renamed from: c, reason: collision with root package name */
    public final List<i1> f2337c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f2338d;

    /* renamed from: e, reason: collision with root package name */
    public final vb.i f2339e;
    public final x9.l<dc.f, m0> f;

    /* JADX WARN: Multi-variable type inference failed */
    public n0(c1 constructor, List<? extends i1> arguments, boolean z10, vb.i memberScope, x9.l<? super dc.f, ? extends m0> refinedTypeFactory) {
        kotlin.jvm.internal.h.f(constructor, "constructor");
        kotlin.jvm.internal.h.f(arguments, "arguments");
        kotlin.jvm.internal.h.f(memberScope, "memberScope");
        kotlin.jvm.internal.h.f(refinedTypeFactory, "refinedTypeFactory");
        this.f2336b = constructor;
        this.f2337c = arguments;
        this.f2338d = z10;
        this.f2339e = memberScope;
        this.f = refinedTypeFactory;
        if (!(memberScope instanceof ec.e) || (memberScope instanceof ec.j)) {
            return;
        }
        throw new IllegalStateException("SimpleTypeImpl should not be created for error type: " + memberScope + '\n' + constructor);
    }

    @Override // cc.e0
    public final List<i1> K0() {
        return this.f2337c;
    }

    @Override // cc.e0
    public final a1 L0() {
        a1.f2258b.getClass();
        return a1.f2259c;
    }

    @Override // cc.e0
    public final c1 M0() {
        return this.f2336b;
    }

    @Override // cc.e0
    public final boolean N0() {
        return this.f2338d;
    }

    @Override // cc.e0
    public final e0 O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        m0 m0VarInvoke = this.f.invoke(kotlinTypeRefiner);
        return m0VarInvoke == null ? this : m0VarInvoke;
    }

    @Override // cc.s1
    /* renamed from: R0 */
    public final s1 O0(dc.f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        m0 m0VarInvoke = this.f.invoke(kotlinTypeRefiner);
        return m0VarInvoke == null ? this : m0VarInvoke;
    }

    @Override // cc.m0
    /* renamed from: T0 */
    public final m0 Q0(boolean z10) {
        return z10 == this.f2338d ? this : z10 ? new k0(this) : new j0(this);
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return newAttributes.isEmpty() ? this : new o0(this, newAttributes);
    }

    @Override // cc.e0
    public final vb.i o() {
        return this.f2339e;
    }
}
