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
public final class ItemDashboardListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16270a;

    public ItemDashboardListBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f16270a = constraintLayout;
    }

    @NonNull
    public static ItemDashboardListBinding bind(@NonNull View view) {
        int r02 = R.id.card_view;
        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_view)) != null) {
            r02 = R.id.img_service_institution_logo;
            if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_service_institution_logo)) != null) {
                r02 = R.id.txt_service_institution_name;
                if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_service_institution_name)) != null) {
                    r02 = R.id.txt_service_name;
                    if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_service_name)) != null) {
                        return new ItemDashboardListBinding((ConstraintLayout) view);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemDashboardListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_dashboard_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16270a;
    }
}
