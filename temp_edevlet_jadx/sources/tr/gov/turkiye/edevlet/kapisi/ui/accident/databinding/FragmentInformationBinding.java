package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.epoxy.EpoxyRecyclerView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentInformationBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17140a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17141b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialButton f17142c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextInputEditText f17143d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17144e;

    @NonNull
    public final NestedScrollView f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f17145g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f17146h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final EpoxyRecyclerView f17147i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f17148j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f17149k;

    public FragmentInformationBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull MaterialButton materialButton, @NonNull TextInputEditText textInputEditText, @NonNull ConstraintLayout constraintLayout, @NonNull NestedScrollView nestedScrollView2, @NonNull MaterialCardView materialCardView, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull EpoxyRecyclerView epoxyRecyclerView, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull AppCompatTextView appCompatTextView) {
        this.f17140a = nestedScrollView;
        this.f17141b = button;
        this.f17142c = materialButton;
        this.f17143d = textInputEditText;
        this.f17144e = constraintLayout;
        this.f = nestedScrollView2;
        this.f17145g = materialCardView;
        this.f17146h = includeNoConnectionBinding;
        this.f17147i = epoxyRecyclerView;
        this.f17148j = includeSystemErrorBinding;
        this.f17149k = appCompatTextView;
    }

    @NonNull
    public static FragmentInformationBinding bind(@NonNull View view) {
        int r02 = R.id.btn_location_edit;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_location_edit);
        if (button != null) {
            r02 = R.id.btn_manual_next;
            MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
            if (materialButton != null) {
                r02 = R.id.container_mkt_vehicle_licence_plate;
                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.container_mkt_vehicle_licence_plate)) != null) {
                    r02 = R.id.edit_accident_description;
                    TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_accident_description);
                    if (textInputEditText != null) {
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
                                                                                r02 = R.id.mkt_accident_information_accident_description;
                                                                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_accident_information_accident_description)) != null) {
                                                                                    r02 = R.id.mkt_accident_information_content_container;
                                                                                    ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_accident_information_content_container);
                                                                                    if (constraintLayout != null) {
                                                                                        r02 = R.id.mkt_accident_information_description_title;
                                                                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_accident_information_description_title)) != null) {
                                                                                            NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                                            r02 = R.id.mkt_breadcrumb_container;
                                                                                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_breadcrumb_container)) != null) {
                                                                                                r02 = R.id.mkt_location_change_card;
                                                                                                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_location_change_card);
                                                                                                if (materialCardView != null) {
                                                                                                    r02 = R.id.mkt_policy_insurance_title;
                                                                                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_insurance_title)) != null) {
                                                                                                        r02 = R.id.mkt_policy_page_vehicle_licence_card;
                                                                                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.mkt_policy_page_vehicle_licence_card)) != null) {
                                                                                                            r02 = R.id.mkt_policy_vehicle_licence_title;
                                                                                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.mkt_policy_vehicle_licence_title)) != null) {
                                                                                                                r02 = R.id.no_connection_view;
                                                                                                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                                                                                                if (viewFindChildViewById != null) {
                                                                                                                    IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                                                                                                    r02 = R.id.rcl_mkt_car_list;
                                                                                                                    EpoxyRecyclerView epoxyRecyclerView = (EpoxyRecyclerView) ViewBindings.findChildViewById(view, R.id.rcl_mkt_car_list);
                                                                                                                    if (epoxyRecyclerView != null) {
                                                                                                                        r02 = R.id.system_error_view;
                                                                                                                        View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                                                                        if (viewFindChildViewById2 != null) {
                                                                                                                            IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                                                                            r02 = R.id.text_input_accident_description;
                                                                                                                            if (((TextInputLayout) ViewBindings.findChildViewById(view, R.id.text_input_accident_description)) != null) {
                                                                                                                                r02 = R.id.txt_car_helper_description;
                                                                                                                                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_car_helper_description)) != null) {
                                                                                                                                    r02 = R.id.txt_introduction_main_description;
                                                                                                                                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) != null) {
                                                                                                                                        r02 = R.id.txt_introduction_main_title;
                                                                                                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) != null) {
                                                                                                                                            r02 = R.id.txt_location_helper_description;
                                                                                                                                            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_location_helper_description)) != null) {
                                                                                                                                                r02 = R.id.txt_location_text;
                                                                                                                                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_location_text);
                                                                                                                                                if (appCompatTextView != null) {
                                                                                                                                                    return new FragmentInformationBinding(nestedScrollView, button, materialButton, textInputEditText, constraintLayout, nestedScrollView, materialCardView, includeNoConnectionBindingBind, epoxyRecyclerView, includeSystemErrorBindingBind, appCompatTextView);
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
    public static FragmentInformationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_information, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17140a;
    }
}
