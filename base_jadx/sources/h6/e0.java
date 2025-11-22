package h6;

import android.util.Log;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class e0 extends c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ String f6906a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ExecutorService f6907b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ long f6908c = 2;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ TimeUnit f6909d;

    public e0(String str, ExecutorService executorService, TimeUnit timeUnit) {
        this.f6906a = str;
        this.f6907b = executorService;
        this.f6909d = timeUnit;
    }

    @Override // h6.c
    public final void a() {
        String str = this.f6906a;
        ExecutorService executorService = this.f6907b;
        try {
            String str2 = "Executing shutdown hook for " + str;
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str2, null);
            }
            executorService.shutdown();
            if (executorService.awaitTermination(this.f6908c, this.f6909d)) {
                return;
            }
            String str3 = str + " did not shut down in the allocated time. Requesting immediate shutdown.";
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str3, null);
            }
            executorService.shutdownNow();
        } catch (InterruptedException unused) {
            String str4 = String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", str);
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str4, null);
            }
            executorService.shutdownNow();
        }
    }
}
