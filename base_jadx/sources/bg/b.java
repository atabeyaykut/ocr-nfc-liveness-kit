package bg;

import ud.d0;
import zf.d1;

/* loaded from: classes3.dex */
public final class b implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1281a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f1282b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a f1283c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a f1284d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a f1285e;
    public final k9.a f;

    public /* synthetic */ b(d1.d dVar, gf.c cVar, d1.a aVar, d1.b bVar, gf.c cVar2, int r6) {
        this.f1281a = r6;
        this.f1282b = dVar;
        this.f1283c = cVar;
        this.f1284d = aVar;
        this.f1285e = bVar;
        this.f = cVar2;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f1281a;
        k9.a aVar = this.f;
        k9.a aVar2 = this.f1285e;
        k9.a aVar3 = this.f1284d;
        k9.a aVar4 = this.f1283c;
        k9.a aVar5 = this.f1282b;
        switch (r02) {
            case 0:
                a aVar6 = new a();
                aVar6.f1269a = (d0) aVar5.get();
                aVar6.f1270b = (String) aVar4.get();
                aVar6.f1271c = (String) aVar3.get();
                aVar6.f1272d = (String) aVar2.get();
                return aVar6;
            case 1:
                fh.b bVar = new fh.b();
                bVar.f5671a = (d0) aVar5.get();
                bVar.f5672b = (String) aVar4.get();
                bVar.f5673c = (String) aVar3.get();
                bVar.f5674d = (String) aVar2.get();
                bVar.f5675e = (gf.b) aVar.get();
                return bVar;
            case 2:
                lh.c cVar = new lh.c();
                cVar.f9819a = (d0) aVar5.get();
                cVar.f9820b = (String) aVar4.get();
                cVar.f9821c = (String) aVar3.get();
                cVar.f9822d = (String) aVar2.get();
                cVar.f9823e = (gf.b) aVar.get();
                return cVar;
            case 3:
                mh.a aVar7 = new mh.a();
                aVar7.f10431a = (d0) aVar5.get();
                aVar7.f10432b = (String) aVar4.get();
                aVar7.f10433c = (String) aVar3.get();
                aVar7.f10434d = (String) aVar2.get();
                aVar7.f10435e = (gf.b) aVar.get();
                return aVar7;
            default:
                ph.b bVar2 = new ph.b();
                bVar2.f13231a = (d0) aVar5.get();
                bVar2.f13232b = (String) aVar4.get();
                bVar2.f13233c = (String) aVar3.get();
                bVar2.f13234d = (String) aVar2.get();
                bVar2.f13235e = (gf.b) aVar.get();
                return bVar2;
        }
    }
}
