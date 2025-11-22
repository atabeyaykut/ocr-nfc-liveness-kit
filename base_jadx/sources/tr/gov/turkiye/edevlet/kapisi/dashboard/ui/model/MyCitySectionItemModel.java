package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import org.bouncycastle.i18n.MessageBundle;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemMyCitySectionTitleBinding;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\r¨\u0006\u0010"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/MyCitySectionItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemMyCitySectionTitleBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "", MessageBundle.TITLE_ENTRY, "Ljava/lang/String;", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class MyCitySectionItemModel extends a<ItemMyCitySectionTitleBinding> {
    public String title;

    @Override // he.a
    public void bind(ItemMyCitySectionTitleBinding itemMyCitySectionTitleBinding) {
        h.f(itemMyCitySectionTitleBinding, "<this>");
        itemMyCitySectionTitleBinding.f16295b.setText(getTitle());
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_my_city_section_title;
    }

    public final String getTitle() {
        String str = this.title;
        if (str != null) {
            return str;
        }
        h.n(MessageBundle.TITLE_ENTRY);
        throw null;
    }

    public final void setTitle(String str) {
        h.f(str, "<set-?>");
        this.title = str;
    }
}
