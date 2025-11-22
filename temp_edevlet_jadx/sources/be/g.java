package be;

import ud.d0;
import zf.d1;

/* loaded from: classes3.dex */
public final class g implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1227a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f1228b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a f1229c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a f1230d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a f1231e;
    public final k9.a f;

    public /* synthetic */ g(d1.d dVar, gf.c cVar, d1.a aVar, d1.b bVar, gf.c cVar2, int r6) {
        this.f1227a = r6;
        this.f1228b = dVar;
        this.f1229c = cVar;
        this.f1230d = aVar;
        this.f1231e = bVar;
        this.f = cVar2;
    }

    @Override // k9.a
    public final Object get() {
        int r02 = this.f1227a;
        k9.a aVar = this.f;
        k9.a aVar2 = this.f1231e;
        k9.a aVar3 = this.f1230d;
        k9.a aVar4 = this.f1229c;
        k9.a aVar5 = this.f1228b;
        switch (r02) {
            case 0:
                f fVar = new f();
                fVar.f1222a = (d0) aVar5.get();
                fVar.f1223b = (String) aVar4.get();
                fVar.f1224c = (String) aVar3.get();
                fVar.f1225d = (String) aVar2.get();
                fVar.f1226e = (gf.b) aVar.get();
                return fVar;
            default:
                ch.j jVar = new ch.j();
                jVar.f2434a = (d0) aVar5.get();
                jVar.f2435b = (String) aVar4.get();
                jVar.f2436c = (String) aVar3.get();
                jVar.f2437d = (String) aVar2.get();
                jVar.f2438e = (gf.b) aVar.get();
                return jVar;
        }
    }
}
