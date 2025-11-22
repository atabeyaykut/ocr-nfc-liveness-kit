package nf;

import rh.r;

/* loaded from: classes3.dex */
public final class n implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10945a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f10946b;

    public /* synthetic */ n(k9.a aVar, int r22) {
        this.f10945a = r22;
        this.f10946b = aVar;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f10945a;
        k9.a aVar = this.f10946b;
        switch (r02) {
            case 0:
                return new m((b) aVar.get());
            case 1:
                return new tf.l((tf.g) aVar.get());
            case 2:
                return new dh.c((dh.b) aVar.get());
            case 3:
                return new jh.f((jh.a) aVar.get());
            default:
                return new r((rh.b) aVar.get());
        }
    }
}
