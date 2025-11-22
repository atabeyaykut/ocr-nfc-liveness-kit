package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentShowQrBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17191a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17192b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17193c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17194d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f17195e;

    @NonNull
    public final IncludeSystemErrorBinding f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f17196g;

    public FragmentShowQrBinding(@NonNull NestedScrollView nestedScrollView, @NonNull MaterialButton materialButton, @NonNull AppCompatImageView appCompatImageView, @NonNull ConstraintLayout constraintLayout, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull AppCompatTextView appCompatTextView) {
        this.f17191a = nestedScrollView;
        this.f17192b = materialButton;
        this.f17193c = appCompatImageView;
        this.f17194d = constraintLayout;
        this.f17195e = includeNoConnectionBinding;
        this.f = includeSystemErrorBinding;
        this.f17196g = appCompatTextView;
    }

    @NonNull
    public static FragmentShowQrBinding bind(@NonNull View view) {
        int r02 = R.id.btn_mkt_check_qr_status;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_mkt_check_qr_status);
        if (materialButton != null) {
            r02 = R.id.guideline1;
            if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
                r02 = R.id.guideline2;
                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline2)) != null) {
                    r02 = R.id.guideline3;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline3)) != null) {
                        r02 = R.id.img_approve_info;
                        if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_approve_info)) != null) {
                            r02 = R.id.img_car_info;
                            if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_car_info)) != null) {
                                r02 = R.id.img_driver_info;
                                if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_driver_info)) != null) {
                                    r02 = R.id.img_final_info;
                                    if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_final_info)) != null) {
                                        r02 = R.id.item_divider;
                                        if (ViewBindings.findChildViewById(view, R.id.item_divider) != null) {
                                            r02 = R.id.item_divider_2;
                                            if (ViewBindings.findChildViewById(view, R.id.item_divider_2) != null) {
                                                r02 = R.id.item_divider_3;
                                                if (ViewBindings.findChildViewById(view, R.id.item_divider_3) != null) {
                                                    r02 = R.id.logo_container_0;
                                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_0)) != null) {
                                                        r02 = R.id.logo_container_1;
                                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_1)) != null) {
                                                            r02 = R.id.logo_container_2;
                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_2)) != null) {
                                                                r02 = R.id.logo_container_3;
                                                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_3)) != null) {
                                                                    r02 = R.id.mkt_breadcrumb_container;
                                                                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_breadcrumb_container)) != null) {
                                                                        r02 = R.id.mkt_generate_qr_content;
                                                                        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.mkt_generate_qr_content);
                                                                        if (appCompatImageView != null) {
                                                                            r02 = R.id.mkt_qr_content_container;
                                                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_qr_content_container);
                                                                            if (constraintLayout != null) {
                                                                                r02 = R.id.no_connection_view;
                                                                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                                                                if (viewFindChildViewById != null) {
                                                                                    IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                                                                    NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                                    r02 = R.id.system_error_view;
                                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                                    if (viewFindChildViewById2 != null) {
                                                                                        IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                                        r02 = R.id.txt_introduction_main_description;
                                                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) != null) {
                                                                                            r02 = R.id.txt_introduction_main_title;
                                                                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) != null) {
                                                                                                r02 = R.id.txt_introduction_qr_title;
                                                                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_qr_title)) != null) {
                                                                                                    r02 = R.id.txt_introduction_sub_description;
                                                                                                    AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_sub_description);
                                                                                                    if (appCompatTextView != null) {
                                                                                                        return new FragmentShowQrBinding(nestedScrollView, materialButton, appCompatImageView, constraintLayout, includeNoConnectionBindingBind, includeSystemErrorBindingBind, appCompatTextView);
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
    public static FragmentShowQrBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_show_qr, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17191a;
    }
}
