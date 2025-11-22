package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemFavoriteServiceListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16282a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16283b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f16284c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f16285d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16286e;

    @NonNull
    public final AppCompatTextView f;

    public ItemFavoriteServiceListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f16282a = constraintLayout;
        this.f16283b = materialCardView;
        this.f16284c = imageView;
        this.f16285d = imageView2;
        this.f16286e = appCompatTextView;
        this.f = appCompatTextView2;
    }

    @NonNull
    public static ItemFavoriteServiceListBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.img_service_institution_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_service_institution_logo);
            if (imageView != null) {
                r02 = R.id.item_remove;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_remove);
                if (imageView2 != null) {
                    r02 = R.id.service_operation_container;
                    if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.service_operation_container)) != null) {
                        r02 = R.id.txt_service_institution_name;
                        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_institution_name);
                        if (appCompatTextView != null) {
                            r02 = R.id.txt_service_name;
                            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_name);
                            if (appCompatTextView2 != null) {
                                return new ItemFavoriteServiceListBinding((ConstraintLayout) view, materialCardView, imageView, imageView2, appCompatTextView, appCompatTextView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemFavoriteServiceListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_favorite_service_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16282a;
    }
}
