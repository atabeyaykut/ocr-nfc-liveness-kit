package pg;

import android.net.Uri;
import android.os.Build;
import android.webkit.GeolocationPermissions;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.core.app.ActivityCompat;
import java.util.Arrays;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;

/* loaded from: classes3.dex */
public final class q extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ServicePageActivity f13220a;

    public q(ServicePageActivity servicePageActivity) {
        this.f13220a = servicePageActivity;
    }

    @Override // android.webkit.WebChromeClient
    public final void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        kotlin.jvm.internal.h.f(callback, "callback");
        callback.invoke(str, true, false);
    }

    @Override // android.webkit.WebChromeClient
    public final boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        ServicePageActivity servicePageActivity = this.f13220a;
        ValueCallback<Uri[]> valueCallback2 = servicePageActivity.f16801m0;
        if (valueCallback2 != null) {
            valueCallback2.onReceiveValue(null);
        }
        servicePageActivity.f16801m0 = valueCallback;
        String[] acceptTypes = fileChooserParams != null ? fileChooserParams.getAcceptTypes() : null;
        String str = (!(acceptTypes != null && acceptTypes.length == 1) || mc.j.x(acceptTypes[0], "")) ? "*/*" : acceptTypes[0];
        int r02 = Build.VERSION.SDK_INT;
        if (r02 < 23 || r02 >= 33) {
            servicePageActivity.y(str);
        } else {
            String[] strArr = a0.b.f16p;
            if (td.a.a(servicePageActivity, (String[]) Arrays.copyOf(strArr, 1))) {
                servicePageActivity.y(str);
            } else {
                a0.b.f17q = new t(servicePageActivity, str);
                ActivityCompat.requestPermissions(servicePageActivity, strArr, 3);
            }
        }
        return true;
    }
}
