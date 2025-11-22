package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ActivityCardSmsErrorBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17609a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f17610b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f17611c;

    public ActivityCardSmsErrorBinding(@NonNull ConstraintLayout constraintLayout, @NonNull MaterialToolbar materialToolbar, @NonNull TextView textView) {
        this.f17609a = constraintLayout;
        this.f17610b = materialToolbar;
        this.f17611c = textView;
    }

    @NonNull
    public static ActivityCardSmsErrorBinding bind(@NonNull View view) {
        int r02 = R.id.card_result_message_container;
        if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_result_message_container)) != null) {
            r02 = R.id.img_result_icon;
            if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_result_icon)) != null) {
                r02 = R.id.toolbar_card_error;
                MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_card_error);
                if (materialToolbar != null) {
                    r02 = R.id.txt_result_message;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_result_message);
                    if (textView != null) {
                        return new ActivityCardSmsErrorBinding((ConstraintLayout) view, materialToolbar, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityCardSmsErrorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_card_sms_error, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17609a;
    }
}
