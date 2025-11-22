package mf;

import rh.s;

/* loaded from: classes3.dex */
public final class l implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10423a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f10424b;

    public /* synthetic */ l(k9.a aVar, int r22) {
        this.f10423a = r22;
        this.f10424b = aVar;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f10423a;
        k9.a aVar = this.f10424b;
        switch (r02) {
            case 0:
                return new k((c) aVar.get());
            case 1:
                return new qf.l((qf.a) aVar.get());
            case 2:
                return new vf.j((vf.a) aVar.get());
            case 3:
                return new bg.c((bg.a) aVar.get());
            case 4:
                return new ng.l((ng.h) aVar.get());
            case 5:
                return new vg.g((vg.b) aVar.get());
            case 6:
                return new wg.g((wg.b) aVar.get());
            case 7:
                return new yg.a((yg.b) aVar.get());
            case 8:
                return new dh.d((dh.b) aVar.get());
            default:
                return new s((rh.b) aVar.get());
        }
    }
}
