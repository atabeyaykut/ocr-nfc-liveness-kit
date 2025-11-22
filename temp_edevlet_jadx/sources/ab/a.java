package ab;

import cc.m0;
import cc.x;
import java.util.Set;
import m9.g0;
import ma.w0;

/* loaded from: classes2.dex */
public final class a extends x {

    /* renamed from: a, reason: collision with root package name */
    public final int f141a;

    /* renamed from: b, reason: collision with root package name */
    public final int f142b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f143c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f144d;

    /* renamed from: e, reason: collision with root package name */
    public final Set<w0> f145e;
    public final m0 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/Object;Ljava/lang/Object;ZZLjava/util/Set<+Lma/w0;>;Lcc/m0;)V */
    public a(int r22, int r32, boolean z10, boolean z11, Set set, m0 m0Var) {
        super(r22, set, m0Var);
        androidx.camera.core.impl.utils.f.j(r22, "howThisTypeIsUsed");
        androidx.camera.core.impl.utils.f.j(r32, "flexibility");
        this.f141a = r22;
        this.f142b = r32;
        this.f143c = z10;
        this.f144d = z11;
        this.f145e = set;
        this.f = m0Var;
    }

    public /* synthetic */ a(int r10, boolean z10, boolean z11, Set set, int r14) {
        this(r10, (r14 & 2) != 0 ? 1 : 0, (r14 & 4) != 0 ? false : z10, (r14 & 8) != 0 ? false : z11, (r14 & 16) != 0 ? null : set, null);
    }

    public static a e(a aVar, int r10, boolean z10, Set set, m0 m0Var, int r14) {
        int r32 = (r14 & 1) != 0 ? aVar.f141a : 0;
        if ((r14 & 2) != 0) {
            r10 = aVar.f142b;
        }
        int r42 = r10;
        if ((r14 & 4) != 0) {
            z10 = aVar.f143c;
        }
        boolean z11 = z10;
        boolean z12 = (r14 & 8) != 0 ? aVar.f144d : false;
        if ((r14 & 16) != 0) {
            set = aVar.f145e;
        }
        Set set2 = set;
        if ((r14 & 32) != 0) {
            m0Var = aVar.f;
        }
        aVar.getClass();
        androidx.camera.core.impl.utils.f.j(r32, "howThisTypeIsUsed");
        androidx.camera.core.impl.utils.f.j(r42, "flexibility");
        return new a(r32, r42, z11, z12, set2, m0Var);
    }

    @Override // cc.x
    public final m0 a() {
        return this.f;
    }

    @Override // cc.x
    public final int b() {
        return this.f141a;
    }

    @Override // cc.x
    public final Set<w0> c() {
        return this.f145e;
    }

    @Override // cc.x
    public final x d(w0 w0Var) {
        Set<w0> set = this.f145e;
        return e(this, 0, false, set != null ? g0.G(set, w0Var) : x5.a.r(w0Var), null, 47);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return kotlin.jvm.internal.h.a(aVar.f, this.f) && aVar.f141a == this.f141a && aVar.f142b == this.f142b && aVar.f143c == this.f143c && aVar.f144d == this.f144d;
    }

    public final a f(int r82) {
        androidx.camera.core.impl.utils.f.j(r82, "flexibility");
        return e(this, r82, false, null, null, 61);
    }

    @Override // cc.x
    public final int hashCode() {
        m0 m0Var = this.f;
        int r02 = m0Var != null ? m0Var.hashCode() : 0;
        int r22 = g.d.c(this.f141a) + (r02 * 31) + r02;
        int r12 = g.d.c(this.f142b) + (r22 * 31) + r22;
        int r03 = (r12 * 31) + (this.f143c ? 1 : 0) + r12;
        return (r03 * 31) + (this.f144d ? 1 : 0) + r03;
    }

    public final String toString() {
        return "JavaTypeAttributes(howThisTypeIsUsed=" + android.support.v4.media.a.n(this.f141a) + ", flexibility=" + b.j(this.f142b) + ", isRaw=" + this.f143c + ", isForAnnotationParameter=" + this.f144d + ", visitedTypeParameters=" + this.f145e + ", defaultType=" + this.f + ')';
    }
}
