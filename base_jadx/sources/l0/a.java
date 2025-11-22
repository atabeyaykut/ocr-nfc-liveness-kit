package l0;

import g0.a;

/* loaded from: classes.dex */
public final class a implements a.InterfaceC0091a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f9267a;

    public a(b bVar) {
        this.f9267a = bVar;
    }

    @Override // g0.a.InterfaceC0091a
    public final void a() {
        b bVar = this.f9267a;
        boolean z10 = bVar.f9282p.l() == 1.0f;
        if (z10 != bVar.f9288v) {
            bVar.f9288v = z10;
            bVar.f9279m.invalidateSelf();
        }
    }
}
