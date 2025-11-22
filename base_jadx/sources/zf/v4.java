package zf;

import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;

/* loaded from: classes3.dex */
public final class v4 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20267a;

    public v4(d1 d1Var) {
        this.f20267a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        SearchFragment searchFragment = (SearchFragment) obj;
        d1 d1Var = this.f20267a;
        searchFragment.f16708a = ((af.b) d1Var.f20077a).a();
        af.b bVar = (af.b) d1Var.f20077a;
        searchFragment.f16709b = bVar.f();
        searchFragment.f16710c = bVar.e();
        searchFragment.f16711d = bf.b.a(d1Var.f20080b);
    }
}
