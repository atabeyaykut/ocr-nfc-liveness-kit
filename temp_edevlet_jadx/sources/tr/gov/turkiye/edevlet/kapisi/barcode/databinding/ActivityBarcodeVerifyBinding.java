package tr.gov.turkiye.edevlet.kapisi.barcode.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.fragment.app.FragmentContainerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ActivityBarcodeVerifyBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f15794a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f15795b;

    public ActivityBarcodeVerifyBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialToolbar materialToolbar) {
        this.f15794a = constraintLayout;
        this.f15795b = materialToolbar;
    }

    @NonNull
    public static ActivityBarcodeVerifyBinding bind(@NonNull View view) {
        int r02 = R.id.fragment_container_view;
        if (((FragmentContainerView) ViewBindings.findChildViewById(view, R.id.fragment_container_view)) != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
            if (materialToolbar != null) {
                return new ActivityBarcodeVerifyBinding(constraintLayout, materialToolbar);
            }
            r02 = R.id.toolbar;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityBarcodeVerifyBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_barcode_verify, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f15794a;
    }
}
