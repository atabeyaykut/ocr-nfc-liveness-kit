package ig;

import bh.j;
import fg.e;
import fg.l;
import qg.h;
import qg.i;
import r0.p;
import rh.d;
import rh.o;
import th.g;

/* loaded from: classes3.dex */
public final class c implements cf.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f7442a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f7443b;

    public /* synthetic */ c(int r12, Object obj) {
        this.f7442a = r12;
        this.f7443b = obj;
    }

    @Override // cf.a
    public final af.c a(p pVar) {
        int r02 = this.f7442a;
        Object obj = this.f7443b;
        switch (r02) {
            case 0:
                return new a((e) pVar, (l) ((b) obj).f7441a.get());
            case 1:
                return new i((h) pVar, (qg.l) ((b) obj).f7441a.get());
            case 2:
                bh.h hVar = (bh.h) obj;
                return new bh.c((bh.b) pVar, (bh.i) hVar.f1331a.get(), (j) hVar.f1332b.get());
            case 3:
                o oVar = (o) obj;
                return new d((rh.c) pVar, oVar.f14802a.get(), oVar.f14803b.get(), oVar.f14804c.get(), oVar.f14805d.get(), oVar.f14806e.get(), oVar.f.get());
            default:
                bh.h hVar2 = (bh.h) obj;
                return new th.d((th.c) pVar, (g) hVar2.f1331a.get(), (th.a) hVar2.f1332b.get());
        }
    }
}
