package tr.gov.turkiye.edevlet.kapisi.services.epoxy;

import android.view.View;
import android.widget.ImageView;
import ge.b;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import t1.f;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.institution.InstitutionModelRealm;
import tr.gov.turkiye.edevlet.kapisi.services.databinding.ItemInstitutionListBinding;

@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR\"\u0010\u000f\u001a\u00020\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R(\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00050\u00158\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001b¨\u0006\u001e"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionListItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemInstitutionListBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;", "institution", "Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;", "getInstitution", "()Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;", "setInstitution", "(Ltr/gov/turkiye/edevlet/kapisi/data/institution/InstitutionModelRealm;)V", "", "serviceCount", "Ljava/lang/String;", "getServiceCount", "()Ljava/lang/String;", "setServiceCount", "(Ljava/lang/String;)V", "Lkotlin/Function0;", "listener", "Lx9/a;", "getListener", "()Lx9/a;", "setListener", "(Lx9/a;)V", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class InstitutionListItemModel extends a<ItemInstitutionListBinding> {
    public InstitutionModelRealm institution;
    public x9.a<m> listener;
    public String serviceCount;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(InstitutionListItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke();
    }

    @Override // he.a
    public void bind(ItemInstitutionListBinding itemInstitutionListBinding) {
        h.f(itemInstitutionListBinding, "<this>");
        itemInstitutionListBinding.f16886d.setText(getInstitution().getInstitutionName());
        itemInstitutionListBinding.f16887e.setText(getServiceCount());
        ImageView imgServiceInstitutionLogo = itemInstitutionListBinding.f16884b;
        h.e(imgServiceInstitutionLogo, "imgServiceInstitutionLogo");
        b.c(imgServiceInstitutionLogo, getInstitution().getIconName());
        itemInstitutionListBinding.f16885c.setOnClickListener(new f(9, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_institution_list;
    }

    public final InstitutionModelRealm getInstitution() {
        InstitutionModelRealm institutionModelRealm = this.institution;
        if (institutionModelRealm != null) {
            return institutionModelRealm;
        }
        h.n("institution");
        throw null;
    }

    public final x9.a<m> getListener() {
        x9.a<m> aVar = this.listener;
        if (aVar != null) {
            return aVar;
        }
        h.n("listener");
        throw null;
    }

    public final String getServiceCount() {
        String str = this.serviceCount;
        if (str != null) {
            return str;
        }
        h.n("serviceCount");
        throw null;
    }

    public final void setInstitution(InstitutionModelRealm institutionModelRealm) {
        h.f(institutionModelRealm, "<set-?>");
        this.institution = institutionModelRealm;
    }

    public final void setListener(x9.a<m> aVar) {
        h.f(aVar, "<set-?>");
        this.listener = aVar;
    }

    public final void setServiceCount(String str) {
        h.f(str, "<set-?>");
        this.serviceCount = str;
    }
}
