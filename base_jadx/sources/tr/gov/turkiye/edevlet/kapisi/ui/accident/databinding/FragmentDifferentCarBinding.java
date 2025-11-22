package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentDifferentCarBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17116a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17117b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final CheckBox f17118c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextInputEditText f17119d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextInputEditText f17120e;

    @NonNull
    public final TextInputEditText f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17121g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f17122h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final ImageButton f17123i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17124j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f17125k;

    /* renamed from: l, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17126l;

    /* renamed from: m, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f17127m;

    public FragmentDifferentCarBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull CheckBox checkBox, @NonNull TextInputEditText textInputEditText, @NonNull TextInputEditText textInputEditText2, @NonNull TextInputEditText textInputEditText3, @NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull ImageButton imageButton, @NonNull ConstraintLayout constraintLayout2, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull NestedScrollView nestedScrollView2, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding) {
        this.f17116a = nestedScrollView;
        this.f17117b = button;
        this.f17118c = checkBox;
        this.f17119d = textInputEditText;
        this.f17120e = textInputEditText2;
        this.f = textInputEditText3;
        this.f17121g = constraintLayout;
        this.f17122h = textView;
        this.f17123i = imageButton;
        this.f17124j = constraintLayout2;
        this.f17125k = includeNoConnectionBinding;
        this.f17126l = nestedScrollView2;
        this.f17127m = includeSystemErrorBinding;
    }

    @NonNull
    public static FragmentDifferentCarBinding bind(@NonNull View view) {
        int r12 = R.id.btn_manual_next;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (button != null) {
            r12 = R.id.card_form_container;
            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_form_container)) != null) {
                r12 = R.id.checkbox_agreement;
                CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(view, R.id.checkbox_agreement);
                if (checkBox != null) {
                    r12 = R.id.divider_subtitle;
                    if (ViewBindings.findChildViewById(view, R.id.divider_subtitle) != null) {
                        r12 = R.id.divider_subtitle_form;
                        if (ViewBindings.findChildViewById(view, R.id.divider_subtitle_form) != null) {
                            r12 = R.id.divider_title;
                            if (ViewBindings.findChildViewById(view, R.id.divider_title) != null) {
                                r12 = R.id.edit_identity_number;
                                TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_identity_number);
                                if (textInputEditText != null) {
                                    r12 = R.id.edit_plate_number;
                                    TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_plate_number);
                                    if (textInputEditText2 != null) {
                                        r12 = R.id.edit_vehicle_document_number;
                                        TextInputEditText textInputEditText3 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_vehicle_document_number);
                                        if (textInputEditText3 != null) {
                                            r12 = R.id.form_different_car;
                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.form_different_car);
                                            if (constraintLayout != null) {
                                                r12 = R.id.guideline1;
                                                if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline1)) != null) {
                                                    r12 = R.id.guideline2;
                                                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline2)) != null) {
                                                        r12 = R.id.guideline3;
                                                        if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline3)) != null) {
                                                            r12 = R.id.header_card_form_title;
                                                            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.header_card_form_title);
                                                            if (textView != null) {
                                                                r12 = R.id.header_card_info;
                                                                if (((TextView) ViewBindings.findChildViewById(view, R.id.header_card_info)) != null) {
                                                                    r12 = R.id.header_phone_number;
                                                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.header_phone_number)) != null) {
                                                                        r12 = R.id.img_approve_info;
                                                                        if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_approve_info)) != null) {
                                                                            r12 = R.id.img_car_info;
                                                                            if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_car_info)) != null) {
                                                                                r12 = R.id.img_driver_info;
                                                                                if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_driver_info)) != null) {
                                                                                    r12 = R.id.img_final_info;
                                                                                    if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_final_info)) != null) {
                                                                                        r12 = R.id.img_scan_card;
                                                                                        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.img_scan_card);
                                                                                        if (imageButton != null) {
                                                                                            r12 = R.id.item_divider;
                                                                                            if (ViewBindings.findChildViewById(view, R.id.item_divider) != null) {
                                                                                                r12 = R.id.item_divider_2;
                                                                                                if (ViewBindings.findChildViewById(view, R.id.item_divider_2) != null) {
                                                                                                    r12 = R.id.item_divider_3;
                                                                                                    if (ViewBindings.findChildViewById(view, R.id.item_divider_3) != null) {
                                                                                                        r12 = R.id.logo_container_0;
                                                                                                        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_0)) != null) {
                                                                                                            r12 = R.id.logo_container_1;
                                                                                                            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_1)) != null) {
                                                                                                                r12 = R.id.logo_container_2;
                                                                                                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_2)) != null) {
                                                                                                                    r12 = R.id.logo_container_3;
                                                                                                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container_3)) != null) {
                                                                                                                        r12 = R.id.mkt_breadcrumb_container;
                                                                                                                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_breadcrumb_container)) != null) {
                                                                                                                            r12 = R.id.mkt_different_vehicle_content_container;
                                                                                                                            ConstraintLayout constraintLayout2 = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.mkt_different_vehicle_content_container);
                                                                                                                            if (constraintLayout2 != null) {
                                                                                                                                r12 = R.id.no_connection_view;
                                                                                                                                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
                                                                                                                                if (viewFindChildViewById != null) {
                                                                                                                                    IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                                                                                                                                    NestedScrollView nestedScrollView = (NestedScrollView) view;
                                                                                                                                    r12 = R.id.system_error_view;
                                                                                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                                                                                    if (viewFindChildViewById2 != null) {
                                                                                                                                        IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                                                                                        r12 = R.id.txt_input_identity_number;
                                                                                                                                        if (((TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_identity_number)) != null) {
                                                                                                                                            r12 = R.id.txt_input_plate_number;
                                                                                                                                            if (((TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_plate_number)) != null) {
                                                                                                                                                r12 = R.id.txt_input_vehicle_document_number;
                                                                                                                                                if (((TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_vehicle_document_number)) != null) {
                                                                                                                                                    r12 = R.id.txt_introduction_main_description;
                                                                                                                                                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_description)) != null) {
                                                                                                                                                        r12 = R.id.txt_introduction_main_title;
                                                                                                                                                        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_introduction_main_title)) != null) {
                                                                                                                                                            return new FragmentDifferentCarBinding(nestedScrollView, button, checkBox, textInputEditText, textInputEditText2, textInputEditText3, constraintLayout, textView, imageButton, constraintLayout2, includeNoConnectionBindingBind, nestedScrollView, includeSystemErrorBindingBind);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r12)));
    }

    @NonNull
    public static FragmentDifferentCarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_different_car, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17116a;
    }
}
