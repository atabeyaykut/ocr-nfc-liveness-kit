package h6;

import android.util.Log;
import androidx.annotation.NonNull;
import h6.b0;

/* loaded from: classes2.dex */
public final class k implements b0.a {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ t f6929a;

    public k(t tVar) {
        this.f6929a = tVar;
    }

    public final void a(@NonNull o6.d dVar, @NonNull Thread thread, @NonNull Throwable th2) {
        t tVar = this.f6929a;
        synchronized (tVar) {
            String str = "Handling uncaught exception \"" + th2 + "\" from thread " + thread.getName();
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", str, null);
            }
            try {
                p0.a(tVar.f6962d.b(new m(tVar, System.currentTimeMillis(), th2, thread, dVar)));
            } catch (Exception e10) {
                Log.e("FirebaseCrashlytics", "Error handling uncaught exception", e10);
            }
        }
    }
}
