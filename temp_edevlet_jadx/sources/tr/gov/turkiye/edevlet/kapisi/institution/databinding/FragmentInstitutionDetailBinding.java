package tr.gov.turkiye.edevlet.kapisi.institution.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentInstitutionDetailBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16523a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16524b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16525c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f16526d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16527e;

    @NonNull
    public final ProgressBar f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f16528g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f16529h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16530i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16531j;

    public FragmentInstitutionDetailBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull ConstraintLayout constraintLayout3, @NonNull ImageView imageView, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull ProgressBar progressBar, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f16523a = constraintLayout;
        this.f16524b = constraintLayout2;
        this.f16525c = constraintLayout3;
        this.f16526d = imageView;
        this.f16527e = includeNoConnectionBinding;
        this.f = progressBar;
        this.f16528g = epoxyRecyclerView;
        this.f16529h = includeSystemErrorBinding;
        this.f16530i = appCompatTextView;
        this.f16531j = appCompatTextView2;
    }

    @NonNull
    public static FragmentInstitutionDetailBinding bind(@NonNull View view) {
        ConstraintLayout constraintLayout = (ConstraintLayout) view;
        int r02 = R.id.institution_detail_container;
        ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.institution_detail_container);
        if (constraintLayout2 != null) {
            r02 = R.id.institution_detail_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.institution_detail_logo);
            if (imageView != null) {
                r02 = R.id.institution_logo_card;
                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.institution_logo_card)) != null) {
                    r02 = R.id.no_connection_view;
                    View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                    if (viewFindChildViewById != null) {
                        IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                        r02 = R.id.progressBar;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar);
                        if (progressBar != null) {
                            r02 = R.id.rcl_detail_service_list;
                            EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_detail_service_list);
                            if (epoxyRecyclerView != null) {
                                r02 = R.id.system_error_view;
                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                if (viewFindChildViewById2 != null) {
                                    IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                    r02 = R.id.txt_institution_name;
                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_institution_name);
                                    if (appCompatTextView != null) {
                                        r02 = R.id.txt_service_count;
                                        AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_count);
                                        if (appCompatTextView2 != null) {
                                            return new FragmentInstitutionDetailBinding(constraintLayout, constraintLayout, constraintLayout2, imageView, includeNoConnectionBindingBind, progressBar, epoxyRecyclerView, includeSystemErrorBindingBind, appCompatTextView, appCompatTextView2);
                                        }
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
    public static FragmentInstitutionDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_institution_detail, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16523a;
    }
}
