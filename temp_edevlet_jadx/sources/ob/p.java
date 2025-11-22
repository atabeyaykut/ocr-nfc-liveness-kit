package ob;

/* loaded from: classes2.dex */
public final class p implements x9.l<ma.b, Boolean> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ma.e f11295a;

    public p(ma.e eVar) {
        this.f11295a = eVar;
    }

    @Override // x9.l
    public final Boolean invoke(ma.b bVar) {
        ma.b bVar2 = bVar;
        boolean z10 = false;
        if (!ma.p.e(bVar2.getVisibility())) {
            ma.e eVar = this.f11295a;
            if (eVar == null) {
                ma.p.a(3);
                throw null;
            }
            if (ma.p.c(ma.p.f10232m, bVar2, eVar) == null) {
                z10 = true;
            }
        }
        return Boolean.valueOf(z10);
    }
}
