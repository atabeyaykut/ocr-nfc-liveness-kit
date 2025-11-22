package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.button.MaterialButton;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentNfcWarningDialogBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15867a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialButton f15868b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialButton f15869c;

    public FragmentNfcWarningDialogBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialButton materialButton, @NonNull MaterialButton materialButton2) {
        this.f15867a = constraintLayout;
        this.f15868b = materialButton;
        this.f15869c = materialButton2;
    }

    @NonNull
    public static FragmentNfcWarningDialogBinding bind(@NonNull View view) {
        int r02 = R.id.animation_view;
        if (((LottieAnimationView) ViewBindings.findChildViewById(view, R.id.animation_view)) != null) {
            r02 = R.id.btn_close_settings_dialog;
            MaterialButton materialButton = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_close_settings_dialog);
            if (materialButton != null) {
                r02 = R.id.btn_open_settings;
                MaterialButton materialButton2 = (MaterialButton) ViewBindings.findChildViewById(view, R.id.btn_open_settings);
                if (materialButton2 != null) {
                    r02 = R.id.guideline;
                    if (((Guideline) ViewBindings.findChildViewById(view, R.id.guideline)) != null) {
                        r02 = R.id.read_dialog_message;
                        if (((TextView) ViewBindings.findChildViewById(view, R.id.read_dialog_message)) != null) {
                            r02 = R.id.read_dialog_title;
                            if (((TextView) ViewBindings.findChildViewById(view, R.id.read_dialog_title)) != null) {
                                return new FragmentNfcWarningDialogBinding((ConstraintLayout) view, materialButton, materialButton2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentNfcWarningDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_nfc_warning_dialog, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15867a;
    }
}
