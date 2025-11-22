package a3;

import c3.b;
import h6.a0;
import io.realm.g0;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.SaveDashPointInfo;

/* loaded from: classes.dex */
public final /* synthetic */ class j implements b.a, r2.h, g0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Object f77a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f78b;

    public /* synthetic */ j(Object obj, Object obj2) {
        this.f77a = obj;
        this.f78b = obj2;
    }

    @Override // r2.h
    public final void a(Exception exc) {
        h5.l lVar = (h5.l) this.f77a;
        a0 a0Var = (a0) this.f78b;
        k6.a aVar = n6.a.f10593b;
        if (exc != null) {
            lVar.c(exc);
        } else {
            lVar.d(a0Var);
        }
    }

    @Override // io.realm.g0.a
    public final void d(g0 it) {
        SaveDashPointInfo saveDashPointInfo = (SaveDashPointInfo) this.f77a;
        MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) this.f78b;
        kotlin.jvm.internal.h.e(it, "it");
        MKTAccidentReport mKTAccidentReport2 = (MKTAccidentReport) it.J(MKTAccidentReport.class).e();
        if (mKTAccidentReport2 != null) {
            mKTAccidentReport2.setDashPointId(saveDashPointInfo.getId());
        }
        if (mKTAccidentReport2 != null) {
            mKTAccidentReport2.setDashPoint(saveDashPointInfo.getDashPoint());
        }
        it.B(mKTAccidentReport);
    }

    @Override // c3.b.a
    public final Object execute() {
        m mVar = (m) this.f77a;
        mVar.f86c.x((Iterable) this.f78b);
        return null;
    }
}
