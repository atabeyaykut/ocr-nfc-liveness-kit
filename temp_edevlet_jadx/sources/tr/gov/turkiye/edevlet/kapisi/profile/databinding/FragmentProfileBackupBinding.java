package tr.gov.turkiye.edevlet.kapisi.profile.databinding;

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
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentProfileBackupBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16633a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final LottieAnimationView f16634b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16635c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final MaterialButton f16636d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final MaterialButton f16637e;

    @NonNull
    public final ConstraintLayout f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16638g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16639h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16640i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f16641j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f16642k;

    public FragmentProfileBackupBinding(@NonNull ConstraintLayout constraintLayout, @NonNull LottieAnimationView lottieAnimationView, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull MaterialButton materialButton, @NonNull MaterialButton materialButton2, @NonNull ConstraintLayout constraintLayout2, @NonNull MaterialCardView materialCardView, @NonNull ProgressBar progressBar, @NonNull ConstraintLayout constraintLayout3, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f16633a = constraintLayout;
        this.f16634b = lottieAnimationView;
        this.f16635c = includeNoConnectionBinding;
        this.f16636d = materialButton;
        this.f16637e = materialButton2;
        this.f = constraintLayout2;
        this.f16638g = materialCardView;
        this.f16639h = progressBar;
        this.f16640i = constraintLayout3;
        this.f16641j = epoxyRecyclerView;
        this.f16642k = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentProfileBackupBinding bind(@NonNull View view) {
        int r02 = R.id.animation_view;
        LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.animation_view);
        if (lottieAnimationView != null) {
            r02 = R.id.institution_detail_logo;
            if (((ImageView) ViewBindings.findChildViewById(view, R.id.institution_detail_logo)) != null) {
                r02 = R.id.no_connection_view;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                if (viewFindChildViewById != null) {
                    IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                    r02 = R.id.profile_banner_container;
                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.profile_banner_container)) != null) {
                        r02 = R.id.profile_banner_negative;
                        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.profile_banner_negative);
                        if (materialButton != null) {
                            r02 = R.id.profile_banner_positive;
                            MaterialButton materialButton2 = (MaterialButton) ViewBindings.findChildViewById(view, R.id.profile_banner_positive);
                            if (materialButton2 != null) {
                                r02 = R.id.profile_container;
                                ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.profile_container);
                                if (constraintLayout != null) {
                                    r02 = R.id.profile_cv_banner;
                                    MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_banner);
                                    if (materialCardView != null) {
                                        r02 = R.id.profile_fragment_progressBar;
                                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.profile_fragment_progressBar);
                                        if (progressBar != null) {
                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) view;
                                            r02 = R.id.rcl_operation_list;
                                            EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_operation_list);
                                            if (epoxyRecyclerView != null) {
                                                r02 = R.id.system_error_view;
                                                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                if (viewFindChildViewById2 != null) {
                                                    IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                    r02 = R.id.txt_banner_description;
                                                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_banner_description)) != null) {
                                                        r02 = R.id.txt_banner_title;
                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_banner_title)) != null) {
                                                            return new FragmentProfileBackupBinding(constraintLayout2, lottieAnimationView, includeNoConnectionBindingBind, materialButton, materialButton2, constraintLayout, materialCardView, progressBar, constraintLayout2, epoxyRecyclerView, includeSystemErrorBindingBind);
                                                        }
                                                    }
                                                }
                                            }
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
    public static FragmentProfileBackupBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_profile_backup, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16633a;
    }
}
