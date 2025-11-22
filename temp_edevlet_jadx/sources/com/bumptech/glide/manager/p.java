package com.bumptech.glide.manager;

import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.collection.ArrayMap;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Lifecycle;
import com.bumptech.glide.manager.m;
import com.bumptech.glide.manager.o;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class p implements Handler.Callback {

    /* renamed from: i, reason: collision with root package name */
    public static final a f2787i = new a();

    /* renamed from: a, reason: collision with root package name */
    public volatile com.bumptech.glide.o f2788a;

    /* renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    public final HashMap f2789b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    public final HashMap f2790c = new HashMap();

    /* renamed from: d, reason: collision with root package name */
    public final Handler f2791d;

    /* renamed from: e, reason: collision with root package name */
    public final b f2792e;
    public final com.bumptech.glide.i f;

    /* renamed from: g, reason: collision with root package name */
    public final i f2793g;

    /* renamed from: h, reason: collision with root package name */
    public final m f2794h;

    public class a implements b {
    }

    public interface b {
    }

    public p(@Nullable b bVar, com.bumptech.glide.i iVar) {
        new ArrayMap();
        new ArrayMap();
        new Bundle();
        bVar = bVar == null ? f2787i : bVar;
        this.f2792e = bVar;
        this.f = iVar;
        this.f2791d = new Handler(Looper.getMainLooper(), this);
        this.f2794h = new m(bVar);
        this.f2793g = (e1.r.f5067h && e1.r.f5066g) ? iVar.f2722a.containsKey(com.bumptech.glide.g.class) ? new g() : new h() : new c5.v();
    }

    @Nullable
    public static Activity a(@NonNull Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return a(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @NonNull
    public final com.bumptech.glide.o b(@NonNull Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        char[] cArr = q1.m.f13318a;
        if ((Looper.myLooper() == Looper.getMainLooper()) && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return c((FragmentActivity) context);
            }
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                if (!(Looper.myLooper() == Looper.getMainLooper())) {
                    return b(activity.getApplicationContext());
                }
                if (activity instanceof FragmentActivity) {
                    return c((FragmentActivity) activity);
                }
                if (activity.isDestroyed()) {
                    throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
                }
                this.f2793g.d();
                FragmentManager fragmentManager = activity.getFragmentManager();
                Activity activityA = a(activity);
                boolean z10 = activityA == null || !activityA.isFinishing();
                o oVarD = d(fragmentManager);
                com.bumptech.glide.o oVar = oVarD.f2784d;
                if (oVar != null) {
                    return oVar;
                }
                com.bumptech.glide.b bVarB = com.bumptech.glide.b.b(activity);
                o.a aVar = oVarD.f2782b;
                ((a) this.f2792e).getClass();
                com.bumptech.glide.o oVar2 = new com.bumptech.glide.o(bVarB, oVarD.f2781a, aVar, activity);
                if (z10) {
                    oVar2.onStart();
                }
                oVarD.f2784d = oVar2;
                return oVar2;
            }
            if (context instanceof ContextWrapper) {
                ContextWrapper contextWrapper = (ContextWrapper) context;
                if (contextWrapper.getBaseContext().getApplicationContext() != null) {
                    return b(contextWrapper.getBaseContext());
                }
            }
        }
        if (this.f2788a == null) {
            synchronized (this) {
                if (this.f2788a == null) {
                    com.bumptech.glide.b bVarB2 = com.bumptech.glide.b.b(context.getApplicationContext());
                    b bVar = this.f2792e;
                    com.bumptech.glide.manager.b bVar2 = new com.bumptech.glide.manager.b();
                    a6.a aVar2 = new a6.a();
                    Context applicationContext = context.getApplicationContext();
                    ((a) bVar).getClass();
                    this.f2788a = new com.bumptech.glide.o(bVarB2, bVar2, aVar2, applicationContext);
                }
            }
        }
        return this.f2788a;
    }

    @NonNull
    public final com.bumptech.glide.o c(@NonNull FragmentActivity fragmentActivity) {
        char[] cArr = q1.m.f13318a;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            return b(fragmentActivity.getApplicationContext());
        }
        if (fragmentActivity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
        this.f2793g.d();
        androidx.fragment.app.FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        Activity activityA = a(fragmentActivity);
        boolean z10 = activityA == null || !activityA.isFinishing();
        if (!this.f.f2722a.containsKey(com.bumptech.glide.f.class)) {
            w wVarE = e(supportFragmentManager);
            com.bumptech.glide.o oVar = wVarE.f2827e;
            if (oVar != null) {
                return oVar;
            }
            com.bumptech.glide.b bVarB = com.bumptech.glide.b.b(fragmentActivity);
            ((a) this.f2792e).getClass();
            com.bumptech.glide.o oVar2 = new com.bumptech.glide.o(bVarB, wVarE.f2823a, wVarE.f2824b, fragmentActivity);
            if (z10) {
                oVar2.onStart();
            }
            wVarE.f2827e = oVar2;
            return oVar2;
        }
        Context applicationContext = fragmentActivity.getApplicationContext();
        com.bumptech.glide.b bVarB2 = com.bumptech.glide.b.b(applicationContext);
        Lifecycle lifecycle = fragmentActivity.getLifecycle();
        androidx.fragment.app.FragmentManager supportFragmentManager2 = fragmentActivity.getSupportFragmentManager();
        m mVar = this.f2794h;
        mVar.getClass();
        q1.m.a();
        q1.m.a();
        HashMap map = mVar.f2779a;
        com.bumptech.glide.o oVar3 = (com.bumptech.glide.o) map.get(lifecycle);
        if (oVar3 != null) {
            return oVar3;
        }
        LifecycleLifecycle lifecycleLifecycle = new LifecycleLifecycle(lifecycle);
        m.a aVar = new m.a(mVar, supportFragmentManager2);
        ((a) mVar.f2780b).getClass();
        com.bumptech.glide.o oVar4 = new com.bumptech.glide.o(bVarB2, lifecycleLifecycle, aVar, applicationContext);
        map.put(lifecycle, oVar4);
        lifecycleLifecycle.a(new l(mVar, lifecycle));
        if (z10) {
            oVar4.onStart();
        }
        return oVar4;
    }

    @NonNull
    public final o d(@NonNull FragmentManager fragmentManager) {
        HashMap map = this.f2789b;
        o oVar = (o) map.get(fragmentManager);
        if (oVar != null) {
            return oVar;
        }
        o oVar2 = (o) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (oVar2 == null) {
            oVar2 = new o();
            oVar2.f = null;
            map.put(fragmentManager, oVar2);
            fragmentManager.beginTransaction().add(oVar2, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.f2791d.obtainMessage(1, fragmentManager).sendToTarget();
        }
        return oVar2;
    }

    @NonNull
    public final w e(@NonNull androidx.fragment.app.FragmentManager fragmentManager) {
        HashMap map = this.f2790c;
        w wVar = (w) map.get(fragmentManager);
        if (wVar != null) {
            return wVar;
        }
        w wVar2 = (w) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (wVar2 == null) {
            wVar2 = new w();
            wVar2.f = null;
            map.put(fragmentManager, wVar2);
            fragmentManager.beginTransaction().add(wVar2, "com.bumptech.glide.manager").commitAllowingStateLoss();
            this.f2791d.obtainMessage(2, fragmentManager).sendToTarget();
        }
        return wVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:73:0x012c A[PHI: r1 r5
      0x012c: PHI (r1v4 java.lang.Object) = (r1v2 ??), (r1v9 ??) binds: [B:72:0x012a, B:41:0x00ab] A[DONT_GENERATE, DONT_INLINE]
      0x012c: PHI (r5v2 java.util.HashMap) = (r5v1 java.util.HashMap), (r5v5 java.util.HashMap) binds: [B:72:0x012a, B:41:0x00ab] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0132 A[PHI: r3
      0x0132: PHI (r3v3 boolean) = (r3v0 boolean), (r3v0 boolean), (r3v5 boolean) binds: [B:72:0x012a, B:41:0x00ab, B:10:0x0020] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r1v2, types: [android.app.FragmentManager, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v9, types: [androidx.fragment.app.FragmentManager, java.lang.Object] */
    @Override // android.os.Handler.Callback
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean handleMessage(android.os.Message r18) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.manager.p.handleMessage(android.os.Message):boolean");
    }
}
