package pb;

import cc.a1;
import cc.c1;
import cc.e0;
import cc.i1;
import cc.m0;
import cc.s1;
import dc.f;
import java.util.List;
import kotlin.jvm.internal.h;
import m9.v;
import vb.i;

/* loaded from: classes2.dex */
public final class a extends m0 implements fc.d {

    /* renamed from: b, reason: collision with root package name */
    public final i1 f13060b;

    /* renamed from: c, reason: collision with root package name */
    public final b f13061c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f13062d;

    /* renamed from: e, reason: collision with root package name */
    public final a1 f13063e;

    public a(i1 typeProjection, b constructor, boolean z10, a1 attributes) {
        h.f(typeProjection, "typeProjection");
        h.f(constructor, "constructor");
        h.f(attributes, "attributes");
        this.f13060b = typeProjection;
        this.f13061c = constructor;
        this.f13062d = z10;
        this.f13063e = attributes;
    }

    @Override // cc.e0
    public final List<i1> K0() {
        return v.f10173a;
    }

    @Override // cc.e0
    public final a1 L0() {
        return this.f13063e;
    }

    @Override // cc.e0
    public final c1 M0() {
        return this.f13061c;
    }

    @Override // cc.e0
    public final boolean N0() {
        return this.f13062d;
    }

    @Override // cc.e0
    public final e0 O0(f kotlinTypeRefiner) {
        h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        i1 i1VarA = this.f13060b.a(kotlinTypeRefiner);
        h.e(i1VarA, "typeProjection.refine(kotlinTypeRefiner)");
        return new a(i1VarA, this.f13061c, this.f13062d, this.f13063e);
    }

    @Override // cc.m0, cc.s1
    public final s1 Q0(boolean z10) {
        if (z10 == this.f13062d) {
            return this;
        }
        return new a(this.f13060b, this.f13061c, z10, this.f13063e);
    }

    @Override // cc.s1
    /* renamed from: R0 */
    public final s1 O0(f kotlinTypeRefiner) {
        h.f(kotlinTypeRefiner, "kotlinTypeRefiner");
        i1 i1VarA = this.f13060b.a(kotlinTypeRefiner);
        h.e(i1VarA, "typeProjection.refine(kotlinTypeRefiner)");
        return new a(i1VarA, this.f13061c, this.f13062d, this.f13063e);
    }

    @Override // cc.m0
    /* renamed from: T0 */
    public final m0 Q0(boolean z10) {
        if (z10 == this.f13062d) {
            return this;
        }
        return new a(this.f13060b, this.f13061c, z10, this.f13063e);
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        h.f(newAttributes, "newAttributes");
        return new a(this.f13060b, this.f13061c, this.f13062d, newAttributes);
    }

    @Override // cc.e0
    public final i o() {
        return ec.i.a(1, true, new String[0]);
    }

    @Override // cc.m0
    public final String toString() {
        StringBuilder sb2 = new StringBuilder("Captured(");
        sb2.append(this.f13060b);
        sb2.append(')');
        sb2.append(this.f13062d ? "?" : "");
        return sb2.toString();
    }
}
