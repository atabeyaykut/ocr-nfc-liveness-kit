package zf;

import tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity;

/* loaded from: classes3.dex */
public final class l1 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20204a;

    public l1(d1 d1Var) {
        this.f20204a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        CardReadActivity cardReadActivity = (CardReadActivity) obj;
        d1 d1Var = this.f20204a;
        cardReadActivity.f17905a = d1Var.c();
        cardReadActivity.f17550b = d1.b(d1Var);
    }
}
