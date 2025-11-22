package qg;

import ud.d0;
import zf.d1;

/* loaded from: classes3.dex */
public final class g implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13667a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f13668b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a f13669c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a f13670d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a f13671e;
    public final k9.a f;

    public /* synthetic */ g(k9.a aVar, gf.c cVar, d1.a aVar2, d1.b bVar, gf.c cVar2, int r6) {
        this.f13667a = r6;
        this.f13668b = aVar;
        this.f13669c = cVar;
        this.f13670d = aVar2;
        this.f13671e = bVar;
        this.f = cVar2;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f13667a;
        k9.a aVar = this.f;
        k9.a aVar2 = this.f13671e;
        k9.a aVar3 = this.f13670d;
        k9.a aVar4 = this.f13669c;
        k9.a aVar5 = this.f13668b;
        switch (r02) {
            case 0:
                f fVar = new f();
                fVar.f13655a = (d0) aVar5.get();
                fVar.f13656b = (String) aVar4.get();
                fVar.f13657c = (String) aVar3.get();
                fVar.f13658d = (String) aVar2.get();
                fVar.f13659e = (gf.b) aVar.get();
                return fVar;
            case 1:
                bh.a aVar6 = new bh.a();
                aVar6.f1292a = (d0) aVar5.get();
                aVar6.f1293b = (String) aVar4.get();
                aVar6.f1294c = (String) aVar3.get();
                aVar6.f1295d = (String) aVar2.get();
                aVar6.f1296e = (gf.b) aVar.get();
                return aVar6;
            case 2:
                rh.b bVar = new rh.b();
                bVar.f14694a = (d0) aVar5.get();
                bVar.f14695b = (String) aVar4.get();
                bVar.f14696c = (String) aVar3.get();
                bVar.f14697d = (String) aVar2.get();
                bVar.f14698e = (gf.b) aVar.get();
                return bVar;
            default:
                th.b bVar2 = new th.b();
                bVar2.f15725a = (d0) aVar5.get();
                bVar2.f15726b = (String) aVar4.get();
                bVar2.f15727c = (String) aVar3.get();
                bVar2.f15728d = (String) aVar2.get();
                bVar2.f15729e = (gf.b) aVar.get();
                return bVar2;
        }
    }
}
