package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ColorToastNewBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f15860a;

    public ColorToastNewBinding(@NonNull RelativeLayout relativeLayout) {
        this.f15860a = relativeLayout;
    }

    @NonNull
    public static ColorToastNewBinding bind(@NonNull View view) {
        RelativeLayout relativeLayout = (RelativeLayout) view;
        int r12 = R.id.toast_image;
        if (((ImageView) ViewBindings.findChildViewById(view, R.id.toast_image)) != null) {
            r12 = R.id.toast_text;
            if (((TextView) ViewBindings.findChildViewById(view, R.id.toast_text)) != null) {
                return new ColorToastNewBinding(relativeLayout);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r12)));
    }

    @NonNull
    public static ColorToastNewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.color_toast_new, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15860a;
    }
}
