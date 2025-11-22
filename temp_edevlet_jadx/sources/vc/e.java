package vc;

import androidx.core.app.NotificationCompat;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import rc.b0;
import rc.v;
import rc.x;

/* loaded from: classes2.dex */
public final class e implements rc.d {

    /* renamed from: a, reason: collision with root package name */
    public final k f18498a;

    /* renamed from: b, reason: collision with root package name */
    public final rc.n f18499b;

    /* renamed from: c, reason: collision with root package name */
    public final c f18500c;

    /* renamed from: d, reason: collision with root package name */
    public final AtomicBoolean f18501d;

    /* renamed from: e, reason: collision with root package name */
    public Object f18502e;
    public d f;

    /* renamed from: g, reason: collision with root package name */
    public i f18503g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f18504h;

    /* renamed from: j, reason: collision with root package name */
    public vc.c f18505j;

    /* renamed from: k, reason: collision with root package name */
    public boolean f18506k;

    /* renamed from: l, reason: collision with root package name */
    public boolean f18507l;

    /* renamed from: m, reason: collision with root package name */
    public boolean f18508m;

    /* renamed from: n, reason: collision with root package name */
    public volatile boolean f18509n;

    /* renamed from: p, reason: collision with root package name */
    public volatile vc.c f18510p;

    /* renamed from: q, reason: collision with root package name */
    public volatile i f18511q;

    /* renamed from: r, reason: collision with root package name */
    public final v f18512r;

    /* renamed from: s, reason: collision with root package name */
    public final x f18513s;

    /* renamed from: t, reason: collision with root package name */
    public final boolean f18514t;

    public final class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        public volatile AtomicInteger f18515a = new AtomicInteger(0);

        /* renamed from: b, reason: collision with root package name */
        public final rc.e f18516b;

        public a(rc.e eVar) {
            this.f18516b = eVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            v vVar;
            String str = "OkHttp " + e.this.f18513s.f14598b.f();
            Thread currentThread = Thread.currentThread();
            kotlin.jvm.internal.h.e(currentThread, "currentThread");
            String name = currentThread.getName();
            currentThread.setName(str);
            try {
                e.this.f18500c.h();
                boolean z10 = false;
                try {
                    try {
                        try {
                            this.f18516b.b(e.this.f());
                            vVar = e.this.f18512r;
                        } catch (IOException e10) {
                            e = e10;
                            z10 = true;
                            if (z10) {
                                zc.h.f20045c.getClass();
                                zc.h hVar = zc.h.f20043a;
                                String str2 = "Callback failure for " + e.b(e.this);
                                hVar.getClass();
                                zc.h.i(4, str2, e);
                            } else {
                                this.f18516b.a(e.this, e);
                            }
                            vVar = e.this.f18512r;
                            vVar.f14550a.c(this);
                        } catch (Throwable th2) {
                            th = th2;
                            z10 = true;
                            e.this.cancel();
                            if (!z10) {
                                IOException iOException = new IOException("canceled due to " + th);
                                b8.f.k(iOException, th);
                                this.f18516b.a(e.this, iOException);
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        e.this.f18512r.f14550a.c(this);
                        throw th3;
                    }
                } catch (IOException e11) {
                    e = e11;
                } catch (Throwable th4) {
                    th = th4;
                }
                vVar.f14550a.c(this);
            } finally {
                currentThread.setName(name);
            }
        }
    }

    public static final class b extends WeakReference<e> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f18518a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(e referent, Object obj) {
            super(referent);
            kotlin.jvm.internal.h.f(referent, "referent");
            this.f18518a = obj;
        }
    }

    public static final class c extends ed.a {
        public c() {
        }

        @Override // ed.a
        public final void k() {
            e.this.cancel();
        }
    }

    public e(v client, x originalRequest, boolean z10) {
        kotlin.jvm.internal.h.f(client, "client");
        kotlin.jvm.internal.h.f(originalRequest, "originalRequest");
        this.f18512r = client;
        this.f18513s = originalRequest;
        this.f18514t = z10;
        this.f18498a = (k) client.f14551b.f1418a;
        this.f18499b = client.f14554e.a(this);
        c cVar = new c();
        cVar.g(0, TimeUnit.MILLISECONDS);
        l9.m mVar = l9.m.f9594a;
        this.f18500c = cVar;
        this.f18501d = new AtomicBoolean();
        this.f18508m = true;
    }

    public static final String b(e eVar) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(eVar.f18509n ? "canceled " : "");
        sb2.append(eVar.f18514t ? "web socket" : NotificationCompat.CATEGORY_CALL);
        sb2.append(" to ");
        sb2.append(eVar.f18513s.f14598b.f());
        return sb2.toString();
    }

    public final void c(i iVar) {
        byte[] bArr = sc.c.f15380a;
        if (!(this.f18503g == null)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        this.f18503g = iVar;
        iVar.f18537o.add(new b(this, this.f18502e));
    }

    @Override // rc.d
    public final void cancel() {
        Socket socket;
        if (this.f18509n) {
            return;
        }
        this.f18509n = true;
        vc.c cVar = this.f18510p;
        if (cVar != null) {
            cVar.f.cancel();
        }
        i iVar = this.f18511q;
        if (iVar != null && (socket = iVar.f18525b) != null) {
            sc.c.d(socket);
        }
        this.f18499b.getClass();
    }

    public final Object clone() {
        return new e(this.f18512r, this.f18513s, this.f18514t);
    }

    public final <E extends IOException> E d(E e10) {
        E interruptedIOException;
        rc.n nVar;
        Socket socketI;
        byte[] bArr = sc.c.f15380a;
        i iVar = this.f18503g;
        if (iVar != null) {
            synchronized (iVar) {
                socketI = i();
            }
            if (this.f18503g == null) {
                if (socketI != null) {
                    sc.c.d(socketI);
                }
                this.f18499b.getClass();
            } else {
                if (!(socketI == null)) {
                    throw new IllegalStateException("Check failed.".toString());
                }
            }
        }
        if (!this.f18504h && this.f18500c.i()) {
            interruptedIOException = new InterruptedIOException("timeout");
            if (e10 != null) {
                interruptedIOException.initCause(e10);
            }
        } else {
            interruptedIOException = e10;
        }
        if (e10 != null) {
            nVar = this.f18499b;
            kotlin.jvm.internal.h.c(interruptedIOException);
        } else {
            nVar = this.f18499b;
        }
        nVar.getClass();
        return interruptedIOException;
    }

    public final void e(boolean z10) {
        vc.c cVar;
        synchronized (this) {
            if (!this.f18508m) {
                throw new IllegalStateException("released".toString());
            }
            l9.m mVar = l9.m.f9594a;
        }
        if (z10 && (cVar = this.f18510p) != null) {
            cVar.f.cancel();
            cVar.f18477c.g(cVar, true, true, null);
        }
        this.f18505j = null;
    }

    @Override // rc.d
    public final b0 execute() {
        if (!this.f18501d.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed".toString());
        }
        this.f18500c.h();
        zc.h.f20045c.getClass();
        this.f18502e = zc.h.f20043a.g();
        this.f18499b.getClass();
        try {
            rc.l lVar = this.f18512r.f14550a;
            synchronized (lVar) {
                lVar.f14495d.add(this);
            }
            return f();
        } finally {
            this.f18512r.f14550a.d(this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0091  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final rc.b0 f() throws java.lang.Throwable {
        /*
            r10 = this;
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            rc.v r0 = r10.f18512r
            java.util.List<rc.s> r0 = r0.f14552c
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            m9.p.T0(r0, r2)
            wc.h r0 = new wc.h
            rc.v r1 = r10.f18512r
            r0.<init>(r1)
            r2.add(r0)
            wc.a r0 = new wc.a
            rc.v r1 = r10.f18512r
            rc.k r1 = r1.f14558k
            r0.<init>(r1)
            r2.add(r0)
            tc.a r0 = new tc.a
            rc.v r1 = r10.f18512r
            r1.getClass()
            r0.<init>()
            r2.add(r0)
            vc.a r0 = vc.a.f18470a
            r2.add(r0)
            boolean r0 = r10.f18514t
            if (r0 != 0) goto L43
            rc.v r0 = r10.f18512r
            java.util.List<rc.s> r0 = r0.f14553d
            java.lang.Iterable r0 = (java.lang.Iterable) r0
            m9.p.T0(r0, r2)
        L43:
            wc.b r0 = new wc.b
            boolean r1 = r10.f18514t
            r0.<init>(r1)
            r2.add(r0)
            wc.f r9 = new wc.f
            r3 = 0
            r4 = 0
            rc.x r5 = r10.f18513s
            rc.v r0 = r10.f18512r
            int r6 = r0.f14569y
            int r7 = r0.f14570z
            int r8 = r0.A
            r0 = r9
            r1 = r10
            r0.<init>(r1, r2, r3, r4, r5, r6, r7, r8)
            r0 = 0
            rc.x r1 = r10.f18513s     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
            rc.b0 r1 = r9.c(r1)     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
            boolean r2 = r10.f18509n     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
            if (r2 != 0) goto L6f
            r10.h(r0)
            return r1
        L6f:
            sc.c.c(r1)     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
            java.lang.String r2 = "Canceled"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
            throw r1     // Catch: java.lang.Throwable -> L7a java.io.IOException -> L7d
        L7a:
            r1 = move-exception
            r2 = 0
            goto L8f
        L7d:
            r1 = move-exception
            java.io.IOException r1 = r10.h(r1)     // Catch: java.lang.Throwable -> L8d
            if (r1 != 0) goto L8c
            java.lang.NullPointerException r1 = new java.lang.NullPointerException     // Catch: java.lang.Throwable -> L8d
            java.lang.String r2 = "null cannot be cast to non-null type kotlin.Throwable"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L8d
            throw r1     // Catch: java.lang.Throwable -> L8d
        L8c:
            throw r1     // Catch: java.lang.Throwable -> L8d
        L8d:
            r1 = move-exception
            r2 = 1
        L8f:
            if (r2 != 0) goto L94
            r10.h(r0)
        L94:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: vc.e.f():rc.b0");
    }

    public final <E extends IOException> E g(vc.c exchange, boolean z10, boolean z11, E e10) {
        boolean z12;
        kotlin.jvm.internal.h.f(exchange, "exchange");
        boolean z13 = true;
        if (!kotlin.jvm.internal.h.a(exchange, this.f18510p)) {
            return e10;
        }
        synchronized (this) {
            z12 = false;
            if (z10) {
                try {
                    if (!this.f18506k) {
                        if (z11 || !this.f18507l) {
                            z13 = false;
                        }
                    }
                    if (z10) {
                        this.f18506k = false;
                    }
                    if (z11) {
                        this.f18507l = false;
                    }
                    boolean z14 = this.f18506k;
                    boolean z15 = (z14 || this.f18507l) ? false : true;
                    if (z14 || this.f18507l || this.f18508m) {
                        z13 = false;
                    }
                    z12 = z15;
                } catch (Throwable th2) {
                    throw th2;
                }
            } else {
                if (z11) {
                }
                z13 = false;
            }
            l9.m mVar = l9.m.f9594a;
        }
        if (z12) {
            this.f18510p = null;
            i iVar = this.f18503g;
            if (iVar != null) {
                iVar.h();
            }
        }
        return z13 ? (E) d(e10) : e10;
    }

    public final IOException h(IOException iOException) {
        boolean z10;
        synchronized (this) {
            z10 = false;
            if (this.f18508m) {
                this.f18508m = false;
                if (!this.f18506k && !this.f18507l) {
                    z10 = true;
                }
            }
            l9.m mVar = l9.m.f9594a;
        }
        return z10 ? d(iOException) : iOException;
    }

    public final Socket i() {
        i iVar = this.f18503g;
        kotlin.jvm.internal.h.c(iVar);
        byte[] bArr = sc.c.f15380a;
        ArrayList arrayList = iVar.f18537o;
        Iterator it = arrayList.iterator();
        boolean z10 = false;
        int r42 = 0;
        while (true) {
            if (!it.hasNext()) {
                r42 = -1;
                break;
            }
            if (kotlin.jvm.internal.h.a((e) ((Reference) it.next()).get(), this)) {
                break;
            }
            r42++;
        }
        if (!(r42 != -1)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        arrayList.remove(r42);
        this.f18503g = null;
        if (arrayList.isEmpty()) {
            iVar.f18538p = System.nanoTime();
            k kVar = this.f18498a;
            kVar.getClass();
            byte[] bArr2 = sc.c.f15380a;
            boolean z11 = iVar.f18531i;
            uc.c cVar = kVar.f18542b;
            if (z11 || kVar.f18545e == 0) {
                iVar.f18531i = true;
                ConcurrentLinkedQueue<i> concurrentLinkedQueue = kVar.f18544d;
                concurrentLinkedQueue.remove(iVar);
                if (concurrentLinkedQueue.isEmpty()) {
                    cVar.a();
                }
                z10 = true;
            } else {
                cVar.c(kVar.f18543c, 0L);
            }
            if (z10) {
                Socket socket = iVar.f18526c;
                kotlin.jvm.internal.h.c(socket);
                return socket;
            }
        }
        return null;
    }

    @Override // rc.d
    public final boolean m() {
        return this.f18509n;
    }

    @Override // rc.d
    public final x o() {
        return this.f18513s;
    }

    @Override // rc.d
    public final void y(rc.e eVar) {
        a next;
        if (!this.f18501d.compareAndSet(false, true)) {
            throw new IllegalStateException("Already Executed".toString());
        }
        zc.h.f20045c.getClass();
        this.f18502e = zc.h.f20043a.g();
        this.f18499b.getClass();
        rc.l lVar = this.f18512r.f14550a;
        a aVar = new a(eVar);
        lVar.getClass();
        synchronized (lVar) {
            lVar.f14493b.add(aVar);
            if (!this.f18514t) {
                String str = this.f18513s.f14598b.f14520e;
                Iterator<a> it = lVar.f14494c.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        Iterator<a> it2 = lVar.f14493b.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                next = null;
                                break;
                            } else {
                                next = it2.next();
                                if (kotlin.jvm.internal.h.a(e.this.f18513s.f14598b.f14520e, str)) {
                                    break;
                                }
                            }
                        }
                    } else {
                        next = it.next();
                        if (kotlin.jvm.internal.h.a(e.this.f18513s.f14598b.f14520e, str)) {
                            break;
                        }
                    }
                }
                if (next != null) {
                    aVar.f18515a = next.f18515a;
                }
            }
            l9.m mVar = l9.m.f9594a;
        }
        lVar.e();
    }
}
