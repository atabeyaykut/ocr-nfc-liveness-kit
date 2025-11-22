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
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemMyCityListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16293a;

    public ItemMyCityListBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f16293a = constraintLayout;
    }

    @NonNull
    public static ItemMyCityListBinding bind(@NonNull View view) {
        int r02 = R.id.img_check;
        if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_check)) != null) {
            r02 = R.id.txt_cityName;
            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_cityName)) != null) {
                return new ItemMyCityListBinding((ConstraintLayout) view);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemMyCityListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_my_city_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16293a;
    }
}
