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
public final class ItemConceptServiceListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16260a;

    public ItemConceptServiceListBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f16260a = constraintLayout;
    }

    @NonNull
    public static ItemConceptServiceListBinding bind(@NonNull View view) {
        int r02 = R.id.img_service_institution_logo;
        if (((ShapeableImageView) ViewBindings.findChildViewById(view, R.id.img_service_institution_logo)) != null) {
            r02 = R.id.logo_container;
            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.logo_container)) != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_institution_name)) == null) {
                    r02 = R.id.txt_service_institution_name;
                } else {
                    if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_name)) != null) {
                        return new ItemConceptServiceListBinding(constraintLayout);
                    }
                    r02 = R.id.txt_service_name;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemConceptServiceListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_concept_service_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16260a;
    }
}
