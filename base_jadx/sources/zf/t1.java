package zf;

import tr.gov.turkiye.edevlet.kapisi.profile.contact.ContactInfoFragment;

/* loaded from: classes3.dex */
public final class t1 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20252a;

    public t1(d1 d1Var) {
        this.f20252a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        ContactInfoFragment contactInfoFragment = (ContactInfoFragment) obj;
        d1 d1Var = this.f20252a;
        contactInfoFragment.f16591a = bf.b.a(d1Var.f20080b);
        contactInfoFragment.f16592b = d1.b(d1Var);
        contactInfoFragment.f16593c = ((af.b) d1Var.f20077a).a();
    }
}
