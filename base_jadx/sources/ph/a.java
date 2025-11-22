package ph;

import android.os.CountDownTimer;
import androidx.lifecycle.CoroutineLiveDataKt;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.waiting.MobileAccidentWaitingApprovalFragment;
import yd.a;

/* loaded from: classes3.dex */
public final class a extends CountDownTimer {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MobileAccidentWaitingApprovalFragment f13230a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(MobileAccidentWaitingApprovalFragment mobileAccidentWaitingApprovalFragment) {
        super(CoroutineLiveDataKt.DEFAULT_TIMEOUT, 1000L);
        this.f13230a = mobileAccidentWaitingApprovalFragment;
    }

    @Override // android.os.CountDownTimer
    public final void onFinish() {
        a.C0306a c0306a = yd.a.f19652a;
        c0306a.c("Check Approve - 4", new Object[0]);
        MobileAccidentWaitingApprovalFragment mobileAccidentWaitingApprovalFragment = this.f13230a;
        if (mobileAccidentWaitingApprovalFragment.f17449g < mobileAccidentWaitingApprovalFragment.f) {
            c0306a.c("Check Approve - 5", new Object[0]);
            mobileAccidentWaitingApprovalFragment.f17449g++;
            ((d) mobileAccidentWaitingApprovalFragment.f17445b.getValue()).d();
        } else {
            c0306a.c("Check Approve - 6", new Object[0]);
            mobileAccidentWaitingApprovalFragment.E().f17199c.setVisibility(8);
            mobileAccidentWaitingApprovalFragment.E().f17198b.setVisibility(0);
        }
    }

    @Override // android.os.CountDownTimer
    public final void onTick(long j10) {
    }
}
