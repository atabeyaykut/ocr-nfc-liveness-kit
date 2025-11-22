package mf;

import ud.d0;

/* loaded from: classes3.dex */
public final class d implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10401a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f10402b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a f10403c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a f10404d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a f10405e;
    public final k9.a f;

    public /* synthetic */ d(k9.a aVar, k9.a aVar2, k9.a aVar3, k9.a aVar4, k9.a aVar5, int r6) {
        this.f10401a = r6;
        this.f10402b = aVar;
        this.f10403c = aVar2;
        this.f10404d = aVar3;
        this.f10405e = aVar4;
        this.f = aVar5;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f10401a;
        k9.a aVar = this.f;
        k9.a aVar2 = this.f10405e;
        k9.a aVar3 = this.f10404d;
        k9.a aVar4 = this.f10403c;
        k9.a aVar5 = this.f10402b;
        switch (r02) {
            case 0:
                c cVar = new c();
                cVar.f10391a = (d0) aVar5.get();
                cVar.f10392b = (String) aVar4.get();
                cVar.f10393c = (String) aVar3.get();
                cVar.f10394d = (String) aVar2.get();
                cVar.f10395e = (gf.b) aVar.get();
                return cVar;
            case 1:
                vf.a aVar6 = new vf.a();
                aVar6.f18576a = (d0) aVar5.get();
                aVar6.f18577b = (String) aVar4.get();
                aVar6.f18578c = (String) aVar3.get();
                aVar6.f18579d = (String) aVar2.get();
                aVar6.f18580e = (gf.b) aVar.get();
                return aVar6;
            case 2:
                ng.h hVar = new ng.h();
                hVar.f10958a = (d0) aVar5.get();
                hVar.f10959b = (String) aVar4.get();
                hVar.f10960c = (String) aVar3.get();
                hVar.f10961d = (String) aVar2.get();
                hVar.f10962e = (gf.b) aVar.get();
                return hVar;
            case 3:
                vg.b bVar = new vg.b();
                bVar.f18627a = (d0) aVar5.get();
                bVar.f18628b = (String) aVar4.get();
                bVar.f18629c = (String) aVar3.get();
                bVar.f18630d = (String) aVar2.get();
                bVar.f18631e = (gf.b) aVar.get();
                return bVar;
            case 4:
                wg.b bVar2 = new wg.b();
                bVar2.f18898a = (d0) aVar5.get();
                bVar2.f18899b = (String) aVar4.get();
                bVar2.f18900c = (String) aVar3.get();
                bVar2.f18901d = (String) aVar2.get();
                bVar2.f18902e = (gf.b) aVar.get();
                return bVar2;
            default:
                zg.i iVar = new zg.i();
                iVar.f20311a = (d0) aVar5.get();
                iVar.f20312b = (String) aVar4.get();
                iVar.f20313c = (String) aVar3.get();
                iVar.f20314d = (String) aVar2.get();
                iVar.f20315e = (gf.b) aVar.get();
                return iVar;
        }
    }
}
