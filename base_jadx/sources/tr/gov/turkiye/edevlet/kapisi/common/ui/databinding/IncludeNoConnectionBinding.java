package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class IncludeNoConnectionBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f15873a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f15874b;

    public IncludeNoConnectionBinding(@NonNull MaterialCardView materialCardView, @NonNull Button button) {
        this.f15873a = materialCardView;
        this.f15874b = button;
    }

    @NonNull
    public static IncludeNoConnectionBinding bind(@NonNull View view) {
        int r02 = R.id.btn_no_connection;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_no_connection);
        if (button != null) {
            r02 = R.id.icon_search;
            if (((ImageView) ViewBindings.findChildViewById(view, R.id.icon_search)) != null) {
                r02 = R.id.txt_no_connection;
                if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_no_connection)) != null) {
                    r02 = R.id.txt_no_connection_title;
                    if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_no_connection_title)) != null) {
                        return new IncludeNoConnectionBinding((MaterialCardView) view, button);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static IncludeNoConnectionBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.include_no_connection, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15873a;
    }
}
