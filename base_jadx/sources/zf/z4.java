package zf;

import tr.gov.turkiye.edevlet.kapisi.profile.settings.SettingsFragment;

/* loaded from: classes3.dex */
public final class z4 implements t8.a {

    /* renamed from: a, reason: collision with root package name */
    public final d1 f20291a;

    public z4(d1 d1Var) {
        this.f20291a = d1Var;
    }

    @Override // t8.a
    public final void a(Object obj) {
        SettingsFragment settingsFragment = (SettingsFragment) obj;
        d1 d1Var = this.f20291a;
        settingsFragment.f16675a = bf.b.a(d1Var.f20080b);
        settingsFragment.f16676b = ((af.b) d1Var.f20077a).a();
    }
}
