package androidx.camera.camera2.interop;

import a3.o;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.camera.core.impl.LiveDataObservable;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.constraintlayout.core.state.Interpolator;
import androidx.constraintlayout.core.state.Transition;
import androidx.core.view.inputmethod.InputConnectionCompat;
import androidx.core.view.inputmethod.InputContentInfoCompat;
import androidx.navigation.fragment.FragmentKt;
import androidx.view.result.ActivityResult;
import androidx.view.result.ActivityResultCallback;
import c3.b;
import da.m;
import h5.k;
import h5.l;
import h6.p0;
import io.realm.g0;
import java.util.Iterator;
import java.util.Objects;
import java.util.concurrent.ExecutorService;
import org.json.JSONObject;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.data.mkt.MKTAccidentReport;
import tr.gov.turkiye.edevlet.kapisi.servicepage.ServicePageActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.myreport.completed.MobileAccidentCompletedReportFragment;
import u2.s;

/* loaded from: classes.dex */
public final /* synthetic */ class c implements CallbackToFutureAdapter.Resolver, Interpolator, InputConnectionCompat.OnCommitContentListener, b.a, g6.b, h5.b, ActivityResultCallback, h5.f {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f652a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f653b;

    public /* synthetic */ c(int r12, Object obj) {
        this.f652a = r12;
        this.f653b = obj;
    }

    @Override // g6.b
    public final void a(g6.a aVar) {
        d6.a aVar2 = (d6.a) this.f653b;
        synchronized (aVar2) {
            if (aVar2.f4666b instanceof g6.c) {
                aVar2.f4667c.add(aVar);
            }
            aVar2.f4666b.a(aVar);
        }
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        int r02 = this.f652a;
        Object obj = this.f653b;
        switch (r02) {
            case 0:
                return ((Camera2CameraControl) obj).lambda$clearCaptureRequestOptions$6(completer);
            default:
                return ((LiveDataObservable) obj).lambda$fetchData$1(completer);
        }
    }

    @Override // h5.b
    public final Object c(k kVar) {
        l lVar = (l) this.f653b;
        ExecutorService executorService = p0.f6951a;
        if (kVar.m()) {
            lVar.d(kVar.i());
            return null;
        }
        Exception excH = kVar.h();
        Objects.requireNonNull(excH);
        lVar.c(excH);
        return null;
    }

    @Override // h5.f
    public final void e(Exception e10) {
        tr.gov.turkiye.edevlet.kapisi.verification.ocr.b this$0 = (tr.gov.turkiye.edevlet.kapisi.verification.ocr.b) this.f653b;
        kotlin.jvm.internal.h.f(this$0, "this$0");
        kotlin.jvm.internal.h.f(e10, "e");
        this$0.f17704d.set(false);
        yd.a.f19652a.c(android.support.v4.media.a.e("Text detection failed. ", e10), new Object[0]);
        this$0.f17701a.a();
    }

    @Override // c3.b.a
    public final Object execute() {
        o oVar = (o) this.f653b;
        Iterator<s> it = oVar.f101b.K().iterator();
        while (it.hasNext()) {
            oVar.f102c.b(it.next(), 1);
        }
        return null;
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public final float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$0((String) this.f653b, f);
    }

    @Override // androidx.view.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        int r02 = this.f652a;
        Object obj2 = this.f653b;
        switch (r02) {
            case 8:
                ServicePageActivity this$0 = (ServicePageActivity) obj2;
                ActivityResult result = (ActivityResult) obj;
                int r03 = ServicePageActivity.s0;
                kotlin.jvm.internal.h.f(this$0, "this$0");
                kotlin.jvm.internal.h.f(result, "result");
                if (result.getResultCode() == -1) {
                    Intent data = result.getData();
                    String stringExtra = data != null ? data.getStringExtra("MRZ_RESULT") : null;
                    yd.a.f19652a.c(androidx.browser.browseractions.b.e("mrz data ", stringExtra), new Object[0]);
                    JSONObject jSONObject = new JSONObject(stringExtra);
                    this$0.v().f16829g.evaluateJavascript("sendMrzData(" + jSONObject + ')', null);
                    break;
                }
                break;
            default:
                MobileAccidentCompletedReportFragment this$02 = (MobileAccidentCompletedReportFragment) obj2;
                ActivityResult result2 = (ActivityResult) obj;
                m<Object>[] mVarArr = MobileAccidentCompletedReportFragment.f17464l;
                kotlin.jvm.internal.h.f(this$02, "this$0");
                kotlin.jvm.internal.h.f(result2, "result");
                if (result2.getResultCode() == -1) {
                    Intent data2 = result2.getData();
                    String stringExtra2 = data2 != null ? data2.getStringExtra("result") : null;
                    String stringExtra3 = data2 != null ? data2.getStringExtra("scenarioId") : null;
                    yd.a.f19652a.c(androidx.browser.browseractions.b.e("Scenario ", stringExtra3), new Object[0]);
                    if (!kotlin.jvm.internal.h.a(stringExtra2, "true")) {
                        this$02.K(data2 != null ? data2.getStringExtra("errorMessage") : null);
                        break;
                    } else {
                        if (!(stringExtra3 == null || stringExtra3.length() == 0)) {
                            g0 g0VarT = g0.t();
                            g0VarT.m();
                            MKTAccidentReport mKTAccidentReport = (MKTAccidentReport) g0VarT.J(MKTAccidentReport.class).e();
                            if (mKTAccidentReport != null) {
                                g0VarT.s(new b3.o(mKTAccidentReport, stringExtra3));
                                FragmentKt.findNavController(this$02).navigate(R.id.mktApprovalFragment);
                                break;
                            }
                        }
                    }
                }
                break;
        }
    }

    @Override // androidx.core.view.inputmethod.InputConnectionCompat.OnCommitContentListener
    public final boolean onCommitContent(InputContentInfoCompat inputContentInfoCompat, int r32, Bundle bundle) {
        return InputConnectionCompat.lambda$createOnCommitContentListenerUsingPerformReceiveContent$0((View) this.f653b, inputContentInfoCompat, r32, bundle);
    }
}
