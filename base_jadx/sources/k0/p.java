package k0;

import f0.s;

/* loaded from: classes.dex */
public final class p implements b {

    /* renamed from: a, reason: collision with root package name */
    public final int f8687a;

    /* renamed from: b, reason: collision with root package name */
    public final j0.b f8688b;

    /* renamed from: c, reason: collision with root package name */
    public final j0.b f8689c;

    /* renamed from: d, reason: collision with root package name */
    public final j0.b f8690d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f8691e;

    public p(String str, int r22, j0.b bVar, j0.b bVar2, j0.b bVar3, boolean z10) {
        this.f8687a = r22;
        this.f8688b = bVar;
        this.f8689c = bVar2;
        this.f8690d = bVar3;
        this.f8691e = z10;
    }

    @Override // k0.b
    public final f0.c a(d0.l lVar, l0.b bVar) {
        return new s(bVar, this);
    }

    public final String toString() {
        return "Trim Path: {start: " + this.f8688b + ", end: " + this.f8689c + ", offset: " + this.f8690d + "}";
    }
}
