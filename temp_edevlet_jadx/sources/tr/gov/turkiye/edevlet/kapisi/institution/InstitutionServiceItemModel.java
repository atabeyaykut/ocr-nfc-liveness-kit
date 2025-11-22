package tr.gov.turkiye.edevlet.kapisi.institution;

import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.core.app.NotificationCompat;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.institution.databinding.ItemInstitutionDetailServiceBinding;
import x9.l;
import zd.d;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000f\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\"\u0010#J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R.\u0010\u0016\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR.\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u0019\"\u0004\b\u001e\u0010\u001bR.\u0010\u001f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001f\u0010\u0017\u001a\u0004\b \u0010\u0019\"\u0004\b!\u0010\u001b¨\u0006$"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/institution/InstitutionServiceItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/institution/databinding/ItemInstitutionDetailServiceBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", NotificationCompat.CATEGORY_SERVICE, "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "getService", "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "setService", "(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V", "", "progressView", "Z", "getProgressView", "()Z", "setProgressView", "(Z)V", "Lkotlin/Function1;", "unFavoriteListener", "Lx9/l;", "getUnFavoriteListener", "()Lx9/l;", "setUnFavoriteListener", "(Lx9/l;)V", "favoriteListener", "getFavoriteListener", "setFavoriteListener", "listener", "getListener", "setListener", "<init>", "()V", "ui-institution-detail_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class InstitutionServiceItemModel extends he.a<ItemInstitutionDetailServiceBinding> {
    public l<? super ServiceModelRealm, m> favoriteListener;
    public l<? super ServiceModelRealm, m> listener;
    private boolean progressView;
    public ServiceModelRealm service;
    public l<? super ServiceModelRealm, m> unFavoriteListener;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(InstitutionServiceItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getService());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$1(InstitutionServiceItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getFavoriteListener().invoke(this$0.getService());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$2(InstitutionServiceItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getUnFavoriteListener().invoke(this$0.getService());
    }

    @Override // he.a
    public void bind(ItemInstitutionDetailServiceBinding itemInstitutionDetailServiceBinding) {
        h.f(itemInstitutionDetailServiceBinding, "<this>");
        itemInstitutionDetailServiceBinding.f.setText(getService().getServiceName());
        boolean isFavoriteProgress = getService().getIsFavoriteProgress();
        ProgressBar progressBar = itemInstitutionDetailServiceBinding.f16534c;
        ImageView imageView = itemInstitutionDetailServiceBinding.f16535d;
        ImageView imageView2 = itemInstitutionDetailServiceBinding.f16536e;
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
        itemInstitutionDetailServiceBinding.f16533b.setOnClickListener(new zd.a(7, this));
        imageView.setOnClickListener(new d(9, this));
        imageView2.setOnClickListener(new ie.d(6, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_institution_detail_service;
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

    public final boolean getProgressView() {
        return this.progressView;
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

    public final void setProgressView(boolean z10) {
        this.progressView = z10;
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
