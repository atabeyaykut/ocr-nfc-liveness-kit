package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentPhoneNumberFormBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17650a;

    public FragmentPhoneNumberFormBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f17650a = constraintLayout;
    }

    @NonNull
    public static FragmentPhoneNumberFormBinding bind(@NonNull View view) {
        int r02 = R.id.btn_manual_next;
        if (((Button) ViewBindings.findChildViewById(view, R.id.btn_manual_next)) != null) {
            r02 = R.id.edit_phone_number;
            if (((TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_phone_number)) != null) {
                r02 = R.id.header_phone_number;
                if (((TextView) ViewBindings.findChildViewById(view, R.id.header_phone_number)) != null) {
                    r02 = R.id.profile_cv_contact;
                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_contact)) != null) {
                        r02 = R.id.progressBar;
                        if (((ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar)) != null) {
                            r02 = R.id.txt_input_country_code;
                            if (((TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_country_code)) != null) {
                                r02 = R.id.txt_input_phone_number;
                                if (((TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_phone_number)) != null) {
                                    r02 = R.id.txt_phone_number_explanation;
                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_phone_number_explanation)) != null) {
                                        return new FragmentPhoneNumberFormBinding((ConstraintLayout) view);
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
    public static FragmentPhoneNumberFormBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_phone_number_form, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17650a;
    }
}
