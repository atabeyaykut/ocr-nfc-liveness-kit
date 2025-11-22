package of;

import r0.p;

/* loaded from: classes3.dex */
public final class h implements cf.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11331a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f11332b;

    public /* synthetic */ h(int r12, g gVar) {
        this.f11331a = r12;
        this.f11332b = gVar;
    }

    @Override // cf.a
    public final af.c a(p pVar) {
        int r02 = this.f11331a;
        Object obj = this.f11332b;
        switch (r02) {
            case 0:
                return new d((c) pVar, (i) ((g) obj).f11330a.get());
            default:
                return new uh.d((uh.c) pVar, (uh.e) ((g) obj).f11330a.get());
        }
    }
}
