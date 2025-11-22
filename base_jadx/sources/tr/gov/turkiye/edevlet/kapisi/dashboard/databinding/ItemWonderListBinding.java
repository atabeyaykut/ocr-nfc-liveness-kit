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
public final class ItemWonderListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16310a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16311b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16312c;

    public ItemWonderListBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull AppCompatTextView appCompatTextView) {
        this.f16310a = constraintLayout;
        this.f16311b = materialCardView;
        this.f16312c = appCompatTextView;
    }

    @NonNull
    public static ItemWonderListBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.img_arrow;
            if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_arrow)) != null) {
                r02 = R.id.txt_service_name;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_service_name);
                if (appCompatTextView != null) {
                    return new ItemWonderListBinding((ConstraintLayout) view, materialCardView, appCompatTextView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemWonderListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_wonder_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16310a;
    }
}
