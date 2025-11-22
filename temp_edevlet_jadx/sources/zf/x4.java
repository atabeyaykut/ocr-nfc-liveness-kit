package zf;

import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;

/* loaded from: classes3.dex */
public final class x4 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20279a;

    public x4(d1 d1Var) {
        this.f20279a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        ServicePageActivity servicePageActivity = (ServicePageActivity) obj;
        d1 d1Var = this.f20279a;
        servicePageActivity.f17905a = d1Var.c();
        d1Var.f20080b.getClass();
        servicePageActivity.f16790b = "5057";
        af.b bVar = (af.b) d1Var.f20077a;
        servicePageActivity.f16791c = bVar.a();
        bVar.e();
        servicePageActivity.f16792d = d1.b(d1Var);
    }
}
