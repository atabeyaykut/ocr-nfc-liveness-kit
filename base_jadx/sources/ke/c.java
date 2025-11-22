package ke;

import android.content.Context;
import android.view.View;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.navigation.fragment.FragmentKt;
import da.m;
import io.realm.g0;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import ke.d;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView;
import tr.gov.turkiye.edevlet.kapisi.dashboard.mycity.city.MyCityListFragment;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.approve.ui.PreviewImageItemModel;

/* loaded from: classes3.dex */
public final /* synthetic */ class c implements View.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f8926a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f8927b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f8928c;

    public /* synthetic */ c(int r12, Object obj, Object obj2) {
        this.f8926a = r12;
        this.f8927b = obj;
        this.f8928c = obj2;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int r02 = this.f8926a;
        Object obj = this.f8928c;
        Object obj2 = this.f8927b;
        switch (r02) {
            case 0:
                View.OnClickListener onClickListener = (View.OnClickListener) obj2;
                CustomSnackbarView customView = (CustomSnackbarView) obj;
                h.f(customView, "$customView");
                if (onClickListener != null) {
                    onClickListener.onClick(customView.getTvAction());
                    break;
                }
                break;
            case 1:
                MyCityListFragment this$0 = (MyCityListFragment) obj2;
                g0 g0Var = (g0) obj;
                m<Object>[] mVarArr = MyCityListFragment.f16381k;
                h.f(this$0, "this$0");
                ArrayList arrayList = this$0.f16386e;
                if (!(arrayList == null || arrayList.isEmpty())) {
                    g0Var.s(new androidx.camera.lifecycle.d(g0Var, this$0));
                    break;
                } else if (!this$0.f16389j) {
                    g0Var.s(new androidx.camera.camera2.interop.d(6, g0Var));
                    FragmentKt.findNavController(this$0).popBackStack(R.id.myCityListFragment, true);
                    FragmentKt.findNavController(this$0).navigateUp();
                    break;
                } else {
                    Context context = this$0.f16384c;
                    if (context != null) {
                        FragmentActivity activity = this$0.getActivity();
                        View viewFindViewById = activity != null ? activity.findViewById(R.id.nav_view) : null;
                        int r12 = d.f8929a;
                        ConstraintLayout constraintLayout = this$0.F().f16238d;
                        h.e(constraintLayout, "mMyCityBinding.cityContainer");
                        d dVarE = d.a.e(constraintLayout, R.string.min_city_info, viewFindViewById, ContextCompat.getColor(context, R.color.black), ContextCompat.getColor(context, R.color.warning_color));
                        if (dVarE != null) {
                            dVarE.show();
                            break;
                        }
                    }
                }
                break;
            case 2:
                LoginActivity this$02 = (LoginActivity) obj2;
                String failingUrl = (String) obj;
                int r6 = LoginActivity.E;
                h.f(this$02, "this$0");
                h.f(failingUrl, "$failingUrl");
                if (this$02.y().a()) {
                    this$02.f16544k = true;
                    this$02.H();
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("eDevletMobil", "true");
                    this$02.x().f.loadUrl(failingUrl, linkedHashMap);
                    break;
                }
                break;
            default:
                PreviewImageItemModel.bind$lambda$1((PreviewImageItemModel) obj2, (byte[]) obj, view);
                break;
        }
    }
}
