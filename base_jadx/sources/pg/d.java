package pg;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.webkit.JavascriptInterface;
import df.a0;
import df.b0;
import df.c0;
import df.d0;
import df.g0;
import df.h0;
import df.i0;
import df.l0;
import df.w;
import df.x;
import df.z;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a, reason: collision with root package name */
    public final Activity f13203a;

    public d(Activity activity) {
        kotlin.jvm.internal.h.f(activity, "activity");
        this.f13203a = activity;
    }

    @JavascriptInterface
    public final void getContent(String value) throws JSONException {
        qd.b bVarB;
        Object tVar;
        qd.b bVarB2;
        Object g0Var;
        com.google.android.gms.internal.clearcut.g gVar;
        qd.b bVarB3;
        com.google.android.gms.internal.clearcut.g gVar2;
        Activity activity = this.f13203a;
        kotlin.jvm.internal.h.f(value, "value");
        try {
            JSONObject jSONObject = new JSONObject(value);
            String string = jSONObject.getString("type");
            String content = jSONObject.getString("content");
            yd.a.f19652a.c("content ".concat(value), new Object[0]);
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
                    } else if (mc.j.x(string, "xls")) {
                        bVarB2 = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        g0Var = new i0(content, "xls", false);
                    } else if (mc.j.x(string, "PersonalData")) {
                        if (mc.j.x(content, "error")) {
                            bVarB3 = qd.b.b();
                            gVar2 = new com.google.android.gms.internal.clearcut.g(false, null);
                            bVarB3.f(gVar2);
                            return;
                        } else {
                            bVarB = qd.b.b();
                            gVar = new com.google.android.gms.internal.clearcut.g(true, content);
                            tVar = gVar;
                        }
                    } else if (mc.j.x(string, "PersonalDataUpdate")) {
                        if (mc.j.x(content, "error")) {
                            bVarB3 = qd.b.b();
                            gVar2 = new com.google.android.gms.internal.clearcut.g(false, null);
                            bVarB3.f(gVar2);
                            return;
                        } else {
                            bVarB = qd.b.b();
                            gVar = new com.google.android.gms.internal.clearcut.g(true, content);
                            tVar = gVar;
                        }
                    } else if (mc.j.x(string, "permission")) {
                        bVarB = qd.b.b();
                        tVar = new df.g();
                    } else if (mc.j.x(string, "addDate")) {
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new df.a(content);
                    } else if (mc.j.x(string, "pdfLink")) {
                        bVarB2 = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        g0Var = new i0(content, "pdf", true);
                    } else if (mc.j.x(string, "edkCloseService")) {
                        bVarB2 = qd.b.b();
                        g0Var = new g0();
                    } else if (mc.j.x(string, "edkRedirectService")) {
                        kotlin.jvm.internal.h.e(content, "content");
                        Integer numT = mc.i.t(content);
                        if (numT != null) {
                            qd.b.b().f(new h0(numT.intValue()));
                            return;
                        } else {
                            bVarB = qd.b.b();
                            tVar = new h0(-1);
                        }
                    } else if (mc.j.x(string, "scanDocument")) {
                        bVarB = qd.b.b();
                        tVar = new d0();
                    } else if (mc.j.x(string, "checkNfc")) {
                        bVarB = qd.b.b();
                        tVar = new df.c();
                    } else if (mc.j.x(string, "verificationById")) {
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new df.l(content);
                    } else if (mc.j.x(string, "redirectToFolderUrl")) {
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new z(content);
                    } else if (mc.j.x(string, "removeRegisteredDevice")) {
                        bVarB = qd.b.b();
                        tVar = new b0(Boolean.parseBoolean(content));
                    } else if (mc.j.x(string, "checkRegisteredDevice")) {
                        bVarB = qd.b.b();
                        Boolean.parseBoolean(content);
                        tVar = new df.d(0);
                    } else if (mc.j.x(string, "requestTwoFactor")) {
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new l0(content);
                    } else if (mc.j.x(string, "readMrz")) {
                        bVarB = qd.b.b();
                        Boolean.parseBoolean(content);
                        tVar = new df.i();
                    } else if (mc.j.x(string, "readQr")) {
                        bVarB = qd.b.b();
                        Boolean.parseBoolean(content);
                        tVar = new df.j();
                    } else if (mc.j.x(string, "requestSms")) {
                        bVarB = qd.b.b();
                        Boolean.parseBoolean(content);
                        tVar = new c0();
                    } else if (mc.j.x(string, "registerDevice")) {
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new a0(content);
                    } else if (mc.j.x(string, "getDeviceInfo")) {
                        bVarB = qd.b.b();
                        tVar = new df.e(Boolean.parseBoolean(content));
                    } else if (mc.j.x(string, "paymentURL")) {
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new w(content);
                    } else if (mc.j.x(string, "paymentResult")) {
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new x(content);
                    } else if (mc.j.x(string, "mktAccidentScenarioResult")) {
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new df.q(content);
                    } else if (mc.j.x(string, "muzeKartPermissionRequest")) {
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new df.u(content);
                    } else {
                        if (!mc.j.x(string, "muzeKartBeaconRequest")) {
                            return;
                        }
                        bVarB = qd.b.b();
                        kotlin.jvm.internal.h.e(content, "content");
                        tVar = new df.t(content);
                    }
                }
                bVarB2.i(g0Var);
                return;
            }
            bVarB = qd.b.b();
            tVar = new df.n(Boolean.parseBoolean(content));
            bVarB.f(tVar);
        } catch (JSONException unused) {
        }
    }
}
