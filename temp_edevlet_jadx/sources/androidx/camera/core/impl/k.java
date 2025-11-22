package androidx.camera.core.impl;

import android.content.Context;
import android.content.Intent;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.navigation.fragment.FragmentKt;
import androidx.view.result.ActivityResult;
import androidx.view.result.ActivityResultCallback;
import com.esafirm.imagepicker.features.ImagePickerActivity;
import io.realm.g0;
import java.util.List;
import org.json.JSONObject;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;
import tr.gov.turkiye.edevlet.kapisi.main.MainActivity;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.matched.MobileAccidentMatchedReportFragment;

/* loaded from: classes.dex */
public final /* synthetic */ class k implements CallbackToFutureAdapter.Resolver, ActivityResultCallback, g0.a, h5.e, h5.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f709a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f710b;

    public /* synthetic */ k(int r12, Object obj) {
        this.f709a = r12;
        this.f710b = obj;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((CameraRepository) this.f710b).lambda$deinit$0(completer);
    }

    @Override // h5.e
    public final void b(h5.k task) {
        LoginActivity this$0 = (LoginActivity) this.f710b;
        int r12 = LoginActivity.E;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        kotlin.jvm.internal.h.f(task, "task");
        if (task.m()) {
            this$0.f16552t = (String) task.i();
        }
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        int r02 = this.f709a;
        Object obj = this.f710b;
        switch (r02) {
            case 2:
                List resultList = (List) obj;
                kotlin.jvm.internal.h.f(resultList, "$resultList");
                g0Var.E(resultList);
                break;
            default:
                ((ServiceModelRealm) obj).setFavorite(true);
                break;
        }
    }

    @Override // h5.f
    public final void e(Exception e10) {
        tr.gov.turkiye.edevlet.kapisi.verification.ocr.a this$0 = (tr.gov.turkiye.edevlet.kapisi.verification.ocr.a) this.f710b;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        kotlin.jvm.internal.h.f(e10, "e");
        this$0.f17700c.set(false);
        yd.a.f19652a.c(android.support.v4.media.a.e("Text detection failed. ", e10), new Object[0]);
        this$0.f17698a.a();
    }

    @Override // androidx.view.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        int r02 = this.f709a;
        Object obj2 = this.f710b;
        switch (r02) {
            case 1:
                ImagePickerActivity this$0 = (ImagePickerActivity) obj2;
                ActivityResult result = (ActivityResult) obj;
                int r03 = ImagePickerActivity.f2867h;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                kotlin.jvm.internal.h.f(result, "result");
                int resultCode = result.getResultCode();
                u1.a aVar = this$0.f2868a;
                if (resultCode != 0) {
                    if (resultCode == -1) {
                        result.getData();
                        aVar.c(this$0, new ImagePickerActivity.d(this$0));
                        break;
                    }
                } else {
                    aVar.b(this$0);
                    this$0.setResult(0);
                    this$0.finish();
                    break;
                }
                break;
            case 5:
                MainActivity this$02 = (MainActivity) obj2;
                Boolean it = (Boolean) obj;
                int r04 = MainActivity.f;
                kotlin.jvm.internal.h.f(this$02, "this$0");
                kotlin.jvm.internal.h.e(it, "it");
                if (it.booleanValue()) {
                    this$02.s();
                    break;
                }
                break;
            case 6:
                ServicePageActivity this$03 = (ServicePageActivity) obj2;
                ActivityResult result2 = (ActivityResult) obj;
                int r05 = ServicePageActivity.s0;
                kotlin.jvm.internal.h.f(this$03, "this$0");
                kotlin.jvm.internal.h.f(result2, "result");
                if (result2.getResultCode() == -1) {
                    Intent data = result2.getData();
                    JSONObject jSONObject = new JSONObject(androidx.browser.browseractions.a.a("{'barkodNo':'", data != null ? data.getStringExtra("result") : null, "','type':'barkod'}"));
                    this$03.v().f16829g.evaluateJavascript("sendWebData(" + jSONObject + ')', null);
                    break;
                }
                break;
            default:
                MobileAccidentMatchedReportFragment this$04 = (MobileAccidentMatchedReportFragment) obj2;
                ActivityResult result3 = (ActivityResult) obj;
                da.m<Object>[] mVarArr = MobileAccidentMatchedReportFragment.f17416m;
                kotlin.jvm.internal.h.f(this$04, "this$0");
                kotlin.jvm.internal.h.f(result3, "result");
                if (result3.getResultCode() != -1) {
                    Context context = this$04.f17420d;
                    if (context != null) {
                        this$04.F(context.getString(R.string.mkt_preview_page_card_scenario_cancel_error));
                        break;
                    }
                } else {
                    Intent data2 = result3.getData();
                    String stringExtra = data2 != null ? data2.getStringExtra("result") : null;
                    String stringExtra2 = data2 != null ? data2.getStringExtra("scenarioId") : null;
                    yd.a.f19652a.c(androidx.browser.browseractions.b.e("Scenario ", stringExtra2), new Object[0]);
                    if (!kotlin.jvm.internal.h.a(stringExtra, "true")) {
                        this$04.F(data2 != null ? data2.getStringExtra("errorMessage") : null);
                        break;
                    } else {
                        if (!(stringExtra2 == null || stringExtra2.length() == 0)) {
                            g0 g0VarT = g0.t();
                            g0VarT.m();
                            MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) g0VarT.J(MKTAccidentReport.class).e();
                            if (mKTAccidentReport != null) {
                                g0VarT.s(new a3.h(mKTAccidentReport, stringExtra2));
                                FragmentKt.findNavController(this$04).navigate(R.id.mktApprovalFragment);
                                break;
                            }
                        } else {
                            this$04.F("Scenario Id Emmpty");
                            break;
                        }
                    }
                }
                break;
        }
    }
}
