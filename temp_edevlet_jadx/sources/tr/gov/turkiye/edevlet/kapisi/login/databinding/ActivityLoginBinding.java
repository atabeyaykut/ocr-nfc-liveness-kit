package tr.gov.turkiye.edevlet.kapisi.login.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorBinding;

/* loaded from: classes3.dex */
public final class ActivityLoginBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16560a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16561b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16562c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16563d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final IncludeSystemErrorBinding f16564e;

    @NonNull
    public final WebView f;

    public ActivityLoginBinding(@NonNull ConstraintLayout constraintLayout, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull ConstraintLayout constraintLayout2, @NonNull ProgressBar progressBar, @NonNull IncludeSystemErrorBinding includeSystemErrorBinding, @NonNull WebView webView) {
        this.f16560a = constraintLayout;
        this.f16561b = includeNoConnectionBinding;
        this.f16562c = constraintLayout2;
        this.f16563d = progressBar;
        this.f16564e = includeSystemErrorBinding;
        this.f = webView;
    }

    @NonNull
    public static ActivityLoginBinding bind(@NonNull View view) {
        int r02 = R.id.login_connection_view;
        View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.login_connection_view);
        if (viewFindChildViewById != null) {
            IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
            ConstraintLayout constraintLayout = (ConstraintLayout) view;
            r02 = R.id.login_progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.login_progress);
            if (progressBar != null) {
                r02 = R.id.login_system_error;
                View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.login_system_error);
                if (viewFindChildViewById2 != null) {
                    IncludeSystemErrorBinding includeSystemErrorBindingBind = IncludeSystemErrorBinding.bind(viewFindChildViewById2);
                    r02 = R.id.login_webView;
                    WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.login_webView);
                    if (webView != null) {
                        return new ActivityLoginBinding(constraintLayout, includeNoConnectionBindingBind, constraintLayout, progressBar, includeSystemErrorBindingBind, webView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityLoginBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_login, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16560a;
    }
}
