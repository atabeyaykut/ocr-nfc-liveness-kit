package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

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
public final class ItemDashboardGridBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16266a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16267b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f16268c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f16269d;

    public ItemDashboardGridBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f16266a = constraintLayout;
        this.f16267b = materialCardView;
        this.f16268c = imageView;
        this.f16269d = textView;
    }

    @NonNull
    public static ItemDashboardGridBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.dashboard_item_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dashboard_item_logo);
            if (imageView != null) {
                r02 = R.id.dashboard_item_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dashboard_item_title);
                if (textView != null) {
                    return new ItemDashboardGridBinding((ConstraintLayout) view, materialCardView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemDashboardGridBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_dashboard_grid, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16266a;
    }
}
