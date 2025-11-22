package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
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
public final class ActivityCardErrorBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17596a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17597b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f17598c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f17599d;

    public ActivityCardErrorBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull MaterialToolbar materialToolbar, @NonNull TextView textView) {
        this.f17596a = constraintLayout;
        this.f17597b = button;
        this.f17598c = materialToolbar;
        this.f17599d = textView;
    }

    @NonNull
    public static ActivityCardErrorBinding bind(@NonNull View view) {
        int r02 = R.id.btn_result_page_extra_operation;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_result_page_extra_operation);
        if (button != null) {
            r02 = R.id.card_extra_operation_container;
            if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_extra_operation_container)) != null) {
                r02 = R.id.card_result_message_container;
                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_result_message_container)) != null) {
                    r02 = R.id.container_id_verification;
                    if (((LinearLayout) ViewBindings.findChildViewById(view, R.id.container_id_verification)) != null) {
                        r02 = R.id.img_result_icon;
                        if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_result_icon)) != null) {
                            r02 = R.id.toolbar_card_error;
                            MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_card_error);
                            if (materialToolbar != null) {
                                r02 = R.id.txt_extra_operation_result;
                                if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_extra_operation_result)) != null) {
                                    r02 = R.id.txt_extra_operation_subtitle;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_extra_operation_subtitle);
                                    if (textView != null) {
                                        r02 = R.id.txt_extra_operation_title;
                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_extra_operation_title)) != null) {
                                            r02 = R.id.txt_result_message;
                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_result_message)) != null) {
                                                return new ActivityCardErrorBinding((ConstraintLayout) view, button, materialToolbar, textView);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityCardErrorBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_card_error, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17596a;
    }
}
