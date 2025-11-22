package tr.gov.turkiye.edevlet.kapisi.profile;

import com.google.android.gms.internal.clearcut.d0;
import kotlin.jvm.internal.j;
import tr.gov.turkiye.edevlet.kapisi.profile.ProfileFragment;

/* loaded from: classes3.dex */
public final class a extends j implements x9.a<String> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ProfileFragment.e f16589a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ProfileFragment.e eVar) {
        super(0);
        this.f16589a = eVar;
    }

    @Override // x9.a
    public final String invoke() {
        return d0.q(this.f16589a.f16588c).getName();
    }
}
