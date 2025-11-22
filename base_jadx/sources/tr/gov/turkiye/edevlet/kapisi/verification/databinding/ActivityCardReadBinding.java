package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import com.google.android.material.appbar.MaterialToolbar;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ActivityCardReadBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17606a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17607b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f17608c;

    public ActivityCardReadBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ConstraintLayout constraintLayout2, @NonNull MaterialToolbar materialToolbar) {
        this.f17606a = constraintLayout;
        this.f17607b = constraintLayout2;
        this.f17608c = materialToolbar;
    }

    @NonNull
    public static ActivityCardReadBinding bind(@NonNull View view) {
        int r02 = R.id.animation_view;
        if (((LottieAnimationView) ViewBindings.findChildViewById(view, R.id.animation_view)) != null) {
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_id_scan_page);
            if (materialToolbar == null) {
                r02 = R.id.toolbar_id_scan_page;
            } else if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_demo_reference)) == null) {
                r02 = R.id.txt_demo_reference;
            } else {
                if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_demo_subtitle)) != null) {
                    return new ActivityCardReadBinding(constraintLayout, constraintLayout, materialToolbar);
                }
                r02 = R.id.txt_demo_subtitle;
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityCardReadBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_card_read, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17606a;
    }
}
