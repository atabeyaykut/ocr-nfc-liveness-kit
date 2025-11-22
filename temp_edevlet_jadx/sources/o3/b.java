package o3;

import android.app.Activity;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class b implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: e, reason: collision with root package name */
    public static final b f11087e = new b();

    /* renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f11088a = new AtomicBoolean();

    /* renamed from: b, reason: collision with root package name */
    public final AtomicBoolean f11089b = new AtomicBoolean();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f11090c = new ArrayList();

    /* renamed from: d, reason: collision with root package name */
    public boolean f11091d = false;

    public interface a {
        void a(boolean z10);
    }

    public static void b(@NonNull Application application) {
        b bVar = f11087e;
        synchronized (bVar) {
            if (!bVar.f11091d) {
                application.registerActivityLifecycleCallbacks(bVar);
                application.registerComponentCallbacks(bVar);
                bVar.f11091d = true;
            }
        }
    }

    public final void a(@NonNull a aVar) {
        synchronized (f11087e) {
            this.f11090c.add(aVar);
        }
    }

    public final void c(boolean z10) {
        synchronized (f11087e) {
            Iterator it = this.f11090c.iterator();
            while (it.hasNext()) {
                ((a) it.next()).a(z10);
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        boolean zCompareAndSet = this.f11088a.compareAndSet(true, false);
        this.f11089b.set(true);
        if (zCompareAndSet) {
            c(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(@NonNull Activity activity) {
        boolean zCompareAndSet = this.f11088a.compareAndSet(true, false);
        this.f11089b.set(true);
        if (zCompareAndSet) {
            c(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(@NonNull Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(@NonNull Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int r32) {
        if (r32 == 20 && this.f11088a.compareAndSet(false, true)) {
            this.f11089b.set(true);
            c(true);
        }
    }
}
