package v3;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.Build;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.NoSuchElementException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import r3.k1;
import r3.r;
import y3.c;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: b, reason: collision with root package name */
    public static final Object f18233b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static volatile a f18234c;

    /* renamed from: a, reason: collision with root package name */
    @NonNull
    public final ConcurrentHashMap f18235a = new ConcurrentHashMap();

    @NonNull
    public static a b() {
        if (f18234c == null) {
            synchronized (f18233b) {
                if (f18234c == null) {
                    f18234c = new a();
                }
            }
        }
        a aVar = f18234c;
        r.i(aVar);
        return aVar;
    }

    public final boolean a(@NonNull Context context, @NonNull Intent intent, @NonNull ServiceConnection serviceConnection, int r12) {
        return d(context, context.getClass().getName(), intent, serviceConnection, r12, null);
    }

    public final void c(@NonNull Context context, @NonNull ServiceConnection serviceConnection) {
        if (!(serviceConnection instanceof k1)) {
            ConcurrentHashMap concurrentHashMap = this.f18235a;
            if (concurrentHashMap.containsKey(serviceConnection)) {
                try {
                    try {
                        context.unbindService((ServiceConnection) concurrentHashMap.get(serviceConnection));
                    } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused) {
                    }
                    return;
                } finally {
                    concurrentHashMap.remove(serviceConnection);
                }
            }
        }
        try {
            context.unbindService(serviceConnection);
        } catch (IllegalArgumentException | IllegalStateException | NoSuchElementException unused2) {
        }
    }

    public final boolean d(Context context, String str, Intent intent, ServiceConnection serviceConnection, int r12, Executor executor) {
        ComponentName component = intent.getComponent();
        if (component != null) {
            String packageName = component.getPackageName();
            "com.google.android.gms".equals(packageName);
            try {
                if ((c.a(context).a(0, packageName).flags & 2097152) != 0) {
                    Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
                    return false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        boolean z10 = true;
        if (!(!(serviceConnection instanceof k1))) {
            return (!(Build.VERSION.SDK_INT >= 29) || executor == null) ? context.bindService(intent, serviceConnection, r12) : context.bindService(intent, r12, executor, serviceConnection);
        }
        ConcurrentHashMap concurrentHashMap = this.f18235a;
        ServiceConnection serviceConnection2 = (ServiceConnection) concurrentHashMap.putIfAbsent(serviceConnection, serviceConnection);
        if (serviceConnection2 != null && serviceConnection != serviceConnection2) {
            Log.w("ConnectionTracker", String.format("Duplicate binding with the same ServiceConnection: %s, %s, %s.", serviceConnection, str, intent.getAction()));
        }
        try {
            if (Build.VERSION.SDK_INT < 29) {
                z10 = false;
            }
            boolean zBindService = (!z10 || executor == null) ? context.bindService(intent, serviceConnection, r12) : context.bindService(intent, r12, executor, serviceConnection);
            if (zBindService) {
                return zBindService;
            }
            concurrentHashMap.remove(serviceConnection, serviceConnection);
            return false;
        } catch (Throwable th2) {
            concurrentHashMap.remove(serviceConnection, serviceConnection);
            throw th2;
        }
    }
}
