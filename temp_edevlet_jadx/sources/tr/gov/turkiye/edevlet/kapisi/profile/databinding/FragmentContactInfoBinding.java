package tr.gov.turkiye.edevlet.kapisi.profile.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.widget.NestedScrollView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.card.MaterialCardView;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class FragmentContactInfoBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16607a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final LinearLayout f16608b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16609c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f16610d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f16611e;

    @NonNull
    public final Button f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16612g;

    /* renamed from: h, reason: collision with root package name */
    @NonNull
    public final NestedScrollView f16613h;

    /* renamed from: i, reason: collision with root package name */
    @NonNull
    public final TextView f16614i;

    /* renamed from: j, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16615j;

    /* renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f16616k;

    /* renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f16617l;

    /* renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f16618m;

    /* renamed from: n, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f16619n;

    /* renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f16620o;

    public FragmentContactInfoBinding(@NonNull ConstraintLayout constraintLayout, @NonNull LinearLayout linearLayout, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull ConstraintLayout constraintLayout2, @NonNull NestedScrollView nestedScrollView, @NonNull TextView textView, @NonNull ProgressBar progressBar, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull TextView textView5) {
        this.f16607a = constraintLayout;
        this.f16608b = linearLayout;
        this.f16609c = includeNoConnectionBinding;
        this.f16610d = button;
        this.f16611e = button2;
        this.f = button3;
        this.f16612g = constraintLayout2;
        this.f16613h = nestedScrollView;
        this.f16614i = textView;
        this.f16615j = progressBar;
        this.f16616k = textView2;
        this.f16617l = textView3;
        this.f16618m = textView4;
        this.f16619n = includeSystemErrorBinding;
        this.f16620o = textView5;
    }

    @NonNull
    public static FragmentContactInfoBinding bind(@NonNull View view) {
        int r12 = R.id.container_id_verification;
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.container_id_verification);
        if (linearLayout != null) {
            r12 = R.id.no_connection_view;
            View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.no_connection_view);
            if (viewFindChildViewById != null) {
                IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                r12 = R.id.profile_btn_email_update;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.profile_btn_email_update);
                if (button != null) {
                    r12 = R.id.profile_btn_id_verification;
                    Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.profile_btn_id_verification);
                    if (button2 != null) {
                        r12 = R.id.profile_btn_refresh_contact;
                        Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.profile_btn_refresh_contact);
                        if (button3 != null) {
                            ConstraintLayout constraintLayout = (ConstraintLayout) view;
                            r12 = R.id.profile_container;
                            NestedScrollView nestedScrollView = (NestedScrollView) ViewBindings.findChildViewById(view, R.id.profile_container);
                            if (nestedScrollView != null) {
                                r12 = R.id.profile_cv_contact;
                                if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_contact)) != null) {
                                    r12 = R.id.profile_cv_email_contact;
                                    if (((MaterialCardView) ViewBindings.findChildViewById(view, R.id.profile_cv_email_contact)) != null) {
                                        r12 = R.id.profile_email_status;
                                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.profile_email_status);
                                        if (textView != null) {
                                            r12 = R.id.profile_fragment_progressBar;
                                            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.profile_fragment_progressBar);
                                            if (progressBar != null) {
                                                r12 = R.id.profile_phone_status;
                                                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_phone_status);
                                                if (textView2 != null) {
                                                    r12 = R.id.profile_txt_info_contact;
                                                    if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_info_contact)) != null) {
                                                        r12 = R.id.profile_txt_info_email;
                                                        if (((TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_info_email)) != null) {
                                                            r12 = R.id.profile_txt_mail;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_mail);
                                                            if (textView3 != null) {
                                                                r12 = R.id.profile_txt_tel;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.profile_txt_tel);
                                                                if (textView4 != null) {
                                                                    r12 = R.id.system_error_view;
                                                                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.system_error_view);
                                                                    if (viewFindChildViewById2 != null) {
                                                                        IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                                                                        r12 = R.id.text_id_verification_page;
                                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.text_id_verification_page);
                                                                        if (textView5 != null) {
                                                                            return new FragmentContactInfoBinding(constraintLayout, linearLayout, includeNoConnectionBindingBind, button, button2, button3, constraintLayout, nestedScrollView, textView, progressBar, textView2, textView3, textView4, includeSystemErrorBindingBind, textView5);
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
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r12)));
    }

    @NonNull
    public static FragmentContactInfoBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.fragment_contact_info, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16607a;
    }
}
