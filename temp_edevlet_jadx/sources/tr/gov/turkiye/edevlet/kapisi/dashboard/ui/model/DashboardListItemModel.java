package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemDashboardListBinding;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016¨\u0006\t"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/DashboardListItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemDashboardListBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class DashboardListItemModel extends a<ItemDashboardListBinding> {
    @Override // he.a
    public void bind(ItemDashboardListBinding itemDashboardListBinding) {
        h.f(itemDashboardListBinding, "<this>");
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_dashboard_list;
    }
}
