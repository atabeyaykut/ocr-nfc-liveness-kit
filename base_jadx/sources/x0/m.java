package x0;

import android.os.SystemClock;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.io.File;
import java.util.Map;
import java.util.concurrent.Executor;
import q1.i;
import r1.a;
import x0.c;
import x0.j;
import x0.q;
import z0.a;
import z0.h;

/* loaded from: classes.dex */
public final class m implements o, h.a, q.a {

    /* renamed from: h, reason: collision with root package name */
    public static final boolean f19015h = Log.isLoggable("Engine", 2);

    /* renamed from: a, reason: collision with root package name */
    public final t f19016a;

    /* renamed from: b, reason: collision with root package name */
    public final c5.u f19017b;

    /* renamed from: c, reason: collision with root package name */
    public final z0.h f19018c;

    /* renamed from: d, reason: collision with root package name */
    public final b f19019d;

    /* renamed from: e, reason: collision with root package name */
    public final z f19020e;
    public final a f;

    /* renamed from: g, reason: collision with root package name */
    public final x0.c f19021g;

    @VisibleForTesting
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public final j.d f19022a;

        /* renamed from: b, reason: collision with root package name */
        public final a.c f19023b = r1.a.a(150, new C0299a());

        /* renamed from: c, reason: collision with root package name */
        public int f19024c;

        /* renamed from: x0.m$a$a, reason: collision with other inner class name */
        public class C0299a implements a.b<j<?>> {
            public C0299a() {
            }

            @Override // r1.a.b
            public final j<?> a() {
                a aVar = a.this;
                return new j<>(aVar.f19022a, aVar.f19023b);
            }
        }

        public a(c cVar) {
            this.f19022a = cVar;
        }
    }

    @VisibleForTesting
    public static class b {

        /* renamed from: a, reason: collision with root package name */
        public final a1.a f19026a;

        /* renamed from: b, reason: collision with root package name */
        public final a1.a f19027b;

        /* renamed from: c, reason: collision with root package name */
        public final a1.a f19028c;

        /* renamed from: d, reason: collision with root package name */
        public final a1.a f19029d;

        /* renamed from: e, reason: collision with root package name */
        public final o f19030e;
        public final q.a f;

        /* renamed from: g, reason: collision with root package name */
        public final a.c f19031g = r1.a.a(150, new a());

        public class a implements a.b<n<?>> {
            public a() {
            }

            @Override // r1.a.b
            public final n<?> a() {
                b bVar = b.this;
                return new n<>(bVar.f19026a, bVar.f19027b, bVar.f19028c, bVar.f19029d, bVar.f19030e, bVar.f, bVar.f19031g);
            }
        }

        public b(a1.a aVar, a1.a aVar2, a1.a aVar3, a1.a aVar4, o oVar, q.a aVar5) {
            this.f19026a = aVar;
            this.f19027b = aVar2;
            this.f19028c = aVar3;
            this.f19029d = aVar4;
            this.f19030e = oVar;
            this.f = aVar5;
        }
    }

    public static class c implements j.d {

        /* renamed from: a, reason: collision with root package name */
        public final a.InterfaceC0310a f19033a;

        /* renamed from: b, reason: collision with root package name */
        public volatile z0.a f19034b;

        public c(a.InterfaceC0310a interfaceC0310a) {
            this.f19033a = interfaceC0310a;
        }

        public final z0.a a() {
            if (this.f19034b == null) {
                synchronized (this) {
                    if (this.f19034b == null) {
                        z0.c cVar = (z0.c) this.f19033a;
                        z0.e eVar = (z0.e) cVar.f19738b;
                        File cacheDir = eVar.f19744a.getCacheDir();
                        z0.d dVar = null;
                        if (cacheDir == null) {
                            cacheDir = null;
                        } else {
                            String str = eVar.f19745b;
                            if (str != null) {
                                cacheDir = new File(cacheDir, str);
                            }
                        }
                        if (cacheDir != null && (cacheDir.isDirectory() || cacheDir.mkdirs())) {
                            dVar = new z0.d(cacheDir, cVar.f19737a);
                        }
                        this.f19034b = dVar;
                    }
                    if (this.f19034b == null) {
                        this.f19034b = new c5.u();
                    }
                }
            }
            return this.f19034b;
        }
    }

    public class d {

        /* renamed from: a, reason: collision with root package name */
        public final n<?> f19035a;

        /* renamed from: b, reason: collision with root package name */
        public final m1.h f19036b;

        public d(m1.h hVar, n<?> nVar) {
            this.f19036b = hVar;
            this.f19035a = nVar;
        }
    }

    public m(z0.h hVar, a.InterfaceC0310a interfaceC0310a, a1.a aVar, a1.a aVar2, a1.a aVar3, a1.a aVar4) {
        this.f19018c = hVar;
        c cVar = new c(interfaceC0310a);
        x0.c cVar2 = new x0.c();
        this.f19021g = cVar2;
        synchronized (this) {
            synchronized (cVar2) {
                cVar2.f18944d = this;
            }
        }
        this.f19017b = new c5.u();
        this.f19016a = new t(0);
        this.f19019d = new b(aVar, aVar2, aVar3, aVar4, this, this);
        this.f = new a(cVar);
        this.f19020e = new z();
        ((z0.g) hVar).f19746d = this;
    }

    public static void e(String str, long j10, v0.f fVar) {
        StringBuilder sbI = androidx.browser.browseractions.b.i(str, " in ");
        sbI.append(q1.h.a(j10));
        sbI.append("ms, key: ");
        sbI.append(fVar);
        Log.v("Engine", sbI.toString());
    }

    public static void g(w wVar) {
        if (!(wVar instanceof q)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((q) wVar).c();
    }

    @Override // x0.q.a
    public final void a(v0.f fVar, q<?> qVar) {
        x0.c cVar = this.f19021g;
        synchronized (cVar) {
            c.a aVar = (c.a) cVar.f18942b.remove(fVar);
            if (aVar != null) {
                aVar.f18947c = null;
                aVar.clear();
            }
        }
        if (qVar.f19074a) {
            ((z0.g) this.f19018c).d(fVar, qVar);
        } else {
            this.f19020e.a(qVar, false);
        }
    }

    public final d b(com.bumptech.glide.h hVar, Object obj, v0.f fVar, int r28, int r29, Class cls, Class cls2, com.bumptech.glide.j jVar, l lVar, q1.b bVar, boolean z10, boolean z11, v0.h hVar2, boolean z12, boolean z13, boolean z14, boolean z15, m1.h hVar3, Executor executor) {
        long jElapsedRealtimeNanos;
        if (f19015h) {
            int r02 = q1.h.f13308b;
            jElapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        } else {
            jElapsedRealtimeNanos = 0;
        }
        long j10 = jElapsedRealtimeNanos;
        this.f19017b.getClass();
        p pVar = new p(obj, fVar, r28, r29, bVar, cls, cls2, hVar2);
        synchronized (this) {
            try {
                q<?> qVarD = d(pVar, z12, j10);
                if (qVarD == null) {
                    return h(hVar, obj, fVar, r28, r29, cls, cls2, jVar, lVar, bVar, z10, z11, hVar2, z12, z13, z14, z15, hVar3, executor, pVar, j10);
                }
                ((m1.i) hVar3).o(qVarD, v0.a.MEMORY_CACHE, false);
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final q<?> c(v0.f fVar) {
        w wVar;
        z0.g gVar = (z0.g) this.f19018c;
        synchronized (gVar) {
            i.a aVar = (i.a) gVar.f13309a.remove(fVar);
            if (aVar == null) {
                wVar = null;
            } else {
                gVar.f13311c -= aVar.f13313b;
                wVar = aVar.f13312a;
            }
        }
        w wVar2 = wVar;
        q<?> qVar = wVar2 != null ? wVar2 instanceof q ? (q) wVar2 : new q<>(wVar2, true, true, fVar, this) : null;
        if (qVar != null) {
            qVar.b();
            this.f19021g.a(fVar, qVar);
        }
        return qVar;
    }

    @Nullable
    public final q<?> d(p pVar, boolean z10, long j10) {
        q<?> qVar;
        if (!z10) {
            return null;
        }
        x0.c cVar = this.f19021g;
        synchronized (cVar) {
            c.a aVar = (c.a) cVar.f18942b.get(pVar);
            if (aVar == null) {
                qVar = null;
            } else {
                qVar = aVar.get();
                if (qVar == null) {
                    cVar.b(aVar);
                }
            }
        }
        if (qVar != null) {
            qVar.b();
        }
        if (qVar != null) {
            if (f19015h) {
                e("Loaded resource from active resources", j10, pVar);
            }
            return qVar;
        }
        q<?> qVarC = c(pVar);
        if (qVarC == null) {
            return null;
        }
        if (f19015h) {
            e("Loaded resource from cache", j10, pVar);
        }
        return qVarC;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0018 A[Catch: all -> 0x002b, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000c, B:9:0x0015, B:11:0x001a, B:13:0x0026, B:10:0x0018), top: B:19:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0026 A[Catch: all -> 0x002b, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000c, B:9:0x0015, B:11:0x001a, B:13:0x0026, B:10:0x0018), top: B:19:0x0003 }] */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0015 A[Catch: all -> 0x002b, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:7:0x000c, B:9:0x0015, B:11:0x001a, B:13:0x0026, B:10:0x0018), top: B:19:0x0003 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void f(x0.n<?> r2, v0.f r3, x0.q<?> r4) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r4 == 0) goto Lc
            boolean r0 = r4.f19074a     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto Lc
            x0.c r0 = r1.f19021g     // Catch: java.lang.Throwable -> L2b
            r0.a(r3, r4)     // Catch: java.lang.Throwable -> L2b
        Lc:
            x0.t r4 = r1.f19016a     // Catch: java.lang.Throwable -> L2b
            r4.getClass()     // Catch: java.lang.Throwable -> L2b
            boolean r0 = r2.f19052r     // Catch: java.lang.Throwable -> L2b
            if (r0 == 0) goto L18
            java.lang.Object r4 = r4.f19088b     // Catch: java.lang.Throwable -> L2b
            goto L1a
        L18:
            java.lang.Object r4 = r4.f19087a     // Catch: java.lang.Throwable -> L2b
        L1a:
            java.util.Map r4 = (java.util.Map) r4     // Catch: java.lang.Throwable -> L2b
            java.lang.Object r0 = r4.get(r3)     // Catch: java.lang.Throwable -> L2b
            boolean r2 = r2.equals(r0)     // Catch: java.lang.Throwable -> L2b
            if (r2 == 0) goto L29
            r4.remove(r3)     // Catch: java.lang.Throwable -> L2b
        L29:
            monitor-exit(r1)
            return
        L2b:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: x0.m.f(x0.n, v0.f, x0.q):void");
    }

    public final d h(com.bumptech.glide.h hVar, Object obj, v0.f fVar, int r20, int r21, Class cls, Class cls2, com.bumptech.glide.j jVar, l lVar, q1.b bVar, boolean z10, boolean z11, v0.h hVar2, boolean z12, boolean z13, boolean z14, boolean z15, m1.h hVar3, Executor executor, p pVar, long j10) {
        t tVar = this.f19016a;
        n nVar = (n) ((Map) (z15 ? tVar.f19088b : tVar.f19087a)).get(pVar);
        if (nVar != null) {
            nVar.a(hVar3, executor);
            if (f19015h) {
                e("Added to existing load", j10, pVar);
            }
            return new d(hVar3, nVar);
        }
        n nVar2 = (n) this.f19019d.f19031g.acquire();
        q1.l.b(nVar2);
        synchronized (nVar2) {
            nVar2.f19048m = pVar;
            nVar2.f19049n = z12;
            nVar2.f19050p = z13;
            nVar2.f19051q = z14;
            nVar2.f19052r = z15;
        }
        a aVar = this.f;
        j jVar2 = (j) aVar.f19023b.acquire();
        q1.l.b(jVar2);
        int r10 = aVar.f19024c;
        aVar.f19024c = r10 + 1;
        i<R> iVar = jVar2.f18978a;
        iVar.f18963c = hVar;
        iVar.f18964d = obj;
        iVar.f18973n = fVar;
        iVar.f18965e = r20;
        iVar.f = r21;
        iVar.f18975p = lVar;
        iVar.f18966g = cls;
        iVar.f18967h = jVar2.f18981d;
        iVar.f18970k = cls2;
        iVar.f18974o = jVar;
        iVar.f18968i = hVar2;
        iVar.f18969j = bVar;
        iVar.f18976q = z10;
        iVar.f18977r = z11;
        jVar2.f18984h = hVar;
        jVar2.f18985j = fVar;
        jVar2.f18986k = jVar;
        jVar2.f18987l = pVar;
        jVar2.f18988m = r20;
        jVar2.f18989n = r21;
        jVar2.f18990p = lVar;
        jVar2.f18996x = z15;
        jVar2.f18991q = hVar2;
        jVar2.f18992r = nVar2;
        jVar2.f18993s = r10;
        jVar2.f18995v = 1;
        jVar2.f18997y = obj;
        t tVar2 = this.f19016a;
        tVar2.getClass();
        ((Map) (nVar2.f19052r ? tVar2.f19088b : tVar2.f19087a)).put(pVar, nVar2);
        nVar2.a(hVar3, executor);
        nVar2.j(jVar2);
        if (f19015h) {
            e("Started new load", j10, pVar);
        }
        return new d(hVar3, nVar2);
    }
}
