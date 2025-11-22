package tr.gov.turkiye.edevlet.kapisi.services.epoxy;

import android.view.View;
import android.widget.ImageView;
import ge.b;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import t1.f;
import tg.c;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.services.databinding.ItemFirmGridBinding;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/services/epoxy/FirmGridItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/services/databinding/ItemFirmGridBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltg/c;", "firmCategoryItem", "Ltg/c;", "getFirmCategoryItem", "()Ltg/c;", "setFirmCategoryItem", "(Ltg/c;)V", "Lkotlin/Function1;", "listener", "Lx9/l;", "getListener", "()Lx9/l;", "setListener", "(Lx9/l;)V", "<init>", "()V", "ui-services_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class FirmGridItemModel extends a<ItemFirmGridBinding> {
    public c firmCategoryItem;
    public l<? super c, m> listener;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(FirmGridItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getListener().invoke(this$0.getFirmCategoryItem());
    }

    @Override // he.a
    public void bind(ItemFirmGridBinding itemFirmGridBinding) {
        h.f(itemFirmGridBinding, "<this>");
        itemFirmGridBinding.f16877d.setText(getFirmCategoryItem().f15719b);
        ImageView firmCategoryIcon = itemFirmGridBinding.f16876c;
        h.e(firmCategoryIcon, "firmCategoryIcon");
        b.a(firmCategoryIcon, getFirmCategoryItem().f15721d);
        itemFirmGridBinding.f16875b.setOnClickListener(new f(8, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_firm_grid;
    }

    public final c getFirmCategoryItem() {
        c cVar = this.firmCategoryItem;
        if (cVar != null) {
            return cVar;
        }
        h.n("firmCategoryItem");
        throw null;
    }

    public final l<c, m> getListener() {
        l lVar = this.listener;
        if (lVar != null) {
            return lVar;
        }
        h.n("listener");
        throw null;
    }

    public final void setFirmCategoryItem(c cVar) {
        h.f(cVar, "<set-?>");
        this.firmCategoryItem = cVar;
    }

    public final void setListener(l<? super c, m> lVar) {
        h.f(lVar, "<set-?>");
        this.listener = lVar;
    }
}
