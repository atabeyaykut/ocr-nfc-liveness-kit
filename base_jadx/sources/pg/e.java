package pg;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.webkit.JavascriptInterface;
import df.g0;
import df.i0;
import df.x;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f13204a;

    public e(Activity activity) {
        kotlin.jvm.internal.h.f(activity, "activity");
        this.f13204a = activity;
    }

    @JavascriptInterface
    public final void getContent(String value) throws JSONException {
        qd.b bVarB;
        Object xVar;
        qd.b bVarB2;
        Object g0Var;
        Activity activity = this.f13204a;
        kotlin.jvm.internal.h.f(value, "value");
        try {
            JSONObject jSONObject = new JSONObject(value);
            String string = jSONObject.getString("type");
            String content = jSONObject.getString("content");
            yd.a.f19652a.c("content payment ".concat(value), new Object[0]);
            if (!mc.j.x(string, "loading")) {
                if (mc.j.x(string, "externalLink")) {
                    bVarB2 = qd.b.b();
                    kotlin.jvm.internal.h.e(content, "content");
                    g0Var = new df.f(content);
                } else {
                    if (mc.j.x(string, "login")) {
                        if (mc.j.x(content, "0")) {
                            Intent intent = new Intent("action.login.open");
                            intent.setFlags(32768);
                            if (Build.VERSION.SDK_INT >= 34) {
                                intent.setPackage("tr.gov.turkiye.edevlet.kapisi");
                            }
                            intent.setFlags(268468224);
                            activity.startActivity(intent);
                            activity.finish();
                            return;
                        }
                        return;
                    }
                    if (mc.j.x(string, "pdf")) {
                        bVarB2 = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        g0Var = new i0(content, "pdf", false);
                    } else if (mc.j.x(string, "permission")) {
                        bVarB = qd.b.b();
                        xVar = new df.g();
                    } else if (mc.j.x(string, "edkCloseService")) {
                        bVarB2 = qd.b.b();
                        g0Var = new g0();
                    } else {
                        if (!mc.j.x(string, "paymentResult")) {
                            return;
                        }
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        xVar = new x(content);
                    }
                }
                bVarB2.i(g0Var);
                return;
            }
            bVarB = qd.b.b();
            xVar = new df.n(Boolean.parseBoolean(content));
            bVarB.f(xVar);
        } catch (JSONException unused) {
        }
    }
}
