package ng;

import androidx.recyclerview.widget.RecyclerView;
import kotlin.jvm.internal.t;
import tr.gov.turkiye.edevlet.kapisi.search.SearchFragment;

/* loaded from: classes3.dex */
public final class d extends RecyclerView.OnScrollListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f10952a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchFragment f10953b;

    public d(t tVar, SearchFragment searchFragment) {
        this.f10952a = tVar;
        this.f10953b = searchFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
    public final void onScrollStateChanged(RecyclerView recyclerView, int r32) {
        boolean z10;
        kotlin.jvm.internal.h.f(recyclerView, "recyclerView");
        t tVar = this.f10952a;
        if (r32 == 0) {
            z10 = false;
        } else {
            if (r32 != 1 || tVar.f8973a) {
                return;
            }
            SearchFragment searchFragment = this.f10953b;
            searchFragment.f16721q = true;
            searchFragment.E();
            z10 = !tVar.f8973a;
        }
        tVar.f8973a = z10;
    }
}
