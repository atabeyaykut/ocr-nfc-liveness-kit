package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentNfcSuccessDialogBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15864a;

    public FragmentNfcSuccessDialogBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f15864a = constraintLayout;
    }

    @NonNull
    public static FragmentNfcSuccessDialogBinding bind(@NonNull View view) {
        int r02 = R.id.animation_view;
        if (((LottieAnimationView) ViewBindings.findChildViewById(view, R.id.animation_view)) != null) {
            r02 = R.id.read_dialog_message;
            if (((TextView) ViewBindings.findChildViewById(view, R.id.read_dialog_message)) != null) {
                r02 = R.id.read_dialog_title;
                if (((TextView) ViewBindings.findChildViewById(view, R.id.read_dialog_title)) != null) {
                    return new FragmentNfcSuccessDialogBinding((ConstraintLayout) view);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentNfcSuccessDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_nfc_success_dialog, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15864a;
    }
}
