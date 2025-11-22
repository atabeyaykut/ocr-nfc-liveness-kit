package me;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import tr.gov.turkiye.edevlet.kapisi.common.worker.barcode.BarcodeVerifyLoginWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.info.InfoMessageWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.ApprovalWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateModuleCheckWorker;
import ud.d0;

/* loaded from: classes3.dex */
public final class b implements le.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10380a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10381b;

    public /* synthetic */ b(int r12, Object obj) {
        this.f10380a = r12;
        this.f10381b = obj;
    }

    @Override // le.a
    public final CoroutineWorker a(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3) {
        int r12 = this.f10380a;
        Object obj = this.f10381b;
        switch (r12) {
            case 0:
                return new BarcodeVerifyLoginWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((a) obj).f10379a.get());
            case 1:
                return new InfoMessageWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((qe.c) obj).f13602a.get());
            case 2:
                return new ApprovalWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((ve.a) obj).f18572a.get());
            default:
                return new UpdateModuleCheckWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((ye.c) obj).f19656a.get());
        }
    }
}
