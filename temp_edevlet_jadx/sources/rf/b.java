package rf;

import android.content.SharedPreferences;
import ud.d0;
import zf.d1;

/* loaded from: classes3.dex */
public final class b implements k9.a {

    /* renamed from: a, reason: collision with root package name */
    public final k9.a<d0> f14633a;

    /* renamed from: b, reason: collision with root package name */
    public final k9.a<String> f14634b;

    /* renamed from: c, reason: collision with root package name */
    public final k9.a<String> f14635c;

    /* renamed from: d, reason: collision with root package name */
    public final k9.a<String> f14636d;

    /* renamed from: e, reason: collision with root package name */
    public final k9.a<gf.b> f14637e;
    public final k9.a<SharedPreferences.Editor> f;

    public b(k9.a aVar, k9.a aVar2, k9.a aVar3, k9.a aVar4, k9.a aVar5, d1.e eVar) {
        this.f14633a = aVar;
        this.f14634b = aVar2;
        this.f14635c = aVar3;
        this.f14636d = aVar4;
        this.f14637e = aVar5;
        this.f = eVar;
    }

    @Override // k9.a
    public final Object get() {
        a aVar = new a();
        aVar.f14617a = this.f14633a.get();
        aVar.f14618b = this.f14634b.get();
        aVar.f14619c = this.f14635c.get();
        aVar.f14620d = this.f14636d.get();
        aVar.f14621e = this.f14637e.get();
        aVar.f = this.f.get();
        return aVar;
    }
}
