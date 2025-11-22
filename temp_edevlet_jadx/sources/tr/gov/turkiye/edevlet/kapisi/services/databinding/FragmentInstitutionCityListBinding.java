package tr.gov.turkiye.edevlet.kapisi.services.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeCitySearchBarBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentInstitutionCityListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16850a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16851b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16852c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final RecyclerView f16853d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final IncludeCitySearchBarBinding f16854e;

    @NonNull
    public final IncludeSystemErrorBinding f;

    public FragmentInstitutionCityListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull ProgressBar progressBar, @NonNull RecyclerView recyclerView, @NonNull IncludeCitySearchBarBinding includeCitySearchBarBinding, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f16850a = constraintLayout;
        this.f16851b = includeNoConnectionBinding;
        this.f16852c = progressBar;
        this.f16853d = recyclerView;
        this.f16854e = includeCitySearchBarBinding;
        this.f = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentInstitutionCityListBinding bind(@NonNull View view) {
        int r02 = R.id.no_connection_view;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
        if (viewFindChildViewById != null) {
            IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
            r02 = R.id.progressBar;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
            if (progressBar != null) {
                r02 = R.id.rcl_city_list;
                RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_city_list);
                if (recyclerView != null) {
                    r02 = R.id.searchView;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.searchView);
                    if (viewFindChildViewById2 != null) {
                        IncludeCitySearchBarBinding includeCitySearchBarBindingBind = IncludeCitySearchBarBinding.bind(viewFindChildViewById2);
                        r02 = R.id.system_error_view;
                        View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                        if (viewFindChildViewById3 != null) {
                            return new FragmentInstitutionCityListBinding((ConstraintLayout) view, includeNoConnectionBindingBind, progressBar, recyclerView, includeCitySearchBarBindingBind, IncludeSystemErrorBinding.bind(viewFindChildViewById3));
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentInstitutionCityListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_institution_city_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16850a;
    }
}
