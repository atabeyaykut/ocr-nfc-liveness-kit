package tr.gov.turkiye.edevlet.kapisi.services.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemCityListBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16865a;

    public ItemCityListBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f16865a = constraintLayout;
    }

    @NonNull
    public static ItemCityListBinding bind(@NonNull View view) {
        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_cityName)) != null) {
            return new ItemCityListBinding((ConstraintLayout) view);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.txt_cityName)));
    }

    @NonNull
    public static ItemCityListBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_city_list, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16865a;
    }
}
