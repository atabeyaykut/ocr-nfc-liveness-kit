package zf;

import tr.gov.turkiye.edevlet.kapisi.verification.sms.SMSVerificationActivity;

/* loaded from: classes3.dex */
public final class t4 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20255a;

    public t4(d1 d1Var) {
        this.f20255a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        SMSVerificationActivity sMSVerificationActivity = (SMSVerificationActivity) obj;
        d1 d1Var = this.f20255a;
        sMSVerificationActivity.f17905a = d1Var.c();
        sMSVerificationActivity.f17706b = d1.b(d1Var);
    }
}
