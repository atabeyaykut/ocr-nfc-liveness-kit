package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemServiceListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16301a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16302b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16303c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f16304d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f16305e;

    @NonNull
    public final ImageView f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16306g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16307h;

    public ItemServiceListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull ProgressBar progressBar, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f16301a = constraintLayout;
        this.f16302b = materialCardView;
        this.f16303c = progressBar;
        this.f16304d = imageView;
        this.f16305e = imageView2;
        this.f = imageView3;
        this.f16306g = appCompatTextView;
        this.f16307h = appCompatTextView2;
    }

    @NonNull
    public static ItemServiceListBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.favorite_progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.favorite_progress);
            if (progressBar != null) {
                r02 = R.id.img_service_institution_logo;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_service_institution_logo);
                if (imageView != null) {
                    r02 = R.id.item_image_loved_no;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_image_loved_no);
                    if (imageView2 != null) {
                        r02 = R.id.item_image_loved_yes;
                        ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_image_loved_yes);
                        if (imageView3 != null) {
                            r02 = R.id.service_operation_container;
                            if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.service_operation_container)) != null) {
                                r02 = R.id.txt_service_institution_name;
                                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_institution_name);
                                if (appCompatTextView != null) {
                                    r02 = R.id.txt_service_name;
                                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_name);
                                    if (appCompatTextView2 != null) {
                                        return new ItemServiceListBinding((ConstraintLayout) view, materialCardView, progressBar, imageView, imageView2, imageView3, appCompatTextView, appCompatTextView2);
                                    }
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
    public static ItemServiceListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_service_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16301a;
    }
}
