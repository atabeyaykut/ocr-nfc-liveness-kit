package zf;

import tr.gov.turkiye.edevlet.kapisi.services.list.InstitutionListFragment;

/* loaded from: classes3.dex */
public final class j2 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20193a;

    public j2(d1 d1Var) {
        this.f20193a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        InstitutionListFragment institutionListFragment = (InstitutionListFragment) obj;
        d1 d1Var = this.f20193a;
        institutionListFragment.f16900a = d1.b(d1Var);
        institutionListFragment.f16901b = bf.b.a(d1Var.f20080b);
    }
}
