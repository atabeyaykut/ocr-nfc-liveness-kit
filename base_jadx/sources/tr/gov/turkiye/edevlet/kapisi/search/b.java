package tr.gov.turkiye.edevlet.kapisi.search;

import com.google.android.gms.internal.clearcut.d0;
import kotlin.jvm.internal.j;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;

/* loaded from: classes3.dex */
public final class b extends j implements x9.a<String> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SearchFragment.e f16734a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(SearchFragment.e eVar) {
        super(0);
        this.f16734a = eVar;
    }

    @Override // x9.a
    public final String invoke() {
        return d0.q(this.f16734a.f16732c).getName();
    }
}
