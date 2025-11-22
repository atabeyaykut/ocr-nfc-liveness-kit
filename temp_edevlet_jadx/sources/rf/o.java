package rf;

/* loaded from: classes3.dex */
public final class o implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14679a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f14680b;

    public /* synthetic */ o(k9.a aVar, int r22) {
        this.f14679a = r22;
        this.f14680b = aVar;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f14679a;
        k9.a aVar = this.f14680b;
        switch (r02) {
            case 0:
                return new n((a) aVar.get());
            case 1:
                return new zg.b((zg.i) aVar.get());
            case 2:
                return new zg.g((zg.i) aVar.get());
            case 3:
                return new fh.h((fh.b) aVar.get());
            case 4:
                return new lh.a((lh.c) aVar.get());
            case 5:
                return new lh.j((lh.c) aVar.get());
            case 6:
                return new mh.f((mh.a) aVar.get());
            default:
                return new ph.e((ph.b) aVar.get());
        }
    }
}
