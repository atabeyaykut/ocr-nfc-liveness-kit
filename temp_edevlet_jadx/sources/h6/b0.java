package h6;

import android.util.Log;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class b0 implements Thread.UncaughtExceptionHandler {

    /* renamed from: a, reason: collision with root package name */
    public final a f6886a;

    /* renamed from: b, reason: collision with root package name */
    public final o6.d f6887b;

    /* renamed from: c, reason: collision with root package name */
    public final Thread.UncaughtExceptionHandler f6888c;

    /* renamed from: d, reason: collision with root package name */
    public final e6.a f6889d;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f6890e = new AtomicBoolean(false);

    public interface a {
    }

    public b0(k kVar, o6.c cVar, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, e6.a aVar) {
        this.f6886a = kVar;
        this.f6887b = cVar;
        this.f6888c = uncaughtExceptionHandler;
        this.f6889d = aVar;
    }

    public final boolean a(Thread thread, Throwable th2) {
        if (thread == null) {
            Log.e("FirebaseCrashlytics", "Crashlytics will not record uncaught exception; null thread", null);
            return false;
        }
        if (th2 == null) {
            Log.e("FirebaseCrashlytics", "Crashlytics will not record uncaught exception; null throwable", null);
            return false;
        }
        if (!this.f6889d.b()) {
            return true;
        }
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            Log.d("FirebaseCrashlytics", "Crashlytics will not record uncaught exception; native crash exists for session.", null);
        }
        return false;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th2) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f6888c;
        AtomicBoolean atomicBoolean = this.f6890e;
        atomicBoolean.set(true);
        try {
            try {
                if (a(thread, th2)) {
                    ((k) this.f6886a).a(this.f6887b, thread, th2);
                } else {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                        Log.d("FirebaseCrashlytics", "Uncaught exception will not be recorded by Crashlytics.", null);
                    }
                }
            } catch (Exception e10) {
                Log.e("FirebaseCrashlytics", "An error occurred in the uncaught exception handler", e10);
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                }
            }
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Completed exception processing. Invoking default exception handler.", null);
            }
            uncaughtExceptionHandler.uncaughtException(thread, th2);
            atomicBoolean.set(false);
        } catch (Throwable th3) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                Log.d("FirebaseCrashlytics", "Completed exception processing. Invoking default exception handler.", null);
            }
            uncaughtExceptionHandler.uncaughtException(thread, th2);
            atomicBoolean.set(false);
            throw th3;
        }
    }
}
