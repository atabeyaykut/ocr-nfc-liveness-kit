package zg;

import c5.v;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.AccidentMergedReport;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.MobileAccidentApproveFragment;

/* loaded from: classes3.dex */
public final class d extends kotlin.jvm.internal.j implements x9.l<v.e, l9.m> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f20300a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ MobileAccidentApproveFragment f20301b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(String str, MobileAccidentApproveFragment mobileAccidentApproveFragment) {
        super(1);
        this.f20300a = str;
        this.f20301b = mobileAccidentApproveFragment;
    }

    @Override // x9.l
    public final l9.m invoke(v.e eVar) {
        v.e dialog = eVar;
        kotlin.jvm.internal.h.f(dialog, "dialog");
        dialog.dismiss();
        boolean zA = kotlin.jvm.internal.h.a(this.f20300a, "HOST");
        MobileAccidentApproveFragment mobileAccidentApproveFragment = this.f20301b;
        if (zA) {
            da.m<Object>[] mVarArr = MobileAccidentApproveFragment.f16969s;
            l lVarI = mobileAccidentApproveFragment.I();
            AccidentMergedReport accidentMergedReport = mobileAccidentApproveFragment.f16970a;
            String reportId = accidentMergedReport != null ? accidentMergedReport.getReportId() : null;
            kotlin.jvm.internal.h.c(reportId);
            lVarI.getClass();
            o oVar = new o(lVarI, reportId, null);
            a0 a0Var = lVarI.f13883c;
            v.C(a0Var, null, 0, oVar, 3);
            v.D(a0Var, lVarI.f20372k, new p(lVarI, null));
        } else {
            da.m<Object>[] mVarArr2 = MobileAccidentApproveFragment.f16969s;
            l lVarI2 = mobileAccidentApproveFragment.I();
            v.C(lVarI2.f13883c, null, 0, new m(lVarI2, null), 3);
            v.D(lVarI2.f13883c, lVarI2.f20373l, new n(lVarI2, null));
        }
        return l9.m.f9594a;
    }
}
