package androidx.constraintlayout.core.state;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.util.JsonReader;
import androidx.view.result.ActivityResult;
import androidx.view.result.ActivityResultCallback;
import b3.r;
import da.m;
import i7.f;
import k6.a;
import kotlin.jvm.internal.h;
import tr.gov.turkiye.edevlet.kapisi.barcode.BarcodeVerifyFragment;
import yd.a;

/* loaded from: classes.dex */
public final /* synthetic */ class a implements Interpolator, r.a, f.a, a.InterfaceC0162a, ActivityResultCallback {
    @Override // i7.f.a
    public final String a(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        return (applicationInfo == null || Build.VERSION.SDK_INT < 24) ? "" : String.valueOf(applicationInfo.minSdkVersion);
    }

    @Override // b3.r.a
    public final Object apply(Object obj) {
        r2.b bVar = r.f;
        throw new c3.a("Timed out while trying to acquire the lock.", (Throwable) obj);
    }

    @Override // k6.a.InterfaceC0162a
    public final Object b(JsonReader jsonReader) {
        return k6.a.a(jsonReader);
    }

    @Override // androidx.constraintlayout.core.state.Interpolator
    public final float getInterpolation(float f) {
        return Transition.lambda$getInterpolator$1(f);
    }

    @Override // androidx.view.result.ActivityResultCallback
    public final void onActivityResult(Object obj) {
        ActivityResult result = (ActivityResult) obj;
        m<Object>[] mVarArr = BarcodeVerifyFragment.f;
        h.f(result, "result");
        if (result.getResultCode() == -1) {
            Intent data = result.getData();
            a.C0306a c0306a = yd.a.f19652a;
            StringBuilder sb2 = new StringBuilder("Result ");
            sb2.append(data != null ? data.getStringExtra("result") : null);
            c0306a.c(sb2.toString(), new Object[0]);
        }
    }
}
