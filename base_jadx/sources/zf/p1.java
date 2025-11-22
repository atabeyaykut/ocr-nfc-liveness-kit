package zf;

import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationResultActivity;

/* loaded from: classes3.dex */
public final class p1 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20228a;

    public p1(d1 d1Var) {
        this.f20228a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        CardVerificationResultActivity cardVerificationResultActivity = (CardVerificationResultActivity) obj;
        d1 d1Var = this.f20228a;
        cardVerificationResultActivity.f17905a = d1Var.c();
        d1.b(d1Var);
        cardVerificationResultActivity.f17586b = ((af.b) d1Var.f20077a).a();
    }
}
