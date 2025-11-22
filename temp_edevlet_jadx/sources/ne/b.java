package ne;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import tr.gov.turkiye.edevlet.kapisi.common.worker.editor.EditorChoiceWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.mkt.DownloadMediaWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.otp.TimeWorker;
import ud.d0;
import ve.c;

/* loaded from: classes3.dex */
public final class b implements le.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f10876a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f10877b;

    public /* synthetic */ b(int r12, Object obj) {
        this.f10876a = r12;
        this.f10877b = obj;
    }

    @Override // le.a
    public final CoroutineWorker a(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3) {
        int r12 = this.f10876a;
        Object obj = this.f10877b;
        switch (r12) {
            case 0:
                return new EditorChoiceWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((a) obj).f10875a.get());
            case 1:
                return new DownloadMediaWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((se.b) obj).f15388a.get());
            default:
                return new TimeWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((c) obj).f18574a.get());
        }
    }
}
