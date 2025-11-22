package pg;

import android.content.Intent;
import androidx.core.app.NotificationCompat;
import androidx.view.result.ActivityResult;
import androidx.view.result.ActivityResultCallback;
import org.json.JSONException;
import org.json.JSONObject;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;

/* loaded from: classes3.dex */
public final /* synthetic */ class m implements h5.f, ActivityResultCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ServicePageActivity f13214a;

    @Override // h5.f
    public final void e(Exception exception) {
        int r02 = ServicePageActivity.s0;
        ServicePageActivity this$0 = this.f13214a;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        kotlin.jvm.internal.h.f(exception, "exception");
        this$0.N = true;
        exception.getMessage();
    }

    @Override // androidx.view.result.ActivityResultCallback
    public final void onActivityResult(Object obj) throws JSONException {
        ActivityResult result = (ActivityResult) obj;
        int r02 = ServicePageActivity.s0;
        ServicePageActivity this$0 = this.f13214a;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        kotlin.jvm.internal.h.f(result, "result");
        if (result.getResultCode() == -1) {
            Intent data = result.getData();
            String stringExtra = data != null ? data.getStringExtra("content") : null;
            JSONObject jSONObject = new JSONObject();
            jSONObject.put(NotificationCompat.CATEGORY_STATUS, "1");
            jSONObject.put("content", stringExtra);
            this$0.v().f16829g.evaluateJavascript("sendQrData(" + jSONObject + ')', null);
        }
    }
}
