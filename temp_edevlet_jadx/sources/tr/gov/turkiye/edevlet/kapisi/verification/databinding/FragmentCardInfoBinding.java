package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentCardInfoBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17635a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17636b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f17637c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextInputEditText f17638d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextInputEditText f17639e;

    @NonNull
    public final TextInputEditText f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final ImageButton f17640g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextInputLayout f17641h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextInputLayout f17642i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextInputLayout f17643j;

    public FragmentCardInfoBinding(@NonNull NestedScrollView nestedScrollView, @NonNull Button button, @NonNull NestedScrollView nestedScrollView2, @NonNull TextInputEditText textInputEditText, @NonNull TextInputEditText textInputEditText2, @NonNull TextInputEditText textInputEditText3, @NonNull ImageButton imageButton, @NonNull TextInputLayout textInputLayout, @NonNull TextInputLayout textInputLayout2, @NonNull TextInputLayout textInputLayout3) {
        this.f17635a = nestedScrollView;
        this.f17636b = button;
        this.f17637c = nestedScrollView2;
        this.f17638d = textInputEditText;
        this.f17639e = textInputEditText2;
        this.f = textInputEditText3;
        this.f17640g = imageButton;
        this.f17641h = textInputLayout;
        this.f17642i = textInputLayout2;
        this.f17643j = textInputLayout3;
    }

    @NonNull
    public static FragmentCardInfoBinding bind(@NonNull View view) {
        int r02 = R.id.btn_manual_next;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next);
        if (button != null) {
            r02 = R.id.card_form_container;
            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_form_container)) != null) {
                NestedScrollView nestedScrollView = (NestedScrollView) view;
                r02 = R.id.divider_subtitle;
                if (ViewBindings.findChildViewById(view, R.id.divider_subtitle) != null) {
                    r02 = R.id.divider_title;
                    if (ViewBindings.findChildViewById(view, R.id.divider_title) != null) {
                        r02 = R.id.edit_birth_date;
                        TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_birth_date);
                        if (textInputEditText != null) {
                            r02 = R.id.edit_serial_number;
                            TextInputEditText textInputEditText2 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_serial_number);
                            if (textInputEditText2 != null) {
                                r02 = R.id.edit_validation_date;
                                TextInputEditText textInputEditText3 = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_validation_date);
                                if (textInputEditText3 != null) {
                                    r02 = R.id.header_card_info;
                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.header_card_info)) != null) {
                                        r02 = R.id.header_phone_number;
                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.header_phone_number)) != null) {
                                            r02 = R.id.img_scan_card;
                                            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.img_scan_card);
                                            if (imageButton != null) {
                                                r02 = R.id.txt_input_birth_date;
                                                TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_birth_date);
                                                if (textInputLayout != null) {
                                                    r02 = R.id.txt_input_card_validation_date;
                                                    TextInputLayout textInputLayout2 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_card_validation_date);
                                                    if (textInputLayout2 != null) {
                                                        r02 = R.id.txt_input_serial_no;
                                                        TextInputLayout textInputLayout3 = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_serial_no);
                                                        if (textInputLayout3 != null) {
                                                            return new FragmentCardInfoBinding(nestedScrollView, button, nestedScrollView, textInputEditText, textInputEditText2, textInputEditText3, imageButton, textInputLayout, textInputLayout2, textInputLayout3);
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
    public static FragmentCardInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_card_info, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17635a;
    }
}
