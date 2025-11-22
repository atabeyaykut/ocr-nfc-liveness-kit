package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ImagePreviewDialogBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15870a;

    public ImagePreviewDialogBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f15870a = constraintLayout;
    }

    @NonNull
    public static ImagePreviewDialogBinding bind(@NonNull View view) {
        if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_preview_dialog)) != null) {
            return new ImagePreviewDialogBinding((ConstraintLayout) view);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.img_preview_dialog)));
    }

    @NonNull
    public static ImagePreviewDialogBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.image_preview_dialog, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15870a;
    }
}
