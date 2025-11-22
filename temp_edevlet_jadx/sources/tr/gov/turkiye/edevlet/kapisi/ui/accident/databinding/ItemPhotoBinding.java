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
public final class ItemPhotoBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17214a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final CardView f17215b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final CardView f17216c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17217d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f17218e;

    @NonNull
    public final AppCompatImageView f;

    public ItemPhotoBinding(@NonNull ConstraintLayout constraintLayout, @NonNull CardView cardView, @NonNull CardView cardView2, @NonNull AppCompatImageView appCompatImageView, @NonNull AppCompatImageView appCompatImageView2, @NonNull AppCompatImageView appCompatImageView3) {
        this.f17214a = constraintLayout;
        this.f17215b = cardView;
        this.f17216c = cardView2;
        this.f17217d = appCompatImageView;
        this.f17218e = appCompatImageView2;
        this.f = appCompatImageView3;
    }

    @NonNull
    public static ItemPhotoBinding bind(@NonNull View view) {
        int r02 = R.id.added_photo_container;
        CardView cardView = (CardView) ViewBindings.findChildViewById(view, R.id.added_photo_container);
        if (cardView != null) {
            r02 = R.id.default_image_container;
            CardView cardView2 = (CardView) ViewBindings.findChildViewById(view, R.id.default_image_container);
            if (cardView2 != null) {
                r02 = R.id.default_photo;
                AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.default_photo);
                if (appCompatImageView != null) {
                    r02 = R.id.photo_added;
                    AppCompatImageView appCompatImageView2 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.photo_added);
                    if (appCompatImageView2 != null) {
                        r02 = R.id.photo_delete;
                        AppCompatImageView appCompatImageView3 = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.photo_delete);
                        if (appCompatImageView3 != null) {
                            return new ItemPhotoBinding((ConstraintLayout) view, cardView, cardView2, appCompatImageView, appCompatImageView2, appCompatImageView3);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemPhotoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_photo, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17214a;
    }
}
