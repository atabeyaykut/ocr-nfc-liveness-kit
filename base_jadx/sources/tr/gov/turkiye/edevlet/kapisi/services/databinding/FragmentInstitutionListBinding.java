package tr.gov.turkiye.edevlet.kapisi.services.databinding;

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
public final class FragmentInstitutionListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16860a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16861b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16862c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16863d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f16864e;

    @NonNull
    public final IncludeSystemErrorBinding f;

    public FragmentInstitutionListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull ProgressBar progressBar, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f16860a = constraintLayout;
        this.f16861b = constraintLayout2;
        this.f16862c = includeNoConnectionBinding;
        this.f16863d = progressBar;
        this.f16864e = epoxyRecyclerView;
        this.f = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentInstitutionListBinding bind(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int r02 = R.id.no_connection_view;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
        if (viewFindChildViewById != null) {
            IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
            r02 = R.id.progressBar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
            if (progressBar != null) {
                r02 = R.id.rcl_institution_list;
                EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_institution_list);
                if (epoxyRecyclerView != null) {
                    r02 = R.id.system_error_view;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                    if (viewFindChildViewById2 != null) {
                        return new FragmentInstitutionListBinding(constraintLayout, constraintLayout, includeNoConnectionBindingBind, progressBar, epoxyRecyclerView, IncludeSystemErrorBinding.bind(viewFindChildViewById2));
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentInstitutionListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_institution_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16860a;
    }
}
