package tf;

import android.content.Context;
import android.view.View;
import androidx.collection.ArraySet;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import e8.m;
import ke.d;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListFragment;

/* loaded from: classes3.dex */
public final class e implements m<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MyCityListFragment f15686a;

    public e(MyCityListFragment myCityListFragment) {
        this.f15686a = myCityListFragment;
    }

    @Override // e8.m
    public final void a(e8.j jVar, boolean z10) {
        tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b bVar = (tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b) jVar;
        MyCityListFragment myCityListFragment = this.f15686a;
        if (!z10) {
            bVar.f7024c = false;
            MyCityListFragment.E(myCityListFragment, false, bVar);
            return;
        }
        j8.d<tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.b> dVar = myCityListFragment.f16385d;
        if (dVar == null) {
            kotlin.jvm.internal.h.n("mSelectExtension");
            throw null;
        }
        ArraySet arraySet = new ArraySet();
        dVar.f.j(new j8.c(arraySet));
        boolean z11 = arraySet.size() <= 5;
        bVar.f7024c = z11;
        if (z11) {
            MyCityListFragment.E(myCityListFragment, true, bVar);
            return;
        }
        Context context = myCityListFragment.f16384c;
        if (context != null) {
            FragmentActivity activity = myCityListFragment.getActivity();
            View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
            int r72 = ke.d.f8929a;
            ConstraintLayout constraintLayout = myCityListFragment.F().f16238d;
            kotlin.jvm.internal.h.e(constraintLayout, "mMyCityBinding.cityContainer");
            ke.d dVarE = d.a.e(constraintLayout, R.string.max_city_info, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.warning_color));
            if (dVarE != null) {
                dVarE.show();
            }
        }
    }
}
