package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.airbnb.lottie.LottieAnimationView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class FragmentCardDemoBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17634a;

    public FragmentCardDemoBinding(@NonNull ConstraintLayout constraintLayout) {
        this.f17634a = constraintLayout;
    }

    @NonNull
    public static FragmentCardDemoBinding bind(@NonNull View view) {
        int r02 = R.id.animation_view;
        if (((LottieAnimationView) ViewBindings.findChildViewById(view, R.id.animation_view)) != null) {
            r02 = R.id.btn_start_scan_card;
            if (((Button) ViewBindings.findChildViewById(view, R.id.btn_start_scan_card)) != null) {
                r02 = R.id.txt_demo_reference;
                if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_demo_reference)) != null) {
                    r02 = R.id.txt_demo_subtitle;
                    if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_demo_subtitle)) != null) {
                        r02 = R.id.txt_demo_title;
                        if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_demo_title)) != null) {
                            return new FragmentCardDemoBinding((ConstraintLayout) view);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static FragmentCardDemoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_card_demo, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17634a;
    }
}
