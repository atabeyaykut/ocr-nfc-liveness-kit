package x5;

import android.annotation.TargetApi;
import android.app.Application;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Base64;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import androidx.core.os.UserManagerCompat;
import c6.g;
import c6.m;
import c6.t;
import com.google.firebase.FirebaseCommonRegistrar;
import com.google.firebase.components.ComponentDiscoveryService;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import o3.b;
import r3.p;
import r3.r;

/* loaded from: classes2.dex */
public final class c {

    /* renamed from: i, reason: collision with root package name */
    public static final Object f19162i = new Object();

    /* renamed from: j, reason: collision with root package name */
    public static final ExecutorC0301c f19163j = new ExecutorC0301c();

    /* renamed from: k, reason: collision with root package name */
    public static final ArrayMap f19164k = new ArrayMap();

    /* renamed from: a, reason: collision with root package name */
    public final Context f19165a;

    /* renamed from: b, reason: collision with root package name */
    public final String f19166b;

    /* renamed from: c, reason: collision with root package name */
    public final e f19167c;

    /* renamed from: d, reason: collision with root package name */
    public final m f19168d;

    /* renamed from: g, reason: collision with root package name */
    public final t<f7.a> f19170g;

    /* renamed from: e, reason: collision with root package name */
    public final AtomicBoolean f19169e = new AtomicBoolean(false);
    public final AtomicBoolean f = new AtomicBoolean();

    /* renamed from: h, reason: collision with root package name */
    public final CopyOnWriteArrayList f19171h = new CopyOnWriteArrayList();

    public interface a {
        void a();
    }

    @TargetApi(14)
    public static class b implements b.a {

        /* renamed from: a, reason: collision with root package name */
        public static final AtomicReference<b> f19172a = new AtomicReference<>();

        @Override // o3.b.a
        public final void a(boolean z10) {
            synchronized (c.f19162i) {
                Iterator it = new ArrayList(c.f19164k.values()).iterator();
                while (it.hasNext()) {
                    c cVar = (c) it.next();
                    if (cVar.f19169e.get()) {
                        Log.d("FirebaseApp", "Notifying background state change listeners.");
                        Iterator it2 = cVar.f19171h.iterator();
                        while (it2.hasNext()) {
                            ((a) it2.next()).a();
                        }
                    }
                }
            }
        }
    }

    /* renamed from: x5.c$c, reason: collision with other inner class name */
    public static class ExecutorC0301c implements Executor {

        /* renamed from: a, reason: collision with root package name */
        public static final Handler f19173a = new Handler(Looper.getMainLooper());

        @Override // java.util.concurrent.Executor
        public final void execute(@NonNull Runnable runnable) {
            f19173a.post(runnable);
        }
    }

    @TargetApi(24)
    public static class d extends BroadcastReceiver {

        /* renamed from: b, reason: collision with root package name */
        public static final AtomicReference<d> f19174b = new AtomicReference<>();

        /* renamed from: a, reason: collision with root package name */
        public final Context f19175a;

        public d(Context context) {
            this.f19175a = context;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            synchronized (c.f19162i) {
                Iterator it = c.f19164k.values().iterator();
                while (it.hasNext()) {
                    ((c) it.next()).d();
                }
            }
            this.f19175a.unregisterReceiver(this);
        }
    }

    public c(final Context context, e eVar, String str) throws PackageManager.NameNotFoundException {
        new CopyOnWriteArrayList();
        this.f19165a = context;
        r.f(str);
        this.f19166b = str;
        this.f19167c = eVar;
        ArrayList arrayListA = new g(context, new g.a(ComponentDiscoveryService.class)).a();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList.addAll(arrayListA);
        final FirebaseCommonRegistrar firebaseCommonRegistrar = new FirebaseCommonRegistrar();
        arrayList.add(new a7.b() { // from class: c6.l
            @Override // a7.b
            public final Object get() {
                return firebaseCommonRegistrar;
            }
        });
        arrayList2.add(c6.d.b(context, Context.class, new Class[0]));
        arrayList2.add(c6.d.b(this, c.class, new Class[0]));
        arrayList2.add(c6.d.b(eVar, e.class, new Class[0]));
        this.f19168d = new m(f19163j, arrayList, arrayList2);
        this.f19170g = new t<>(new a7.b() { // from class: x5.b
            @Override // a7.b
            public final Object get() {
                c cVar = this.f19160a;
                return new f7.a(context, cVar.c(), (x6.c) cVar.f19168d.a(x6.c.class));
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NonNull
    public static c b() {
        c cVar;
        synchronized (f19162i) {
            cVar = (c) f19164k.get("[DEFAULT]");
            if (cVar == null) {
                throw new IllegalStateException("Default FirebaseApp is not initialized in this process " + w3.e.a() + ". Make sure to call FirebaseApp.initializeApp(Context) first.");
            }
        }
        return cVar;
    }

    @NonNull
    public static c e(@NonNull Context context, @NonNull e eVar) {
        c cVar;
        boolean z10;
        AtomicReference<b> atomicReference = b.f19172a;
        if (context.getApplicationContext() instanceof Application) {
            Application application = (Application) context.getApplicationContext();
            AtomicReference<b> atomicReference2 = b.f19172a;
            if (atomicReference2.get() == null) {
                b bVar = new b();
                while (true) {
                    if (atomicReference2.compareAndSet(null, bVar)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReference2.get() != null) {
                        z10 = false;
                        break;
                    }
                }
                if (z10) {
                    o3.b.b(application);
                    o3.b.f11087e.a(bVar);
                }
            }
        }
        if (context.getApplicationContext() != null) {
            context = context.getApplicationContext();
        }
        synchronized (f19162i) {
            ArrayMap arrayMap = f19164k;
            r.k("FirebaseApp name [DEFAULT] already exists!", true ^ arrayMap.containsKey("[DEFAULT]"));
            r.j(context, "Application context cannot be null.");
            cVar = new c(context, eVar, "[DEFAULT]");
            arrayMap.put("[DEFAULT]", cVar);
        }
        cVar.d();
        return cVar;
    }

    public final void a() {
        r.k("FirebaseApp was deleted", !this.f.get());
    }

    public final String c() {
        StringBuilder sb2 = new StringBuilder();
        a();
        byte[] bytes = this.f19166b.getBytes(Charset.defaultCharset());
        sb2.append(bytes == null ? null : Base64.encodeToString(bytes, 11));
        sb2.append("+");
        a();
        byte[] bytes2 = this.f19167c.f19177b.getBytes(Charset.defaultCharset());
        sb2.append(bytes2 != null ? Base64.encodeToString(bytes2, 11) : null);
        return sb2.toString();
    }

    public final void d() {
        Context context = this.f19165a;
        boolean z10 = true;
        boolean z11 = !UserManagerCompat.isUserUnlocked(context);
        String str = this.f19166b;
        if (!z11) {
            StringBuilder sb2 = new StringBuilder("Device unlocked: initializing all Firebase APIs for app ");
            a();
            sb2.append(str);
            Log.i("FirebaseApp", sb2.toString());
            a();
            this.f19168d.u("[DEFAULT]".equals(str));
            return;
        }
        StringBuilder sb3 = new StringBuilder("Device in Direct Boot Mode: postponing initialization of Firebase APIs for app ");
        a();
        sb3.append(str);
        Log.i("FirebaseApp", sb3.toString());
        AtomicReference<d> atomicReference = d.f19174b;
        if (atomicReference.get() == null) {
            d dVar = new d(context);
            while (true) {
                if (atomicReference.compareAndSet(null, dVar)) {
                    break;
                } else if (atomicReference.get() != null) {
                    z10 = false;
                    break;
                }
            }
            if (z10) {
                context.registerReceiver(dVar, new IntentFilter("android.intent.action.USER_UNLOCKED"));
            }
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        cVar.a();
        return this.f19166b.equals(cVar.f19166b);
    }

    public final boolean f() {
        boolean z10;
        a();
        f7.a aVar = this.f19170g.get();
        synchronized (aVar) {
            z10 = aVar.f5539b;
        }
        return z10;
    }

    public final int hashCode() {
        return this.f19166b.hashCode();
    }

    public final String toString() {
        p.a aVar = new p.a(this);
        aVar.a(this.f19166b, "name");
        aVar.a(this.f19167c, "options");
        return aVar.toString();
    }
}
