package k0;

import f0.q;

/* loaded from: classes.dex */
public final class n implements b {

    /* renamed from: a, reason: collision with root package name */
    public final String f8674a;

    /* renamed from: b, reason: collision with root package name */
    public final int f8675b;

    /* renamed from: c, reason: collision with root package name */
    public final j0.h f8676c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f8677d;

    public n(String str, int r22, j0.h hVar, boolean z10) {
        this.f8674a = str;
        this.f8675b = r22;
        this.f8676c = hVar;
        this.f8677d = z10;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new q(lVar, bVar, this);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("ShapePath{name=");
        sb2.append(this.f8674a);
        sb2.append(", index=");
        return androidx.constraintlayout.core.a.d(sb2, this.f8675b, '}');
    }
}
