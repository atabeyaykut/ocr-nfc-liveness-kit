package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.epoxy.EpoxyRecyclerView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentDashboardBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16224a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16225b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f16226c;

    public FragmentDashboardBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull EpoxyRecyclerView epoxyRecyclerView) {
        this.f16224a = constraintLayout;
        this.f16225b = constraintLayout2;
        this.f16226c = epoxyRecyclerView;
    }

    @NonNull
    public static FragmentDashboardBinding bind(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int r12 = R.id.progressBar;
        if (((ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar)) != null) {
            r12 = R.id.rcl_dashboard_list;
            EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_dashboard_list);
            if (epoxyRecyclerView != null) {
                return new FragmentDashboardBinding(constraintLayout, constraintLayout, epoxyRecyclerView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r12)));
    }

    @NonNull
    public static FragmentDashboardBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_dashboard, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16224a;
    }
}
