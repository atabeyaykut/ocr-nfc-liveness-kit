package me;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.logout.LogoutWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.DeleteDeviceWorker;
import ud.d0;

/* loaded from: classes3.dex */
public final class e implements le.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10386a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10387b;

    public /* synthetic */ e(int r12, Object obj) {
        this.f10386a = r12;
        this.f10387b = obj;
    }

    @Override // le.a
    public final CoroutineWorker a(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3) {
        int r12 = this.f10386a;
        Object obj = this.f10387b;
        switch (r12) {
            case 0:
                return new BarcodeVerifyWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((d) obj).f10385a.get());
            case 1:
                return new LogoutWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((re.a) obj).f14616a.get());
            default:
                return new DeleteDeviceWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((ve.b) obj).f18573a.get());
        }
    }
}
