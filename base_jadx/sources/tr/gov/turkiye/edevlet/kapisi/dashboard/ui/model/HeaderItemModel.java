package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import org.bouncycastle.i18n.MessageBundle;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemTitleBinding;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\r\u0010\u000eJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\u0007\u001a\u00020\u00038\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeaderItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemTitleBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", MessageBundle.TITLE_ENTRY, "I", "getTitle", "()I", "setTitle", "(I)V", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class HeaderItemModel extends a<ItemTitleBinding> {
    private int title;

    @Override // he.a
    public void bind(ItemTitleBinding itemTitleBinding) {
        h.f(itemTitleBinding, "<this>");
        itemTitleBinding.f16309b.setText(this.title);
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_title;
    }

    public final int getTitle() {
        return this.title;
    }

    public final void setTitle(int r12) {
        this.title = r12;
    }
}
