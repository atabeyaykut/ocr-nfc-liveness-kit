package tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui;

import android.view.View;
import he.a;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportItem;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.ItemInProgressReportBinding;
import x9.l;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\t\b'\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u0007¢\u0006\u0004\b\u0015\u0010\u0016J\b\u0010\u0004\u001a\u00020\u0003H\u0014J\f\u0010\u0006\u001a\u00020\u0005*\u00020\u0002H\u0016R\"\u0010\b\u001a\u00020\u00078\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000b\"\u0004\b\f\u0010\rR.\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0007\u0012\u0004\u0012\u00020\u00050\u000e8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014¨\u0006\u0017"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemModel;", "Lhe/a;", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/databinding/ItemInProgressReportBinding;", "", "getDefaultLayout", "Ll9/m;", "bind", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;", "reportItem", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;", "getReportItem", "()Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;", "setReportItem", "(Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItem;)V", "Lkotlin/Function1;", "selectReport", "Lx9/l;", "getSelectReport", "()Lx9/l;", "setSelectReport", "(Lx9/l;)V", "<init>", "()V", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public abstract class InProgressReportItemModel extends a<ItemInProgressReportBinding> {
    public InProgressReportItem reportItem;
    public l<? super InProgressReportItem, m> selectReport;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void bind$lambda$0(InProgressReportItemModel this$0, View view) {
        h.f(this$0, "this$0");
        this$0.getSelectReport().invoke(this$0.getReportItem());
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x007a  */
    @Override // he.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void bind(tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.ItemInProgressReportBinding r7) {
        /*
            Method dump skipped, instructions count: 376
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui.InProgressReportItemModel.bind(tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding.ItemInProgressReportBinding):void");
    }

    @Override // com.airbnb.epoxy.u
    public int getDefaultLayout() {
        return R.layout.item_in_progress_report;
    }

    public final InProgressReportItem getReportItem() {
        InProgressReportItem inProgressReportItem = this.reportItem;
        if (inProgressReportItem != null) {
            return inProgressReportItem;
        }
        h.n("reportItem");
        throw null;
    }

    public final l<InProgressReportItem, m> getSelectReport() {
        l lVar = this.selectReport;
        if (lVar != null) {
            return lVar;
        }
        h.n("selectReport");
        throw null;
    }

    public final void setReportItem(InProgressReportItem inProgressReportItem) {
        h.f(inProgressReportItem, "<set-?>");
        this.reportItem = inProgressReportItem;
    }

    public final void setSelectReport(l<? super InProgressReportItem, m> lVar) {
        h.f(lVar, "<set-?>");
        this.selectReport = lVar;
    }
}
