package tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic;

import com.google.android.gms.internal.clearcut.d0;
import kotlin.jvm.internal.j;
import tr.gov.turkiye.edevlet.kapisi.barcode.manual.dynamic.ManualDynamicFieldFragment;

/* loaded from: classes3.dex */
public final class a extends j implements x9.a<String> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ManualDynamicFieldFragment.d f15834a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(ManualDynamicFieldFragment.d dVar) {
        super(0);
        this.f15834a = dVar;
    }

    @Override // x9.a
    public final String invoke() {
        return d0.q(this.f15834a.f15833c).getName();
    }
}
