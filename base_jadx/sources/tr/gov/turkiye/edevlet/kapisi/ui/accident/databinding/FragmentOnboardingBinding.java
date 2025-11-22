package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeUpdateModuleBinding;

/* loaded from: classes3.dex */
public final class FragmentOnboardingBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17173a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17174b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17175c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final IncludeUpdateModuleBinding f17176d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f17177e;

    @NonNull
    public final IncludeSystemErrorBinding f;

    public FragmentOnboardingBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull ConstraintLayout constraintLayout, @NonNull IncludeUpdateModuleBinding includeUpdateModuleBinding, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f17173a = nestedScrollView;
        this.f17174b = button;
        this.f17175c = constraintLayout;
        this.f17176d = includeUpdateModuleBinding;
        this.f17177e = includeNoConnectionBinding;
        this.f = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentOnboardingBinding bind(@NonNull View view) {
        int r02 = R.id.btn_mkt_start;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_mkt_start);
        if (button != null) {
            r02 = R.id.img_onboarding_item_0;
            if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_onboarding_item_0)) != null) {
                r02 = R.id.img_onboarding_item_1;
                if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_onboarding_item_1)) != null) {
                    r02 = R.id.img_onboarding_item_2;
                    if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_onboarding_item_2)) != null) {
                        NestedScrollView nestedScrollView = (NestedScrollView) view;
                        r02 = R.id.mkt_onboarding_content_container;
                        ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_onboarding_content_container);
                        if (constraintLayout != null) {
                            r02 = R.id.mkt_onboarding_parent_container;
                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_onboarding_parent_container)) != null) {
                                r02 = R.id.module_update_view;
                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.module_update_view);
                                if (viewFindChildViewById != null) {
                                    IncludeUpdateModuleBinding includeUpdateModuleBindingBind = IncludeUpdateModuleBinding.bind(viewFindChildViewById);
                                    r02 = R.id.no_connection_view;
                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                    if (viewFindChildViewById2 != null) {
                                        IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById2);
                                        r02 = R.id.onboarding_card_0;
                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.onboarding_card_0)) != null) {
                                            r02 = R.id.onboarding_card_1;
                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.onboarding_card_1)) != null) {
                                                r02 = R.id.onboarding_card_2;
                                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.onboarding_card_2)) != null) {
                                                    r02 = R.id.system_error_view;
                                                    View viewFindChildViewById3 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                    if (viewFindChildViewById3 != null) {
                                                        IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById3);
                                                        r02 = R.id.txt_onboarding_item_0_explanation;
                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_onboarding_item_0_explanation)) != null) {
                                                            r02 = R.id.txt_onboarding_item_0_title;
                                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_onboarding_item_0_title)) != null) {
                                                                r02 = R.id.txt_onboarding_item_1_explanation;
                                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_onboarding_item_1_explanation)) != null) {
                                                                    r02 = R.id.txt_onboarding_item_1_title;
                                                                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_onboarding_item_1_title)) != null) {
                                                                        r02 = R.id.txt_onboarding_item_2_explanation;
                                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_onboarding_item_2_explanation)) != null) {
                                                                            r02 = R.id.txt_onboarding_item_2_title;
                                                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_onboarding_item_2_title)) != null) {
                                                                                r02 = R.id.txt_onboarding_main_description;
                                                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_onboarding_main_description)) != null) {
                                                                                    return new FragmentOnboardingBinding(nestedScrollView, button, constraintLayout, includeUpdateModuleBindingBind, includeNoConnectionBindingBind, includeSystemErrorBindingBind);
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
    public static FragmentOnboardingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_onboarding, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17173a;
    }
}
