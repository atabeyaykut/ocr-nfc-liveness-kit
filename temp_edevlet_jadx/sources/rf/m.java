package rf;

import r0.p;

/* loaded from: classes3.dex */
public final class m implements cf.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f14674a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f14675b;

    public /* synthetic */ m(int r12, Object obj) {
        this.f14674a = r12;
        this.f14675b = obj;
    }

    @Override // cf.a
    public final af.c a(p pVar) {
        int r02 = this.f14674a;
        Object obj = this.f14675b;
        switch (r02) {
            case 0:
                l lVar = (l) obj;
                return new g((f) pVar, (c) lVar.f14672a.get(), (n) lVar.f14673b.get());
            case 1:
                return new fh.d((fh.c) pVar, (fh.h) ((fh.g) obj).f5698a.get());
            case 2:
                l lVar2 = (l) obj;
                return new lh.e((lh.d) pVar, (lh.j) lVar2.f14672a.get(), (lh.a) lVar2.f14673b.get());
            case 3:
                return new mh.c((mh.b) pVar, (mh.f) ((fh.g) obj).f5698a.get());
            default:
                return new ph.d((ph.c) pVar, (ph.e) ((fh.g) obj).f5698a.get());
        }
    }
}
