package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

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
public final class ActivityVerificationBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17632a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f17633b;

    public ActivityVerificationBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialToolbar materialToolbar) {
        this.f17632a = constraintLayout;
        this.f17633b = materialToolbar;
    }

    @NonNull
    public static ActivityVerificationBinding bind(@NonNull View view) {
        int r02 = R.id.fragment_container_view;
        if (((FragmentContainerView) ViewBindings.findChildViewById(view, R.id.fragment_container_view)) != null) {
            r02 = R.id.toolbar_verification_page;
            MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_verification_page);
            if (materialToolbar != null) {
                return new ActivityVerificationBinding((ConstraintLayout) view, materialToolbar);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityVerificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_verification, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17632a;
    }
}
