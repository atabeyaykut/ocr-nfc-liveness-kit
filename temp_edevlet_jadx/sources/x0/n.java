package x0;

import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;
import r1.a;
import r1.d;
import x0.j;
import x0.q;

/* loaded from: classes.dex */
public final class n<R> implements j.a<R>, a.d {
    public static final c C = new c();
    public volatile boolean A;
    public boolean B;

    /* renamed from: a, reason: collision with root package name */
    public final e f19038a;

    /* renamed from: b, reason: collision with root package name */
    public final d.a f19039b;

    /* renamed from: c, reason: collision with root package name */
    public final q.a f19040c;

    /* renamed from: d, reason: collision with root package name */
    public final Pools.Pool<n<?>> f19041d;

    /* renamed from: e, reason: collision with root package name */
    public final c f19042e;
    public final o f;

    /* renamed from: g, reason: collision with root package name */
    public final a1.a f19043g;

    /* renamed from: h, reason: collision with root package name */
    public final a1.a f19044h;

    /* renamed from: j, reason: collision with root package name */
    public final a1.a f19045j;

    /* renamed from: k, reason: collision with root package name */
    public final a1.a f19046k;

    /* renamed from: l, reason: collision with root package name */
    public final AtomicInteger f19047l;

    /* renamed from: m, reason: collision with root package name */
    public v0.f f19048m;

    /* renamed from: n, reason: collision with root package name */
    public boolean f19049n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f19050p;

    /* renamed from: q, reason: collision with root package name */
    public boolean f19051q;

    /* renamed from: r, reason: collision with root package name */
    public boolean f19052r;

    /* renamed from: s, reason: collision with root package name */
    public w<?> f19053s;

    /* renamed from: t, reason: collision with root package name */
    public v0.a f19054t;

    /* renamed from: v, reason: collision with root package name */
    public boolean f19055v;
    public r w;

    /* renamed from: x, reason: collision with root package name */
    public boolean f19056x;

    /* renamed from: y, reason: collision with root package name */
    public q<?> f19057y;

    /* renamed from: z, reason: collision with root package name */
    public j<R> f19058z;

    public class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final m1.h f19059a;

        public a(m1.h hVar) {
            this.f19059a = hVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            m1.i iVar = (m1.i) this.f19059a;
            iVar.f9892b.a();
            synchronized (iVar.f9893c) {
                synchronized (n.this) {
                    e eVar = n.this.f19038a;
                    m1.h hVar = this.f19059a;
                    eVar.getClass();
                    if (eVar.f19065a.contains(new d(hVar, q1.e.f13304b))) {
                        n nVar = n.this;
                        m1.h hVar2 = this.f19059a;
                        nVar.getClass();
                        try {
                            ((m1.i) hVar2).m(nVar.w, 5);
                        } catch (Throwable th2) {
                            throw new x0.d(th2);
                        }
                    }
                    n.this.c();
                }
            }
        }
    }

    public class b implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public final m1.h f19061a;

        public b(m1.h hVar) {
            this.f19061a = hVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            m1.i iVar = (m1.i) this.f19061a;
            iVar.f9892b.a();
            synchronized (iVar.f9893c) {
                synchronized (n.this) {
                    e eVar = n.this.f19038a;
                    m1.h hVar = this.f19061a;
                    eVar.getClass();
                    if (eVar.f19065a.contains(new d(hVar, q1.e.f13304b))) {
                        n.this.f19057y.b();
                        n nVar = n.this;
                        m1.h hVar2 = this.f19061a;
                        nVar.getClass();
                        try {
                            ((m1.i) hVar2).o(nVar.f19057y, nVar.f19054t, nVar.B);
                            n.this.i(this.f19061a);
                        } catch (Throwable th2) {
                            throw new x0.d(th2);
                        }
                    }
                    n.this.c();
                }
            }
        }
    }

    @VisibleForTesting
    public static class c {
    }

    public static final class d {

        /* renamed from: a, reason: collision with root package name */
        public final m1.h f19063a;

        /* renamed from: b, reason: collision with root package name */
        public final Executor f19064b;

        public d(m1.h hVar, Executor executor) {
            this.f19063a = hVar;
            this.f19064b = executor;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof d) {
                return this.f19063a.equals(((d) obj).f19063a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f19063a.hashCode();
        }
    }

    public static final class e implements Iterable<d> {

        /* renamed from: a, reason: collision with root package name */
        public final List<d> f19065a;

        public e(ArrayList arrayList) {
            this.f19065a = arrayList;
        }

        @Override // java.lang.Iterable
        @NonNull
        public final Iterator<d> iterator() {
            return this.f19065a.iterator();
        }
    }

    @VisibleForTesting
    public n() {
        throw null;
    }

    public n(a1.a aVar, a1.a aVar2, a1.a aVar3, a1.a aVar4, o oVar, q.a aVar5, a.c cVar) {
        c cVar2 = C;
        this.f19038a = new e(new ArrayList(2));
        this.f19039b = new d.a();
        this.f19047l = new AtomicInteger();
        this.f19043g = aVar;
        this.f19044h = aVar2;
        this.f19045j = aVar3;
        this.f19046k = aVar4;
        this.f = oVar;
        this.f19040c = aVar5;
        this.f19041d = cVar;
        this.f19042e = cVar2;
    }

    public final synchronized void a(m1.h hVar, Executor executor) {
        Runnable aVar;
        this.f19039b.a();
        e eVar = this.f19038a;
        eVar.getClass();
        eVar.f19065a.add(new d(hVar, executor));
        boolean z10 = true;
        if (this.f19055v) {
            d(1);
            aVar = new b(hVar);
        } else if (this.f19056x) {
            d(1);
            aVar = new a(hVar);
        } else {
            if (this.A) {
                z10 = false;
            }
            q1.l.a("Cannot add callbacks to a cancelled EngineJob", z10);
        }
        executor.execute(aVar);
    }

    public final void b() {
        if (e()) {
            return;
        }
        this.A = true;
        j<R> jVar = this.f19058z;
        jVar.H = true;
        h hVar = jVar.F;
        if (hVar != null) {
            hVar.cancel();
        }
        o oVar = this.f;
        v0.f fVar = this.f19048m;
        m mVar = (m) oVar;
        synchronized (mVar) {
            t tVar = mVar.f19016a;
            tVar.getClass();
            Map map = (Map) (this.f19052r ? tVar.f19088b : tVar.f19087a);
            if (equals(map.get(fVar))) {
                map.remove(fVar);
            }
        }
    }

    public final void c() {
        q<?> qVar;
        synchronized (this) {
            this.f19039b.a();
            q1.l.a("Not yet complete!", e());
            int r02 = this.f19047l.decrementAndGet();
            q1.l.a("Can't decrement below 0", r02 >= 0);
            if (r02 == 0) {
                qVar = this.f19057y;
                h();
            } else {
                qVar = null;
            }
        }
        if (qVar != null) {
            qVar.c();
        }
    }

    public final synchronized void d(int r32) {
        q<?> qVar;
        q1.l.a("Not yet complete!", e());
        if (this.f19047l.getAndAdd(r32) == 0 && (qVar = this.f19057y) != null) {
            qVar.b();
        }
    }

    public final boolean e() {
        return this.f19056x || this.f19055v || this.A;
    }

    public final void f() {
        synchronized (this) {
            this.f19039b.a();
            if (this.A) {
                h();
                return;
            }
            if (this.f19038a.f19065a.isEmpty()) {
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            }
            if (this.f19056x) {
                throw new IllegalStateException("Already failed once");
            }
            this.f19056x = true;
            v0.f fVar = this.f19048m;
            e eVar = this.f19038a;
            eVar.getClass();
            ArrayList<d> arrayList = new ArrayList(eVar.f19065a);
            d(arrayList.size() + 1);
            ((m) this.f).f(this, fVar, null);
            for (d dVar : arrayList) {
                dVar.f19064b.execute(new a(dVar.f19063a));
            }
            c();
        }
    }

    public final void g() {
        synchronized (this) {
            this.f19039b.a();
            if (this.A) {
                this.f19053s.recycle();
                h();
                return;
            }
            if (this.f19038a.f19065a.isEmpty()) {
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            }
            if (this.f19055v) {
                throw new IllegalStateException("Already have resource");
            }
            c cVar = this.f19042e;
            w<?> wVar = this.f19053s;
            boolean z10 = this.f19049n;
            v0.f fVar = this.f19048m;
            q.a aVar = this.f19040c;
            cVar.getClass();
            this.f19057y = new q<>(wVar, z10, true, fVar, aVar);
            this.f19055v = true;
            e eVar = this.f19038a;
            eVar.getClass();
            ArrayList<d> arrayList = new ArrayList(eVar.f19065a);
            d(arrayList.size() + 1);
            ((m) this.f).f(this, this.f19048m, this.f19057y);
            for (d dVar : arrayList) {
                dVar.f19064b.execute(new b(dVar.f19063a));
            }
            c();
        }
    }

    public final synchronized void h() {
        if (this.f19048m == null) {
            throw new IllegalArgumentException();
        }
        this.f19038a.f19065a.clear();
        this.f19048m = null;
        this.f19057y = null;
        this.f19053s = null;
        this.f19056x = false;
        this.A = false;
        this.f19055v = false;
        this.B = false;
        this.f19058z.C();
        this.f19058z = null;
        this.w = null;
        this.f19054t = null;
        this.f19041d.release(this);
    }

    public final synchronized void i(m1.h hVar) {
        this.f19039b.a();
        this.f19038a.f19065a.remove(new d(hVar, q1.e.f13304b));
        if (this.f19038a.f19065a.isEmpty()) {
            b();
            if ((this.f19055v || this.f19056x) && this.f19047l.get() == 0) {
                h();
            }
        }
    }

    public final synchronized void j(j<R> jVar) {
        this.f19058z = jVar;
        boolean z10 = true;
        int r12 = jVar.x(1);
        if (r12 != 2 && r12 != 3) {
            z10 = false;
        }
        (z10 ? this.f19043g : this.f19050p ? this.f19045j : this.f19051q ? this.f19046k : this.f19044h).execute(jVar);
    }

    @Override // r1.a.d
    @NonNull
    public final d.a r() {
        return this.f19039b;
    }
}
