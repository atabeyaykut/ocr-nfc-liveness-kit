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
import tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity;
import yd.a;

/* loaded from: classes3.dex */
public final class j extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PaymentPageActivity f13210a;

    public j(PaymentPageActivity paymentPageActivity) {
        this.f13210a = paymentPageActivity;
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView view, String url) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(url, "url");
        super.onPageFinished(view, url);
        yd.a.f19652a.c("finish ".concat(url), new Object[0]);
        PaymentPageActivity paymentPageActivity = this.f13210a;
        if (paymentPageActivity.f16778q) {
            paymentPageActivity.z();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageStarted(WebView view, String url, Bitmap bitmap) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(url, "url");
        super.onPageStarted(view, url, bitmap);
        yd.a.f19652a.c("start ".concat(url), new Object[0]);
        boolean z10 = this.f13210a.f16778q;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(WebView view, int r6, String errorDescription, String failingUrl) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(errorDescription, "errorDescription");
        kotlin.jvm.internal.h.f(failingUrl, "failingUrl");
        a.C0306a c0306a = yd.a.f19652a;
        c0306a.c("Error 0 ".concat(failingUrl), new Object[0]);
        if (!kotlin.jvm.internal.h.a(errorDescription, "net::ERR_CACHE_MISS")) {
            PaymentPageActivity paymentPageActivity = this.f13210a;
            paymentPageActivity.f16778q = true;
            c0306a.c("URL 1 ".concat(failingUrl), new Object[0]);
            view.loadUrl("about:blank");
            paymentPageActivity.z();
        }
        super.onReceivedError(view, r6, errorDescription, failingUrl);
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedSslError(WebView view, SslErrorHandler handler, SslError error) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(handler, "handler");
        kotlin.jvm.internal.h.f(error, "error");
        try {
            yd.a.f19652a.c("Error SSL 0 " + error.getUrl(), new Object[0]);
            if (error.getPrimaryError() != -1) {
                PaymentPageActivity paymentPageActivity = this.f13210a;
                paymentPageActivity.f16778q = true;
                paymentPageActivity.z();
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
        yd.a.f19652a.c("Between 1 " + request.getUrl() + ' ' + request.getRequestHeaders(), new Object[0]);
        kotlin.jvm.internal.h.e(uri, "uri");
        PaymentPageActivity activity = this.f13210a;
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
        yd.a.f19652a.c("Between 0 ".concat(url), new Object[0]);
        Uri uri = Uri.parse(url);
        kotlin.jvm.internal.h.e(uri, "parse(url)");
        PaymentPageActivity activity = this.f13210a;
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
    @TargetApi(23)
    public final void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
        kotlin.jvm.internal.h.f(view, "view");
        kotlin.jvm.internal.h.f(request, "request");
        kotlin.jvm.internal.h.f(error, "error");
        String string = error.getDescription().toString();
        a.C0306a c0306a = yd.a.f19652a;
        c0306a.c("Error 1 " + request.getUrl(), new Object[0]);
        c0306a.c("Error Desc 1 " + string, new Object[0]);
        if (!kotlin.jvm.internal.h.a(string, "net::ERR_CACHE_MISS")) {
            PaymentPageActivity paymentPageActivity = this.f13210a;
            paymentPageActivity.f16778q = true;
            view.loadUrl("about:blank");
            paymentPageActivity.z();
        }
        super.onReceivedError(view, request, error);
    }
}
