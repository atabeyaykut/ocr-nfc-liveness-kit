package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class CustomSnackbarContentBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final View f15861a;

    public CustomSnackbarContentBinding(@NonNull View view) {
        this.f15861a = view;
    }

    @NonNull
    public static CustomSnackbarContentBinding bind(@NonNull View view) {
        int r02 = R.id.im_action_left;
        if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.im_action_left)) != null) {
            r02 = R.id.snack_constraint;
            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.snack_constraint)) != null) {
                r02 = R.id.tv_action;
                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_action)) != null) {
                    r02 = R.id.tv_message;
                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.tv_message)) != null) {
                        return new CustomSnackbarContentBinding(view);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15861a;
    }
}
