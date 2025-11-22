package yf;

import com.airbnb.epoxy.p;
import io.realm.RealmQuery;
import io.realm.g0;
import java.util.List;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.WonderListItemModel_;
import tr.gov.turkiye.edevlet.kapisi.dashboard.wonder.WonderServicesFragment;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.data.service.WonderServiceModelRealm;
import x9.l;

/* loaded from: classes3.dex */
public final class b extends j implements l<p, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List<ServiceModelRealm> f19658a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g0 f19659b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ WonderServicesFragment f19660c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(List<? extends ServiceModelRealm> list, g0 g0Var, WonderServicesFragment wonderServicesFragment) {
        super(1);
        this.f19658a = list;
        this.f19659b = g0Var;
        this.f19660c = wonderServicesFragment;
    }

    @Override // x9.l
    public final m invoke(p pVar) {
        p withModels = pVar;
        kotlin.jvm.internal.h.f(withModels, "$this$withModels");
        for (ServiceModelRealm serviceModelRealm : this.f19658a) {
            g0 realm = this.f19659b;
            kotlin.jvm.internal.h.e(realm, "realm");
            RealmQuery realmQueryJ = realm.J(WonderServiceModelRealm.class);
            realmQueryJ.b(serviceModelRealm.getServiceCode(), "serviceCode");
            WonderServiceModelRealm wonderServiceModelRealm = (WonderServiceModelRealm) realmQueryJ.e();
            if (wonderServiceModelRealm != null) {
                WonderListItemModel_ wonderListItemModel_ = new WonderListItemModel_();
                wonderListItemModel_.mo246id(serviceModelRealm.getServiceCode());
                wonderListItemModel_.service(serviceModelRealm);
                wonderListItemModel_.question(wonderServiceModelRealm.getQuestion());
                wonderListItemModel_.listener((l<? super ServiceModelRealm, m>) new a(this.f19660c));
                withModels.add(wonderListItemModel_);
            }
        }
        return m.f9594a;
    }
}
