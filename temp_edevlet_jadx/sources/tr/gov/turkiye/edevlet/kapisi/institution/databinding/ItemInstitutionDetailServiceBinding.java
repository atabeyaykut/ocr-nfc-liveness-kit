package tr.gov.turkiye.edevlet.kapisi.institution.databinding;

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
public final class ItemInstitutionDetailServiceBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16532a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16533b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16534c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f16535d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f16536e;

    @NonNull
    public final AppCompatTextView f;

    public ItemInstitutionDetailServiceBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull ProgressBar progressBar, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull AppCompatTextView appCompatTextView) {
        this.f16532a = constraintLayout;
        this.f16533b = materialCardView;
        this.f16534c = progressBar;
        this.f16535d = imageView;
        this.f16536e = imageView2;
        this.f = appCompatTextView;
    }

    @NonNull
    public static ItemInstitutionDetailServiceBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.favorite_progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.favorite_progress);
            if (progressBar != null) {
                r02 = R.id.item_image_loved_no;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.item_image_loved_no);
                if (imageView != null) {
                    r02 = R.id.item_image_loved_yes;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.item_image_loved_yes);
                    if (imageView2 != null) {
                        r02 = R.id.service_operation_container;
                        if (((ConstraintLayout) ViewBindings.findChildViewById(view, R.id.service_operation_container)) != null) {
                            r02 = R.id.txt_service_name;
                            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_name);
                            if (appCompatTextView != null) {
                                return new ItemInstitutionDetailServiceBinding((ConstraintLayout) view, materialCardView, progressBar, imageView, imageView2, appCompatTextView);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemInstitutionDetailServiceBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_institution_detail_service, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16532a;
    }
}
