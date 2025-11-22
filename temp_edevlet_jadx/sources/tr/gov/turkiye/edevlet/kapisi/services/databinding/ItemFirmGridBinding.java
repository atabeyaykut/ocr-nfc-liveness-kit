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
public final class ItemFirmGridBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16874a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16875b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f16876c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f16877d;

    public ItemFirmGridBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f16874a = constraintLayout;
        this.f16875b = materialCardView;
        this.f16876c = imageView;
        this.f16877d = textView;
    }

    @NonNull
    public static ItemFirmGridBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.firm_category_icon;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.firm_category_icon);
            if (imageView != null) {
                r02 = R.id.firm_category_name;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.firm_category_name);
                if (textView != null) {
                    return new ItemFirmGridBinding((ConstraintLayout) view, materialCardView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemFirmGridBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_firm_grid, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16874a;
    }
}
