package pe;

import io.realm.g0;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;

/* loaded from: classes3.dex */
public final /* synthetic */ class g implements g0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13134a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ServiceModelRealm f13135b;

    public /* synthetic */ g(ServiceModelRealm serviceModelRealm, int r22) {
        this.f13134a = r22;
        this.f13135b = serviceModelRealm;
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        int r32 = this.f13134a;
        ServiceModelRealm serviceModelRealm = this.f13135b;
        switch (r32) {
            case 0:
                serviceModelRealm.setFavorite(false);
                break;
            default:
                serviceModelRealm.setFavorite(false);
                break;
        }
    }
}
