package of;

/* loaded from: classes3.dex */
public final class j implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f11336a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f11337b;

    public /* synthetic */ j(k9.a aVar, int r22) {
        this.f11336a = r22;
        this.f11337b = aVar;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f11336a;
        k9.a aVar = this.f11337b;
        switch (r02) {
            case 0:
                return new i((a) aVar.get());
            case 1:
                return new rf.d((rf.a) aVar.get());
            case 2:
                return new hh.a((hh.e) aVar.get());
            default:
                return new uh.e((uh.a) aVar.get());
        }
    }
}
