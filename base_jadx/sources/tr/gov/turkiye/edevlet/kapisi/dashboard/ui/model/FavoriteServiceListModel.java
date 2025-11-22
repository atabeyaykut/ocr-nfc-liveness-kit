package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import android.view.View;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import ge.b;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemFavoriteServiceListBinding;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;
import zd.e;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u001e\u0010\u001fJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR$\u0010\u000e\u001a\u0004\u0018\u00010\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000e\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R.\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR.\u0010\u001b\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00148\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001b\u0010\u0016\u001a\u0004\b\u001c\u0010\u0018\"\u0004\b\u001d\u0010\u001a¨\u0006 "}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/FavoriteServiceListModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemFavoriteServiceListBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", NotificationCompat.CATEGORY_SERVICE, "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "getService", "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "setService", "(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V", "serviceIndex", "Ljava/lang/Integer;", "getServiceIndex", "()Ljava/lang/Integer;", "setServiceIndex", "(Ljava/lang/Integer;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "unFavoriteListener", "getUnFavoriteListener", "setUnFavoriteListener", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class FavoriteServiceListModel extends a<ItemFavoriteServiceListBinding> {
    public l<? super ServiceModelRealm, m> listener;
    public ServiceModelRealm service;
    private Integer serviceIndex;
    public l<? super ServiceModelRealm, m> unFavoriteListener;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(FavoriteServiceListModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getUnFavoriteListener().invoke(this$0.getService());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$1(FavoriteServiceListModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getService());
    }

    @Override // he.a
    public void bind(ItemFavoriteServiceListBinding itemFavoriteServiceListBinding) {
        h.f(itemFavoriteServiceListBinding, "<this>");
        itemFavoriteServiceListBinding.f.setText(getService().getServiceName());
        itemFavoriteServiceListBinding.f16286e.setText(getService().getInstitutionName());
        itemFavoriteServiceListBinding.f16285d.setOnClickListener(new e(5, this));
        ImageView imgServiceInstitutionLogo = itemFavoriteServiceListBinding.f16284c;
        h.e(imgServiceInstitutionLogo, "imgServiceInstitutionLogo");
        b.c(imgServiceInstitutionLogo, getService().getIconName());
        itemFavoriteServiceListBinding.f16283b.setOnClickListener(new f(4, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_favorite_service_list;
    }

    public final l<ServiceModelRealm, m> getListener() {
        l lVar = this.listener;
        if (lVar != null) {
            return lVar;
        }
        h.n("listener");
        throw null;
    }

    public final ServiceModelRealm getService() {
        ServiceModelRealm serviceModelRealm = this.service;
        if (serviceModelRealm != null) {
            return serviceModelRealm;
        }
        h.n(NotificationCompat.CATEGORY_SERVICE);
        throw null;
    }

    public final Integer getServiceIndex() {
        return this.serviceIndex;
    }

    public final l<ServiceModelRealm, m> getUnFavoriteListener() {
        l lVar = this.unFavoriteListener;
        if (lVar != null) {
            return lVar;
        }
        h.n("unFavoriteListener");
        throw null;
    }

    public final void setListener(l<? super ServiceModelRealm, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }

    public final void setService(ServiceModelRealm serviceModelRealm) {
        h.f(serviceModelRealm, "<set-?>");
        this.service = serviceModelRealm;
    }

    public final void setServiceIndex(Integer num) {
        this.serviceIndex = num;
    }

    public final void setUnFavoriteListener(l<? super ServiceModelRealm, m> lVar) {
        h.f(lVar, "<set-?>");
        this.unFavoriteListener = lVar;
    }
}
