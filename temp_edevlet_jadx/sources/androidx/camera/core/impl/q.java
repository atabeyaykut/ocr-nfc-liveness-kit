package androidx.camera.core.impl;

import android.app.job.JobParameters;
import android.graphics.Typeface;
import androidx.core.content.res.ResourcesCompat;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoSchedulerService;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f719a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f720b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f721c;

    public /* synthetic */ q(int r12, Object obj, Object obj2) {
        this.f719a = r12;
        this.f720b = obj;
        this.f721c = obj2;
    }

    @Override // java.lang.Runnable
    public final void run() throws ExecutionException, InterruptedException {
        int r02 = this.f719a;
        Object obj = this.f721c;
        Object obj2 = this.f720b;
        switch (r02) {
            case 0:
                ((DeferrableSurface) obj2).lambda$new$1((String) obj);
                break;
            case 1:
                ((ResourcesCompat.FontCallback) obj2).lambda$callbackSuccessAsync$0((Typeface) obj);
                break;
            default:
                int r03 = JobInfoSchedulerService.f2932a;
                ((JobInfoSchedulerService) obj2).jobFinished((JobParameters) obj, false);
                break;
        }
    }
}
