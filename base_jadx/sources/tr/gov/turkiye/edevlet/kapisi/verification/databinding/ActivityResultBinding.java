package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
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
public final class ActivityResultBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17613a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final Button f17614b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f17615c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final MaterialCardView f17616d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f17617e;

    @NonNull
    public final TextView f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f17618g;

    public ActivityResultBinding(@NonNull ConstraintLayout constraintLayout, @NonNull Button button, @NonNull Button button2, @NonNull MaterialCardView materialCardView, @NonNull MaterialToolbar materialToolbar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f17613a = constraintLayout;
        this.f17614b = button;
        this.f17615c = button2;
        this.f17616d = materialCardView;
        this.f17617e = materialToolbar;
        this.f = textView;
        this.f17618g = textView2;
    }

    @NonNull
    public static ActivityResultBinding bind(@NonNull View view) {
        int r02 = R.id.btn_result_page_extra_operation;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_result_page_extra_operation);
        if (button != null) {
            r02 = R.id.btn_result_page_next;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_result_page_next);
            if (button2 != null) {
                r02 = R.id.card_extra_operation_container;
                MaterialCardView materialCardView = (MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_extra_operation_container);
                if (materialCardView != null) {
                    r02 = R.id.card_result_message_container;
                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.card_result_message_container)) != null) {
                        r02 = R.id.container_id_verification;
                        if (((LinearLayout) ViewBindings.findChildViewById(view, R.id.container_id_verification)) != null) {
                            r02 = R.id.img_arrow_next;
                            if (((ImageView) ViewBindings.findChildViewById(view, R.id.img_arrow_next)) != null) {
                                r02 = R.id.img_result_icon;
                                if (((AppCompatImageView) ViewBindings.findChildViewById(view, R.id.img_result_icon)) != null) {
                                    r02 = R.id.toolbar_verification_result;
                                    MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_verification_result);
                                    if (materialToolbar != null) {
                                        r02 = R.id.txt_extra_operation_question;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_extra_operation_question);
                                        if (textView != null) {
                                            r02 = R.id.txt_extra_operation_subtitle;
                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_extra_operation_subtitle)) != null) {
                                                r02 = R.id.txt_extra_operation_title;
                                                if (((TextView) ViewBindings.findChildViewById(view, R.id.txt_extra_operation_title)) != null) {
                                                    r02 = R.id.txt_result_message;
                                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_result_message);
                                                    if (textView2 != null) {
                                                        return new ActivityResultBinding((ConstraintLayout) view, button, button2, materialCardView, materialToolbar, textView, textView2);
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
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityResultBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_result, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17613a;
    }
}
