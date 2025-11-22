package be;

import rh.p;

/* loaded from: classes3.dex */
public final class b implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1216a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f1217b;

    public /* synthetic */ b(k9.a aVar, int r22) {
        this.f1216a = r22;
        this.f1217b = aVar;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f1216a;
        k9.a aVar = this.f1217b;
        switch (r02) {
            case 0:
                return new a((f) aVar.get());
            case 1:
                return new qg.l((qg.f) aVar.get());
            case 2:
                return new bh.i((bh.a) aVar.get());
            case 3:
                return new p((rh.b) aVar.get());
            default:
                return new th.g((th.b) aVar.get());
        }
    }
}
