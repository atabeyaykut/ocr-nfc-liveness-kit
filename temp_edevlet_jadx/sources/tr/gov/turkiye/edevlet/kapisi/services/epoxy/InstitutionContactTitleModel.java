package tr.gov.turkiye.edevlet.kapisi.services.epoxy;

import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.services.databinding.ItemContactTitleBinding;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R$\u0010\b\u001a\u0004\u0018\u00010\u00078\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/InstitutionContactTitleModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemContactTitleBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "", "institutionContactTitleText", "Ljava/lang/String;", "getInstitutionContactTitleText", "()Ljava/lang/String;", "setInstitutionContactTitleText", "(Ljava/lang/String;)V", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class InstitutionContactTitleModel extends a<ItemContactTitleBinding> {
    private String institutionContactTitleText;

    @Override // he.a
    public void bind(ItemContactTitleBinding itemContactTitleBinding) {
        h.f(itemContactTitleBinding, "<this>");
        String str = this.institutionContactTitleText;
        itemContactTitleBinding.f16873b.setText(str == null || str.length() == 0 ? "-" : this.institutionContactTitleText);
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_contact_title;
    }

    public final String getInstitutionContactTitleText() {
        return this.institutionContactTitleText;
    }

    public final void setInstitutionContactTitleText(String str) {
        this.institutionContactTitleText = str;
    }
}
