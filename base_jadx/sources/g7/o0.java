package g7;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.PowerManager;
import android.util.Log;
import com.google.firebase.messaging.FirebaseMessaging;
import java.io.IOException;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public final class o0 implements Runnable {

    /* renamed from: a, reason: collision with root package name */
    public final long f5892a;

    /* renamed from: b, reason: collision with root package name */
    public final PowerManager.WakeLock f5893b;

    /* renamed from: c, reason: collision with root package name */
    public final FirebaseMessaging f5894c;

    public static class a extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        public o0 f5895a;

        public a(o0 o0Var) {
            this.f5895a = o0Var;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x0016  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void a() {
            /*
                r5 = this;
                java.lang.String r0 = "FirebaseMessaging"
                r1 = 3
                boolean r2 = android.util.Log.isLoggable(r0, r1)
                if (r2 != 0) goto L16
                int r2 = android.os.Build.VERSION.SDK_INT
                r3 = 23
                r4 = 0
                if (r2 != r3) goto L18
                boolean r1 = android.util.Log.isLoggable(r0, r1)
                if (r1 == 0) goto L18
            L16:
                r1 = 1
                r4 = 1
            L18:
                if (r4 == 0) goto L1f
                java.lang.String r1 = "Connectivity change received registered"
                android.util.Log.d(r0, r1)
            L1f:
                android.content.IntentFilter r0 = new android.content.IntentFilter
                java.lang.String r1 = "android.net.conn.CONNECTIVITY_CHANGE"
                r0.<init>(r1)
                g7.o0 r1 = r5.f5895a
                com.google.firebase.messaging.FirebaseMessaging r1 = r1.f5894c
                android.content.Context r1 = r1.f4416d
                r1.registerReceiver(r5, r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: g7.o0.a.a():void");
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0022  */
        @Override // android.content.BroadcastReceiver
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void onReceive(android.content.Context r4, android.content.Intent r5) {
            /*
                r3 = this;
                g7.o0 r4 = r3.f5895a
                if (r4 != 0) goto L5
                return
            L5:
                boolean r4 = r4.a()
                if (r4 != 0) goto Lc
                return
            Lc:
                java.lang.String r4 = "FirebaseMessaging"
                r5 = 3
                boolean r0 = android.util.Log.isLoggable(r4, r5)
                if (r0 != 0) goto L22
                int r0 = android.os.Build.VERSION.SDK_INT
                r1 = 23
                r2 = 0
                if (r0 != r1) goto L24
                boolean r5 = android.util.Log.isLoggable(r4, r5)
                if (r5 == 0) goto L24
            L22:
                r5 = 1
                r2 = 1
            L24:
                if (r2 == 0) goto L2b
                java.lang.String r5 = "Connectivity changed. Starting background sync."
                android.util.Log.d(r4, r5)
            L2b:
                g7.o0 r4 = r3.f5895a
                com.google.firebase.messaging.FirebaseMessaging r5 = r4.f5894c
                r5.getClass()
                r0 = 0
                com.google.firebase.messaging.FirebaseMessaging.b(r4, r0)
                g7.o0 r4 = r3.f5895a
                com.google.firebase.messaging.FirebaseMessaging r4 = r4.f5894c
                android.content.Context r4 = r4.f4416d
                r4.unregisterReceiver(r3)
                r4 = 0
                r3.f5895a = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: g7.o0.a.onReceive(android.content.Context, android.content.Intent):void");
        }
    }

    @SuppressLint({"InvalidWakeLockTag"})
    public o0(FirebaseMessaging firebaseMessaging, long j10) {
        new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new x3.a("firebase-iid-executor"));
        this.f5894c = firebaseMessaging;
        this.f5892a = j10;
        PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) firebaseMessaging.f4416d.getSystemService("power")).newWakeLock(1, "fiid-sync");
        this.f5893b = wakeLockNewWakeLock;
        wakeLockNewWakeLock.setReferenceCounted(false);
    }

    public final boolean a() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.f5894c.f4416d.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final boolean b() throws IOException {
        String string;
        boolean z10 = true;
        try {
            if (this.f5894c.a() == null) {
                Log.e("FirebaseMessaging", "Token retrieval failed: null");
                return false;
            }
            if (Log.isLoggable("FirebaseMessaging", 3)) {
                Log.d("FirebaseMessaging", "Token successfully retrieved");
            }
            return true;
        } catch (IOException e10) {
            String message = e10.getMessage();
            if (!"SERVICE_NOT_AVAILABLE".equals(message) && !"INTERNAL_SERVER_ERROR".equals(message) && !"InternalServerError".equals(message)) {
                z10 = false;
            }
            if (z10) {
                String message2 = e10.getMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(message2).length() + 52);
                sb2.append("Token retrieval failed: ");
                sb2.append(message2);
                sb2.append(". Will retry token retrieval");
                string = sb2.toString();
            } else {
                if (e10.getMessage() != null) {
                    throw e10;
                }
                string = "Token retrieval failed without exception message. Will retry token retrieval";
            }
            Log.w("FirebaseMessaging", string);
            return false;
        } catch (SecurityException unused) {
            string = "Token retrieval failed with SecurityException. Will retry token retrieval";
            Log.w("FirebaseMessaging", string);
            return false;
        }
    }

    @Override // java.lang.Runnable
    @SuppressLint({"WakelockTimeout"})
    public final void run() {
        l0 l0VarA = l0.a();
        FirebaseMessaging firebaseMessaging = this.f5894c;
        boolean zC = l0VarA.c(firebaseMessaging.f4416d);
        PowerManager.WakeLock wakeLock = this.f5893b;
        if (zC) {
            wakeLock.acquire();
        }
        try {
            try {
                synchronized (firebaseMessaging) {
                    firebaseMessaging.f4421j = true;
                }
                if (!firebaseMessaging.f4420i.e()) {
                    firebaseMessaging.h(false);
                    if (l0.a().c(firebaseMessaging.f4416d)) {
                        wakeLock.release();
                        return;
                    }
                    return;
                }
                if (l0.a().b(firebaseMessaging.f4416d) && !a()) {
                    new a(this).a();
                    if (l0.a().c(firebaseMessaging.f4416d)) {
                        wakeLock.release();
                        return;
                    }
                    return;
                }
                if (b()) {
                    firebaseMessaging.h(false);
                } else {
                    firebaseMessaging.j(this.f5892a);
                }
                if (l0.a().c(firebaseMessaging.f4416d)) {
                    wakeLock.release();
                }
            } catch (IOException e10) {
                String message = e10.getMessage();
                StringBuilder sb2 = new StringBuilder(String.valueOf(message).length() + 93);
                sb2.append("Topic sync or token retrieval failed on hard failure exceptions: ");
                sb2.append(message);
                sb2.append(". Won't retry the operation.");
                Log.e("FirebaseMessaging", sb2.toString());
                firebaseMessaging.h(false);
                if (l0.a().c(firebaseMessaging.f4416d)) {
                    wakeLock.release();
                }
            }
        } catch (Throwable th2) {
            if (l0.a().c(firebaseMessaging.f4416d)) {
                wakeLock.release();
            }
            throw th2;
        }
    }
}
