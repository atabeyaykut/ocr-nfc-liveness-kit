package te;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.TokenRequestWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.update.UpdateCheckWorker;
import ud.d0;

/* loaded from: classes3.dex */
public final class f implements le.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15678a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f15679b;

    public /* synthetic */ f(int r12, Object obj) {
        this.f15678a = r12;
        this.f15679b = obj;
    }

    @Override // le.a
    public final CoroutineWorker a(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3) {
        int r12 = this.f15678a;
        Object obj = this.f15679b;
        switch (r12) {
            case 0:
                return new TokenRequestWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((e) obj).f15677a.get());
            default:
                return new UpdateCheckWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((ye.a) obj).f19654a.get());
        }
    }
}
