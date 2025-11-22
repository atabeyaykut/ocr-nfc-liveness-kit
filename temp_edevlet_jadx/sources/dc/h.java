package dc;

import cc.a1;
import cc.c1;
import cc.i1;
import cc.m0;
import cc.s1;
import java.util.List;

/* loaded from: classes2.dex */
public final class h extends m0 implements fc.d {

    /* renamed from: b, reason: collision with root package name */
    public final fc.b f4829b;

    /* renamed from: c, reason: collision with root package name */
    public final j f4830c;

    /* renamed from: d, reason: collision with root package name */
    public final s1 f4831d;

    /* renamed from: e, reason: collision with root package name */
    public final a1 f4832e;
    public final boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f4833g;

    /* JADX WARN: Illegal instructions before constructor call */
    public h(fc.b bVar, j jVar, s1 s1Var, a1 a1Var, boolean z10, int r13) {
        if ((r13 & 8) != 0) {
            a1.f2258b.getClass();
            a1Var = a1.f2259c;
        }
        this(bVar, jVar, s1Var, a1Var, (r13 & 16) != 0 ? false : z10, false);
    }

    public h(fc.b captureStatus, j constructor, s1 s1Var, a1 attributes, boolean z10, boolean z11) {
        kotlin.jvm.internal.h.f(captureStatus, "captureStatus");
        kotlin.jvm.internal.h.f(constructor, "constructor");
        kotlin.jvm.internal.h.f(attributes, "attributes");
        this.f4829b = captureStatus;
        this.f4830c = constructor;
        this.f4831d = s1Var;
        this.f4832e = attributes;
        this.f = z10;
        this.f4833g = z11;
    }

    @Override // cc.e0
    public final List<i1> K0() {
        return m9.v.f10173a;
    }

    @Override // cc.e0
    public final a1 L0() {
        return this.f4832e;
    }

    @Override // cc.e0
    public final c1 M0() {
        return this.f4830c;
    }

    @Override // cc.e0
    public final boolean N0() {
        return this.f;
    }

    @Override // cc.m0, cc.s1
    public final s1 Q0(boolean z10) {
        return new h(this.f4829b, this.f4830c, this.f4831d, this.f4832e, z10, 32);
    }

    @Override // cc.m0
    /* renamed from: T0 */
    public final m0 Q0(boolean z10) {
        return new h(this.f4829b, this.f4830c, this.f4831d, this.f4832e, z10, 32);
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return new h(this.f4829b, this.f4830c, this.f4831d, newAttributes, this.f, this.f4833g);
    }

    @Override // cc.s1
    /* renamed from: V0, reason: merged with bridge method [inline-methods] */
    public final h O0(f kotlinTypeRefiner) {
        kotlin.jvm.internal.h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        fc.b bVar = this.f4829b;
        j jVarC = this.f4830c.c(kotlinTypeRefiner);
        s1 s1Var = this.f4831d;
        return new h(bVar, jVarC, s1Var != null ? kotlinTypeRefiner.x(s1Var).P0() : null, this.f4832e, this.f, 32);
    }

    @Override // cc.e0
    public final vb.i o() {
        return ec.i.a(1, true, new String[0]);
    }
}
