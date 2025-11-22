package zf;

import tr.gov.turkiye.edevlet.kapisi.profile.ProfileFragment;

/* loaded from: classes3.dex */
public final class p4 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20231a;

    public p4(d1 d1Var) {
        this.f20231a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        ProfileFragment profileFragment = (ProfileFragment) obj;
        d1 d1Var = this.f20231a;
        profileFragment.f16571a = d1.b(d1Var);
        profileFragment.f16572b = bf.b.a(d1Var.f20080b);
        af.b bVar = (af.b) d1Var.f20077a;
        profileFragment.f16573c = bVar.e();
        profileFragment.f16574d = bVar.a();
    }
}
