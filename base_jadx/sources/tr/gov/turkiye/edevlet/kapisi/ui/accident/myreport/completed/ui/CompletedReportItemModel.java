package tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui;

import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import ge.f;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import mc.o;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportItem;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.ItemCompletedReportBinding;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemCompletedReportBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;", "reportItem", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;", "getReportItem", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;", "setReportItem", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItem;)V", "Lkotlin/Function1;", "selectReport", "Lx9/l;", "getSelectReport", "()Lx9/l;", "setSelectReport", "(Lx9/l;)V", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class CompletedReportItemModel extends a<ItemCompletedReportBinding> {
    public CompletedReportItem reportItem;
    public l<? super CompletedReportItem, m> selectReport;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(CompletedReportItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getSelectReport().invoke(this$0.getReportItem());
    }

    @Override // he.a
    public void bind(ItemCompletedReportBinding itemCompletedReportBinding) {
        StringBuilder sb2;
        String vehiclePlateCityCode;
        h.f(itemCompletedReportBinding, "<this>");
        itemCompletedReportBinding.f17208e.setText(f.b(getReportItem().getAccidentDate()));
        int length = getReportItem().getVehiclePlateCityCode().length();
        TextView textView = itemCompletedReportBinding.f17206c;
        if (length == 3 && o.k0(getReportItem().getVehiclePlateCityCode()) == '0') {
            sb2 = new StringBuilder();
            vehiclePlateCityCode = f.d(getReportItem().getVehiclePlateCityCode());
        } else {
            sb2 = new StringBuilder();
            vehiclePlateCityCode = getReportItem().getVehiclePlateCityCode();
        }
        sb2.append(vehiclePlateCityCode);
        sb2.append(getReportItem().getVehiclePlateNumber());
        textView.setText(sb2.toString());
        itemCompletedReportBinding.f17207d.setText(getReportItem().getAccidentCity() + " / " + getReportItem().getAccidentDistrict());
        itemCompletedReportBinding.f.setText(String.valueOf(getReportItem().getReportNumber()));
        boolean hasPdf = getReportItem().getHasPdf();
        Button button = itemCompletedReportBinding.f17205b;
        button.setVisibility(hasPdf ? 0 : 8);
        button.setOnClickListener(new nf.a(14, this));
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_completed_report;
    }

    public final CompletedReportItem getReportItem() {
        CompletedReportItem completedReportItem = this.reportItem;
        if (completedReportItem != null) {
            return completedReportItem;
        }
        h.n("reportItem");
        throw null;
    }

    public final l<CompletedReportItem, m> getSelectReport() {
        l lVar = this.selectReport;
        if (lVar != null) {
            return lVar;
        }
        h.n("selectReport");
        throw null;
    }

    public final void setReportItem(CompletedReportItem completedReportItem) {
        h.f(completedReportItem, "<set-?>");
        this.reportItem = completedReportItem;
    }

    public final void setSelectReport(l<? super CompletedReportItem, m> lVar) {
        h.f(lVar, "<set-?>");
        this.selectReport = lVar;
    }
}
