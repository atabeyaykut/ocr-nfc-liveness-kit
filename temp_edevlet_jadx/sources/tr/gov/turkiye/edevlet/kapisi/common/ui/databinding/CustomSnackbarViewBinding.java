package tr.gov.turkiye.edevlet.kapisi.common.ui.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.viewbinding.ViewBinding;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.view.CustomSnackbarView;

/* loaded from: classes3.dex */
public final class CustomSnackbarViewBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final CustomSnackbarView f15862a;

    public CustomSnackbarViewBinding(@NonNull CustomSnackbarView customSnackbarView) {
        this.f15862a = customSnackbarView;
    }

    @NonNull
    public static CustomSnackbarViewBinding bind(@NonNull View view) {
        if (view != null) {
            return new CustomSnackbarViewBinding((CustomSnackbarView) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static CustomSnackbarViewBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.custom_snackbar_view, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15862a;
    }
}
