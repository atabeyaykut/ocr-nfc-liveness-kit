package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.core.app.NotificationCompat;
import ge.b;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemServiceListBinding;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;
import zd.d;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R.\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0015\u0010\u0010\u001a\u0004\b\u0016\u0010\u0012\"\u0004\b\u0017\u0010\u0014R.\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0018\u0010\u0010\u001a\u0004\b\u0019\u0010\u0012\"\u0004\b\u001a\u0010\u0014¨\u0006\u001d"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ServiceDBListItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemServiceListBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", NotificationCompat.CATEGORY_SERVICE, "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "getService", "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "setService", "(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "unFavoriteListener", "getUnFavoriteListener", "setUnFavoriteListener", "favoriteListener", "getFavoriteListener", "setFavoriteListener", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class ServiceDBListItemModel extends a<ItemServiceListBinding> {
    public l<? super ServiceModelRealm, m> favoriteListener;
    public l<? super ServiceModelRealm, m> listener;
    public ServiceModelRealm service;
    public l<? super ServiceModelRealm, m> unFavoriteListener;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(ServiceDBListItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getFavoriteListener().invoke(this$0.getService());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$1(ServiceDBListItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getUnFavoriteListener().invoke(this$0.getService());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$2(ServiceDBListItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getService());
    }

    @Override // he.a
    public void bind(ItemServiceListBinding itemServiceListBinding) {
        h.f(itemServiceListBinding, "<this>");
        itemServiceListBinding.f16307h.setText(getService().getServiceName());
        itemServiceListBinding.f16306g.setText(getService().getInstitutionName());
        ImageView imgServiceInstitutionLogo = itemServiceListBinding.f16304d;
        h.e(imgServiceInstitutionLogo, "imgServiceInstitutionLogo");
        b.c(imgServiceInstitutionLogo, getService().getIconName());
        boolean isFavoriteProgress = getService().getIsFavoriteProgress();
        ProgressBar progressBar = itemServiceListBinding.f16303c;
        ImageView imageView = itemServiceListBinding.f16305e;
        ImageView imageView2 = itemServiceListBinding.f;
        if (isFavoriteProgress) {
            imageView2.setVisibility(8);
            imageView.setVisibility(8);
            progressBar.setVisibility(0);
        } else if (getService().isFavorite()) {
            imageView.setVisibility(8);
            progressBar.setVisibility(8);
            imageView2.setVisibility(0);
        } else {
            imageView2.setVisibility(8);
            progressBar.setVisibility(8);
            imageView.setVisibility(0);
        }
        imageView.setOnClickListener(new nf.a(3, this));
        imageView2.setOnClickListener(new zd.a(6, this));
        itemServiceListBinding.f16302b.setOnClickListener(new d(7, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_service_list;
    }

    public final l<ServiceModelRealm, m> getFavoriteListener() {
        l lVar = this.favoriteListener;
        if (lVar != null) {
            return lVar;
        }
        h.n("favoriteListener");
        throw null;
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

    public final l<ServiceModelRealm, m> getUnFavoriteListener() {
        l lVar = this.unFavoriteListener;
        if (lVar != null) {
            return lVar;
        }
        h.n("unFavoriteListener");
        throw null;
    }

    public final void setFavoriteListener(l<? super ServiceModelRealm, m> lVar) {
        h.f(lVar, "<set-?>");
        this.favoriteListener = lVar;
    }

    public final void setListener(l<? super ServiceModelRealm, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }

    public final void setService(ServiceModelRealm serviceModelRealm) {
        h.f(serviceModelRealm, "<set-?>");
        this.service = serviceModelRealm;
    }

    public final void setUnFavoriteListener(l<? super ServiceModelRealm, m> lVar) {
        h.f(lVar, "<set-?>");
        this.unFavoriteListener = lVar;
    }
}
