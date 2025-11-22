package tr.gov.turkiye.edevlet.kapisi.search.databinding;

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
public final class ItemSearchHistoryBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16749a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16750b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppCompatTextView f16751c;

    public ItemSearchHistoryBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull AppCompatTextView appCompatTextView) {
        this.f16749a = constraintLayout;
        this.f16750b = constraintLayout2;
        this.f16751c = appCompatTextView;
    }

    @NonNull
    public static ItemSearchHistoryBinding bind(@NonNull View view) {
        int r02 = R.id.divider;
        if (ViewBindings.findChildViewById(view, R.id.divider) != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            AppCompatTextView appCompatTextView = (AppCompatTextView) ViewBindings.findChildViewById(view, R.id.txt_history_item);
            if (appCompatTextView != null) {
                return new ItemSearchHistoryBinding(constraintLayout, constraintLayout, appCompatTextView);
            }
            r02 = R.id.txt_history_item;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemSearchHistoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_search_history, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16749a;
    }
}
