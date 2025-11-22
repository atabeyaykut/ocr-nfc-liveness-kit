package androidx.camera.core.impl;

import androidx.work.Data;
import androidx.work.OneTimeWorkRequest;
import androidx.work.WorkManager;
import tr.gov.turkiye.edevlet.kapisi.common.worker.nfc.CardVerificationWorker;
import tr.gov.turkiye.edevlet.kapisi.verification.CardReadActivity;

/* loaded from: classes.dex */
public final /* synthetic */ class l implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f711a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f712b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f713c;

    public /* synthetic */ l(int r12, Object obj, Object obj2) {
        this.f711a = r12;
        this.f712b = obj;
        this.f713c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int r02 = this.f711a;
        Object obj = this.f713c;
        Object obj2 = this.f712b;
        switch (r02) {
            case 0:
                ((CameraRepository) obj2).lambda$deinit$1((CameraInternal) obj);
                break;
            default:
                Data approveWorkData = (Data) obj2;
                CardReadActivity this$0 = (CardReadActivity) obj;
                kotlin.jvm.internal.h.f(approveWorkData, "$approveWorkData");
                kotlin.jvm.internal.h.f(this$0, "this$0");
                OneTimeWorkRequest oneTimeWorkRequestBuild = new OneTimeWorkRequest.Builder(CardVerificationWorker.class).setInputData(approveWorkData).build();
                kotlin.jvm.internal.h.e(oneTimeWorkRequestBuild, "OneTimeWorkRequestBuilde…                 .build()");
                WorkManager.getInstance(this$0).enqueue(oneTimeWorkRequestBuild);
                break;
        }
    }
}
