package te;

import android.content.Context;
import androidx.work.CoroutineWorker;
import androidx.work.WorkerParameters;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.SMSRequestWorker;
import tr.gov.turkiye.edevlet.kapisi.common.worker.section.SectionListWorker;
import ud.d0;

/* loaded from: classes3.dex */
public final class c implements le.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15674a;

    /* renamed from: b, reason: collision with root package name */
    public final Object f15675b;

    public /* synthetic */ c(int r12, Object obj) {
        this.f15674a = r12;
        this.f15675b = obj;
    }

    @Override // le.a
    public final CoroutineWorker a(Context context, WorkerParameters workerParameters, d0 d0Var, d0 d0Var2, d0 d0Var3, d0 d0Var4, String str, String str2, String str3) {
        int r12 = this.f15674a;
        Object obj = this.f15675b;
        switch (r12) {
            case 0:
                return new SMSRequestWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((b) obj).f15673a.get());
            default:
                return new SectionListWorker(context, workerParameters, d0Var, d0Var2, d0Var3, d0Var4, str, str2, str3, ((we.a) obj).f18891a.get());
        }
    }
}
