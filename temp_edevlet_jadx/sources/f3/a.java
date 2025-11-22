package f3;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import d4.d;
import d4.e;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
import m3.f;
import m3.g;
import m3.h;
import r3.r;

/* loaded from: classes.dex */
public final class a {

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public m3.a f5505a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public e f5506b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f5507c;

    /* renamed from: d, reason: collision with root package name */
    public final Object f5508d = new Object();

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    public c f5509e;
    public final Context f;

    /* renamed from: g, reason: collision with root package name */
    public final long f5510g;

    /* renamed from: f3.a$a, reason: collision with other inner class name */
    public static final class C0086a {

        /* renamed from: a, reason: collision with root package name */
        @Nullable
        public final String f5511a;

        /* renamed from: b, reason: collision with root package name */
        public final boolean f5512b;

        @Deprecated
        public C0086a(@Nullable String str, boolean z10) {
            this.f5511a = str;
            this.f5512b = z10;
        }

        @NonNull
        public final String toString() {
            String str = this.f5511a;
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 7);
            sb2.append("{");
            sb2.append(str);
            sb2.append("}");
            sb2.append(this.f5512b);
            return sb2.toString();
        }
    }

    public a(@NonNull Context context) {
        r.i(context);
        Context applicationContext = context.getApplicationContext();
        this.f = applicationContext != null ? applicationContext : context;
        this.f5507c = false;
        this.f5510g = -1L;
    }

    @NonNull
    public static C0086a a(@NonNull Context context) throws IllegalStateException, h, IOException, g {
        a aVar = new a(context);
        try {
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            aVar.c();
            C0086a c0086aE = aVar.e();
            d(c0086aE, SystemClock.elapsedRealtime() - jElapsedRealtime, null);
            return c0086aE;
        } finally {
        }
    }

    public static void d(@Nullable C0086a c0086a, long j10, @Nullable Throwable th2) {
        if (Math.random() <= 0.0d) {
            HashMap map = new HashMap();
            map.put("app_context", "1");
            if (c0086a != null) {
                map.put("limit_ad_tracking", true != c0086a.f5512b ? "0" : "1");
                String str = c0086a.f5511a;
                if (str != null) {
                    map.put("ad_id_size", Integer.toString(str.length()));
                }
            }
            if (th2 != null) {
                map.put("error", th2.getClass().getName());
            }
            map.put("tag", "AdvertisingIdClient");
            map.put("time_spent", Long.toString(j10));
            new b(map).start();
        }
    }

    public final void b() {
        r.h("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f == null || this.f5505a == null) {
                return;
            }
            try {
                if (this.f5507c) {
                    v3.a.b().c(this.f, this.f5505a);
                }
            } catch (Throwable th2) {
                Log.i("AdvertisingIdClient", "AdvertisingIdClient unbindService failed.", th2);
            }
            this.f5507c = false;
            this.f5506b = null;
            this.f5505a = null;
        }
    }

    public final void c() throws IllegalStateException, h, IOException, g {
        r.h("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f5507c) {
                b();
            }
            Context context = this.f;
            try {
                context.getPackageManager().getPackageInfo("com.android.vending", 0);
                int r12 = f.f9946b.c(12451000, context);
                if (r12 != 0 && r12 != 2) {
                    throw new IOException("Google Play services not available");
                }
                m3.a aVar = new m3.a();
                Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
                intent.setPackage("com.google.android.gms");
                try {
                    if (!v3.a.b().a(context, intent, aVar, 1)) {
                        throw new IOException("Connection failure");
                    }
                    this.f5505a = aVar;
                    try {
                        IBinder iBinderA = aVar.a(TimeUnit.MILLISECONDS);
                        int r13 = d.f4657a;
                        IInterface iInterfaceQueryLocalInterface = iBinderA.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                        this.f5506b = iInterfaceQueryLocalInterface instanceof e ? (e) iInterfaceQueryLocalInterface : new d4.c(iBinderA);
                        this.f5507c = true;
                    } catch (InterruptedException unused) {
                        throw new IOException("Interrupted exception");
                    } catch (Throwable th2) {
                        throw new IOException(th2);
                    }
                } finally {
                    IOException iOException = new IOException(th2);
                }
            } catch (PackageManager.NameNotFoundException unused2) {
                throw new g(9);
            }
        }
    }

    public final C0086a e() throws IOException {
        C0086a c0086a;
        r.h("Calling this from your main thread can lead to deadlock");
        synchronized (this) {
            if (this.f5507c) {
                r.i(this.f5505a);
                r.i(this.f5506b);
                c0086a = new C0086a(this.f5506b.c(), this.f5506b.e());
            } else {
                synchronized (this.f5508d) {
                    c cVar = this.f5509e;
                    if (cVar == null || !cVar.f5517d) {
                        throw new IOException("AdvertisingIdClient is not connected.");
                    }
                }
                try {
                    c();
                    if (!this.f5507c) {
                        throw new IOException("AdvertisingIdClient cannot reconnect.");
                    }
                    r.i(this.f5505a);
                    r.i(this.f5506b);
                    try {
                        c0086a = new C0086a(this.f5506b.c(), this.f5506b.e());
                    } catch (RemoteException e10) {
                        Log.i("AdvertisingIdClient", "GMS remote exception ", e10);
                        throw new IOException("Remote exception");
                    }
                } catch (Exception e11) {
                    throw new IOException("AdvertisingIdClient cannot reconnect.", e11);
                }
            }
        }
        f();
        return c0086a;
    }

    public final void f() {
        synchronized (this.f5508d) {
            c cVar = this.f5509e;
            if (cVar != null) {
                cVar.f5516c.countDown();
                try {
                    this.f5509e.join();
                } catch (InterruptedException unused) {
                }
            }
            long j10 = this.f5510g;
            if (j10 > 0) {
                this.f5509e = new c(this, j10);
            }
        }
    }

    public final void finalize() throws Throwable {
        b();
        super.finalize();
    }
}
