package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import android.graphics.Bitmap;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.core.app.NotificationCompat;
import c5.w;
import e.f;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import m9.k;
import p.g;
import s.b;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemEditorServiceListBinding;
import tr.gov.turkiye.edevlet.kapisi.data.service.ConceptServiceModelRealm;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/ConceptServiceItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemEditorServiceListBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;", NotificationCompat.CATEGORY_SERVICE, "Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;", "getService", "()Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;", "setService", "(Ltr/gov/turkiye/edevlet/kapisi/data/service/ConceptServiceModelRealm;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class ConceptServiceItemModel extends a<ItemEditorServiceListBinding> {
    public l<? super ConceptServiceModelRealm, m> listener;
    public ConceptServiceModelRealm service;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(ConceptServiceItemModel this$0, View view) {
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
        String iconName = getService().getIconName();
        int r22 = Build.VERSION.SDK_INT;
        if (r22 == 26 || r22 == 27) {
            imgServiceInstitutionLogo.setLayerType(1, null);
        }
        f fVarL = x5.a.l(imgServiceInstitutionLogo.getContext());
        g.a aVar = new g.a(imgServiceInstitutionLogo.getContext());
        aVar.f12143c = iconName;
        aVar.e(imgServiceInstitutionLogo);
        aVar.b();
        aVar.f12157r = Boolean.FALSE;
        aVar.f12147h = Bitmap.Config.ARGB_8888;
        aVar.d(R.drawable.img_placeholder);
        aVar.c(R.drawable.img_placeholder);
        aVar.f12152m = w.G(k.A0(new b[]{new s.a(48.0f, 48.0f, 48.0f, 48.0f)}));
        fVarL.a(aVar.a());
        itemEditorServiceListBinding.f16279c.setOnClickListener(new t1.f(3, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_concept_service_list;
    }

    public final l<ConceptServiceModelRealm, m> getListener() {
        l lVar = this.listener;
        if (lVar != null) {
            return lVar;
        }
        h.n("listener");
        throw null;
    }

    public final ConceptServiceModelRealm getService() {
        ConceptServiceModelRealm conceptServiceModelRealm = this.service;
        if (conceptServiceModelRealm != null) {
            return conceptServiceModelRealm;
        }
        h.n(NotificationCompat.CATEGORY_SERVICE);
        throw null;
    }

    public final void setListener(l<? super ConceptServiceModelRealm, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }

    public final void setService(ConceptServiceModelRealm conceptServiceModelRealm) {
        h.f(conceptServiceModelRealm, "<set-?>");
        this.service = conceptServiceModelRealm;
    }
}
