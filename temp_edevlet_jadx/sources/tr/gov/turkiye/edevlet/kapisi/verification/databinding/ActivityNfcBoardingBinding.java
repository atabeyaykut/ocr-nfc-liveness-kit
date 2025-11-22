package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ActivityNfcBoardingBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17612a;

    public ActivityNfcBoardingBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f17612a = constraintLayout;
    }

    @NonNull
    public static ActivityNfcBoardingBinding bind(@NonNull View view) {
        if (((MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_nfc_boarding)) != null) {
            return new ActivityNfcBoardingBinding((ConstraintLayout) view);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.toolbar_nfc_boarding)));
    }

    @NonNull
    public static ActivityNfcBoardingBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_nfc_boarding, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17612a;
    }
}
