package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.imageview.ShapeableImageView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemConceptServiceListDetailBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16261a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16262b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ShapeableImageView f16263c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16264d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16265e;

    public ItemConceptServiceListDetailBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull ShapeableImageView shapeableImageView, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f16261a = constraintLayout;
        this.f16262b = materialCardView;
        this.f16263c = shapeableImageView;
        this.f16264d = appCompatTextView;
        this.f16265e = appCompatTextView2;
    }

    @NonNull
    public static ItemConceptServiceListDetailBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.img_service_institution_logo;
            ShapeableImageView shapeableImageView = (ShapeableImageView) ViewBindings.findChildViewById(view, R.id.img_service_institution_logo);
            if (shapeableImageView != null) {
                r02 = R.id.txt_service_institution_name;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_institution_name);
                if (appCompatTextView != null) {
                    r02 = R.id.txt_service_name;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_name);
                    if (appCompatTextView2 != null) {
                        return new ItemConceptServiceListDetailBinding((ConstraintLayout) view, materialCardView, shapeableImageView, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemConceptServiceListDetailBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_concept_service_list_detail, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16261a;
    }
}
