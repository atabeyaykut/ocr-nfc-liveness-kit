package cg;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;

/* loaded from: classes3.dex */
public final class d extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LoginActivity f2399a;

    public d(LoginActivity loginActivity) {
        this.f2399a = loginActivity;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView view, String url) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(url, "url");
        LoginActivity loginActivity = this.f2399a;
        if (!loginActivity.f16544k) {
            try {
                if (loginActivity.y().a()) {
                    loginActivity.I();
                } else {
                    LoginActivity.s(loginActivity, url);
                }
            } catch (Exception unused) {
                loginActivity.I();
            }
        } else if (loginActivity.f16545l) {
            loginActivity.H();
        }
        super.onPageFinished(view, url);
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView view, String url, Bitmap bitmap) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(url, "url");
        int r02 = LoginActivity.E;
        this.f2399a.J();
        super.onPageStarted(view, url, bitmap);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int r92, String errorDescription, String failingUrl) {
        LoginActivity loginActivity = this.f2399a;
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(errorDescription, "errorDescription");
        kotlin.jvm.internal.h.f(failingUrl, "failingUrl");
        try {
            if (loginActivity.y().a()) {
                yd.a.f19652a.c("failing 1 ".concat(failingUrl), new Object[0]);
                loginActivity.I();
                if (!kotlin.jvm.internal.h.a(errorDescription, "net::ERR_CACHE_MISS")) {
                    loginActivity.f16544k = false;
                    view.loadUrl("about:blank");
                }
            } else {
                loginActivity.f16544k = false;
                yd.a.f19652a.c("failing 0 ".concat(failingUrl), new Object[0]);
                LoginActivity.s(loginActivity, failingUrl);
            }
        } catch (Exception unused) {
            yd.a.f19652a.c("failing 2 ".concat(failingUrl), new Object[0]);
            int r32 = LoginActivity.E;
            loginActivity.I();
            if (!kotlin.jvm.internal.h.a(errorDescription, "net::ERR_CACHE_MISS")) {
                loginActivity.f16544k = false;
                view.loadUrl("about:blank");
            }
        }
        super.onReceivedError(view, r92, errorDescription, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(handler, "handler");
        kotlin.jvm.internal.h.f(error, "error");
        try {
            if (error.getPrimaryError() != -1) {
                LoginActivity loginActivity = this.f2399a;
                int r12 = LoginActivity.E;
                loginActivity.I();
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
        kotlin.jvm.internal.h.e(uri, "uri");
        return j.d(uri, this.f2399a);
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView view, String url) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(url, "url");
        Uri uri = Uri.parse(url);
        kotlin.jvm.internal.h.e(uri, "parse(url)");
        return j.d(uri, this.f2399a);
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(23)
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        LoginActivity loginActivity = this.f2399a;
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(request, "request");
        kotlin.jvm.internal.h.f(error, "error");
        try {
            if (!loginActivity.y().a()) {
                loginActivity.f16544k = false;
                yd.a.f19652a.c("failing 4 " + request.getUrl(), new Object[0]);
                String string = request.getUrl().toString();
                kotlin.jvm.internal.h.e(string, "request.url.toString()");
                LoginActivity.s(loginActivity, string);
            } else {
                loginActivity.I();
                yd.a.f19652a.c("failing 5 " + request.getUrl() + ' ' + ((Object) error.getDescription()), new Object[0]);
                if (!kotlin.jvm.internal.h.a(error.getDescription().toString(), "net::ERR_CACHE_MISS")) {
                    loginActivity.f16544k = false;
                    view.loadUrl("about:blank");
                }
            }
        } catch (Exception unused) {
            int r32 = LoginActivity.E;
            loginActivity.I();
            yd.a.f19652a.c("failing 6 " + request.getUrl(), new Object[0]);
            if (!kotlin.jvm.internal.h.a(error.getDescription().toString(), "net::ERR_CACHE_MISS")) {
                loginActivity.f16544k = false;
                view.loadUrl("about:blank");
            }
        }
        super.onReceivedError(view, request, error);
    }
}
