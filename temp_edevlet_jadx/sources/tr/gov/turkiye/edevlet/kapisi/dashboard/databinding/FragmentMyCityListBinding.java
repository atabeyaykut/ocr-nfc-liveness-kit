package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeCitySearchBarBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentMyCityListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16235a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ChipGroup f16236b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final HorizontalScrollView f16237c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16238d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ExtendedFloatingActionButton f16239e;

    @NonNull
    public final IncludeNoConnectionBinding f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16240g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final RecyclerView f16241h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final IncludeCitySearchBarBinding f16242i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f16243j;

    public FragmentMyCityListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ChipGroup chipGroup, @NonNull HorizontalScrollView horizontalScrollView, @NonNull ConstraintLayout constraintLayout2, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull ProgressBar progressBar, @NonNull RecyclerView recyclerView, @NonNull IncludeCitySearchBarBinding includeCitySearchBarBinding, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f16235a = constraintLayout;
        this.f16236b = chipGroup;
        this.f16237c = horizontalScrollView;
        this.f16238d = constraintLayout2;
        this.f16239e = extendedFloatingActionButton;
        this.f = includeNoConnectionBinding;
        this.f16240g = progressBar;
        this.f16241h = recyclerView;
        this.f16242i = includeCitySearchBarBinding;
        this.f16243j = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentMyCityListBinding bind(@NonNull View view) {
        int r02 = R.id.city_chip_group;
        ChipGroup chipGroup = (ChipGroup) ViewBindings.findChildViewById(view, R.id.city_chip_group);
        if (chipGroup != null) {
            r02 = R.id.city_chip_scroll;
            HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(view, R.id.city_chip_scroll);
            if (horizontalScrollView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                r02 = R.id.my_city_done;
                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ViewBindings.findChildViewById(view, R.id.my_city_done);
                if (extendedFloatingActionButton != null) {
                    r02 = R.id.no_connection_view;
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
                                        return new FragmentMyCityListBinding(constraintLayout, chipGroup, horizontalScrollView, constraintLayout, extendedFloatingActionButton, includeNoConnectionBindingBind, progressBar, recyclerView, includeCitySearchBarBindingBind, IncludeSystemErrorBinding.bind(viewFindChildViewById3));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentMyCityListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_my_city_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16235a;
    }
}
