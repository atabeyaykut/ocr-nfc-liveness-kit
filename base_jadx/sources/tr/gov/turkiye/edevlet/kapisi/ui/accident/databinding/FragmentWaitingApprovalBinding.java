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
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentWaitingApprovalBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17197a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17198b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final LottieAnimationView f17199c;

    public FragmentWaitingApprovalBinding(@NonNull NestedScrollView nestedScrollView, @NonNull MaterialButton materialButton, @NonNull LottieAnimationView lottieAnimationView) {
        this.f17197a = nestedScrollView;
        this.f17198b = materialButton;
        this.f17199c = lottieAnimationView;
    }

    @NonNull
    public static FragmentWaitingApprovalBinding bind(@NonNull View view) {
        int r02 = R.id.btn_mkt_check_approval;
        MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_mkt_check_approval);
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
                                                                        r02 = R.id.mkt_driver_page_content_container;
                                                                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_driver_page_content_container)) != null) {
                                                                            r02 = R.id.mkt_loading_animation;
                                                                            LottieAnimationView lottieAnimationView = (LottieAnimationView) ViewBindings.findChildViewById(view, R.id.mkt_loading_animation);
                                                                            if (lottieAnimationView != null) {
                                                                                r02 = R.id.no_connection_view;
                                                                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                                                                if (viewFindChildViewById != null) {
                                                                                    IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                                                                    NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                                    if (viewFindChildViewById2 != null) {
                                                                                        IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) == null) {
                                                                                            r02 = R.id.txt_introduction_main_description;
                                                                                        } else {
                                                                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) != null) {
                                                                                                return new FragmentWaitingApprovalBinding(nestedScrollView, materialButton, lottieAnimationView);
                                                                                            }
                                                                                            r02 = R.id.txt_introduction_main_title;
                                                                                        }
                                                                                    } else {
                                                                                        r02 = R.id.system_error_view;
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
    public static FragmentWaitingApprovalBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_waiting_approval, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17197a;
    }
}
