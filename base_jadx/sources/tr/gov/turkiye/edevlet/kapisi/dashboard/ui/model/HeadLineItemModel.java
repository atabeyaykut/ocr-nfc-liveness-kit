package tr.gov.turkiye.edevlet.kapisi.dashboard.ui.model;

import android.view.View;
import android.widget.ImageView;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import lf.b;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.databinding.ItemAtamDashboardItemBinding;
import x9.l;
import xf.d;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/dashboard/ui/model/HeadLineItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/dashboard/databinding/ItemAtamDashboardItemBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Llf/b;", "dashboardItem", "Llf/b;", "getDashboardItem", "()Llf/b;", "setDashboardItem", "(Llf/b;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "<init>", "()V", "ui-dashboard_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class HeadLineItemModel extends a<ItemAtamDashboardItemBinding> {
    public b dashboardItem;
    public l<? super b, m> listener;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(HeadLineItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getDashboardItem());
    }

    @Override // he.a
    public void bind(ItemAtamDashboardItemBinding itemAtamDashboardItemBinding) {
        h.f(itemAtamDashboardItemBinding, "<this>");
        itemAtamDashboardItemBinding.f16257e.setText(getDashboardItem().f9810b);
        Integer num = getDashboardItem().f9812d;
        h.c(num);
        itemAtamDashboardItemBinding.f16256d.setText(num.intValue());
        ImageView imgDashboardItemLogo = itemAtamDashboardItemBinding.f16255c;
        h.e(imgDashboardItemLogo, "imgDashboardItemLogo");
        ge.b.a(imgDashboardItemLogo, getDashboardItem().f9811c);
        itemAtamDashboardItemBinding.f16254b.setOnClickListener(new d(1, this));
    }

    public final b getDashboardItem() {
        b bVar = this.dashboardItem;
        if (bVar != null) {
            return bVar;
        }
        h.n("dashboardItem");
        throw null;
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_atam_dashboard_item;
    }

    public final l<b, m> getListener() {
        l lVar = this.listener;
        if (lVar != null) {
            return lVar;
        }
        h.n("listener");
        throw null;
    }

    public final void setDashboardItem(b bVar) {
        h.f(bVar, "<set-?>");
        this.dashboardItem = bVar;
    }

    public final void setListener(l<? super b, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }
}
