package androidx.camera.view;

import android.view.View;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListFragment;

/* loaded from: classes.dex */
public final /* synthetic */ class g implements View.OnLayoutChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f843a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f844b;

    public /* synthetic */ g(int r12, Object obj) {
        this.f843a = r12;
        this.f844b = obj;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public final void onLayoutChange(View view, int r15, int r16, int r17, int r18, int r19, int r20, int r21, int r22) {
        int r12 = this.f843a;
        Object obj = this.f844b;
        switch (r12) {
            case 0:
                ((PreviewView) obj).lambda$new$0(view, r15, r16, r17, r18, r19, r20, r21, r22);
                break;
            default:
                MyCityListFragment this$0 = (MyCityListFragment) obj;
                da.m<Object>[] mVarArr = MyCityListFragment.f16381k;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                this$0.F().f16237c.fullScroll(66);
                break;
        }
    }
}
