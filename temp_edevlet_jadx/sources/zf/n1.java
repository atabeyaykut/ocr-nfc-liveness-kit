package zf;

import tr.gov.turkiye.edevlet.kapisi.verification.CardVerificationActivity;

/* loaded from: classes3.dex */
public final class n1 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20216a;

    public n1(d1 d1Var) {
        this.f20216a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        d1 d1Var = this.f20216a;
        ((CardVerificationActivity) obj).f17905a = d1Var.c();
        d1.b(d1Var);
    }
}
