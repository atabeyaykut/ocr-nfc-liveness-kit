package be;

import rh.q;

/* loaded from: classes3.dex */
public final class o implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1267a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f1268b;

    public /* synthetic */ o(k9.a aVar, int r22) {
        this.f1267a = r22;
        this.f1268b = aVar;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f1267a;
        k9.a aVar = this.f1268b;
        switch (r02) {
            case 0:
                return new n((f) aVar.get());
            case 1:
                return new zg.j((zg.i) aVar.get());
            case 2:
                return new bh.j((bh.a) aVar.get());
            case 3:
                return new ch.o((ch.j) aVar.get());
            default:
                return new q((rh.b) aVar.get());
        }
    }
}
