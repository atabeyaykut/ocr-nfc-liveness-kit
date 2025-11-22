package pf;

import ud.d0;

/* loaded from: classes3.dex */
public final class b implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13149a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f13150b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a f13151c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a f13152d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a f13153e;
    public final k9.a f;

    public /* synthetic */ b(k9.a aVar, k9.a aVar2, k9.a aVar3, k9.a aVar4, k9.a aVar5, int r6) {
        this.f13149a = r6;
        this.f13150b = aVar;
        this.f13151c = aVar2;
        this.f13152d = aVar3;
        this.f13153e = aVar4;
        this.f = aVar5;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f13149a;
        k9.a aVar = this.f;
        k9.a aVar2 = this.f13153e;
        k9.a aVar3 = this.f13152d;
        k9.a aVar4 = this.f13151c;
        k9.a aVar5 = this.f13150b;
        switch (r02) {
            case 0:
                a aVar6 = new a();
                aVar6.f13139a = (d0) aVar5.get();
                aVar6.f13140b = (String) aVar4.get();
                aVar6.f13141c = (String) aVar3.get();
                aVar6.f13142d = (String) aVar2.get();
                aVar6.f13143e = (gf.b) aVar.get();
                return aVar6;
            case 1:
                yf.c cVar = new yf.c();
                cVar.f19661a = (d0) aVar5.get();
                cVar.f19662b = (String) aVar4.get();
                cVar.f19663c = (String) aVar3.get();
                cVar.f19664d = (String) aVar2.get();
                cVar.f19665e = (gf.b) aVar.get();
                return cVar;
            case 2:
                fg.d dVar = new fg.d();
                dVar.f5627a = (d0) aVar5.get();
                dVar.f5628b = (String) aVar4.get();
                dVar.f5629c = (String) aVar3.get();
                dVar.f5630d = (String) aVar2.get();
                dVar.f5631e = (gf.b) aVar.get();
                return dVar;
            default:
                nh.a aVar7 = new nh.a();
                aVar7.f10997a = (d0) aVar5.get();
                aVar7.f10998b = (String) aVar4.get();
                aVar7.f10999c = (String) aVar3.get();
                aVar7.f11000d = (String) aVar2.get();
                aVar7.f11001e = (gf.b) aVar.get();
                return aVar7;
        }
    }
}
