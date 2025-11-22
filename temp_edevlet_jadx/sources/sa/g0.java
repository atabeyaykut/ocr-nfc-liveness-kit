package sa;

import java.lang.annotation.Annotation;
import java.util.Collection;

/* loaded from: classes2.dex */
public final class g0 extends v implements cb.z {

    /* renamed from: a, reason: collision with root package name */
    public final e0 f15345a;

    /* renamed from: b, reason: collision with root package name */
    public final Annotation[] f15346b;

    /* renamed from: c, reason: collision with root package name */
    public final String f15347c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f15348d;

    public g0(e0 e0Var, Annotation[] reflectAnnotations, String str, boolean z10) {
        kotlin.jvm.internal.h.f(reflectAnnotations, "reflectAnnotations");
        this.f15345a = e0Var;
        this.f15346b = reflectAnnotations;
        this.f15347c = str;
        this.f15348d = z10;
    }

    @Override // cb.z
    public final boolean a() {
        return this.f15348d;
    }

    @Override // cb.d
    public final Collection getAnnotations() {
        return b8.f.G(this.f15346b);
    }

    @Override // cb.z
    public final lb.f getName() {
        String str = this.f15347c;
        if (str != null) {
            return lb.f.r(str);
        }
        return null;
    }

    @Override // cb.z
    public final cb.w getType() {
        return this.f15345a;
    }

    @Override // cb.d
    public final cb.a n(lb.c fqName) {
        kotlin.jvm.internal.h.f(fqName, "fqName");
        return b8.f.E(this.f15346b, fqName);
    }

    @Override // cb.d
    public final void o() {
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(g0.class.getName());
        sb2.append(": ");
        sb2.append(this.f15348d ? "vararg " : "");
        sb2.append(getName());
        sb2.append(": ");
        sb2.append(this.f15345a);
        return sb2.toString();
    }
}
