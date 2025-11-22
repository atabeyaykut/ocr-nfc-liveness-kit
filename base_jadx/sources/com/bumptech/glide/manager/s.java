package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.manager.c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class s {

    /* renamed from: d, reason: collision with root package name */
    public static volatile s f2798d;

    /* renamed from: a, reason: collision with root package name */
    public final c f2799a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    public final HashSet f2800b = new HashSet();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    public boolean f2801c;

    public class a implements q1.g<ConnectivityManager> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f2802a;

        public a(Context context) {
            this.f2802a = context;
        }

        @Override // q1.g
        public final ConnectivityManager get() {
            return (ConnectivityManager) this.f2802a.getSystemService("connectivity");
        }
    }

    public class b implements c.a {
        public b() {
        }

        @Override // com.bumptech.glide.manager.c.a
        public final void a(boolean z10) {
            ArrayList arrayList;
            q1.m.a();
            synchronized (s.this) {
                arrayList = new ArrayList(s.this.f2800b);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((c.a) it.next()).a(z10);
            }
        }
    }

    public interface c {
        boolean a();

        void b();
    }

    @RequiresApi(24)
    public static final class d implements c {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2804a;

        /* renamed from: b, reason: collision with root package name */
        public final c.a f2805b;

        /* renamed from: c, reason: collision with root package name */
        public final q1.g<ConnectivityManager> f2806c;

        /* renamed from: d, reason: collision with root package name */
        public final a f2807d = new a();

        public class a extends ConnectivityManager.NetworkCallback {
            public a() {
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(@NonNull Network network) {
                q1.m.e().post(new t(this, true));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(@NonNull Network network) {
                q1.m.e().post(new t(this, false));
            }
        }

        public d(q1.f fVar, b bVar) {
            this.f2806c = fVar;
            this.f2805b = bVar;
        }

        @Override // com.bumptech.glide.manager.s.c
        @SuppressLint({"MissingPermission"})
        public final boolean a() {
            q1.g<ConnectivityManager> gVar = this.f2806c;
            this.f2804a = gVar.get().getActiveNetwork() != null;
            try {
                gVar.get().registerDefaultNetworkCallback(this.f2807d);
                return true;
            } catch (RuntimeException e10) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to register callback", e10);
                }
                return false;
            }
        }

        @Override // com.bumptech.glide.manager.s.c
        public final void b() {
            this.f2806c.get().unregisterNetworkCallback(this.f2807d);
        }
    }

    public static final class e implements c {

        /* renamed from: g, reason: collision with root package name */
        public static final Executor f2809g = AsyncTask.SERIAL_EXECUTOR;

        /* renamed from: a, reason: collision with root package name */
        public final Context f2810a;

        /* renamed from: b, reason: collision with root package name */
        public final c.a f2811b;

        /* renamed from: c, reason: collision with root package name */
        public final q1.g<ConnectivityManager> f2812c;

        /* renamed from: d, reason: collision with root package name */
        public volatile boolean f2813d;

        /* renamed from: e, reason: collision with root package name */
        public volatile boolean f2814e;
        public final a f = new a();

        public class a extends BroadcastReceiver {
            public a() {
            }

            @Override // android.content.BroadcastReceiver
            public final void onReceive(@NonNull Context context, Intent intent) {
                e eVar = e.this;
                eVar.getClass();
                e.f2809g.execute(new u(eVar));
            }
        }

        public class b implements Runnable {
            public b() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                e eVar = e.this;
                eVar.f2813d = eVar.c();
                try {
                    e eVar2 = e.this;
                    eVar2.f2810a.registerReceiver(eVar2.f, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
                    e.this.f2814e = true;
                } catch (SecurityException e10) {
                    if (Log.isLoggable("ConnectivityMonitor", 5)) {
                        Log.w("ConnectivityMonitor", "Failed to register", e10);
                    }
                    e.this.f2814e = false;
                }
            }
        }

        public class c implements Runnable {
            public c() {
            }

            @Override // java.lang.Runnable
            public final void run() {
                if (e.this.f2814e) {
                    e.this.f2814e = false;
                    e eVar = e.this;
                    eVar.f2810a.unregisterReceiver(eVar.f);
                }
            }
        }

        public e(Context context, q1.f fVar, b bVar) {
            this.f2810a = context.getApplicationContext();
            this.f2812c = fVar;
            this.f2811b = bVar;
        }

        @Override // com.bumptech.glide.manager.s.c
        public final boolean a() {
            f2809g.execute(new b());
            return true;
        }

        @Override // com.bumptech.glide.manager.s.c
        public final void b() {
            f2809g.execute(new c());
        }

        @SuppressLint({"MissingPermission"})
        public final boolean c() {
            try {
                NetworkInfo activeNetworkInfo = this.f2812c.get().getActiveNetworkInfo();
                return activeNetworkInfo != null && activeNetworkInfo.isConnected();
            } catch (RuntimeException e10) {
                if (Log.isLoggable("ConnectivityMonitor", 5)) {
                    Log.w("ConnectivityMonitor", "Failed to determine connectivity status when connectivity changed", e10);
                }
                return true;
            }
        }
    }

    public s(@NonNull Context context) {
        q1.f fVar = new q1.f(new a(context));
        b bVar = new b();
        this.f2799a = Build.VERSION.SDK_INT >= 24 ? new d(fVar, bVar) : new e(context, fVar, bVar);
    }

    public static s a(@NonNull Context context) {
        if (f2798d == null) {
            synchronized (s.class) {
                if (f2798d == null) {
                    f2798d = new s(context.getApplicationContext());
                }
            }
        }
        return f2798d;
    }
}
