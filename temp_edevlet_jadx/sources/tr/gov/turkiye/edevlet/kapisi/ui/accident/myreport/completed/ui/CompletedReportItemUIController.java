package tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui;

import com.airbnb.epoxy.TypedEpoxyController;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportItem;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.CompletedReportItemArray;
import x9.l;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController;", "Lcom/airbnb/epoxy/TypedEpoxyController;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/CompletedReportItemArray;", "carList", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;", "adapterCallbacks", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/CompletedReportItemUIController$a;)V", "a", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class CompletedReportItemUIController extends TypedEpoxyController<List<? extends CompletedReportItemArray>> {
    private final a adapterCallbacks;

    public interface a {
        void z(CompletedReportItem completedReportItem);
    }

    public static final class b extends j implements l<CompletedReportItem, m> {
        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(CompletedReportItem completedReportItem) {
            CompletedReportItem it = completedReportItem;
            a aVar = CompletedReportItemUIController.this.adapterCallbacks;
            h.e(it, "it");
            aVar.z(it);
            return m.f9594a;
        }
    }

    public CompletedReportItemUIController(a adapterCallbacks) {
        h.f(adapterCallbacks, "adapterCallbacks");
        this.adapterCallbacks = adapterCallbacks;
    }

    @Override // com.airbnb.epoxy.TypedEpoxyController
    public /* bridge */ /* synthetic */ void buildModels(List<? extends CompletedReportItemArray> list) {
        buildModels2((List<CompletedReportItemArray>) list);
    }

    /* renamed from: buildModels, reason: avoid collision after fix types in other method */
    public void buildModels2(List<CompletedReportItemArray> list) {
        if (list != null) {
            for (CompletedReportItemArray completedReportItemArray : list) {
                yd.a.f19652a.c("item " + completedReportItemArray.getMap().getReportNumber(), new Object[0]);
                CompletedReportItemModel_ completedReportItemModel_ = new CompletedReportItemModel_();
                completedReportItemModel_.mo420id(completedReportItemArray.getMap().getReportNumber());
                completedReportItemModel_.reportItem(completedReportItemArray.getMap());
                completedReportItemModel_.selectReport((l<? super CompletedReportItem, m>) new b());
                add(completedReportItemModel_);
            }
        }
    }
}
