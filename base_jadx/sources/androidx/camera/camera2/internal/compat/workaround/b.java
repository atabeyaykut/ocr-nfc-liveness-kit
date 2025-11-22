package androidx.camera.camera2.internal.compat.workaround;

import a7.a;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.view.result.ActivityResult;
import androidx.view.result.ActivityResultCallback;
import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import c5.y;
import h5.k;
import h6.a0;
import h6.m0;
import io.realm.g0;
import java.io.File;
import java.util.List;
import kotlin.jvm.internal.h;
import l9.g;
import tr.gov.turkiye.edevlet.kapisi.R;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.TokenRequestWorker;
import tr.gov.turkiye.edevlet.kapisi.data.service.ServiceModelRealm;
import tr.gov.turkiye.edevlet.kapisi.login.LoginActivity;
import yd.a;

/* loaded from: classes.dex */
public final /* synthetic */ class b implements CallbackToFutureAdapter.Resolver, a.InterfaceC0008a, h5.b, g0.a, ActivityResultCallback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f520a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f521b;

    public /* synthetic */ b(int r12, Object obj) {
        this.f520a = r12;
        this.f521b = obj;
    }

    @Override // a7.a.InterfaceC0008a
    public final void a(a7.b bVar) {
        e6.c cVar = (e6.c) this.f521b;
        cVar.getClass();
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Crashlytics native component now available.", null);
        }
        cVar.f5115b.set((e6.a) bVar.get());
    }

    @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
    public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
        return ((WaitForRepeatingRequestStart) this.f521b).lambda$new$0(completer);
    }

    @Override // h5.b
    public final Object c(k kVar) {
        boolean z10;
        ((m0) this.f521b).getClass();
        if (kVar.m()) {
            a0 a0Var = (a0) kVar.i();
            y yVar = y.f2129g;
            yVar.l("Crashlytics report successfully enqueued to DataTransport: " + a0Var.c());
            File fileB = a0Var.b();
            if (fileB.delete()) {
                yVar.l("Deleted report file: " + fileB.getPath());
            } else {
                yVar.F("Crashlytics could not delete report file: " + fileB.getPath(), null);
            }
            z10 = true;
        } else {
            Log.w("FirebaseCrashlytics", "Crashlytics report could not be enqueued to DataTransport", kVar.h());
            z10 = false;
        }
        return Boolean.valueOf(z10);
    }

    @Override // io.realm.g0.a
    public final void d(g0 g0Var) {
        int r02 = this.f520a;
        Object obj = this.f521b;
        switch (r02) {
            case 3:
                ((ServiceModelRealm) obj).setFavorite(false);
                break;
            default:
                List cityListDB = (List) obj;
                h.f(cityListDB, "$cityListDB");
                g0Var.E(cityListDB);
                break;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.view.result.ActivityResultCallback
    public final void onActivityResult(Object obj) throws Throwable {
        LoginActivity this$0 = (LoginActivity) this.f521b;
        ActivityResult result = (ActivityResult) obj;
        int r12 = LoginActivity.E;
        h.f(this$0, "this$0");
        h.f(result, "result");
        int r42 = 0;
        if (result.getResultCode() != -1) {
            if (result.getResultCode() == 0) {
                Intent data = result.getData();
                if (h.a(data != null ? data.getStringExtra("errorType") : null, "0")) {
                    this$0.L(R.string.toast_error_info, "warning");
                }
                this$0.F(null, null, false);
                return;
            }
            return;
        }
        Intent data2 = result.getData();
        Integer numValueOf = data2 != null ? Integer.valueOf(data2.getIntExtra("operationType", 0)) : null;
        a.C0306a c0306a = yd.a.f19652a;
        c0306a.c("Operation type " + numValueOf, new Object[0]);
        boolean z10 = true;
        if (numValueOf == null || numValueOf.intValue() != 1) {
            if (numValueOf != null && numValueOf.intValue() == 2) {
                String stringExtra = data2.getStringExtra("uuid");
                h.c(stringExtra);
                this$0.A = stringExtra;
                String stringExtra2 = data2.getStringExtra("code");
                String stringExtra3 = data2.getStringExtra("pin");
                String str = this$0.A;
                if (str == null) {
                    h.n("mScanUUIDValue");
                    throw null;
                }
                if (str.length() > 0) {
                    if (stringExtra2 == null || stringExtra2.length() == 0) {
                        return;
                    }
                    if (stringExtra3 == null || stringExtra3.length() == 0) {
                        return;
                    }
                    String str2 = this$0.A;
                    if (str2 == null) {
                        h.n("mScanUUIDValue");
                        throw null;
                    }
                    g[] gVarArr = {new g("uuid", str2), new g("code", stringExtra2), new g("pin", stringExtra3)};
                    Data.Builder builder = new Data.Builder();
                    while (r42 < 3) {
                        g gVar = gVarArr[r42];
                        r42++;
                        builder.put((String) gVar.f9582a, gVar.f9583b);
                    }
                    Data dataBuild = builder.build();
                    h.e(dataBuild, "dataBuilder.build()");
                    OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(TokenRequestWorker.class).setInputData(dataBuild).build();
                    h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…\n                .build()");
                    WorkManager.getInstance(this$0).enqueue(oneTimeWorkRequestBuild);
                    return;
                }
                return;
            }
            return;
        }
        c0306a.c("LOGIN STAGE 0", new Object[0]);
        String stringExtra4 = data2.getStringExtra("tid");
        String stringExtra5 = data2.getStringExtra("uk");
        this$0.f16555y = "push";
        this$0.f16556z = 2;
        if (!(stringExtra4 == null || stringExtra4.length() == 0)) {
            if (!(stringExtra5 == null || stringExtra5.length() == 0)) {
                c0306a.c("LOGIN STAGE 1 " + stringExtra4 + ' ' + stringExtra5, new Object[0]);
                SharedPreferences sharedPreferences = this$0.getSharedPreferences("settings", 0);
                String string = sharedPreferences.getString("did", null);
                String string2 = sharedPreferences.getString("esk", null);
                if (string == null || string.length() == 0) {
                    if (string2 == null || string2.length() == 0) {
                        z10 = false;
                    }
                }
                if (!z10) {
                    this$0.u(stringExtra4);
                    return;
                }
                this$0.B = "1";
                c0306a.c("LOGIN STAGE 2 " + stringExtra4 + ' ' + stringExtra5, new Object[0]);
                String str3 = this$0.B;
                if (str3 != null) {
                    this$0.M(stringExtra5, stringExtra4, str3);
                    return;
                } else {
                    h.n("mUserChoice");
                    throw null;
                }
            }
        }
        this$0.F(null, "UK or TID Value Not Found", false);
    }
}
