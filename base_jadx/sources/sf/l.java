package sf;

import l3.w;
import r0.p;
import r4.j4;
import rf.n;
import zg.u;

/* loaded from: classes3.dex */
public final class l implements cf.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15443a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f15444b;

    public /* synthetic */ l(int r12, Object obj) {
        this.f15443a = r12;
        this.f15444b = obj;
    }

    @Override // cf.a
    public final af.c a(p pVar) {
        int r02 = this.f15443a;
        Object obj = this.f15444b;
        switch (r02) {
            case 0:
                k kVar = (k) obj;
                return new d((c) pVar, (m) ((k9.a) kVar.f15440a).get(), (rf.d) ((k9.a) kVar.f15441b).get(), (n) ((k9.a) kVar.f15442c).get());
            case 1:
                return new uf.d((uf.c) pVar, (uf.f) ((uf.e) obj).f18146a.get());
            case 2:
                k kVar2 = (k) obj;
                return new ag.d((ag.c) pVar, (ag.i) ((k9.a) kVar2.f15440a).get(), (bg.c) ((k9.a) kVar2.f15441b).get(), (bg.d) ((k9.a) kVar2.f15442c).get());
            case 3:
                w wVar = (w) obj;
                return new yg.d((yg.c) pVar, (yg.i) ((k9.a) wVar.f9385a).get(), (yg.a) ((k9.a) wVar.f9386b).get());
            case 4:
                j4 j4Var = (j4) obj;
                return new zg.l((zg.k) pVar, (u) ((k9.a) j4Var.f14176a).get(), (zg.f) ((k9.a) j4Var.f14177b).get(), (zg.h) ((k9.a) j4Var.f14178c).get(), (zg.g) ((k9.a) j4Var.f14179d).get(), (zg.c) ((k9.a) j4Var.f14180e).get(), (zg.b) ((k9.a) j4Var.f).get(), (zg.j) ((k9.a) j4Var.f14181g).get());
            case 5:
                k kVar3 = (k) obj;
                return new hh.g((hh.f) pVar, (hh.h) ((k9.a) kVar3.f15440a).get(), (hh.c) ((k9.a) kVar3.f15441b).get(), (hh.a) ((k9.a) kVar3.f15442c).get());
            case 6:
                return new kh.e((kh.d) pVar, (kh.h) ((uf.e) obj).f18146a.get());
            default:
                return new wh.a((uh.c) pVar, (uh.e) ((uf.e) obj).f18146a.get());
        }
    }
}
