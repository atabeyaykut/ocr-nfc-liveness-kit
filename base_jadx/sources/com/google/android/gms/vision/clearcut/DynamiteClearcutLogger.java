package com.google.android.gms.vision.clearcut;

import android.content.Context;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.vision.r;
import j5.a;
import j5.b;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

@Keep
/* loaded from: classes.dex */
public class DynamiteClearcutLogger {
    private static final ExecutorService zza;
    private b zzb = new b();
    private VisionClearcutLogger zzc;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(2, 2, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), Executors.defaultThreadFactory());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        zza = Executors.unconfigurableExecutorService(threadPoolExecutor);
    }

    public DynamiteClearcutLogger(@RecentlyNonNull Context context) {
        this.zzc = new VisionClearcutLogger(context);
    }

    public final void zza(int r92, r rVar) {
        boolean z10;
        if (r92 == 3) {
            b bVar = this.zzb;
            synchronized (bVar.f8005b) {
                long jCurrentTimeMillis = System.currentTimeMillis();
                if (bVar.f8006c + bVar.f8004a > jCurrentTimeMillis) {
                    z10 = false;
                } else {
                    bVar.f8006c = jCurrentTimeMillis;
                    z10 = true;
                }
            }
            if (!z10) {
                Object[] objArr = new Object[0];
                if (Log.isLoggable("Vision", 2)) {
                    Log.v("Vision", String.format("Skipping image analysis log due to rate limiting", objArr));
                    return;
                }
                return;
            }
        }
        zza.execute(new a(this, r92, rVar));
    }
}
