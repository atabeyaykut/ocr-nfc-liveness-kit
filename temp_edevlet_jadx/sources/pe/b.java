package pe;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import tr.gov.turkiye.edevlet.kapisi.common.worker.favorite.FavoriteListWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.UpdateTokenWorker;
import ud.d0;

/* loaded from: classes3.dex */
public final class b implements le.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13126a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f13127b;

    public /* synthetic */ b(int r12, Object obj) {
        this.f13126a = r12;
        this.f13127b = obj;
    }

    @Override // le.a
    public final CoroutineWorker a(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3) {
        int r12 = this.f13126a;
        Object obj = this.f13127b;
        switch (r12) {
            case 0:
                return new FavoriteListWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((a) obj).f13125a.get());
            case 1:
                return new CardVerificationWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((te.a) obj).f15672a.get());
            default:
                return new UpdateTokenWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((ve.d) obj).f18575a.get());
        }
    }
}
