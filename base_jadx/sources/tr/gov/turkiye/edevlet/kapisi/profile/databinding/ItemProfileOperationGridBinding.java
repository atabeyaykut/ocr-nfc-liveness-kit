package tr.gov.turkiye.edevlet.kapisi.profile.databinding;

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
public final class ItemProfileOperationGridBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16655a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16656b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f16657c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f16658d;

    public ItemProfileOperationGridBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f16655a = constraintLayout;
        this.f16656b = materialCardView;
        this.f16657c = imageView;
        this.f16658d = textView;
    }

    @NonNull
    public static ItemProfileOperationGridBinding bind(@NonNull View view) {
        int r02 = R.id.card_operation_item;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_operation_item);
        if (materialCardView != null) {
            r02 = R.id.profile_item_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.profile_item_logo);
            if (imageView != null) {
                r02 = R.id.profile_item_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.profile_item_title);
                if (textView != null) {
                    return new ItemProfileOperationGridBinding((ConstraintLayout) view, materialCardView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemProfileOperationGridBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_profile_operation_grid, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16655a;
    }
}
