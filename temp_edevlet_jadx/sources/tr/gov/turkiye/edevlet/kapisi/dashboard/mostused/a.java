package tr.gov.turkiye.edevlet.kapisi.dashboard.mostused;

import com.google.android.gms.internal.clearcut.d0;
import kotlin.jvm.internal.j;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mostused.MostUsedServicesFragment;

/* loaded from: classes3.dex */
public final class a extends j implements x9.a<String> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MostUsedServicesFragment.d f16380a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(MostUsedServicesFragment.d dVar) {
        super(0);
        this.f16380a = dVar;
    }

    @Override // x9.a
    public final String invoke() {
        return d0.q(this.f16380a.f16379c).getName();
    }
}
