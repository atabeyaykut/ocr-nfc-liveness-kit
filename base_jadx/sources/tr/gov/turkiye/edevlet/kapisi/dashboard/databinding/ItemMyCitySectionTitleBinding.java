package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

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
public final class ItemMyCitySectionTitleBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16294a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16295b;

    public ItemMyCitySectionTitleBinding(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatTextView appCompatTextView) {
        this.f16294a = constraintLayout;
        this.f16295b = appCompatTextView;
    }

    @NonNull
    public static ItemMyCitySectionTitleBinding bind(@NonNull View view) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.section_title);
        if (appCompatTextView != null) {
            return new ItemMyCitySectionTitleBinding((ConstraintLayout) view, appCompatTextView);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.section_title)));
    }

    @NonNull
    public static ItemMyCitySectionTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_my_city_section_title, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16294a;
    }
}
