package pf;

/* loaded from: classes3.dex */
public final class n implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13198a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f13199b;

    public /* synthetic */ n(k9.a aVar, int r22) {
        this.f13198a = r22;
        this.f13199b = aVar;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f13198a;
        k9.a aVar = this.f13199b;
        switch (r02) {
            case 0:
                return new m((a) aVar.get());
            case 1:
                return new rf.c((rf.a) aVar.get());
            case 2:
                return new yf.h((yf.c) aVar.get());
            case 3:
                return new fg.l((fg.d) aVar.get());
            case 4:
                return new gg.c((fg.d) aVar.get());
            case 5:
                return new zg.c((zg.i) aVar.get());
            case 6:
                return new zg.h((zg.i) aVar.get());
            case 7:
                return new dh.n((dh.b) aVar.get());
            case 8:
                return new nh.f((nh.a) aVar.get());
            case 9:
                return new rh.a((rh.b) aVar.get());
            default:
                return new th.a((th.b) aVar.get());
        }
    }
}
