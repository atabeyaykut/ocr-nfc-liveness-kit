package tr.gov.turkiye.edevlet.kapisi.search.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemSearchDeleteHistoryBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16742a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final AppCompatImageView f16743b;

    public ItemSearchDeleteHistoryBinding(@NonNull ConstraintLayout constraintLayout, @NonNull AppCompatImageView appCompatImageView) {
        this.f16742a = constraintLayout;
        this.f16743b = appCompatImageView;
    }

    @NonNull
    public static ItemSearchDeleteHistoryBinding bind(@NonNull View view) {
        int r02 = R.id.btn_delete_history;
        AppCompatImageView appCompatImageView = (AppCompatImageView) ViewBindings.findChildViewById(view, R.id.btn_delete_history);
        if (appCompatImageView != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.title_history_delete)) != null) {
                return new ItemSearchDeleteHistoryBinding(constraintLayout, appCompatImageView);
            }
            r02 = R.id.title_history_delete;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemSearchDeleteHistoryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_search_delete_history, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16742a;
    }
}
