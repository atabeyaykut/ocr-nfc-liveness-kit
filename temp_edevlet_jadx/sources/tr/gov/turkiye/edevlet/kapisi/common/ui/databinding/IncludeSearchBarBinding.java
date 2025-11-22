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
public final class IncludeSearchBarBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f15875a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ImageButton f15876b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final AppCompatEditText f15877c;

    public IncludeSearchBarBinding(@NonNull MaterialCardView materialCardView, @NonNull ImageButton imageButton, @NonNull AppCompatEditText appCompatEditText) {
        this.f15875a = materialCardView;
        this.f15876b = imageButton;
        this.f15877c = appCompatEditText;
    }

    @NonNull
    public static IncludeSearchBarBinding bind(@NonNull View view) {
        int r02 = R.id.icon_close;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.icon_close);
        if (imageButton != null) {
            r02 = R.id.icon_search;
            if (((ImageView) ViewBindings.findChildViewById(view, R.id.icon_search)) != null) {
                r02 = R.id.search_text;
                AppCompatEditText appCompatEditText = (AppCompatEditText) ViewBindings.findChildViewById(view, R.id.search_text);
                if (appCompatEditText != null) {
                    return new IncludeSearchBarBinding((MaterialCardView) view, imageButton, appCompatEditText);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static IncludeSearchBarBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.include_search_bar, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15875a;
    }
}
