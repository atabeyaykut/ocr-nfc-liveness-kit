package tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.ui;

import b8.f;
import com.airbnb.epoxy.TypedEpoxyController;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.h;
import kotlin.jvm.internal.j;
import l9.m;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportItem;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.InProgressReportItemArray;
import x9.l;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00030\u00020\u0001:\u0001\fB\u000f\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u0006\u001a\u00020\u00052\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002H\u0014R\u0014\u0010\b\u001a\u00020\u00078\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\t¨\u0006\r"}, d2 = {"Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemUIController;", "Lcom/airbnb/epoxy/TypedEpoxyController;", "", "Ltr/gov/turkiye/edevlet/kapisi/data/mkt/InProgressReportItemArray;", "carList", "Ll9/m;", "buildModels", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemUIController$a;", "inProgressAdapterCallbacks", "Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemUIController$a;", "<init>", "(Ltr/gov/turkiye/edevlet/kapisi/ui/accident/myreport/completed/ui/InProgressReportItemUIController$a;)V", "a", "ui-mobile-accident_release"}, k = 1, mv = {1, 8, 0})
/* loaded from: classes3.dex */
public final class InProgressReportItemUIController extends TypedEpoxyController<List<? extends InProgressReportItemArray>> {
    private final a inProgressAdapterCallbacks;

    public interface a {
        void v(InProgressReportItem inProgressReportItem);
    }

    public static final class b extends j implements l<InProgressReportItem, m> {
        public b() {
            super(1);
        }

        @Override // x9.l
        public final m invoke(InProgressReportItem inProgressReportItem) {
            InProgressReportItem it = inProgressReportItem;
            a aVar = InProgressReportItemUIController.this.inProgressAdapterCallbacks;
            h.e(it, "it");
            aVar.v(it);
            return m.f9594a;
        }
    }

    public InProgressReportItemUIController(a inProgressAdapterCallbacks) {
        h.f(inProgressAdapterCallbacks, "inProgressAdapterCallbacks");
        this.inProgressAdapterCallbacks = inProgressAdapterCallbacks;
    }

    @Override // com.airbnb.epoxy.TypedEpoxyController
    public /* bridge */ /* synthetic */ void buildModels(List<? extends InProgressReportItemArray> list) {
        buildModels2((List<InProgressReportItemArray>) list);
    }

    /* renamed from: buildModels, reason: avoid collision after fix types in other method */
    public void buildModels2(List<InProgressReportItemArray> list) {
        if (list != null) {
            int r12 = 0;
            for (Object obj : list) {
                int r32 = r12 + 1;
                if (r12 < 0) {
                    f.k0();
                    throw null;
                }
                InProgressReportItemModel_ inProgressReportItemModel_ = new InProgressReportItemModel_();
                inProgressReportItemModel_.mo437id(Integer.valueOf(r12));
                inProgressReportItemModel_.reportItem(((InProgressReportItemArray) obj).getMap());
                inProgressReportItemModel_.selectReport((l<? super InProgressReportItem, m>) new b());
                add(inProgressReportItemModel_);
                r12 = r32;
            }
        }
    }
}
