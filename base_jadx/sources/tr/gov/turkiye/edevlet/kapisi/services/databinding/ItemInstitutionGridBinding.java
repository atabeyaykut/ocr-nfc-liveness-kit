package tr.gov.turkiye.edevlet.kapisi.services.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemInstitutionGridBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16878a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16879b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f16880c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f16881d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f16882e;

    public ItemInstitutionGridBinding(@NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView) {
        this.f16878a = constraintLayout;
        this.f16879b = materialCardView;
        this.f16880c = textView;
        this.f16881d = imageView;
        this.f16882e = textView2;
    }

    @NonNull
    public static ItemInstitutionGridBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.institution_category_detail;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.institution_category_detail);
            if (textView != null) {
                r02 = R.id.institution_category_icon;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.institution_category_icon);
                if (imageView != null) {
                    r02 = R.id.institution_category_name;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.institution_category_name);
                    if (textView2 != null) {
                        return new ItemInstitutionGridBinding(imageView, textView, textView2, (ConstraintLayout) view, materialCardView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemInstitutionGridBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_institution_grid, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16878a;
    }
}
