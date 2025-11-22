package cg;

import android.webkit.JavascriptInterface;
import androidx.core.app.NotificationCompat;
import df.a0;
import df.b0;
import df.e0;
import df.j0;
import df.k;
import df.k0;
import df.l;
import df.l0;
import df.m;
import df.m0;
import df.n;
import df.o;
import df.p;
import df.s;
import df.v;
import df.y;
import org.json.JSONException;
import org.json.JSONObject;
import s4.da;

/* loaded from: classes3.dex */
public final class a {
    @JavascriptInterface
    public final void getContent(String value) throws JSONException {
        qd.b bVarB;
        Object bVar;
        qd.b bVarB2;
        Object l0Var;
        kotlin.jvm.internal.h.f(value, "value");
        try {
            JSONObject jSONObject = new JSONObject(value);
            String string = jSONObject.getString("type");
            String content = jSONObject.getString("content");
            yd.a.f19652a.c("content ".concat(value), new Object[0]);
            if (mc.j.x(string, "login")) {
                bVarB = qd.b.b();
                bVar = new p(Boolean.parseBoolean(content));
            } else if (mc.j.x(string, "loading")) {
                bVarB = qd.b.b();
                bVar = new n(Boolean.parseBoolean(content));
            } else if (mc.j.x(string, "loginBackgroundProcess")) {
                bVarB = qd.b.b();
                bVar = new o(Boolean.parseBoolean(content));
            } else if (mc.j.x(string, "forgetpass")) {
                bVarB = qd.b.b();
                bVar = new df.h(Boolean.parseBoolean(content));
            } else if (mc.j.x(string, "pnsclear")) {
                bVarB = qd.b.b();
                bVar = new j0(Boolean.parseBoolean(content));
            } else {
                if (!mc.j.x(string, "2auth_req")) {
                    if (mc.j.x(string, "language")) {
                        bVarB2 = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        l0Var = new m(content);
                    } else {
                        if (mc.j.x(string, "edkOpenServices")) {
                            JSONObject jSONObject2 = new JSONObject(content);
                            String baseUrl = jSONObject2.getString("baseURL");
                            JSONObject jSONObject3 = new JSONObject(jSONObject2.getString(NotificationCompat.CATEGORY_SERVICE));
                            qd.b bVarB3 = qd.b.b();
                            kotlin.jvm.internal.h.e(baseUrl, "baseUrl");
                            String string2 = jSONObject3.getString("folderName");
                            kotlin.jvm.internal.h.e(string2, "serviceDetailConfig.getString(\"folderName\")");
                            String string3 = jSONObject3.getString("url");
                            kotlin.jvm.internal.h.e(string3, "serviceDetailConfig.getString(\"url\")");
                            String string4 = jSONObject3.getString("name");
                            kotlin.jvm.internal.h.e(string4, "serviceDetailConfig.getString(\"name\")");
                            bVarB3.f(new v(jSONObject3.getInt("serviceDomainType"), baseUrl, string2, string3, string4));
                            return;
                        }
                        if (mc.j.x(string, "externalLink")) {
                            bVarB2 = qd.b.b();
                            kotlin.jvm.internal.h.e(content, "content");
                            l0Var = new df.f(content);
                        } else if (mc.j.x(string, "newRegisterCode")) {
                            bVarB2 = qd.b.b();
                            kotlin.jvm.internal.h.e(content, "content");
                            l0Var = new da(content, 1);
                        } else if (mc.j.x(string, "registerDevice")) {
                            bVarB2 = qd.b.b();
                            kotlin.jvm.internal.h.e(content, "content");
                            l0Var = new a0(content);
                        } else if (mc.j.x(string, "twofactorReq")) {
                            bVarB2 = qd.b.b();
                            kotlin.jvm.internal.h.e(content, "content");
                            l0Var = new k0(content);
                        } else if (mc.j.x(string, "pushApproval")) {
                            bVarB2 = qd.b.b();
                            kotlin.jvm.internal.h.e(content, "content");
                            l0Var = new s(content);
                        } else if (mc.j.x(string, "karekodGiris")) {
                            bVarB = qd.b.b();
                            bVar = new e0();
                        } else if (mc.j.x(string, "checkNfc")) {
                            bVarB = qd.b.b();
                            bVar = new df.c();
                        } else if (mc.j.x(string, "verificationById")) {
                            bVarB2 = qd.b.b();
                            kotlin.jvm.internal.h.e(content, "content");
                            l0Var = new l(content);
                        } else if (mc.j.x(string, "kimlikDogrula")) {
                            bVarB2 = qd.b.b();
                            kotlin.jvm.internal.h.e(content, "content");
                            l0Var = new k(content);
                        } else if (mc.j.x(string, "removeRegisteredDevice")) {
                            bVarB = qd.b.b();
                            bVar = new b0(Boolean.parseBoolean(content));
                        } else if (mc.j.x(string, "checkRegisteredDevice")) {
                            bVarB = qd.b.b();
                            Boolean.parseBoolean(content);
                            bVar = new df.d(0);
                        } else if (mc.j.x(string, "requestTwoFactor")) {
                            bVarB2 = qd.b.b();
                            kotlin.jvm.internal.h.e(content, "content");
                            l0Var = new l0(content);
                        } else if (mc.j.x(string, "readMrz") || mc.j.x(string, "readQr")) {
                            bVarB = qd.b.b();
                            bVar = new b0(Boolean.parseBoolean(content));
                        } else if (mc.j.x(string, "qrCodeOperations")) {
                            bVarB = qd.b.b();
                            bVar = new y();
                        } else {
                            if (!mc.j.x(string, "verifyDocument")) {
                                return;
                            }
                            bVarB = qd.b.b();
                            bVar = new df.b();
                        }
                    }
                    bVarB2.f(l0Var);
                    return;
                }
                bVarB = qd.b.b();
                bVar = new m0();
            }
            bVarB.f(bVar);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }
}
