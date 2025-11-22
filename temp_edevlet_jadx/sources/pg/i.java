package pg;

import android.net.Uri;
import android.os.Build;
import android.webkit.GeolocationPermissions;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.core.app.ActivityCompat;
import java.util.Arrays;
import tr.gov.turkiye.edevlet.kapisi.servicepage.PaymentPageActivity;

/* loaded from: classes3.dex */
public final class i extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ PaymentPageActivity f13209a;

    public i(PaymentPageActivity paymentPageActivity) {
        this.f13209a = paymentPageActivity;
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        kotlin.jvm.internal.h.f(callback, "callback");
        callback.invoke(str, true, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        PaymentPageActivity paymentPageActivity = this.f13209a;
        ValueCallback<Uri[]> valueCallback2 = paymentPageActivity.w;
        if (valueCallback2 != null) {
            valueCallback2.onReceiveValue(null);
        }
        paymentPageActivity.w = valueCallback;
        String[] acceptTypes = fileChooserParams != null ? fileChooserParams.getAcceptTypes() : null;
        String str = (!(acceptTypes != null && acceptTypes.length == 1) || mc.j.x(acceptTypes[0], "")) ? "*/*" : acceptTypes[0];
        if (Build.VERSION.SDK_INT >= 23) {
            String[] strArr = c5.u.f2023m;
            if (td.a.a(paymentPageActivity, (String[]) Arrays.copyOf(strArr, 1))) {
                paymentPageActivity.v(str);
            } else {
                c5.u.f2024n = new l(paymentPageActivity, str);
                ActivityCompat.requestPermissions(paymentPageActivity, strArr, 0);
            }
        } else {
            paymentPageActivity.v(str);
        }
        return true;
    }
}
