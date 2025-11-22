package x0;

import android.os.Build;
import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.collection.SimpleArrayMap;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Collections;
import r1.a;
import r1.d;
import x0.h;
import x0.m;

/* loaded from: classes.dex */
public final class j<R> implements h.a, Runnable, Comparable<j<?>>, a.d {
    public v0.f A;
    public v0.f B;
    public Object C;
    public v0.a D;
    public com.bumptech.glide.load.data.d<?> E;
    public volatile h F;
    public volatile boolean G;
    public volatile boolean H;
    public boolean I;

    /* renamed from: d, reason: collision with root package name */
    public final d f18981d;

    /* renamed from: e, reason: collision with root package name */
    public final Pools.Pool<j<?>> f18982e;

    /* renamed from: h, reason: collision with root package name */
    public com.bumptech.glide.h f18984h;

    /* renamed from: j, reason: collision with root package name */
    public v0.f f18985j;

    /* renamed from: k, reason: collision with root package name */
    public com.bumptech.glide.j f18986k;

    /* renamed from: l, reason: collision with root package name */
    public p f18987l;

    /* renamed from: m, reason: collision with root package name */
    public int f18988m;

    /* renamed from: n, reason: collision with root package name */
    public int f18989n;

    /* renamed from: p, reason: collision with root package name */
    public l f18990p;

    /* renamed from: q, reason: collision with root package name */
    public v0.h f18991q;

    /* renamed from: r, reason: collision with root package name */
    public a<R> f18992r;

    /* renamed from: s, reason: collision with root package name */
    public int f18993s;

    /* renamed from: t, reason: collision with root package name */
    public int f18994t;

    /* renamed from: v, reason: collision with root package name */
    public int f18995v;
    public long w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f18996x;

    /* renamed from: y, reason: collision with root package name */
    public Object f18997y;

    /* renamed from: z, reason: collision with root package name */
    public Thread f18998z;

    /* renamed from: a, reason: collision with root package name */
    public final i<R> f18978a = new i<>();

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18979b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final d.a f18980c = new d.a();
    public final c<?> f = new c<>();

    /* renamed from: g, reason: collision with root package name */
    public final e f18983g = new e();

    public interface a<R> {
    }

    public final class b<Z> {

        /* renamed from: a, reason: collision with root package name */
        public final v0.a f18999a;

        public b(v0.a aVar) {
            this.f18999a = aVar;
        }
    }

    public static class c<Z> {

        /* renamed from: a, reason: collision with root package name */
        public v0.f f19001a;

        /* renamed from: b, reason: collision with root package name */
        public v0.k<Z> f19002b;

        /* renamed from: c, reason: collision with root package name */
        public v<Z> f19003c;
    }

    public interface d {
    }

    public static class e {

        /* renamed from: a, reason: collision with root package name */
        public boolean f19004a;

        /* renamed from: b, reason: collision with root package name */
        public boolean f19005b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f19006c;

        public final boolean a() {
            return (this.f19006c || this.f19005b) && this.f19004a;
        }
    }

    public j(d dVar, a.c cVar) {
        this.f18981d = dVar;
        this.f18982e = cVar;
    }

    public final void A() {
        boolean zA;
        e eVar = this.f18983g;
        synchronized (eVar) {
            eVar.f19005b = true;
            zA = eVar.a();
        }
        if (zA) {
            E();
        }
    }

    public final void B() {
        boolean zA;
        e eVar = this.f18983g;
        synchronized (eVar) {
            eVar.f19006c = true;
            zA = eVar.a();
        }
        if (zA) {
            E();
        }
    }

    public final void C() {
        boolean zA;
        e eVar = this.f18983g;
        synchronized (eVar) {
            eVar.f19004a = true;
            zA = eVar.a();
        }
        if (zA) {
            E();
        }
    }

    public final void E() {
        e eVar = this.f18983g;
        synchronized (eVar) {
            eVar.f19005b = false;
            eVar.f19004a = false;
            eVar.f19006c = false;
        }
        c<?> cVar = this.f;
        cVar.f19001a = null;
        cVar.f19002b = null;
        cVar.f19003c = null;
        i<R> iVar = this.f18978a;
        iVar.f18963c = null;
        iVar.f18964d = null;
        iVar.f18973n = null;
        iVar.f18966g = null;
        iVar.f18970k = null;
        iVar.f18968i = null;
        iVar.f18974o = null;
        iVar.f18969j = null;
        iVar.f18975p = null;
        iVar.f18961a.clear();
        iVar.f18971l = false;
        iVar.f18962b.clear();
        iVar.f18972m = false;
        this.G = false;
        this.f18984h = null;
        this.f18985j = null;
        this.f18991q = null;
        this.f18986k = null;
        this.f18987l = null;
        this.f18992r = null;
        this.f18994t = 0;
        this.F = null;
        this.f18998z = null;
        this.A = null;
        this.C = null;
        this.D = null;
        this.E = null;
        this.w = 0L;
        this.H = false;
        this.f18997y = null;
        this.f18979b.clear();
        this.f18982e.release(this);
    }

    public final void F(int r22) {
        this.f18995v = r22;
        n nVar = (n) this.f18992r;
        (nVar.f19050p ? nVar.f19045j : nVar.f19051q ? nVar.f19046k : nVar.f19044h).execute(this);
    }

    public final void G() {
        this.f18998z = Thread.currentThread();
        int r02 = q1.h.f13308b;
        this.w = SystemClock.elapsedRealtimeNanos();
        boolean zA = false;
        while (!this.H && this.F != null && !(zA = this.F.a())) {
            this.f18994t = x(this.f18994t);
            this.F = w();
            if (this.f18994t == 4) {
                F(2);
                return;
            }
        }
        if ((this.f18994t == 6 || this.H) && !zA) {
            z();
        }
    }

    public final void H() {
        int r02 = g.d.c(this.f18995v);
        if (r02 == 0) {
            this.f18994t = x(1);
            this.F = w();
        } else if (r02 != 1) {
            if (r02 != 2) {
                throw new IllegalStateException("Unrecognized run reason: ".concat(androidx.appcompat.widget.v.h(this.f18995v)));
            }
            v();
            return;
        }
        G();
    }

    public final void J() {
        Throwable th2;
        this.f18980c.a();
        if (!this.G) {
            this.G = true;
            return;
        }
        if (this.f18979b.isEmpty()) {
            th2 = null;
        } else {
            ArrayList arrayList = this.f18979b;
            th2 = (Throwable) arrayList.get(arrayList.size() - 1);
        }
        throw new IllegalStateException("Already notified", th2);
    }

    @Override // java.lang.Comparable
    public final int compareTo(@NonNull j<?> jVar) {
        j<?> jVar2 = jVar;
        int r02 = this.f18986k.ordinal() - jVar2.f18986k.ordinal();
        return r02 == 0 ? this.f18993s - jVar2.f18993s : r02;
    }

    @Override // x0.h.a
    public final void n(v0.f fVar, Object obj, com.bumptech.glide.load.data.d<?> dVar, v0.a aVar, v0.f fVar2) {
        this.A = fVar;
        this.C = obj;
        this.E = dVar;
        this.D = aVar;
        this.B = fVar2;
        this.I = fVar != this.f18978a.a().get(0);
        if (Thread.currentThread() != this.f18998z) {
            F(3);
        } else {
            v();
        }
    }

    @Override // x0.h.a
    public final void o() {
        F(2);
    }

    @Override // x0.h.a
    public final void q(v0.f fVar, Exception exc, com.bumptech.glide.load.data.d<?> dVar, v0.a aVar) {
        dVar.b();
        r rVar = new r("Fetching data failed", Collections.singletonList(exc));
        Class<?> clsA = dVar.a();
        rVar.f19081b = fVar;
        rVar.f19082c = aVar;
        rVar.f19083d = clsA;
        this.f18979b.add(rVar);
        if (Thread.currentThread() != this.f18998z) {
            F(2);
        } else {
            G();
        }
    }

    @Override // r1.a.d
    @NonNull
    public final d.a r() {
        return this.f18980c;
    }

    @Override // java.lang.Runnable
    public final void run() {
        com.bumptech.glide.load.data.d<?> dVar = this.E;
        try {
            try {
                if (this.H) {
                    z();
                    if (dVar != null) {
                        dVar.b();
                        return;
                    }
                    return;
                }
                H();
                if (dVar != null) {
                    dVar.b();
                }
            } catch (Throwable th2) {
                if (dVar != null) {
                    dVar.b();
                }
                throw th2;
            }
        } catch (x0.d e10) {
            throw e10;
        } catch (Throwable th3) {
            if (Log.isLoggable("DecodeJob", 3)) {
                Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.H + ", stage: " + androidx.constraintlayout.core.a.k(this.f18994t), th3);
            }
            if (this.f18994t != 5) {
                this.f18979b.add(th3);
                z();
            }
            if (!this.H) {
                throw th3;
            }
            throw th3;
        }
    }

    public final <Data> w<R> t(com.bumptech.glide.load.data.d<?> dVar, Data data, v0.a aVar) throws r {
        if (data == null) {
            return null;
        }
        try {
            int r22 = q1.h.f13308b;
            long jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            w<R> wVarU = u(data, aVar);
            if (Log.isLoggable("DecodeJob", 2)) {
                y(jElapsedRealtimeNanos, "Decoded result " + wVarU, null);
            }
            return wVarU;
        } finally {
            dVar.b();
        }
    }

    public final <Data> w<R> u(Data data, v0.a aVar) throws r {
        Class<?> cls = data.getClass();
        i<R> iVar = this.f18978a;
        u<Data, ?, R> uVarC = iVar.c(cls);
        v0.h hVar = this.f18991q;
        if (Build.VERSION.SDK_INT >= 26) {
            boolean z10 = aVar == v0.a.RESOURCE_DISK_CACHE || iVar.f18977r;
            v0.g<Boolean> gVar = e1.m.f5053i;
            Boolean bool = (Boolean) hVar.c(gVar);
            if (bool == null || (bool.booleanValue() && !z10)) {
                hVar = new v0.h();
                q1.b bVar = this.f18991q.f18206b;
                q1.b bVar2 = hVar.f18206b;
                bVar2.putAll((SimpleArrayMap) bVar);
                bVar2.put(gVar, Boolean.valueOf(z10));
            }
        }
        v0.h hVar2 = hVar;
        com.bumptech.glide.load.data.e eVarH = this.f18984h.a().h(data);
        try {
            return uVarC.a(this.f18988m, this.f18989n, hVar2, eVarH, new b(aVar));
        } finally {
            eVarH.b();
        }
    }

    public final void v() {
        v vVarT;
        if (Log.isLoggable("DecodeJob", 2)) {
            y(this.w, "Retrieved data", "data: " + this.C + ", cache key: " + this.A + ", fetcher: " + this.E);
        }
        v vVar = null;
        try {
            vVarT = t(this.E, this.C, this.D);
        } catch (r e10) {
            v0.f fVar = this.B;
            v0.a aVar = this.D;
            e10.f19081b = fVar;
            e10.f19082c = aVar;
            e10.f19083d = null;
            this.f18979b.add(e10);
            vVarT = null;
        }
        if (vVarT == null) {
            G();
            return;
        }
        v0.a aVar2 = this.D;
        boolean z10 = this.I;
        if (vVarT instanceof s) {
            ((s) vVarT).initialize();
        }
        boolean z11 = true;
        if (this.f.f19003c != null) {
            vVar = (v) v.f19092e.acquire();
            q1.l.b(vVar);
            vVar.f19096d = false;
            vVar.f19095c = true;
            vVar.f19094b = vVarT;
            vVarT = vVar;
        }
        J();
        n nVar = (n) this.f18992r;
        synchronized (nVar) {
            nVar.f19053s = vVarT;
            nVar.f19054t = aVar2;
            nVar.B = z10;
        }
        nVar.g();
        this.f18994t = 5;
        try {
            c<?> cVar = this.f;
            if (cVar.f19003c == null) {
                z11 = false;
            }
            if (z11) {
                d dVar = this.f18981d;
                v0.h hVar = this.f18991q;
                cVar.getClass();
                try {
                    ((m.c) dVar).a().f(cVar.f19001a, new g(cVar.f19002b, cVar.f19003c, hVar));
                    cVar.f19003c.b();
                } catch (Throwable th2) {
                    cVar.f19003c.b();
                    throw th2;
                }
            }
            A();
        } finally {
            if (vVar != null) {
                vVar.b();
            }
        }
    }

    public final h w() {
        int r02 = g.d.c(this.f18994t);
        i<R> iVar = this.f18978a;
        if (r02 == 1) {
            return new x(iVar, this);
        }
        if (r02 == 2) {
            return new x0.e(iVar.a(), iVar, this);
        }
        if (r02 == 3) {
            return new b0(iVar, this);
        }
        if (r02 == 5) {
            return null;
        }
        throw new IllegalStateException("Unrecognized stage: ".concat(androidx.constraintlayout.core.a.k(this.f18994t)));
    }

    public final int x(int r52) {
        if (r52 == 0) {
            throw null;
        }
        int r02 = r52 - 1;
        if (r02 == 0) {
            if (this.f18990p.b()) {
                return 2;
            }
            return x(2);
        }
        if (r02 == 1) {
            if (this.f18990p.a()) {
                return 3;
            }
            return x(3);
        }
        if (r02 == 2) {
            return this.f18996x ? 6 : 4;
        }
        if (r02 == 3 || r02 == 5) {
            return 6;
        }
        throw new IllegalArgumentException("Unrecognized stage: ".concat(androidx.constraintlayout.core.a.k(r52)));
    }

    public final void y(long j10, String str, String str2) {
        StringBuilder sbI = androidx.browser.browseractions.b.i(str, " in ");
        sbI.append(q1.h.a(j10));
        sbI.append(", load key: ");
        sbI.append(this.f18987l);
        sbI.append(str2 != null ? ", ".concat(str2) : "");
        sbI.append(", thread: ");
        sbI.append(Thread.currentThread().getName());
        Log.v("DecodeJob", sbI.toString());
    }

    public final void z() {
        J();
        r rVar = new r("Failed to load resource", new ArrayList(this.f18979b));
        n nVar = (n) this.f18992r;
        synchronized (nVar) {
            nVar.w = rVar;
        }
        nVar.f();
        B();
    }
}
