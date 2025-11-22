package pe;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteOperationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSVerificationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.service.ServiceDetailWorker;
import ud.d0;

/* loaded from: classes3.dex */
public final class d implements le.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13129a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13130b;

    public /* synthetic */ d(int r12, Object obj) {
        this.f13129a = r12;
        this.f13130b = obj;
    }

    @Override // le.a
    public final CoroutineWorker a(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3) {
        int r12 = this.f13129a;
        Object obj = this.f13130b;
        switch (r12) {
            case 0:
                return new FavoriteOperationWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((c) obj).f13128a.get());
            case 1:
                return new SMSVerificationWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((te.d) obj).f15676a.get());
            default:
                return new ServiceDetailWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((xe.b) obj).f19227a.get());
        }
    }
}
