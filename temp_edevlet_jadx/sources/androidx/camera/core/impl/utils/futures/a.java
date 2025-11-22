package androidx.camera.core.impl.utils.futures;

import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.widget.TextView;
import androidx.appcompat.content.res.AppCompatResources;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.view.result.ActivityResult;
import androidx.view.result.ActivityResultCallback;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import b3.d;
import b3.r;
import c3.b;
import c5.v;
import da.m;
import h5.e;
import h5.g;
import h5.k;
import io.realm.g0;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.h;
import mc.n;
import mh.c;
import nc.a0;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.main.MainActivity;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.driver.vehicle.MobileAccidentDifferentVehicleFragment;
import tr.gov.turkiye.edevlet.kapisi.ui.accident.merge.host.MobileAccidentQRScanFragment;
import x9.l;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements CallbackToFutureAdapter.Resolver, b.a, r.a, g0.a, e, ActivityResultCallback, g {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f736a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f737b;

    public /* synthetic */ a(int r12, Object obj) {
        this.f736a = r12;
        this.f737b = obj;
    }

    @Override // b3.r.a
    public final Object apply(Object obj) {
        Map map = (Map) this.f737b;
        Cursor cursor = (Cursor) obj;
        r2.b bVar = r.f;
        while (cursor.moveToNext()) {
            long j10 = cursor.getLong(0);
            Set hashSet = (Set) map.get(Long.valueOf(j10));
            if (hashSet == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j10), hashSet);
            }
            hashSet.add(new r.b(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return Futures.lambda$nonCancellationPropagating$0((m5.a) this.f737b, completer);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // h5.e
    public final void b(k task) throws Throwable {
        MainActivity this$0 = (MainActivity) this.f737b;
        int r12 = MainActivity.f;
        h.f(this$0, "this$0");
        h.f(task, "task");
        if (task.m()) {
            try {
                l9.g[] gVarArr = {new l9.g("token", (String) task.i())};
                Data.Builder builder = new Data.Builder();
                l9.g gVar = gVarArr[0];
                builder.put((String) gVar.f9582a, gVar.f9583b);
                Data dataBuild = builder.build();
                h.e(dataBuild, "dataBuilder.build()");
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(RegisterWorker.class).setInputData(dataBuild).build();
                h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…tData(workerData).build()");
                WorkManager.getInstance(this$0).enqueue(oneTimeWorkRequestBuild);
            } catch (Exception unused) {
            }
        }
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        ((ServiceModelRealm) this.f737b).setFavorite(true);
    }

    @Override // c3.b.a
    public final Object execute() {
        return Integer.valueOf(((d) this.f737b).u());
    }

    @Override // androidx.view.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        int r12 = this.f736a;
        Object obj2 = this.f737b;
        switch (r12) {
            case 6:
                MobileAccidentDifferentVehicleFragment this$0 = (MobileAccidentDifferentVehicleFragment) obj2;
                ActivityResult result = (ActivityResult) obj;
                m<Object>[] mVarArr = MobileAccidentDifferentVehicleFragment.f17258g;
                h.f(this$0, "this$0");
                h.f(result, "result");
                if (result.getResultCode() == -1) {
                    Intent data = result.getData();
                    String stringExtra = data != null ? data.getStringExtra("content") : null;
                    yd.a.f19652a.c(androidx.browser.browseractions.b.e("QR Content ", stringExtra), new Object[0]);
                    if (!(stringExtra == null || stringExtra.length() == 0)) {
                        List listY = n.Y(stringExtra, new String[]{"-"});
                        ArrayList arrayList = new ArrayList();
                        for (Object obj3 : listY) {
                            if (((String) obj3).length() > 1) {
                                arrayList.add(obj3);
                            }
                        }
                        if (arrayList.size() == 3) {
                            Context context = this$0.f17262d;
                            if (context != null) {
                                TextView textView = this$0.E().f17122h;
                                h.e(textView, "mDifferentCarBinding.headerCardFormTitle");
                                ge.a.a(textView, AppCompatResources.getDrawable(context, R.drawable.row_up));
                            }
                            this$0.E().f17121g.setVisibility(0);
                            this$0.E().f.setText((CharSequence) arrayList.get(0));
                            this$0.E().f17120e.setText((CharSequence) arrayList.get(1));
                            this$0.E().f17119d.setText((CharSequence) arrayList.get(2));
                            break;
                        }
                    }
                }
                break;
            default:
                MobileAccidentQRScanFragment this$02 = (MobileAccidentQRScanFragment) obj2;
                ActivityResult result2 = (ActivityResult) obj;
                m<Object>[] mVarArr2 = MobileAccidentQRScanFragment.f17394j;
                h.f(this$02, "this$0");
                h.f(result2, "result");
                if (result2.getResultCode() == -1) {
                    Intent data2 = result2.getData();
                    String qrContent = data2 != null ? data2.getStringExtra("content") : null;
                    yd.a.f19652a.c(androidx.browser.browseractions.b.e("QR Content ", qrContent), new Object[0]);
                    if (!(qrContent == null || qrContent.length() == 0)) {
                        this$02.f17399e = true;
                        c cVar = (c) this$02.f17396b.getValue();
                        cVar.getClass();
                        h.f(qrContent, "qrContent");
                        mh.d dVar = new mh.d(cVar, qrContent, null);
                        a0 a0Var = cVar.f13883c;
                        v.C(a0Var, null, 0, dVar, 3);
                        v.D(a0Var, cVar.f10443h, new mh.e(cVar, null));
                        break;
                    }
                }
                break;
        }
    }

    @Override // h5.g
    public final void onSuccess(Object obj) {
        l tmp0 = (l) this.f737b;
        h.f(tmp0, "$tmp0");
        tmp0.invoke(obj);
    }
}
