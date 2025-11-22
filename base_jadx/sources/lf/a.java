package lf;

import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import da.m;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.dashboard.DashboardFragment;

/* loaded from: classes3.dex */
public final class a extends RecyclerView.AdapterDataObserver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DashboardFragment f9808a;

    public a(DashboardFragment dashboardFragment) {
        this.f9808a = dashboardFragment;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
    public final void onItemRangeInserted(int r12, int r22) {
        if (r12 == 0) {
            m<Object>[] mVarArr = DashboardFragment.f16156k;
            RecyclerView.LayoutManager layoutManager = this.f9808a.E().f16226c.getLayoutManager();
            h.d(layoutManager, "null cannot be cast to non-null type androidx.recyclerview.widget.GridLayoutManager");
            ((GridLayoutManager) layoutManager).scrollToPosition(0);
        }
    }
}
