package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatEditText;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class IncludeCitySearchBarBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f15871a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final AppCompatEditText f15872b;

    public IncludeCitySearchBarBinding(@NonNull MaterialCardView materialCardView, @NonNull AppCompatEditText appCompatEditText) {
        this.f15871a = materialCardView;
        this.f15872b = appCompatEditText;
    }

    @NonNull
    public static IncludeCitySearchBarBinding bind(@NonNull View view) {
        int r02 = R.id.icon_close;
        if (((ImageButton) ViewBindings.findChildViewById(view, R.id.icon_close)) != null) {
            r02 = R.id.icon_search;
            if (((ImageView) ViewBindings.findChildViewById(view, R.id.icon_search)) != null) {
                r02 = R.id.search_text;
                AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, R.id.search_text);
                if (appCompatEditText != null) {
                    return new IncludeCitySearchBarBinding((MaterialCardView) view, appCompatEditText);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static IncludeCitySearchBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.include_city_search_bar, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15871a;
    }
}
