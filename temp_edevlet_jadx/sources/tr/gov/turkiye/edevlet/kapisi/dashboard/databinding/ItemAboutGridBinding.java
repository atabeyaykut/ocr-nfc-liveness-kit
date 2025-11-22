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
public final class ItemAboutGridBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16249a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f16250b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f16251c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f16252d;

    public ItemAboutGridBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialCardView materialCardView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f16249a = constraintLayout;
        this.f16250b = materialCardView;
        this.f16251c = imageView;
        this.f16252d = textView;
    }

    @NonNull
    public static ItemAboutGridBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view);
        if (materialCardView != null) {
            r02 = R.id.dashboard_item_logo;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.dashboard_item_logo);
            if (imageView != null) {
                r02 = R.id.dashboard_item_title;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dashboard_item_title);
                if (textView != null) {
                    return new ItemAboutGridBinding((ConstraintLayout) view, materialCardView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemAboutGridBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_about_grid, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16249a;
    }
}
