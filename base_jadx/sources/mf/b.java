package mf;

import com.airbnb.epoxy.p;
import java.util.List;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.dashboard.about.AboutPageFragment;
import tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model.AboutPageItemModel_;
import tr.gov.turkiye.edevlet.kapisi.data.about.AboutPageModelRealm;

/* loaded from: classes3.dex */
public final class b extends kotlin.jvm.internal.j implements x9.l<p, m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ List<AboutPageModelRealm> f10389a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AboutPageFragment f10390b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b(List<? extends AboutPageModelRealm> list, AboutPageFragment aboutPageFragment) {
        super(1);
        this.f10389a = list;
        this.f10390b = aboutPageFragment;
    }

    @Override // x9.l
    public final m invoke(p pVar) {
        p withModels = pVar;
        kotlin.jvm.internal.h.f(withModels, "$this$withModels");
        for (AboutPageModelRealm aboutPageModelRealm : this.f10389a) {
            AboutPageItemModel_ aboutPageItemModel_ = new AboutPageItemModel_();
            aboutPageItemModel_.mo43id(Integer.valueOf(aboutPageModelRealm.getId()));
            aboutPageItemModel_.aboutPageItem(aboutPageModelRealm);
            aboutPageItemModel_.listener((x9.l<? super AboutPageModelRealm, m>) new a(this.f10390b));
            withModels.add(aboutPageItemModel_);
        }
        return m.f9594a;
    }
}
