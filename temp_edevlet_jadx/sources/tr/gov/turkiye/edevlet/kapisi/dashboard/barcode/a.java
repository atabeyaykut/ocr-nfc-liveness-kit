package tr.gov.turkiye.edevlet.kapisi.dashboard.barcode;

import com.google.android.gms.internal.clearcut.d0;
import kotlin.jvm.internal.j;
import tr.gov.turkiye.edevlet.kapisi.dashboard.barcode.BarcodeServicesFragment;

/* loaded from: classes3.dex */
public final class a extends j implements x9.a<String> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ BarcodeServicesFragment.d f16202a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(BarcodeServicesFragment.d dVar) {
        super(0);
        this.f16202a = dVar;
    }

    @Override // x9.a
    public final String invoke() {
        return d0.q(this.f16202a.f16201c).getName();
    }
}
