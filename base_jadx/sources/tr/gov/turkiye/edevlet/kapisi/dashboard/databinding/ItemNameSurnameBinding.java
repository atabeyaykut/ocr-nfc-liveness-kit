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
public final class ItemNameSurnameBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16296a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16297b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16298c;

    public ItemNameSurnameBinding(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatTextView appCompatTextView, @NonNull AppCompatTextView appCompatTextView2) {
        this.f16296a = constraintLayout;
        this.f16297b = appCompatTextView;
        this.f16298c = appCompatTextView2;
    }

    @NonNull
    public static ItemNameSurnameBinding bind(@NonNull View view) {
        int r02 = R.id.content_name;
        AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.content_name);
        if (appCompatTextView != null) {
            r02 = R.id.title_name;
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.title_name);
            if (appCompatTextView2 != null) {
                return new ItemNameSurnameBinding((ConstraintLayout) view, appCompatTextView, appCompatTextView2);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemNameSurnameBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_name_surname, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16296a;
    }
}
