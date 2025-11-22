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
public final class IncludeSystemErrorWithTryBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f15882a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f15883b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f15884c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f15885d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final TextView f15886e;

    public IncludeSystemErrorWithTryBinding(@NonNull MaterialCardView materialCardView, @NonNull Button button, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f15882a = materialCardView;
        this.f15883b = button;
        this.f15884c = imageView;
        this.f15885d = textView;
        this.f15886e = textView2;
    }

    @NonNull
    public static IncludeSystemErrorWithTryBinding bind(@NonNull View view) {
        int r02 = R.id.btn_try_again;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_try_again);
        if (button != null) {
            r02 = R.id.icon_search;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icon_search);
            if (imageView != null) {
                r02 = R.id.txt_system_error;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_system_error);
                if (textView != null) {
                    r02 = R.id.txt_system_error_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_system_error_title);
                    if (textView2 != null) {
                        return new IncludeSystemErrorWithTryBinding((MaterialCardView) view, button, imageView, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static IncludeSystemErrorWithTryBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.include_system_error_with_try, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15882a;
    }
}
