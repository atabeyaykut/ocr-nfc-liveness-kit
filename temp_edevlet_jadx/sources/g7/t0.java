package g7;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.PowerManager;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class t0 implements Runnable {
    public static final Object f = new Object();

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")
    public static Boolean f5926g;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("TOPIC_SYNC_TASK_LOCK")
    public static Boolean f5927h;

    /* renamed from: a, reason: collision with root package name */
    public final Context f5928a;

    /* renamed from: b, reason: collision with root package name */
    public final d0 f5929b;

    /* renamed from: c, reason: collision with root package name */
    public final PowerManager.WakeLock f5930c;

    /* renamed from: d, reason: collision with root package name */
    public final s0 f5931d;

    /* renamed from: e, reason: collision with root package name */
    public final long f5932e;

    @VisibleForTesting
    public class a extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        @GuardedBy("this")
        public t0 f5933a;

        public a(t0 t0Var) {
            this.f5933a = t0Var;
        }

        public final void a() {
            if (Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3))) {
                Log.d("FirebaseMessaging", "Connectivity change received registered");
            }
            t0.this.f5928a.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        }

        @Override // android.content.BroadcastReceiver
        public final synchronized void onReceive(Context context, Intent intent) {
            t0 t0Var = this.f5933a;
            if (t0Var == null) {
                return;
            }
            if (t0Var.d()) {
                if (Log.isLoggable("FirebaseMessaging", 3) || (Build.VERSION.SDK_INT == 23 && Log.isLoggable("FirebaseMessaging", 3))) {
                    Log.d("FirebaseMessaging", "Connectivity changed. Starting background sync.");
                }
                t0 t0Var2 = this.f5933a;
                t0Var2.f5931d.f.schedule(t0Var2, 0L, TimeUnit.SECONDS);
                context.unregisterReceiver(this);
                this.f5933a = null;
            }
        }
    }

    public t0(s0 s0Var, Context context, d0 d0Var, long j10) {
        this.f5931d = s0Var;
        this.f5928a = context;
        this.f5932e = j10;
        this.f5929b = d0Var;
        this.f5930c = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "wake:com.google.firebase.messaging");
    }

    public static boolean a(Context context) {
        boolean zBooleanValue;
        synchronized (f) {
            Boolean bool = f5927h;
            Boolean boolValueOf = Boolean.valueOf(bool == null ? b(context, "android.permission.ACCESS_NETWORK_STATE", bool) : bool.booleanValue());
            f5927h = boolValueOf;
            zBooleanValue = boolValueOf.booleanValue();
        }
        return zBooleanValue;
    }

    public static boolean b(Context context, String str, Boolean bool) {
        if (bool != null) {
            return bool.booleanValue();
        }
        boolean z10 = context.checkCallingOrSelfPermission(str) == 0;
        if (z10 || !Log.isLoggable("FirebaseMessaging", 3)) {
            return z10;
        }
        StringBuilder sb2 = new StringBuilder(str.length() + 142);
        sb2.append("Missing Permission: ");
        sb2.append(str);
        sb2.append(". This permission should normally be included by the manifest merger, but may needed to be manually added to your manifest");
        Log.d("FirebaseMessaging", sb2.toString());
        return false;
    }

    public static boolean c(Context context) {
        boolean zBooleanValue;
        synchronized (f) {
            Boolean bool = f5926g;
            Boolean boolValueOf = Boolean.valueOf(bool == null ? b(context, "android.permission.WAKE_LOCK", bool) : bool.booleanValue());
            f5926g = boolValueOf;
            zBooleanValue = boolValueOf.booleanValue();
        }
        return zBooleanValue;
    }

    public final synchronized boolean d() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f5928a.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        if (activeNetworkInfo != null) {
            if (activeNetworkInfo.isConnected()) {
                return true;
            }
        }
        return false;
    }

    @Override // java.lang.Runnable
    @SuppressLint({"Wakelock"})
    public final void run() {
        s0 s0Var = this.f5931d;
        Context context = this.f5928a;
        boolean zC = c(context);
        PowerManager.WakeLock wakeLock = this.f5930c;
        if (zC) {
            wakeLock.acquire(b.f5837a);
        }
        try {
            try {
                synchronized (s0Var) {
                    s0Var.f5923g = true;
                }
                if (!this.f5929b.e()) {
                    s0Var.f(false);
                    if (c(context)) {
                        try {
                            wakeLock.release();
                            return;
                        } catch (RuntimeException unused) {
                            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                            return;
                        }
                    }
                    return;
                }
                if (a(context) && !d()) {
                    new a(this).a();
                    if (c(context)) {
                        try {
                            wakeLock.release();
                            return;
                        } catch (RuntimeException unused2) {
                            Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                            return;
                        }
                    }
                    return;
                }
                if (s0Var.g()) {
                    s0Var.f(false);
                } else {
                    s0Var.h(this.f5932e);
                }
                if (c(context)) {
                    try {
                        wakeLock.release();
                    } catch (RuntimeException unused3) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            } catch (IOException e10) {
                String strValueOf = String.valueOf(e10.getMessage());
                Log.e("FirebaseMessaging", strValueOf.length() != 0 ? "Failed to sync topics. Won't retry sync. ".concat(strValueOf) : new String("Failed to sync topics. Won't retry sync. "));
                s0Var.f(false);
                if (c(context)) {
                    try {
                        wakeLock.release();
                    } catch (RuntimeException unused4) {
                        Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                    }
                }
            }
        } catch (Throwable th2) {
            if (c(context)) {
                try {
                    wakeLock.release();
                } catch (RuntimeException unused5) {
                    Log.i("FirebaseMessaging", "TopicsSyncTask's wakelock was already released due to timeout.");
                }
            }
            throw th2;
        }
    }
}
