package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import android.view.View;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import ge.b;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemEditorServiceListBinding;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/EditorChoiceServiceItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", NotificationCompat.CATEGORY_SERVICE, "Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "getService", "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;", "setService", "(Ltr/gov/turkiye/edevlet/kapisi/data/service/ServiceModelRealm;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class EditorChoiceServiceItemModel extends a<ItemEditorServiceListBinding> {
    public l<? super ServiceModelRealm, m> listener;
    public ServiceModelRealm service;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(EditorChoiceServiceItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getService());
    }

    @Override // he.a
    public void bind(ItemEditorServiceListBinding itemEditorServiceListBinding) {
        h.f(itemEditorServiceListBinding, "<this>");
        itemEditorServiceListBinding.f16281e.setText(getService().getServiceName());
        itemEditorServiceListBinding.f16280d.setText(getService().getInstitutionName());
        ImageView imgServiceInstitutionLogo = itemEditorServiceListBinding.f16278b;
        h.e(imgServiceInstitutionLogo, "imgServiceInstitutionLogo");
        b.c(imgServiceInstitutionLogo, getService().getIconName());
        itemEditorServiceListBinding.f16279c.setOnClickListener(new nf.a(2, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_editor_service_list;
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

    public final void setListener(l<? super ServiceModelRealm, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }

    public final void setService(ServiceModelRealm serviceModelRealm) {
        h.f(serviceModelRealm, "<set-?>");
        this.service = serviceModelRealm;
    }
}
