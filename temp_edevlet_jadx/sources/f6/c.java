package f6;

import android.os.Bundle;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import c5.y;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class c implements b, a {

    /* renamed from: a, reason: collision with root package name */
    public final e f5532a;

    /* renamed from: b, reason: collision with root package name */
    public final TimeUnit f5533b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5534c = new Object();

    /* renamed from: d, reason: collision with root package name */
    public CountDownLatch f5535d;

    public c(@NonNull e eVar, TimeUnit timeUnit) {
        this.f5532a = eVar;
        this.f5533b = timeUnit;
    }

    @Override // f6.a
    public final void a(@Nullable Bundle bundle) {
        synchronized (this.f5534c) {
            y yVar = y.f2129g;
            yVar.E("Logging event _ae to Firebase Analytics with params " + bundle);
            this.f5535d = new CountDownLatch(1);
            this.f5532a.a(bundle);
            yVar.E("Awaiting app exception callback from Analytics...");
            try {
                if (this.f5535d.await(500, this.f5533b)) {
                    yVar.E("App exception callback received from Analytics listener.");
                } else {
                    yVar.F("Timeout exceeded while awaiting app exception callback from Analytics listener.", null);
                }
            } catch (InterruptedException unused) {
                Log.e("FirebaseCrashlytics", "Interrupted while awaiting app exception callback from Analytics listener.", null);
            }
            this.f5535d = null;
        }
    }

    @Override // f6.b
    public final void b(@NonNull Bundle bundle, @NonNull String str) {
        CountDownLatch countDownLatch = this.f5535d;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
