package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemDividerBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final View f16276a;

    public ItemDividerBinding(@NonNull View view) {
        this.f16276a = view;
    }

    @NonNull
    public static ItemDividerBinding bind(@NonNull View view) {
        if (ViewBindings.findChildViewById(view, R.id.divider) != null) {
            return new ItemDividerBinding(view);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.divider)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16276a;
    }
}
