package pg;

import android.annotation.TargetApi;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Toast;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;

/* loaded from: classes3.dex */
public final class r extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ServicePageActivity f13221a;

    public r(ServicePageActivity servicePageActivity) {
        this.f13221a = servicePageActivity;
    }

    @Override // android.webkit.WebViewClient
    public final void doUpdateVisitedHistory(WebView webView, String str, boolean z10) {
        super.doUpdateVisitedHistory(webView, str, z10);
        ServicePageActivity servicePageActivity = this.f13221a;
        if (servicePageActivity.G) {
            servicePageActivity.G = false;
            if (servicePageActivity.C) {
                servicePageActivity.v().f16829g.clearHistory();
            }
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView view, String url) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(url, "url");
        super.onPageFinished(view, url);
        yd.a.f19652a.c("finish ".concat(url), new Object[0]);
        ServicePageActivity servicePageActivity = this.f13221a;
        if (servicePageActivity.f16814x) {
            servicePageActivity.F();
        }
        if (servicePageActivity.A) {
            servicePageActivity.v().f16829g.evaluateJavascript(servicePageActivity.f16805p + '(' + servicePageActivity.f16807q + ')', null);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView view, String url, Bitmap bitmap) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(url, "url");
        super.onPageStarted(view, url, bitmap);
        yd.a.f19652a.c("start ".concat(url), new Object[0]);
        ServicePageActivity servicePageActivity = this.f13221a;
        if (servicePageActivity.f16814x) {
            return;
        }
        servicePageActivity.J();
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int r6, String errorDescription, String failingUrl) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(errorDescription, "errorDescription");
        kotlin.jvm.internal.h.f(failingUrl, "failingUrl");
        yd.a.f19652a.c("Error 0 ".concat(failingUrl), new Object[0]);
        if (!kotlin.jvm.internal.h.a(errorDescription, "net::ERR_CACHE_MISS")) {
            int r02 = ServicePageActivity.s0;
            ServicePageActivity servicePageActivity = this.f13221a;
            servicePageActivity.getClass();
            if (!(mc.n.G(failingUrl, ".png", false) || mc.n.G(failingUrl, ".webp", false) || mc.n.G(failingUrl, ".jpg", false) || mc.n.G(failingUrl, ".jpeg", false))) {
                servicePageActivity.f16814x = true;
                view.loadUrl("about:blank");
                servicePageActivity.F();
            }
        }
        super.onReceivedError(view, r6, errorDescription, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(handler, "handler");
        kotlin.jvm.internal.h.f(error, "error");
        try {
            if (error.getPrimaryError() != -1) {
                ServicePageActivity servicePageActivity = this.f13221a;
                servicePageActivity.f16814x = true;
                servicePageActivity.F();
            }
        } catch (Exception unused) {
        }
        super.onReceivedSslError(view, handler, error);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(24)
    public final boolean shouldOverrideUrlLoading(WebView view, WebResourceRequest request) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(request, "request");
        Uri uri = request.getUrl();
        yd.a.f19652a.c("should " + uri, new Object[0]);
        kotlin.jvm.internal.h.e(uri, "uri");
        ServicePageActivity activity = this.f13221a;
        kotlin.jvm.internal.h.f(activity, "activity");
        if (!mc.j.x(uri.toString(), "tel:160")) {
            if (!kotlin.jvm.internal.h.a(uri.getScheme(), "market")) {
                return false;
            }
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                activity.startActivity(intent);
            } catch (ActivityNotFoundException unused) {
                Toast.makeText(activity, activity.getString(R.string.toast_market_not_found), 1).show();
                return false;
            }
        }
        return true;
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(url, "url");
        Uri uri = Uri.parse(url);
        kotlin.jvm.internal.h.e(uri, "parse(url)");
        ServicePageActivity activity = this.f13221a;
        kotlin.jvm.internal.h.f(activity, "activity");
        if (mc.j.x(uri.toString(), "tel:160")) {
            return true;
        }
        if (kotlin.jvm.internal.h.a(uri.getScheme(), "market")) {
            try {
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                activity.startActivity(intent);
                return true;
            } catch (ActivityNotFoundException unused) {
                Toast.makeText(activity, activity.getString(R.string.toast_market_not_found), 1).show();
            }
        }
        return false;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        String str;
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(request, "request");
        kotlin.jvm.internal.h.f(error, "error");
        String string = error.getDescription().toString();
        yd.a.f19652a.c("Error 1 " + request.getUrl(), new Object[0]);
        if (!kotlin.jvm.internal.h.a(string, "net::ERR_CACHE_MISS")) {
            boolean zContainsKey = request.getRequestHeaders().containsKey("accept");
            ServicePageActivity servicePageActivity = this.f13221a;
            if (!zContainsKey || (str = request.getRequestHeaders().get("accept")) == null || !mc.n.G(str, "image/", false)) {
                servicePageActivity.f16814x = true;
                view.loadUrl("about:blank");
                servicePageActivity.F();
            }
        }
        super.onReceivedError(view, request, error);
    }
}
