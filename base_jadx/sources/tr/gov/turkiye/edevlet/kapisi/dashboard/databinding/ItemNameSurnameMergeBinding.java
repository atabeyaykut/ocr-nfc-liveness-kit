package tr.gov.turkiye.edevlet.kapisi.dashboard.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ItemNameSurnameMergeBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final View f16299a;

    public ItemNameSurnameMergeBinding(@NonNull View view) {
        this.f16299a = view;
    }

    @NonNull
    public static ItemNameSurnameMergeBinding bind(@NonNull View view) {
        int r02 = R.id.content_name;
        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.content_name)) != null) {
            r02 = R.id.title_name;
            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.title_name)) != null) {
                return new ItemNameSurnameMergeBinding(view);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16299a;
    }
}
