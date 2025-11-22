package u2;

import d3.b;
import d3.c;

/* loaded from: classes.dex */
public final class y implements x2.b {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f17866a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a f17867b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a f17868c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a f17869d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a f17870e;
    public final k9.a f;

    public /* synthetic */ y(x2.b bVar, x2.b bVar2, x2.b bVar3, int r6) {
        d3.b bVar4 = b.a.f4653a;
        d3.c cVar = c.a.f4654a;
        this.f17866a = r6;
        this.f17867b = bVar4;
        this.f17868c = cVar;
        this.f17869d = bVar;
        this.f17870e = bVar2;
        this.f = bVar3;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [w2.a] */
    @Override // k9.a
    public final Object get() {
        x2.a aVar;
        int r02 = this.f17866a;
        k9.a aVar2 = this.f;
        k9.a aVar3 = this.f17870e;
        k9.a aVar4 = this.f17869d;
        k9.a aVar5 = this.f17868c;
        k9.a aVar6 = this.f17867b;
        switch (r02) {
            case 0:
                return new w((d3.a) aVar6.get(), (d3.a) aVar5.get(), (z2.e) aVar4.get(), (a3.m) aVar3.get(), (a3.o) aVar2.get());
            default:
                d3.a aVar7 = (d3.a) aVar6.get();
                d3.a aVar8 = (d3.a) aVar5.get();
                Object obj = aVar4.get();
                Object obj2 = aVar3.get();
                Object obj3 = x2.a.f19125c;
                if (aVar2 instanceof w2.a) {
                    aVar = (w2.a) aVar2;
                } else {
                    aVar2.getClass();
                    aVar = new x2.a(aVar2);
                }
                return new b3.r(aVar7, aVar8, (b3.e) obj, (b3.x) obj2, aVar);
        }
    }
}
