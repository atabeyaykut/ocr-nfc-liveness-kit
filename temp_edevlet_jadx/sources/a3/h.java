package a3;

import c3.b;
import io.realm.g0;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched.MobileAccidentMatchedReportFragment;
import u2.s;

/* loaded from: classes.dex */
public final /* synthetic */ class h implements b.a, g0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f71a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f72b;

    public /* synthetic */ h(Object obj, Object obj2) {
        this.f71a = obj;
        this.f72b = obj2;
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) this.f71a;
        String str = (String) this.f72b;
        da.m<Object>[] mVarArr = MobileAccidentMatchedReportFragment.f17416m;
        mKTAccidentReport.setScenarioId(str);
        g0Var.B(mKTAccidentReport);
    }

    @Override // c3.b.a
    public final Object execute() {
        m mVar = (m) this.f71a;
        return Boolean.valueOf(mVar.f86c.V((s) this.f72b));
    }
}
