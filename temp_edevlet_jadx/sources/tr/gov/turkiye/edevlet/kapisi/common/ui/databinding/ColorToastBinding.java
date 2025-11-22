package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ColorToastBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final CardView f15859a;

    public ColorToastBinding(@NonNull CardView cardView) {
        this.f15859a = cardView;
    }

    @NonNull
    public static ColorToastBinding bind(@NonNull View view) {
        CardView cardView = (CardView) view;
        int r12 = R.id.toast_image;
        if (((ImageView) ViewBindings.findChildViewById(view, R.id.toast_image)) != null) {
            r12 = R.id.toast_text;
            if (((TextView) ViewBindings.findChildViewById(view, R.id.toast_text)) != null) {
                r12 = R.id.toast_view;
                if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.toast_view)) != null) {
                    return new ColorToastBinding(cardView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r12)));
    }

    @NonNull
    public static ColorToastBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.color_toast, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15859a;
    }
}
