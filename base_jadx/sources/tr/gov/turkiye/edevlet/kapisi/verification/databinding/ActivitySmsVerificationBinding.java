package tr.gov.turkiye.edevlet.kapisi.verification.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import tr.gov.turkiye.edevlet.kapisi.R;

/* loaded from: classes3.dex */
public final class ActivitySmsVerificationBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17619a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final TextInputEditText f17620b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final Group f17621c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final Group f17622d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final ProgressBar f17623e;

    @NonNull
    public final ProgressBar f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f17624g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f17625h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final Button f17626i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f17627j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f17628k;

    /* renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f17629l;

    /* renamed from: m, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f17630m;

    /* renamed from: n, reason: collision with root package name */
    @NonNull
    public final TextInputLayout f17631n;

    public ActivitySmsVerificationBinding(@NonNull ConstraintLayout constraintLayout, @NonNull TextInputEditText textInputEditText, @NonNull Group group, @NonNull Group group2, @NonNull ProgressBar progressBar, @NonNull ProgressBar progressBar2, @NonNull Button button, @NonNull ConstraintLayout constraintLayout2, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull MaterialToolbar materialToolbar, @NonNull TextInputLayout textInputLayout) {
        this.f17619a = constraintLayout;
        this.f17620b = textInputEditText;
        this.f17621c = group;
        this.f17622d = group2;
        this.f17623e = progressBar;
        this.f = progressBar2;
        this.f17624g = button;
        this.f17625h = constraintLayout2;
        this.f17626i = button2;
        this.f17627j = textView;
        this.f17628k = textView2;
        this.f17629l = textView3;
        this.f17630m = materialToolbar;
        this.f17631n = textInputLayout;
    }

    @NonNull
    public static ActivitySmsVerificationBinding bind(@NonNull View view) {
        int r12 = R.id.edit_sms_code;
        TextInputEditText textInputEditText = (TextInputEditText) ViewBindings.findChildViewById(view, R.id.edit_sms_code);
        if (textInputEditText != null) {
            r12 = R.id.group_sms_resend;
            Group group = (Group) ViewBindings.findChildViewById(view, R.id.group_sms_resend);
            if (group != null) {
                r12 = R.id.group_sms_validation;
                Group group2 = (Group) ViewBindings.findChildViewById(view, R.id.group_sms_validation);
                if (group2 != null) {
                    r12 = R.id.progress_bar;
                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress_bar);
                    if (progressBar != null) {
                        r12 = R.id.progressBar_page;
                        ProgressBar progressBar2 = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progressBar_page);
                        if (progressBar2 != null) {
                            r12 = R.id.sms_resend_button;
                            Button button = (Button) ViewBindings.findChildViewById(view, R.id.sms_resend_button);
                            if (button != null) {
                                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                                r12 = R.id.sms_verify_button;
                                Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.sms_verify_button);
                                if (button2 != null) {
                                    r12 = R.id.text_view_phone_number;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.text_view_phone_number);
                                    if (textView != null) {
                                        r12 = R.id.text_view_progress;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.text_view_progress);
                                        if (textView2 != null) {
                                            r12 = R.id.text_view_progress_title;
                                            if (((TextView) ViewBindings.findChildViewById(view, R.id.text_view_progress_title)) != null) {
                                                r12 = R.id.text_view_time_over;
                                                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.text_view_time_over);
                                                if (textView3 != null) {
                                                    r12 = R.id.toolbar_sms_verification;
                                                    MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_sms_verification);
                                                    if (materialToolbar != null) {
                                                        r12 = R.id.txt_input_sms_code;
                                                        TextInputLayout textInputLayout = (TextInputLayout) ViewBindings.findChildViewById(view, R.id.txt_input_sms_code);
                                                        if (textInputLayout != null) {
                                                            return new ActivitySmsVerificationBinding(constraintLayout, textInputEditText, group, group2, progressBar, progressBar2, button, constraintLayout, button2, textView, textView2, textView3, materialToolbar, textInputLayout);
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
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r12)));
    }

    @NonNull
    public static ActivitySmsVerificationBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_sms_verification, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f17619a;
    }
}
