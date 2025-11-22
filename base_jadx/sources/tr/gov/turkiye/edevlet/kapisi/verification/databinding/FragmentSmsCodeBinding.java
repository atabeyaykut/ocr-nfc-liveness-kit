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
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentSmsCodeBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17651a;

    public FragmentSmsCodeBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f17651a = constraintLayout;
    }

    @NonNull
    public static FragmentSmsCodeBinding bind(@NonNull View view) {
        int r02 = R.id.edit_sms_code;
        if (((TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_sms_code)) != null) {
            r02 = R.id.profile_btn_email_update;
            if (((Button) ViewBindings.findChildViewById(view, R.id.profile_btn_email_update)) != null) {
                r02 = R.id.progress_bar;
                if (((ProgressBar) ViewBindings.findChildViewById(view, R.id.progress_bar)) != null) {
                    r02 = R.id.text_view_phone_number;
                    if (((TextView) ViewBindings.findChildViewById(view, R.id.text_view_phone_number)) != null) {
                        r02 = R.id.text_view_progress;
                        if (((TextView) ViewBindings.findChildViewById(view, R.id.text_view_progress)) != null) {
                            r02 = R.id.text_view_progress_title;
                            if (((TextView) ViewBindings.findChildViewById(view, R.id.text_view_progress_title)) != null) {
                                r02 = R.id.txt_input_sms_code;
                                if (((TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_sms_code)) != null) {
                                    return new FragmentSmsCodeBinding((ConstraintLayout) view);
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
    public static FragmentSmsCodeBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_sms_code, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17651a;
    }
}
