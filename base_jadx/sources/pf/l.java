package pf;

import r0.p;

/* loaded from: classes3.dex */
public final class l implements cf.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13193a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13194b;

    public /* synthetic */ l(int r12, Object obj) {
        this.f13193a = r12;
        this.f13194b = obj;
    }

    @Override // cf.a
    public final af.c a(p pVar) {
        int r02 = this.f13193a;
        Object obj = this.f13194b;
        switch (r02) {
            case 0:
                k kVar = (k) obj;
                return new d((c) pVar, (m) ((k9.a) kVar.f13190a).get(), (rf.d) ((k9.a) kVar.f13191b).get(), (rf.n) ((k9.a) kVar.f13192c).get());
            case 1:
                return new yf.e((yf.d) pVar, (yf.h) ((ig.b) obj).f7441a.get());
            case 2:
                return new fg.f((fg.e) pVar, (fg.l) ((ig.b) obj).f7441a.get());
            case 3:
                return new gg.b((fg.e) pVar, (gg.c) ((ig.b) obj).f7441a.get());
            case 4:
                k kVar2 = (k) obj;
                return new dh.f((dh.e) pVar, (dh.n) ((k9.a) kVar2.f13190a).get(), (dh.c) ((k9.a) kVar2.f13191b).get(), (dh.d) ((k9.a) kVar2.f13192c).get());
            default:
                return new nh.c((nh.b) pVar, (nh.f) ((ig.b) obj).f7441a.get());
        }
    }
}
