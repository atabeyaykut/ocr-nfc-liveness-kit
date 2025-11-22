package v;

import kotlin.jvm.internal.j;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes.dex */
public final class d extends j implements x9.a<Integer> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ e f18173a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public d(e eVar) {
        super(0);
        this.f18173a = eVar;
    }

    @Override // x9.a
    public final Integer invoke() {
        return Integer.valueOf(a0.b.q(this.f18173a, Integer.valueOf(R.attr.colorBackgroundFloating), null, 5));
    }
}
