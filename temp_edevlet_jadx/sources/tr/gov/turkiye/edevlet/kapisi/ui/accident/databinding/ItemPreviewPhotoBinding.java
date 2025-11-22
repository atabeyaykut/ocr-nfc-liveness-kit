package tr.gov.turkiye.edevlet.kapisi.ui.accident.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemPreviewPhotoBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17224a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17225b;

    public ItemPreviewPhotoBinding(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageView appCompatImageView) {
        this.f17224a = constraintLayout;
        this.f17225b = appCompatImageView;
    }

    @NonNull
    public static ItemPreviewPhotoBinding bind(@NonNull View view) {
        int r02 = R.id.added_photo_container;
        if (((CardView) ViewBindings.findChildViewById(view, R.id.added_photo_container)) != null) {
            r02 = R.id.photo_added;
            AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.photo_added);
            if (appCompatImageView != null) {
                return new ItemPreviewPhotoBinding((ConstraintLayout) view, appCompatImageView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemPreviewPhotoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_preview_photo, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17224a;
    }
}
