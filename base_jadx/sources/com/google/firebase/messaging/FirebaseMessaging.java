package com.google.firebase.messaging;

import android.annotation.SuppressLint;
import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import b7.d;
import com.google.firebase.messaging.FirebaseMessaging;
import com.google.firebase.messaging.a;
import g7.d0;
import g7.j0;
import g7.n;
import g7.o0;
import g7.s0;
import g7.w;
import g7.x;
import g7.y;
import h5.j;
import h5.k;
import h5.l;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import r2.g;
import r3.r;
import x5.c;
import x6.b;
import y6.e;

/* loaded from: classes2.dex */
public class FirebaseMessaging {

    /* renamed from: k, reason: collision with root package name */
    public static final long f4409k = TimeUnit.HOURS.toSeconds(8);

    /* renamed from: l, reason: collision with root package name */
    public static com.google.firebase.messaging.a f4410l;

    /* renamed from: m, reason: collision with root package name */
    @Nullable
    @SuppressLint({"FirebaseUnknownNullness"})
    @VisibleForTesting
    public static g f4411m;

    /* renamed from: n, reason: collision with root package name */
    @VisibleForTesting
    public static ScheduledThreadPoolExecutor f4412n;

    /* renamed from: a, reason: collision with root package name */
    public final c f4413a;

    /* renamed from: b, reason: collision with root package name */
    @Nullable
    public final z6.a f4414b;

    /* renamed from: c, reason: collision with root package name */
    public final d f4415c;

    /* renamed from: d, reason: collision with root package name */
    public final Context f4416d;

    /* renamed from: e, reason: collision with root package name */
    public final y f4417e;
    public final j0 f;

    /* renamed from: g, reason: collision with root package name */
    public final a f4418g;

    /* renamed from: h, reason: collision with root package name */
    public final Executor f4419h;

    /* renamed from: i, reason: collision with root package name */
    public final d0 f4420i;

    /* renamed from: j, reason: collision with root package name */
    public boolean f4421j;

    public class a {

        /* renamed from: a, reason: collision with root package name */
        public final x6.d f4422a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f4423b;

        /* renamed from: c, reason: collision with root package name */
        @Nullable
        public Boolean f4424c;

        public a(x6.d dVar) {
            this.f4422a = dVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [g7.u] */
        public final synchronized void a() {
            if (this.f4423b) {
                return;
            }
            Boolean boolB = b();
            this.f4424c = boolB;
            if (boolB == null) {
                this.f4422a.b(new b() { // from class: g7.u
                    @Override // x6.b
                    public final void a(@NonNull x6.a aVar) {
                        boolean zBooleanValue;
                        FirebaseMessaging.a aVar2 = this.f5935a;
                        synchronized (aVar2) {
                            aVar2.a();
                            Boolean bool = aVar2.f4424c;
                            zBooleanValue = bool != null ? bool.booleanValue() : FirebaseMessaging.this.f4413a.f();
                        }
                        if (zBooleanValue) {
                            com.google.firebase.messaging.a aVar3 = FirebaseMessaging.f4410l;
                            FirebaseMessaging.this.i();
                        }
                    }
                });
            }
            this.f4423b = true;
        }

        @Nullable
        public final Boolean b() {
            ApplicationInfo applicationInfo;
            Bundle bundle;
            c cVar = FirebaseMessaging.this.f4413a;
            cVar.a();
            Context context = cVar.f19165a;
            SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.firebase.messaging", 0);
            if (sharedPreferences.contains("auto_init")) {
                return Boolean.valueOf(sharedPreferences.getBoolean("auto_init", false));
            }
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_auto_init_enabled")) {
                    return null;
                }
                return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_messaging_auto_init_enabled"));
            } catch (PackageManager.NameNotFoundException unused) {
                return null;
            }
        }
    }

    public FirebaseMessaging() {
        throw null;
    }

    public FirebaseMessaging(c cVar, @Nullable z6.a aVar, a7.b<i7.g> bVar, a7.b<e> bVar2, d dVar, @Nullable g gVar, x6.d dVar2) {
        cVar.a();
        Context context = cVar.f19165a;
        final d0 d0Var = new d0(context);
        final y yVar = new y(cVar, d0Var, bVar, bVar2, dVar);
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new x3.a("Firebase-Messaging-Task"));
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new x3.a("Firebase-Messaging-Init"));
        this.f4421j = false;
        f4411m = gVar;
        this.f4413a = cVar;
        this.f4414b = aVar;
        this.f4415c = dVar;
        this.f4418g = new a(dVar2);
        cVar.a();
        final Context context2 = cVar.f19165a;
        this.f4416d = context2;
        n nVar = new n();
        this.f4420i = d0Var;
        this.f4417e = yVar;
        this.f = new j0(executorServiceNewSingleThreadExecutor);
        this.f4419h = scheduledThreadPoolExecutor;
        cVar.a();
        if (context instanceof Application) {
            ((Application) context).registerActivityLifecycleCallbacks(nVar);
        } else {
            String strValueOf = String.valueOf(context);
            StringBuilder sb2 = new StringBuilder(strValueOf.length() + 125);
            sb2.append("Context ");
            sb2.append(strValueOf);
            sb2.append(" was not an application, can't register for lifecycle callbacks. Some notification events may be dropped as a result.");
            Log.w("FirebaseMessaging", sb2.toString());
        }
        if (aVar != null) {
            aVar.c();
        }
        scheduledThreadPoolExecutor.execute(new Runnable() { // from class: g7.s
            @Override // java.lang.Runnable
            public final void run() {
                boolean zBooleanValue;
                FirebaseMessaging firebaseMessaging = this.f5915a;
                FirebaseMessaging.a aVar2 = firebaseMessaging.f4418g;
                synchronized (aVar2) {
                    aVar2.a();
                    Boolean bool = aVar2.f4424c;
                    zBooleanValue = bool != null ? bool.booleanValue() : FirebaseMessaging.this.f4413a.f();
                }
                if (zBooleanValue) {
                    firebaseMessaging.i();
                }
            }
        });
        final ScheduledThreadPoolExecutor scheduledThreadPoolExecutor2 = new ScheduledThreadPoolExecutor(1, new x3.a("Firebase-Messaging-Topics-Io"));
        int r42 = s0.f5917j;
        h5.n.c(scheduledThreadPoolExecutor2, new Callable() { // from class: g7.r0
            @Override // java.util.concurrent.Callable
            @NonNull
            public final Object call() {
                q0 q0Var;
                Context context3 = context2;
                ScheduledExecutorService scheduledExecutorService = scheduledThreadPoolExecutor2;
                FirebaseMessaging firebaseMessaging = this;
                d0 d0Var2 = d0Var;
                y yVar2 = yVar;
                synchronized (q0.class) {
                    WeakReference<q0> weakReference = q0.f5903d;
                    q0Var = weakReference != null ? weakReference.get() : null;
                    if (q0Var == null) {
                        q0 q0Var2 = new q0(context3.getSharedPreferences("com.google.android.gms.appid", 0), scheduledExecutorService);
                        q0Var2.b();
                        q0.f5903d = new WeakReference<>(q0Var2);
                        q0Var = q0Var2;
                    }
                }
                return new s0(firebaseMessaging, d0Var2, q0Var, yVar2, context3, scheduledExecutorService);
            }
        }).d(scheduledThreadPoolExecutor, new h5.g() { // from class: g7.o
            @Override // h5.g
            public final void onSuccess(@NonNull Object obj) {
                boolean z10;
                s0 s0Var = (s0) obj;
                if (this.f5891a.g()) {
                    if (s0Var.f5924h.a() != null) {
                        synchronized (s0Var) {
                            z10 = s0Var.f5923g;
                        }
                        if (z10) {
                            return;
                        }
                        s0Var.h(0L);
                    }
                }
            }
        });
        scheduledThreadPoolExecutor.execute(new Runnable() { // from class: g7.t
            @Override // java.lang.Runnable
            public final void run() {
                Context applicationContext;
                PackageManager packageManager;
                ApplicationInfo applicationInfo;
                Bundle bundle;
                final Context context3 = this.f5925a.f4416d;
                Context applicationContext2 = context3.getApplicationContext();
                if (applicationContext2 == null) {
                    applicationContext2 = context3;
                }
                if (applicationContext2.getSharedPreferences("com.google.firebase.messaging", 0).getBoolean("proxy_notification_initialized", false)) {
                    return;
                }
                try {
                    applicationContext = context3.getApplicationContext();
                    packageManager = applicationContext.getPackageManager();
                } catch (PackageManager.NameNotFoundException unused) {
                }
                final boolean z10 = (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(applicationContext.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey("firebase_messaging_notification_delegation_enabled")) ? true : applicationInfo.metaData.getBoolean("firebase_messaging_notification_delegation_enabled");
                if (!(Build.VERSION.SDK_INT >= 29)) {
                    h5.n.e(null);
                } else {
                    final h5.l lVar = new h5.l();
                    new Runnable() { // from class: g7.f0
                        @Override // java.lang.Runnable
                        public final void run() {
                            Context context4 = context3;
                            h5.l lVar2 = lVar;
                            try {
                                if (Binder.getCallingUid() == context4.getApplicationInfo().uid) {
                                    Context applicationContext3 = context4.getApplicationContext();
                                    if (applicationContext3 == null) {
                                        applicationContext3 = context4;
                                    }
                                    SharedPreferences.Editor editorEdit = applicationContext3.getSharedPreferences("com.google.firebase.messaging", 0).edit();
                                    editorEdit.putBoolean("proxy_notification_initialized", true);
                                    editorEdit.apply();
                                    NotificationManager notificationManager = (NotificationManager) context4.getSystemService(NotificationManager.class);
                                    if (z10) {
                                        notificationManager.setNotificationDelegate("com.google.android.gms");
                                    } else if ("com.google.android.gms".equals(notificationManager.getNotificationDelegate())) {
                                        notificationManager.setNotificationDelegate(null);
                                    }
                                } else {
                                    String strValueOf2 = String.valueOf(context4.getPackageName());
                                    Log.e("FirebaseMessaging", strValueOf2.length() != 0 ? "error configuring notification delegate for package ".concat(strValueOf2) : new String("error configuring notification delegate for package "));
                                }
                            } finally {
                                lVar2.d(null);
                            }
                        }
                    }.run();
                }
            }
        });
    }

    public static void b(o0 o0Var, long j10) {
        synchronized (FirebaseMessaging.class) {
            if (f4412n == null) {
                f4412n = new ScheduledThreadPoolExecutor(1, new x3.a("TAG"));
            }
            f4412n.schedule(o0Var, j10, TimeUnit.SECONDS);
        }
    }

    @NonNull
    public static synchronized FirebaseMessaging c() {
        return getInstance(c.b());
    }

    @NonNull
    public static synchronized com.google.firebase.messaging.a d(Context context) {
        if (f4410l == null) {
            f4410l = new com.google.firebase.messaging.a(context);
        }
        return f4410l;
    }

    @NonNull
    @Keep
    public static synchronized FirebaseMessaging getInstance(@NonNull c cVar) {
        FirebaseMessaging firebaseMessaging;
        cVar.a();
        firebaseMessaging = (FirebaseMessaging) cVar.f19168d.a(FirebaseMessaging.class);
        r.j(firebaseMessaging, "Firebase Messaging component is not present");
        return firebaseMessaging;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final String a() throws IOException {
        k kVarG;
        z6.a aVar = this.f4414b;
        if (aVar != null) {
            try {
                return (String) h5.n.a(aVar.b());
            } catch (InterruptedException | ExecutionException e10) {
                throw new IOException(e10);
            }
        }
        final a.C0065a c0065aF = f();
        if (!k(c0065aF)) {
            return c0065aF.f4428a;
        }
        final String strC = d0.c(this.f4413a);
        final j0 j0Var = this.f;
        synchronized (j0Var) {
            kVarG = (k) j0Var.f5872b.get(strC);
            if (kVarG == null) {
                if (Log.isLoggable("FirebaseMessaging", 3)) {
                    String strValueOf = String.valueOf(strC);
                    Log.d("FirebaseMessaging", strValueOf.length() != 0 ? "Making new request for: ".concat(strValueOf) : new String("Making new request for: "));
                }
                y yVar = this.f4417e;
                kVarG = yVar.b(d0.c(yVar.f5945a), "*", new Bundle()).e(x.f5943a, new w(yVar)).n(new Executor() { // from class: g7.q
                    @Override // java.util.concurrent.Executor
                    public final void execute(@NonNull Runnable runnable) {
                        runnable.run();
                    }
                }, new j() { // from class: g7.r
                    @Override // h5.j
                    @NonNull
                    public final h5.k c(@NonNull Object obj) {
                        FirebaseMessaging firebaseMessaging = this.f5907a;
                        String str = strC;
                        a.C0065a c0065a = c0065aF;
                        String str2 = (String) obj;
                        com.google.firebase.messaging.a aVarD = FirebaseMessaging.d(firebaseMessaging.f4416d);
                        x5.c cVar = firebaseMessaging.f4413a;
                        cVar.a();
                        String strC2 = "[DEFAULT]".equals(cVar.f19166b) ? "" : cVar.c();
                        String strA = firebaseMessaging.f4420i.a();
                        synchronized (aVarD) {
                            String strA2 = a.C0065a.a(System.currentTimeMillis(), str2, strA);
                            if (strA2 != null) {
                                SharedPreferences.Editor editorEdit = aVarD.f4426a.edit();
                                editorEdit.putString(com.google.firebase.messaging.a.a(strC2, str), strA2);
                                editorEdit.commit();
                            }
                        }
                        if (c0065a == null || !str2.equals(c0065a.f4428a)) {
                            x5.c cVar2 = firebaseMessaging.f4413a;
                            cVar2.a();
                            if ("[DEFAULT]".equals(cVar2.f19166b)) {
                                if (Log.isLoggable("FirebaseMessaging", 3)) {
                                    cVar2.a();
                                    String strValueOf2 = String.valueOf(cVar2.f19166b);
                                    Log.d("FirebaseMessaging", strValueOf2.length() != 0 ? "Invoking onNewToken for app: ".concat(strValueOf2) : new String("Invoking onNewToken for app: "));
                                }
                                Intent intent = new Intent("com.google.firebase.messaging.NEW_TOKEN");
                                intent.putExtra("token", str2);
                                new m(firebaseMessaging.f4416d).b(intent);
                            }
                        }
                        return h5.n.e(str2);
                    }
                }).g(j0Var.f5871a, new h5.b() { // from class: g7.i0
                    @Override // h5.b
                    @NonNull
                    public final Object c(@NonNull h5.k kVar) {
                        j0 j0Var2 = j0Var;
                        String str = strC;
                        synchronized (j0Var2) {
                            j0Var2.f5872b.remove(str);
                        }
                        return kVar;
                    }
                });
                j0Var.f5872b.put(strC, kVarG);
            } else if (Log.isLoggable("FirebaseMessaging", 3)) {
                String strValueOf2 = String.valueOf(strC);
                Log.d("FirebaseMessaging", strValueOf2.length() != 0 ? "Joining ongoing request for: ".concat(strValueOf2) : new String("Joining ongoing request for: "));
            }
        }
        try {
            return (String) h5.n.a(kVarG);
        } catch (InterruptedException | ExecutionException e11) {
            throw new IOException(e11);
        }
    }

    @NonNull
    public final k<String> e() {
        z6.a aVar = this.f4414b;
        if (aVar != null) {
            return aVar.b();
        }
        final l lVar = new l();
        this.f4419h.execute(new Runnable() { // from class: g7.p
            @Override // java.lang.Runnable
            public final void run() {
                h5.l lVar2 = lVar;
                FirebaseMessaging firebaseMessaging = this.f5896a;
                firebaseMessaging.getClass();
                try {
                    lVar2.b(firebaseMessaging.a());
                } catch (Exception e10) {
                    lVar2.a(e10);
                }
            }
        });
        return lVar.f6841a;
    }

    @Nullable
    @VisibleForTesting
    public final a.C0065a f() {
        a.C0065a c0065aB;
        com.google.firebase.messaging.a aVarD = d(this.f4416d);
        c cVar = this.f4413a;
        cVar.a();
        String strC = "[DEFAULT]".equals(cVar.f19166b) ? "" : cVar.c();
        String strC2 = d0.c(this.f4413a);
        synchronized (aVarD) {
            c0065aB = a.C0065a.b(aVarD.f4426a.getString(com.google.firebase.messaging.a.a(strC, strC2), null));
        }
        return c0065aB;
    }

    public final boolean g() {
        boolean zBooleanValue;
        a aVar = this.f4418g;
        synchronized (aVar) {
            aVar.a();
            Boolean bool = aVar.f4424c;
            zBooleanValue = bool != null ? bool.booleanValue() : FirebaseMessaging.this.f4413a.f();
        }
        return zBooleanValue;
    }

    public final synchronized void h(boolean z10) {
        this.f4421j = z10;
    }

    public final void i() {
        z6.a aVar = this.f4414b;
        if (aVar != null) {
            aVar.a();
        } else if (k(f())) {
            synchronized (this) {
                if (!this.f4421j) {
                    j(0L);
                }
            }
        }
    }

    public final synchronized void j(long j10) {
        b(new o0(this, Math.min(Math.max(30L, j10 + j10), f4409k)), j10);
        this.f4421j = true;
    }

    @VisibleForTesting
    public final boolean k(@Nullable a.C0065a c0065a) {
        if (c0065a != null) {
            if (!(System.currentTimeMillis() > c0065a.f4430c + a.C0065a.f4427d || !this.f4420i.a().equals(c0065a.f4429b))) {
                return false;
            }
        }
        return true;
    }
}
