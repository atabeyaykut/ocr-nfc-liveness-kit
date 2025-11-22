package nf;

import ud.d0;

/* loaded from: classes3.dex */
public final class c implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10899a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f10900b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a f10901c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a f10902d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a f10903e;
    public final k9.a f;

    public /* synthetic */ c(k9.a aVar, k9.a aVar2, k9.a aVar3, k9.a aVar4, k9.a aVar5, int r6) {
        this.f10899a = r6;
        this.f10900b = aVar;
        this.f10901c = aVar2;
        this.f10902d = aVar3;
        this.f10903e = aVar4;
        this.f = aVar5;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f10899a;
        k9.a aVar = this.f;
        k9.a aVar2 = this.f10903e;
        k9.a aVar3 = this.f10902d;
        k9.a aVar4 = this.f10901c;
        k9.a aVar5 = this.f10900b;
        switch (r02) {
            case 0:
                b bVar = new b();
                bVar.f10889a = (d0) aVar5.get();
                bVar.f10890b = (String) aVar4.get();
                bVar.f10891c = (String) aVar3.get();
                bVar.f10892d = (String) aVar2.get();
                bVar.f10893e = (gf.b) aVar.get();
                return bVar;
            case 1:
                tf.g gVar = new tf.g();
                gVar.f15688a = (d0) aVar5.get();
                gVar.f15689b = (String) aVar4.get();
                gVar.f15690c = (String) aVar3.get();
                gVar.f15691d = (String) aVar2.get();
                gVar.f15692e = (gf.b) aVar.get();
                return gVar;
            default:
                jh.a aVar6 = new jh.a();
                aVar6.f8510a = (d0) aVar5.get();
                aVar6.f8511b = (String) aVar4.get();
                aVar6.f8512c = (String) aVar3.get();
                aVar6.f8513d = (String) aVar2.get();
                aVar6.f8514e = (gf.b) aVar.get();
                return aVar6;
        }
    }
}
