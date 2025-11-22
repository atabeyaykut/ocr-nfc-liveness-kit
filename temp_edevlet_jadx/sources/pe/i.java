package pe;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.UnfavoriteOperationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.notification.RegisterWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateLogWorker;
import ud.d0;

/* loaded from: classes3.dex */
public final class i implements le.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13137a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13138b;

    public /* synthetic */ i(int r12, Object obj) {
        this.f13137a = r12;
        this.f13138b = obj;
    }

    @Override // le.a
    public final CoroutineWorker a(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3) {
        int r12 = this.f13137a;
        Object obj = this.f13138b;
        switch (r12) {
            case 0:
                return new UnfavoriteOperationWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((h) obj).f13136a.get());
            case 1:
                return new RegisterWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((ue.a) obj).f18116a.get());
            default:
                return new UpdateLogWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((ye.b) obj).f19655a.get());
        }
    }
}
