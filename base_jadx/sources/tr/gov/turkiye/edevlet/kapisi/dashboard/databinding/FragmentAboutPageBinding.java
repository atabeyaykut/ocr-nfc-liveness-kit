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
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentAboutPageBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16219a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16220b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16221c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16222d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f16223e;

    @NonNull
    public final IncludeSystemErrorBinding f;

    public FragmentAboutPageBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull ProgressBar progressBar, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f16219a = constraintLayout;
        this.f16220b = constraintLayout2;
        this.f16221c = includeNoConnectionBinding;
        this.f16222d = progressBar;
        this.f16223e = epoxyRecyclerView;
        this.f = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentAboutPageBinding bind(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int r02 = R.id.no_connection_view;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
        if (viewFindChildViewById != null) {
            IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
            r02 = R.id.progressBar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
            if (progressBar != null) {
                r02 = R.id.rcl_dashboard_list;
                EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_dashboard_list);
                if (epoxyRecyclerView != null) {
                    r02 = R.id.system_error_view;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                    if (viewFindChildViewById2 != null) {
                        return new FragmentAboutPageBinding(constraintLayout, constraintLayout, includeNoConnectionBindingBind, progressBar, epoxyRecyclerView, IncludeSystemErrorBinding.bind(viewFindChildViewById2));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentAboutPageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_about_page, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16219a;
    }
}
