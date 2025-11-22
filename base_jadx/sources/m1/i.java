package m1;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.DrawableRes;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import b1.l;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import q1.e;
import r1.d;
import x0.m;
import x0.r;
import x0.w;

/* loaded from: classes.dex */
public final class i<R> implements d, n1.f, h {
    public static final boolean D = Log.isLoggable("GlideRequest", 2);

    @GuardedBy("requestLock")
    public int A;

    @GuardedBy("requestLock")
    public boolean B;

    @Nullable
    public final RuntimeException C;

    /* renamed from: a, reason: collision with root package name */
    @Nullable
    public final String f9891a;

    /* renamed from: b, reason: collision with root package name */
    public final d.a f9892b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f9893c;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    public final f<R> f9894d;

    /* renamed from: e, reason: collision with root package name */
    public final e f9895e;
    public final Context f;

    /* renamed from: g, reason: collision with root package name */
    public final com.bumptech.glide.h f9896g;

    /* renamed from: h, reason: collision with root package name */
    @Nullable
    public final Object f9897h;

    /* renamed from: i, reason: collision with root package name */
    public final Class<R> f9898i;

    /* renamed from: j, reason: collision with root package name */
    public final a<?> f9899j;

    /* renamed from: k, reason: collision with root package name */
    public final int f9900k;

    /* renamed from: l, reason: collision with root package name */
    public final int f9901l;

    /* renamed from: m, reason: collision with root package name */
    public final com.bumptech.glide.j f9902m;

    /* renamed from: n, reason: collision with root package name */
    public final n1.g<R> f9903n;

    /* renamed from: o, reason: collision with root package name */
    @Nullable
    public final List<f<R>> f9904o;

    /* renamed from: p, reason: collision with root package name */
    public final o1.e<? super R> f9905p;

    /* renamed from: q, reason: collision with root package name */
    public final Executor f9906q;

    /* renamed from: r, reason: collision with root package name */
    @GuardedBy("requestLock")
    public w<R> f9907r;

    /* renamed from: s, reason: collision with root package name */
    @GuardedBy("requestLock")
    public m.d f9908s;

    /* renamed from: t, reason: collision with root package name */
    @GuardedBy("requestLock")
    public long f9909t;

    /* renamed from: u, reason: collision with root package name */
    public volatile m f9910u;

    /* renamed from: v, reason: collision with root package name */
    @GuardedBy("requestLock")
    public int f9911v;

    @Nullable
    @GuardedBy("requestLock")
    public Drawable w;

    /* renamed from: x, reason: collision with root package name */
    @Nullable
    @GuardedBy("requestLock")
    public Drawable f9912x;

    /* renamed from: y, reason: collision with root package name */
    @Nullable
    @GuardedBy("requestLock")
    public Drawable f9913y;

    /* renamed from: z, reason: collision with root package name */
    @GuardedBy("requestLock")
    public int f9914z;

    public i(Context context, com.bumptech.glide.h hVar, @NonNull Object obj, @Nullable Object obj2, Class cls, a aVar, int r12, int r13, com.bumptech.glide.j jVar, n1.g gVar, @Nullable ArrayList arrayList, e eVar, m mVar, o1.e eVar2) {
        e.a aVar2 = q1.e.f13303a;
        this.f9891a = D ? String.valueOf(hashCode()) : null;
        this.f9892b = new d.a();
        this.f9893c = obj;
        this.f = context;
        this.f9896g = hVar;
        this.f9897h = obj2;
        this.f9898i = cls;
        this.f9899j = aVar;
        this.f9900k = r12;
        this.f9901l = r13;
        this.f9902m = jVar;
        this.f9903n = gVar;
        this.f9894d = null;
        this.f9904o = arrayList;
        this.f9895e = eVar;
        this.f9910u = mVar;
        this.f9905p = eVar2;
        this.f9906q = aVar2;
        this.f9911v = 1;
        if (this.C == null && hVar.f2719h.f2722a.containsKey(com.bumptech.glide.e.class)) {
            this.C = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // m1.d
    public final boolean a() {
        boolean z10;
        synchronized (this.f9893c) {
            z10 = this.f9911v == 4;
        }
        return z10;
    }

    @Override // m1.d
    public final boolean b(d dVar) {
        int r42;
        int r52;
        Object obj;
        Class<R> cls;
        a<?> aVar;
        com.bumptech.glide.j jVar;
        int size;
        int r22;
        int r12;
        Object obj2;
        Class<R> cls2;
        a<?> aVar2;
        com.bumptech.glide.j jVar2;
        int size2;
        if (!(dVar instanceof i)) {
            return false;
        }
        synchronized (this.f9893c) {
            r42 = this.f9900k;
            r52 = this.f9901l;
            obj = this.f9897h;
            cls = this.f9898i;
            aVar = this.f9899j;
            jVar = this.f9902m;
            List<f<R>> list = this.f9904o;
            size = list != null ? list.size() : 0;
        }
        i iVar = (i) dVar;
        synchronized (iVar.f9893c) {
            r22 = iVar.f9900k;
            r12 = iVar.f9901l;
            obj2 = iVar.f9897h;
            cls2 = iVar.f9898i;
            aVar2 = iVar.f9899j;
            jVar2 = iVar.f9902m;
            List<f<R>> list2 = iVar.f9904o;
            size2 = list2 != null ? list2.size() : 0;
        }
        if (r42 == r22 && r52 == r12) {
            char[] cArr = q1.m.f13318a;
            if ((obj == null ? obj2 == null : obj instanceof l ? ((l) obj).a() : obj.equals(obj2)) && cls.equals(cls2) && aVar.equals(aVar2) && jVar == jVar2 && size == size2) {
                return true;
            }
        }
        return false;
    }

    @Override // n1.f
    public final void c(int r25, int r26) throws Throwable {
        Object obj;
        int r02 = r25;
        this.f9892b.a();
        Object obj2 = this.f9893c;
        synchronized (obj2) {
            try {
                boolean z10 = D;
                if (z10) {
                    l("Got onSizeReady in " + q1.h.a(this.f9909t));
                }
                if (this.f9911v == 3) {
                    this.f9911v = 2;
                    float f = this.f9899j.f9866b;
                    if (r02 != Integer.MIN_VALUE) {
                        r02 = Math.round(r02 * f);
                    }
                    this.f9914z = r02;
                    this.A = r26 == Integer.MIN_VALUE ? r26 : Math.round(f * r26);
                    if (z10) {
                        l("finished setup for calling load in " + q1.h.a(this.f9909t));
                    }
                    m mVar = this.f9910u;
                    com.bumptech.glide.h hVar = this.f9896g;
                    Object obj3 = this.f9897h;
                    a<?> aVar = this.f9899j;
                    try {
                        obj = obj2;
                        try {
                            try {
                                this.f9908s = mVar.b(hVar, obj3, aVar.f9875m, this.f9914z, this.A, aVar.f9882v, this.f9898i, this.f9902m, aVar.f9867c, aVar.f9881t, aVar.f9876n, aVar.B, aVar.f9880s, aVar.f9872j, aVar.f9885z, aVar.C, aVar.A, this, this.f9906q);
                                if (this.f9911v != 2) {
                                    this.f9908s = null;
                                }
                                if (z10) {
                                    l("finished onSizeReady in " + q1.h.a(this.f9909t));
                                }
                            } catch (Throwable th2) {
                                th = th2;
                                while (true) {
                                    try {
                                        throw th;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                }
                            }
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        obj = obj2;
                    }
                }
            } catch (Throwable th6) {
                th = th6;
                obj = obj2;
            }
        }
    }

    @Override // m1.d
    public final void clear() {
        synchronized (this.f9893c) {
            if (this.B) {
                throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
            }
            this.f9892b.a();
            if (this.f9911v == 6) {
                return;
            }
            e();
            w<R> wVar = this.f9907r;
            if (wVar != null) {
                this.f9907r = null;
            } else {
                wVar = null;
            }
            e eVar = this.f9895e;
            if (eVar == null || eVar.f(this)) {
                this.f9903n.h(f());
            }
            this.f9911v = 6;
            if (wVar != null) {
                this.f9910u.getClass();
                m.g(wVar);
            }
        }
    }

    @Override // m1.d
    public final void d() {
        synchronized (this.f9893c) {
            if (isRunning()) {
                clear();
            }
        }
    }

    @GuardedBy("requestLock")
    public final void e() {
        if (this.B) {
            throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
        }
        this.f9892b.a();
        this.f9903n.b(this);
        m.d dVar = this.f9908s;
        if (dVar != null) {
            synchronized (m.this) {
                dVar.f19035a.i(dVar.f19036b);
            }
            this.f9908s = null;
        }
    }

    @GuardedBy("requestLock")
    public final Drawable f() {
        int r02;
        if (this.f9912x == null) {
            a<?> aVar = this.f9899j;
            Drawable drawable = aVar.f9870g;
            this.f9912x = drawable;
            if (drawable == null && (r02 = aVar.f9871h) > 0) {
                this.f9912x = k(r02);
            }
        }
        return this.f9912x;
    }

    @Override // m1.d
    public final boolean g() {
        boolean z10;
        synchronized (this.f9893c) {
            z10 = this.f9911v == 6;
        }
        return z10;
    }

    @GuardedBy("requestLock")
    public final boolean h() {
        e eVar = this.f9895e;
        return eVar == null || !eVar.getRoot().a();
    }

    @Override // m1.d
    public final void i() {
        int r12;
        synchronized (this.f9893c) {
            try {
                if (this.B) {
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                this.f9892b.a();
                int r13 = q1.h.f13308b;
                this.f9909t = SystemClock.elapsedRealtimeNanos();
                if (this.f9897h == null) {
                    if (q1.m.h(this.f9900k, this.f9901l)) {
                        this.f9914z = this.f9900k;
                        this.A = this.f9901l;
                    }
                    if (this.f9913y == null) {
                        a<?> aVar = this.f9899j;
                        Drawable drawable = aVar.f9878q;
                        this.f9913y = drawable;
                        if (drawable == null && (r12 = aVar.f9879r) > 0) {
                            this.f9913y = k(r12);
                        }
                    }
                    m(new r("Received null model"), this.f9913y == null ? 5 : 3);
                    return;
                }
                int r14 = this.f9911v;
                if (r14 == 2) {
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                if (r14 == 4) {
                    o(this.f9907r, v0.a.MEMORY_CACHE, false);
                    return;
                }
                List<f<R>> list = this.f9904o;
                if (list != null) {
                    for (f<R> fVar : list) {
                        if (fVar instanceof c) {
                            ((c) fVar).getClass();
                        }
                    }
                }
                this.f9911v = 3;
                if (q1.m.h(this.f9900k, this.f9901l)) {
                    c(this.f9900k, this.f9901l);
                } else {
                    this.f9903n.e(this);
                }
                int r15 = this.f9911v;
                if (r15 == 2 || r15 == 3) {
                    e eVar = this.f9895e;
                    if (eVar == null || eVar.h(this)) {
                        this.f9903n.f(f());
                    }
                }
                if (D) {
                    l("finished run method in " + q1.h.a(this.f9909t));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override // m1.d
    public final boolean isRunning() {
        boolean z10;
        synchronized (this.f9893c) {
            int r12 = this.f9911v;
            z10 = r12 == 2 || r12 == 3;
        }
        return z10;
    }

    @Override // m1.d
    public final boolean j() {
        boolean z10;
        synchronized (this.f9893c) {
            z10 = this.f9911v == 4;
        }
        return z10;
    }

    @GuardedBy("requestLock")
    public final Drawable k(@DrawableRes int r32) {
        Resources.Theme theme = this.f9899j.f9883x;
        if (theme == null) {
            theme = this.f.getTheme();
        }
        com.bumptech.glide.h hVar = this.f9896g;
        return g1.b.a(hVar, hVar, r32, theme);
    }

    public final void l(String str) {
        StringBuilder sbI = androidx.browser.browseractions.b.i(str, " this: ");
        sbI.append(this.f9891a);
        Log.v("GlideRequest", sbI.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(x0.r r6, int r7) {
        /*
            Method dump skipped, instructions count: 229
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: m1.i.m(x0.r, int):void");
    }

    @GuardedBy("requestLock")
    public final void n(w wVar, Object obj, v0.a aVar) {
        boolean zA;
        h();
        this.f9911v = 4;
        this.f9907r = wVar;
        if (this.f9896g.f2720i <= 3) {
            Log.d("Glide", "Finished loading " + obj.getClass().getSimpleName() + " from " + aVar + " for " + this.f9897h + " with size [" + this.f9914z + "x" + this.A + "] in " + q1.h.a(this.f9909t) + " ms");
        }
        e eVar = this.f9895e;
        if (eVar != null) {
            eVar.c(this);
        }
        boolean z10 = true;
        this.B = true;
        try {
            List<f<R>> list = this.f9904o;
            if (list != null) {
                Iterator<f<R>> it = list.iterator();
                zA = false;
                while (it.hasNext()) {
                    zA |= it.next().a();
                }
            } else {
                zA = false;
            }
            f<R> fVar = this.f9894d;
            if (fVar == null || !fVar.a()) {
                z10 = false;
            }
            if (!(z10 | zA)) {
                this.f9903n.c(obj, this.f9905p.a(aVar));
            }
        } finally {
            this.B = false;
        }
    }

    public final void o(w<?> wVar, v0.a aVar, boolean z10) {
        i<R> iVar;
        Throwable th2;
        this.f9892b.a();
        w<?> wVar2 = null;
        try {
            synchronized (this.f9893c) {
                try {
                    this.f9908s = null;
                    if (wVar == null) {
                        m(new r("Expected to receive a Resource<R> with an object of " + this.f9898i + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj = wVar.get();
                    try {
                        if (obj == null || !this.f9898i.isAssignableFrom(obj.getClass())) {
                            this.f9907r = null;
                            StringBuilder sb2 = new StringBuilder("Expected to receive an object of ");
                            sb2.append(this.f9898i);
                            sb2.append(" but instead got ");
                            sb2.append(obj != null ? obj.getClass() : "");
                            sb2.append("{");
                            sb2.append(obj);
                            sb2.append("} inside Resource{");
                            sb2.append(wVar);
                            sb2.append("}.");
                            sb2.append(obj != null ? "" : " To indicate failure return a null Resource object, rather than a Resource object containing null data.");
                            m(new r(sb2.toString()), 5);
                        } else {
                            e eVar = this.f9895e;
                            if (eVar == null || eVar.e(this)) {
                                n(wVar, obj, aVar);
                                return;
                            } else {
                                this.f9907r = null;
                                this.f9911v = 4;
                            }
                        }
                        this.f9910u.getClass();
                        m.g(wVar);
                    } catch (Throwable th3) {
                        th2 = th3;
                        wVar2 = wVar;
                        iVar = this;
                        while (true) {
                            try {
                                try {
                                    throw th2;
                                } catch (Throwable th4) {
                                    th = th4;
                                    if (wVar2 != null) {
                                        iVar.f9910u.getClass();
                                        m.g(wVar2);
                                    }
                                    throw th;
                                }
                            } catch (Throwable th5) {
                                th2 = th5;
                                iVar = iVar;
                            }
                            th2 = th5;
                            iVar = iVar;
                        }
                    }
                } catch (Throwable th6) {
                    th2 = th6;
                    iVar = this;
                }
            }
        } catch (Throwable th7) {
            th = th7;
            iVar = this;
        }
    }

    public final String toString() {
        Object obj;
        Class<R> cls;
        synchronized (this.f9893c) {
            obj = this.f9897h;
            cls = this.f9898i;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
