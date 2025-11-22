package zf;

import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;

/* loaded from: classes3.dex */
public final class l2 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20205a;

    public l2(d1 d1Var) {
        this.f20205a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        LoginActivity loginActivity = (LoginActivity) obj;
        d1 d1Var = this.f20205a;
        loginActivity.f17905a = d1Var.c();
        vd.d dVar = d1Var.f20080b;
        dVar.getClass();
        loginActivity.f16537b = "5057";
        loginActivity.f16538c = bf.b.a(dVar);
        af.b bVar = (af.b) d1Var.f20077a;
        loginActivity.f16539d = bVar.a();
        loginActivity.f16540e = bVar.f();
        loginActivity.f = bVar.e();
        loginActivity.f16541g = d1.b(d1Var);
    }
}
