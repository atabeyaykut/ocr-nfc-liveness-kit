package lh;

import android.os.CountDownTimer;
import c5.v;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.guest.MobileAccidentGenerateQRFragment;

/* loaded from: classes3.dex */
public final class b extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MobileAccidentGenerateQRFragment f9818a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(MobileAccidentGenerateQRFragment mobileAccidentGenerateQRFragment) {
        super(3000L, 1000L);
        this.f9818a = mobileAccidentGenerateQRFragment;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        MobileAccidentGenerateQRFragment mobileAccidentGenerateQRFragment = this.f9818a;
        int r12 = mobileAccidentGenerateQRFragment.f17372k;
        if (r12 >= mobileAccidentGenerateQRFragment.f17371j) {
            mobileAccidentGenerateQRFragment.F().f17196g.setText(mobileAccidentGenerateQRFragment.getText(R.string.mkt_merge_page_qr_scan_message));
            mobileAccidentGenerateQRFragment.F().f17192b.setVisibility(0);
            return;
        }
        mobileAccidentGenerateQRFragment.f17372k = r12 + 1;
        e eVar = (e) mobileAccidentGenerateQRFragment.f17365b.getValue();
        eVar.getClass();
        f fVar = new f(eVar, null);
        a0 a0Var = eVar.f13883c;
        v.C(a0Var, null, 0, fVar, 3);
        v.D(a0Var, eVar.f9837i, new g(eVar, null));
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
    }
}
