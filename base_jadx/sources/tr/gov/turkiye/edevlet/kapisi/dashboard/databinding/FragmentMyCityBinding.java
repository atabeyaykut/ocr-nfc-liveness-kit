package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.HorizontalScrollView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.material.chip.ChipGroup;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentMyCityBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16227a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ChipGroup f16228b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final HorizontalScrollView f16229c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16230d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ExtendedFloatingActionButton f16231e;

    @NonNull
    public final IncludeNoConnectionBinding f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16232g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f16233h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f16234i;

    public FragmentMyCityBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ChipGroup chipGroup, @NonNull HorizontalScrollView horizontalScrollView, @NonNull ConstraintLayout constraintLayout2, @NonNull ExtendedFloatingActionButton extendedFloatingActionButton, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull ProgressBar progressBar, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f16227a = constraintLayout;
        this.f16228b = chipGroup;
        this.f16229c = horizontalScrollView;
        this.f16230d = constraintLayout2;
        this.f16231e = extendedFloatingActionButton;
        this.f = includeNoConnectionBinding;
        this.f16232g = progressBar;
        this.f16233h = epoxyRecyclerView;
        this.f16234i = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentMyCityBinding bind(@NonNull View view) {
        int r02 = R.id.city_chip_group;
        ChipGroup chipGroup = (ChipGroup) ViewBindings.findChildViewById(view, R.id.city_chip_group);
        if (chipGroup != null) {
            r02 = R.id.city_chip_scroll;
            HorizontalScrollView horizontalScrollView = (HorizontalScrollView) ViewBindings.findChildViewById(view, R.id.city_chip_scroll);
            if (horizontalScrollView != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                r02 = R.id.my_city_edit;
                ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ViewBindings.findChildViewById(view, R.id.my_city_edit);
                if (extendedFloatingActionButton != null) {
                    r02 = R.id.no_connection_view;
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
                                    return new FragmentMyCityBinding(constraintLayout, chipGroup, horizontalScrollView, constraintLayout, extendedFloatingActionButton, includeNoConnectionBindingBind, progressBar, epoxyRecyclerView, IncludeSystemErrorBinding.bind(viewFindChildViewById2));
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
    public static FragmentMyCityBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_my_city, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16227a;
    }
}
