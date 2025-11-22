package tr.gov.turkiye.edevlet.kapisi.servicepage.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.ProgressBar;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.google.android.material.appbar.MaterialToolbar;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeNoConnectionBinding;
import tr.gov.turkiye.edevlet.kapisi.common.ui.databinding.IncludeSystemErrorWithTryBinding;

/* loaded from: classes3.dex */
public final class ActivityServicePageBinding implements ViewBinding {

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16824a;

    /* renamed from: b, reason: collision with root package name */
    @NonNull
    public final ProgressBar f16825b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaterialToolbar f16826c;

    /* renamed from: d, reason: collision with root package name */
    @NonNull
    public final ConstraintLayout f16827d;

    /* renamed from: e, reason: collision with root package name */
    @NonNull
    public final IncludeNoConnectionBinding f16828e;

    @NonNull
    public final IncludeSystemErrorWithTryBinding f;

    /* renamed from: g, reason: collision with root package name */
    @NonNull
    public final WebView f16829g;

    public ActivityServicePageBinding(@NonNull ConstraintLayout constraintLayout, @NonNull ProgressBar progressBar, @NonNull MaterialToolbar materialToolbar, @NonNull ConstraintLayout constraintLayout2, @NonNull IncludeNoConnectionBinding includeNoConnectionBinding, @NonNull IncludeSystemErrorWithTryBinding includeSystemErrorWithTryBinding, @NonNull WebView webView) {
        this.f16824a = constraintLayout;
        this.f16825b = progressBar;
        this.f16826c = materialToolbar;
        this.f16827d = constraintLayout2;
        this.f16828e = includeNoConnectionBinding;
        this.f = includeSystemErrorWithTryBinding;
        this.f16829g = webView;
    }

    @NonNull
    public static ActivityServicePageBinding bind(@NonNull View view) {
        int r02 = R.id.progress_service_page;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress_service_page);
        if (progressBar != null) {
            r02 = R.id.toolbar_service_page;
            MaterialToolbar materialToolbar = (MaterialToolbar) ViewBindings.findChildViewById(view, R.id.toolbar_service_page);
            if (materialToolbar != null) {
                ConstraintLayout constraintLayout = (ConstraintLayout) view;
                r02 = R.id.web_no_connection_view;
                View viewFindChildViewById = ViewBindings.findChildViewById(view, R.id.web_no_connection_view);
                if (viewFindChildViewById != null) {
                    IncludeNoConnectionBinding includeNoConnectionBindingBind = IncludeNoConnectionBinding.bind(viewFindChildViewById);
                    r02 = R.id.web_system_error;
                    View viewFindChildViewById2 = ViewBindings.findChildViewById(view, R.id.web_system_error);
                    if (viewFindChildViewById2 != null) {
                        IncludeSystemErrorWithTryBinding includeSystemErrorWithTryBindingBind = IncludeSystemErrorWithTryBinding.bind(viewFindChildViewById2);
                        r02 = R.id.wv_service_page;
                        WebView webView = (WebView) ViewBindings.findChildViewById(view, R.id.wv_service_page);
                        if (webView != null) {
                            return new ActivityServicePageBinding(constraintLayout, progressBar, materialToolbar, constraintLayout, includeNoConnectionBindingBind, includeSystemErrorWithTryBindingBind, webView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(r02)));
    }

    @NonNull
    public static ActivityServicePageBinding inflate(@NonNull LayoutInflater layoutInflater) {
        return bind(layoutInflater.inflate(R.layout.activity_service_page, (ViewGroup) null, false));
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public final View getRoot() {
        return this.f16824a;
    }
}
