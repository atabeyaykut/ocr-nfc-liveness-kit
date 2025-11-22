package com.bumptech.glide;

import a1.a;
import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import com.bumptech.glide.i;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import z0.i;

/* loaded from: classes.dex */
public final class b implements ComponentCallbacks2 {

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("Glide.class")
    public static volatile b f2704h;

    /* renamed from: j, reason: collision with root package name */
    public static volatile boolean f2705j;

    /* renamed from: a, reason: collision with root package name */
    public final y0.c f2706a;

    /* renamed from: b, reason: collision with root package name */
    public final z0.h f2707b;

    /* renamed from: c, reason: collision with root package name */
    public final h f2708c;

    /* renamed from: d, reason: collision with root package name */
    public final y0.b f2709d;

    /* renamed from: e, reason: collision with root package name */
    public final com.bumptech.glide.manager.p f2710e;
    public final com.bumptech.glide.manager.d f;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("managers")
    public final ArrayList f2711g = new ArrayList();

    public interface a {
    }

    public b(@NonNull Context context, @NonNull x0.m mVar, @NonNull z0.h hVar, @NonNull y0.c cVar, @NonNull y0.b bVar, @NonNull com.bumptech.glide.manager.p pVar, @NonNull com.bumptech.glide.manager.d dVar, int r21, @NonNull c cVar2, @NonNull ArrayMap arrayMap, @NonNull List list, @NonNull ArrayList arrayList, @Nullable k1.a aVar, @NonNull i iVar) {
        this.f2706a = cVar;
        this.f2709d = bVar;
        this.f2707b = hVar;
        this.f2710e = pVar;
        this.f = dVar;
        this.f2708c = new h(context, bVar, new l(this, arrayList, aVar), new a2.b(), cVar2, arrayMap, list, mVar, iVar, r21);
    }

    @GuardedBy("Glide.class")
    public static void a(@NonNull Context context, @Nullable GeneratedAppGlideModule generatedAppGlideModule) throws PackageManager.NameNotFoundException {
        c cVar;
        y0.c dVar;
        if (f2705j) {
            throw new IllegalStateException("You cannot call Glide.get() in registerComponents(), use the provided Glide instance instead");
        }
        f2705j = true;
        ArrayMap arrayMap = new ArrayMap();
        i.a aVar = new i.a();
        c cVar2 = new c();
        Context applicationContext = context.getApplicationContext();
        Collections.emptyList();
        if (Log.isLoggable("ManifestParser", 3)) {
            Log.d("ManifestParser", "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), 128);
            if (applicationInfo.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2)) {
                    Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
                }
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        arrayList.add(k1.e.a(str));
                        if (Log.isLoggable("ManifestParser", 3)) {
                            Log.d("ManifestParser", "Loaded Glide module: " + str);
                        }
                    }
                }
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Finished loading Glide modules");
                }
            } else if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Got null app info metadata");
            }
            if (generatedAppGlideModule != null && !new HashSet().isEmpty()) {
                HashSet hashSet = new HashSet();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    k1.c cVar3 = (k1.c) it.next();
                    if (hashSet.contains(cVar3.getClass())) {
                        if (Log.isLoggable("Glide", 3)) {
                            Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + cVar3);
                        }
                        it.remove();
                    }
                }
            }
            if (Log.isLoggable("Glide", 3)) {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    Log.d("Glide", "Discovered GlideModule from manifest: " + ((k1.c) it2.next()).getClass());
                }
            }
            Iterator it3 = arrayList.iterator();
            while (it3.hasNext()) {
                ((k1.c) it3.next()).b();
            }
            a.ThreadFactoryC0003a threadFactoryC0003a = new a.ThreadFactoryC0003a();
            if (a1.a.f26c == 0) {
                a1.a.f26c = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int r18 = a1.a.f26c;
            if (TextUtils.isEmpty("source")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: source");
            }
            a1.a aVar2 = new a1.a(new ThreadPoolExecutor(r18, r18, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a.b(threadFactoryC0003a, "source", false)));
            int r32 = a1.a.f26c;
            a.ThreadFactoryC0003a threadFactoryC0003a2 = new a.ThreadFactoryC0003a();
            if (TextUtils.isEmpty("disk-cache")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: disk-cache");
            }
            a1.a aVar3 = new a1.a(new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a.b(threadFactoryC0003a2, "disk-cache", true)));
            if (a1.a.f26c == 0) {
                a1.a.f26c = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int r182 = a1.a.f26c >= 4 ? 2 : 1;
            a.ThreadFactoryC0003a threadFactoryC0003a3 = new a.ThreadFactoryC0003a();
            if (TextUtils.isEmpty("animation")) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: animation");
            }
            a1.a aVar4 = new a1.a(new ThreadPoolExecutor(r182, r182, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new a.b(threadFactoryC0003a3, "animation", true)));
            z0.i iVar = new z0.i(new i.a(applicationContext));
            com.bumptech.glide.manager.f fVar = new com.bumptech.glide.manager.f();
            int r42 = iVar.f19747a;
            if (r42 > 0) {
                cVar = cVar2;
                dVar = new y0.i(r42);
            } else {
                cVar = cVar2;
                dVar = new y0.d();
            }
            y0.h hVar = new y0.h(iVar.f19749c);
            z0.g gVar = new z0.g(iVar.f19748b);
            x0.m mVar = new x0.m(gVar, new z0.f(applicationContext), aVar3, aVar2, new a1.a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, a1.a.f25b, TimeUnit.MILLISECONDS, new SynchronousQueue(), new a.b(new a.ThreadFactoryC0003a(), "source-unlimited", false))), aVar4);
            List listEmptyList = Collections.emptyList();
            i iVar2 = new i(aVar);
            b bVar = new b(applicationContext, mVar, gVar, dVar, hVar, new com.bumptech.glide.manager.p(null, iVar2), fVar, 4, cVar, arrayMap, listEmptyList, arrayList, generatedAppGlideModule, iVar2);
            applicationContext.registerComponentCallbacks(bVar);
            f2704h = bVar;
            f2705j = false;
        } catch (PackageManager.NameNotFoundException e10) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e10);
        }
    }

    @NonNull
    public static b b(@NonNull Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (f2704h == null) {
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) Class.forName("com.bumptech.glide.GeneratedAppGlideModuleImpl").getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
                generatedAppGlideModule = null;
            } catch (IllegalAccessException e10) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e10);
            } catch (InstantiationException e11) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e11);
            } catch (NoSuchMethodException e12) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e12);
            } catch (InvocationTargetException e13) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e13);
            }
            synchronized (b.class) {
                if (f2704h == null) {
                    a(context, generatedAppGlideModule);
                }
            }
        }
        return f2704h;
    }

    @NonNull
    public static o e(@NonNull Context context) {
        if (context != null) {
            return b(context).f2710e.b(context);
        }
        throw new NullPointerException("You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
    }

    public final void c(o oVar) {
        synchronized (this.f2711g) {
            if (this.f2711g.contains(oVar)) {
                throw new IllegalStateException("Cannot register already registered manager");
            }
            this.f2711g.add(oVar);
        }
    }

    public final void d(o oVar) {
        synchronized (this.f2711g) {
            if (!this.f2711g.contains(oVar)) {
                throw new IllegalStateException("Cannot unregister not yet registered manager");
            }
            this.f2711g.remove(oVar);
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        q1.m.a();
        ((q1.i) this.f2707b).e(0L);
        this.f2706a.b();
        this.f2709d.b();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int r42) {
        q1.m.a();
        synchronized (this.f2711g) {
            Iterator it = this.f2711g.iterator();
            while (it.hasNext()) {
                ((o) it.next()).getClass();
            }
        }
        ((z0.g) this.f2707b).f(r42);
        this.f2706a.a(r42);
        this.f2709d.a(r42);
    }
}
