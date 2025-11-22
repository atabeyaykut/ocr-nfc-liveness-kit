package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.os.Looper;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.content.ContextCompat;
import com.bumptech.glide.manager.c;
import com.bumptech.glide.manager.q;
import com.bumptech.glide.manager.r;
import com.bumptech.glide.manager.x;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class o implements ComponentCallbacks2, com.bumptech.glide.manager.k {

    /* renamed from: l, reason: collision with root package name */
    public static final m1.g f2832l;

    /* renamed from: a, reason: collision with root package name */
    public final com.bumptech.glide.b f2833a;

    /* renamed from: b, reason: collision with root package name */
    public final Context f2834b;

    /* renamed from: c, reason: collision with root package name */
    public final com.bumptech.glide.manager.j f2835c;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    public final r f2836d;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    public final q f2837e;

    @GuardedBy("this")
    public final x f;

    /* renamed from: g, reason: collision with root package name */
    public final a f2838g;

    /* renamed from: h, reason: collision with root package name */
    public final com.bumptech.glide.manager.c f2839h;

    /* renamed from: j, reason: collision with root package name */
    public final CopyOnWriteArrayList<m1.f<Object>> f2840j;

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("this")
    public m1.g f2841k;

    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            o oVar = o.this;
            oVar.f2835c.a(oVar);
        }
    }

    public class b implements c.a {

        /* renamed from: a, reason: collision with root package name */
        @GuardedBy("RequestManager.this")
        public final r f2843a;

        public b(@NonNull r rVar) {
            this.f2843a = rVar;
        }

        @Override // com.bumptech.glide.manager.c.a
        public final void a(boolean z10) {
            if (z10) {
                synchronized (o.this) {
                    this.f2843a.b();
                }
            }
        }
    }

    static {
        m1.g gVarD = new m1.g().d(Bitmap.class);
        gVarD.w = true;
        f2832l = gVarD;
        new m1.g().d(i1.c.class).w = true;
    }

    public o(@NonNull com.bumptech.glide.b bVar, @NonNull com.bumptech.glide.manager.j jVar, @NonNull q qVar, @NonNull Context context) {
        m1.g gVar;
        r rVar = new r();
        com.bumptech.glide.manager.d dVar = bVar.f;
        this.f = new x();
        a aVar = new a();
        this.f2838g = aVar;
        this.f2833a = bVar;
        this.f2835c = jVar;
        this.f2837e = qVar;
        this.f2836d = rVar;
        this.f2834b = context;
        Context applicationContext = context.getApplicationContext();
        b bVar2 = new b(rVar);
        ((com.bumptech.glide.manager.f) dVar).getClass();
        boolean z10 = ContextCompat.checkSelfPermission(applicationContext, "android.permission.ACCESS_NETWORK_STATE") == 0;
        if (Log.isLoggable("ConnectivityMonitor", 3)) {
            Log.d("ConnectivityMonitor", z10 ? "ACCESS_NETWORK_STATE permission granted, registering connectivity monitor" : "ACCESS_NETWORK_STATE permission missing, cannot register connectivity monitor");
        }
        com.bumptech.glide.manager.c eVar = z10 ? new com.bumptech.glide.manager.e(applicationContext, bVar2) : new com.bumptech.glide.manager.n();
        this.f2839h = eVar;
        char[] cArr = q1.m.f13318a;
        if (!(Looper.myLooper() == Looper.getMainLooper())) {
            q1.m.e().post(aVar);
        } else {
            jVar.a(this);
        }
        jVar.a(eVar);
        this.f2840j = new CopyOnWriteArrayList<>(bVar.f2708c.f2717e);
        h hVar = bVar.f2708c;
        synchronized (hVar) {
            if (hVar.f2721j == null) {
                ((c) hVar.f2716d).getClass();
                m1.g gVar2 = new m1.g();
                gVar2.w = true;
                hVar.f2721j = gVar2;
            }
            gVar = hVar.f2721j;
        }
        n(gVar);
        bVar.c(this);
    }

    @Override // com.bumptech.glide.manager.k
    public final synchronized void g() {
        this.f.g();
        Iterator it = q1.m.d(this.f.f2829a).iterator();
        while (it.hasNext()) {
            k((n1.g) it.next());
        }
        this.f.f2829a.clear();
        r rVar = this.f2836d;
        Iterator it2 = q1.m.d(rVar.f2795a).iterator();
        while (it2.hasNext()) {
            rVar.a((m1.d) it2.next());
        }
        rVar.f2796b.clear();
        this.f2835c.b(this);
        this.f2835c.b(this.f2839h);
        q1.m.e().removeCallbacks(this.f2838g);
        this.f2833a.d(this);
    }

    @Override // com.bumptech.glide.manager.k
    public final synchronized void i() {
        l();
        this.f.i();
    }

    public final void k(@Nullable n1.g<?> gVar) {
        boolean z10;
        if (gVar == null) {
            return;
        }
        boolean zO = o(gVar);
        m1.d dVarA = gVar.a();
        if (zO) {
            return;
        }
        com.bumptech.glide.b bVar = this.f2833a;
        synchronized (bVar.f2711g) {
            Iterator it = bVar.f2711g.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                } else if (((o) it.next()).o(gVar)) {
                    z10 = true;
                    break;
                }
            }
        }
        if (z10 || dVarA == null) {
            return;
        }
        gVar.j(null);
        dVarA.clear();
    }

    public final synchronized void l() {
        r rVar = this.f2836d;
        rVar.f2797c = true;
        Iterator it = q1.m.d(rVar.f2795a).iterator();
        while (it.hasNext()) {
            m1.d dVar = (m1.d) it.next();
            if (dVar.isRunning()) {
                dVar.d();
                rVar.f2796b.add(dVar);
            }
        }
    }

    public final synchronized void m() {
        r rVar = this.f2836d;
        rVar.f2797c = false;
        Iterator it = q1.m.d(rVar.f2795a).iterator();
        while (it.hasNext()) {
            m1.d dVar = (m1.d) it.next();
            if (!dVar.j() && !dVar.isRunning()) {
                dVar.i();
            }
        }
        rVar.f2796b.clear();
    }

    public final synchronized void n(@NonNull m1.g gVar) {
        m1.g gVarClone = gVar.clone();
        if (gVarClone.w && !gVarClone.f9884y) {
            throw new IllegalStateException("You cannot auto lock an already locked options object, try clone() first");
        }
        gVarClone.f9884y = true;
        gVarClone.w = true;
        this.f2841k = gVarClone;
    }

    public final synchronized boolean o(@NonNull n1.g<?> gVar) {
        m1.d dVarA = gVar.a();
        if (dVarA == null) {
            return true;
        }
        if (!this.f2836d.a(dVarA)) {
            return false;
        }
        this.f.f2829a.remove(gVar);
        gVar.j(null);
        return true;
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // com.bumptech.glide.manager.k
    public final synchronized void onStart() {
        m();
        this.f.onStart();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int r12) {
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.f2836d + ", treeNode=" + this.f2837e + "}";
    }
}
