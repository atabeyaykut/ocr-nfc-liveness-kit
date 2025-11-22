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
public final class ItemDiscoverDashboardItemBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16271a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16272b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f16273c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16274d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16275e;

    public ItemDiscoverDashboardItemBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull ImageView imageView, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f16271a = constraintLayout;
        this.f16272b = materialCardView;
        this.f16273c = imageView;
        this.f16274d = appCompatTextView;
        this.f16275e = appCompatTextView2;
    }

    @NonNull
    public static ItemDiscoverDashboardItemBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.img_dashboard_item_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_dashboard_item_logo);
            if (imageView != null) {
                r02 = R.id.txt_dashboard_item_explanation;
                AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_dashboard_item_explanation);
                if (appCompatTextView != null) {
                    r02 = R.id.txt_dashboard_item_name;
                    AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_dashboard_item_name);
                    if (appCompatTextView2 != null) {
                        return new ItemDiscoverDashboardItemBinding((ConstraintLayout) view, materialCardView, imageView, appCompatTextView, appCompatTextView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemDiscoverDashboardItemBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_discover_dashboard_item, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16271a;
    }
}
