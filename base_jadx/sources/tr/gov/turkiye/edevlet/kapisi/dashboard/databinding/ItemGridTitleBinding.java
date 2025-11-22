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
public final class ItemGridTitleBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16287a;

    public ItemGridTitleBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f16287a = constraintLayout;
    }

    @NonNull
    public static ItemGridTitleBinding bind(@NonNull View view) {
        int r02 = R.id.header_more;
        if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.header_more)) != null) {
            r02 = R.id.header_title;
            if (((AppCompatTextView) ViewBindings.findChildViewById(view, R.id.header_title)) != null) {
                return new ItemGridTitleBinding((ConstraintLayout) view);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ItemGridTitleBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.item_grid_title, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16287a;
    }
}
