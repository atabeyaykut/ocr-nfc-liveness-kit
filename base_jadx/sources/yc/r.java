package yc;

import ed.h0;
import ed.j0;
import ed.k0;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;

/* loaded from: classes2.dex */
public final class r {

    /* renamed from: a, reason: collision with root package name */
    public long f19613a;

    /* renamed from: b, reason: collision with root package name */
    public long f19614b;

    /* renamed from: c, reason: collision with root package name */
    public long f19615c;

    /* renamed from: d, reason: collision with root package name */
    public long f19616d;

    /* renamed from: e, reason: collision with root package name */
    public final ArrayDeque<rc.q> f19617e;
    public boolean f;

    /* renamed from: g, reason: collision with root package name */
    public final b f19618g;

    /* renamed from: h, reason: collision with root package name */
    public final a f19619h;

    /* renamed from: i, reason: collision with root package name */
    public final c f19620i;

    /* renamed from: j, reason: collision with root package name */
    public final c f19621j;

    /* renamed from: k, reason: collision with root package name */
    public yc.b f19622k;

    /* renamed from: l, reason: collision with root package name */
    public IOException f19623l;

    /* renamed from: m, reason: collision with root package name */
    public final int f19624m;

    /* renamed from: n, reason: collision with root package name */
    public final f f19625n;

    public final class a implements h0 {

        /* renamed from: a, reason: collision with root package name */
        public final ed.e f19626a = new ed.e();

        /* renamed from: b, reason: collision with root package name */
        public boolean f19627b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f19628c;

        public a(boolean z10) {
            this.f19628c = z10;
        }

        @Override // ed.h0
        public final void M(ed.e source, long j10) throws IOException {
            kotlin.jvm.internal.h.f(source, "source");
            byte[] bArr = sc.c.f15380a;
            ed.e eVar = this.f19626a;
            eVar.M(source, j10);
            while (eVar.f5304b >= 16384) {
                a(false);
            }
        }

        public final void a(boolean z10) throws IOException {
            long jMin;
            r rVar;
            boolean z11;
            synchronized (r.this) {
                r.this.f19621j.h();
                while (true) {
                    try {
                        r rVar2 = r.this;
                        if (rVar2.f19615c < rVar2.f19616d || this.f19628c || this.f19627b || rVar2.f() != null) {
                            break;
                        } else {
                            r.this.l();
                        }
                    } finally {
                    }
                }
                r.this.f19621j.l();
                r.this.b();
                r rVar3 = r.this;
                jMin = Math.min(rVar3.f19616d - rVar3.f19615c, this.f19626a.f5304b);
                rVar = r.this;
                rVar.f19615c += jMin;
                z11 = z10 && jMin == this.f19626a.f5304b;
                l9.m mVar = l9.m.f9594a;
            }
            rVar.f19621j.h();
            try {
                r rVar4 = r.this;
                rVar4.f19625n.i(rVar4.f19624m, z11, this.f19626a, jMin);
            } finally {
            }
        }

        @Override // ed.h0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            r rVar = r.this;
            byte[] bArr = sc.c.f15380a;
            synchronized (rVar) {
                if (this.f19627b) {
                    return;
                }
                boolean z10 = r.this.f() == null;
                l9.m mVar = l9.m.f9594a;
                r rVar2 = r.this;
                if (!rVar2.f19619h.f19628c) {
                    if (this.f19626a.f5304b > 0) {
                        while (this.f19626a.f5304b > 0) {
                            a(true);
                        }
                    } else if (z10) {
                        rVar2.f19625n.i(rVar2.f19624m, true, null, 0L);
                    }
                }
                synchronized (r.this) {
                    this.f19627b = true;
                    l9.m mVar2 = l9.m.f9594a;
                }
                r.this.f19625n.flush();
                r.this.a();
            }
        }

        @Override // ed.h0, java.io.Flushable
        public final void flush() throws IOException {
            r rVar = r.this;
            byte[] bArr = sc.c.f15380a;
            synchronized (rVar) {
                r.this.b();
                l9.m mVar = l9.m.f9594a;
            }
            while (this.f19626a.f5304b > 0) {
                a(false);
                r.this.f19625n.flush();
            }
        }

        @Override // ed.h0
        public final k0 h() {
            return r.this.f19621j;
        }
    }

    public final class b implements j0 {

        /* renamed from: a, reason: collision with root package name */
        public final ed.e f19630a = new ed.e();

        /* renamed from: b, reason: collision with root package name */
        public final ed.e f19631b = new ed.e();

        /* renamed from: c, reason: collision with root package name */
        public boolean f19632c;

        /* renamed from: d, reason: collision with root package name */
        public final long f19633d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f19634e;

        public b(long j10, boolean z10) {
            this.f19633d = j10;
            this.f19634e = z10;
        }

        public final void a(long j10) {
            byte[] bArr = sc.c.f15380a;
            r.this.f19625n.g(j10);
        }

        @Override // ed.j0, java.io.Closeable, java.lang.AutoCloseable
        public final void close() throws IOException {
            long j10;
            synchronized (r.this) {
                this.f19632c = true;
                ed.e eVar = this.f19631b;
                j10 = eVar.f5304b;
                eVar.b();
                r rVar = r.this;
                if (rVar == null) {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.Object");
                }
                rVar.notifyAll();
                l9.m mVar = l9.m.f9594a;
            }
            if (j10 > 0) {
                a(j10);
            }
            r.this.a();
        }

        @Override // ed.j0
        public final k0 h() {
            return r.this.f19620i;
        }

        @Override // ed.j0
        public final long w(ed.e sink, long j10) throws Throwable {
            Throwable wVar;
            long jW;
            boolean z10;
            kotlin.jvm.internal.h.f(sink, "sink");
            long j11 = 0;
            if (!(j10 >= 0)) {
                throw new IllegalArgumentException(("byteCount < 0: " + j10).toString());
            }
            while (true) {
                synchronized (r.this) {
                    r.this.f19620i.h();
                    try {
                        if (r.this.f() != null) {
                            wVar = r.this.f19623l;
                            if (wVar == null) {
                                yc.b bVarF = r.this.f();
                                kotlin.jvm.internal.h.c(bVarF);
                                wVar = new w(bVarF);
                            }
                        } else {
                            wVar = null;
                        }
                        if (this.f19632c) {
                            throw new IOException("stream closed");
                        }
                        ed.e eVar = this.f19631b;
                        long j12 = eVar.f5304b;
                        if (j12 > j11) {
                            jW = eVar.w(sink, Math.min(j10, j12));
                            r rVar = r.this;
                            long j13 = rVar.f19613a + jW;
                            rVar.f19613a = j13;
                            long j14 = j13 - rVar.f19614b;
                            if (wVar == null && j14 >= rVar.f19625n.f19558t.a() / 2) {
                                r rVar2 = r.this;
                                rVar2.f19625n.k(rVar2.f19624m, j14);
                                r rVar3 = r.this;
                                rVar3.f19614b = rVar3.f19613a;
                            }
                        } else if (this.f19634e || wVar != null) {
                            jW = -1;
                        } else {
                            r.this.l();
                            jW = -1;
                            z10 = true;
                            r.this.f19620i.l();
                            l9.m mVar = l9.m.f9594a;
                        }
                        z10 = false;
                        r.this.f19620i.l();
                        l9.m mVar2 = l9.m.f9594a;
                    } finally {
                    }
                }
                if (!z10) {
                    if (jW != -1) {
                        a(jW);
                        return jW;
                    }
                    if (wVar == null) {
                        return -1L;
                    }
                    throw wVar;
                }
                j11 = 0;
            }
        }
    }

    public final class c extends ed.a {
        public c() {
        }

        @Override // ed.a
        public final IOException j(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // ed.a
        public final void k() {
            r.this.e(yc.b.CANCEL);
            f fVar = r.this.f19625n;
            synchronized (fVar) {
                long j10 = fVar.f19556r;
                long j11 = fVar.f19555q;
                if (j10 < j11) {
                    return;
                }
                fVar.f19555q = j11 + 1;
                fVar.f19557s = System.nanoTime() + 1000000000;
                l9.m mVar = l9.m.f9594a;
                fVar.f19549j.c(new o(androidx.camera.camera2.internal.c.h(new StringBuilder(), fVar.f19545d, " ping"), fVar), 0L);
            }
        }

        public final void l() throws IOException {
            if (i()) {
                throw j(null);
            }
        }
    }

    public r(int r42, f connection, boolean z10, boolean z11, rc.q qVar) {
        kotlin.jvm.internal.h.f(connection, "connection");
        this.f19624m = r42;
        this.f19625n = connection;
        this.f19616d = connection.f19559v.a();
        ArrayDeque<rc.q> arrayDeque = new ArrayDeque<>();
        this.f19617e = arrayDeque;
        this.f19618g = new b(connection.f19558t.a(), z11);
        this.f19619h = new a(z10);
        this.f19620i = new c();
        this.f19621j = new c();
        if (qVar == null) {
            if (!h()) {
                throw new IllegalStateException("remotely-initiated streams should have headers".toString());
            }
        } else {
            if (!(!h())) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet".toString());
            }
            arrayDeque.add(qVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0019  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a() throws java.io.IOException {
        /*
            r3 = this;
            byte[] r0 = sc.c.f15380a
            monitor-enter(r3)
            yc.r$b r0 = r3.f19618g     // Catch: java.lang.Throwable -> L34
            boolean r1 = r0.f19634e     // Catch: java.lang.Throwable -> L34
            if (r1 != 0) goto L19
            boolean r0 = r0.f19632c     // Catch: java.lang.Throwable -> L34
            if (r0 == 0) goto L19
            yc.r$a r0 = r3.f19619h     // Catch: java.lang.Throwable -> L34
            boolean r1 = r0.f19628c     // Catch: java.lang.Throwable -> L34
            if (r1 != 0) goto L17
            boolean r0 = r0.f19627b     // Catch: java.lang.Throwable -> L34
            if (r0 == 0) goto L19
        L17:
            r0 = 1
            goto L1a
        L19:
            r0 = 0
        L1a:
            boolean r1 = r3.i()     // Catch: java.lang.Throwable -> L34
            l9.m r2 = l9.m.f9594a     // Catch: java.lang.Throwable -> L34
            monitor-exit(r3)
            if (r0 == 0) goto L2a
            yc.b r0 = yc.b.CANCEL
            r1 = 0
            r3.c(r0, r1)
            goto L33
        L2a:
            if (r1 != 0) goto L33
            yc.f r0 = r3.f19625n
            int r1 = r3.f19624m
            r0.e(r1)
        L33:
            return
        L34:
            r0 = move-exception
            monitor-exit(r3)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: yc.r.a():void");
    }

    public final void b() throws IOException {
        a aVar = this.f19619h;
        if (aVar.f19627b) {
            throw new IOException("stream closed");
        }
        if (aVar.f19628c) {
            throw new IOException("stream finished");
        }
        if (this.f19622k != null) {
            IOException iOException = this.f19623l;
            if (iOException != null) {
                throw iOException;
            }
            yc.b bVar = this.f19622k;
            kotlin.jvm.internal.h.c(bVar);
            throw new w(bVar);
        }
    }

    public final void c(yc.b bVar, IOException iOException) throws IOException {
        if (d(bVar, iOException)) {
            f fVar = this.f19625n;
            fVar.getClass();
            fVar.B.g(this.f19624m, bVar);
        }
    }

    public final boolean d(yc.b bVar, IOException iOException) {
        byte[] bArr = sc.c.f15380a;
        synchronized (this) {
            if (this.f19622k != null) {
                return false;
            }
            if (this.f19618g.f19634e && this.f19619h.f19628c) {
                return false;
            }
            this.f19622k = bVar;
            this.f19623l = iOException;
            notifyAll();
            l9.m mVar = l9.m.f9594a;
            this.f19625n.e(this.f19624m);
            return true;
        }
    }

    public final void e(yc.b bVar) {
        if (d(bVar, null)) {
            this.f19625n.j(this.f19624m, bVar);
        }
    }

    public final synchronized yc.b f() {
        return this.f19622k;
    }

    public final a g() {
        synchronized (this) {
            if (!(this.f || h())) {
                throw new IllegalStateException("reply before requesting the sink".toString());
            }
            l9.m mVar = l9.m.f9594a;
        }
        return this.f19619h;
    }

    public final boolean h() {
        return this.f19625n.f19542a == ((this.f19624m & 1) == 1);
    }

    public final synchronized boolean i() {
        if (this.f19622k != null) {
            return false;
        }
        b bVar = this.f19618g;
        if (bVar.f19634e || bVar.f19632c) {
            a aVar = this.f19619h;
            if (aVar.f19628c || aVar.f19627b) {
                if (this.f) {
                    return false;
                }
            }
        }
        return true;
    }

    public final void j(rc.q headers, boolean z10) {
        boolean zI;
        kotlin.jvm.internal.h.f(headers, "headers");
        byte[] bArr = sc.c.f15380a;
        synchronized (this) {
            if (this.f && z10) {
                this.f19618g.getClass();
            } else {
                this.f = true;
                this.f19617e.add(headers);
            }
            if (z10) {
                this.f19618g.f19634e = true;
            }
            zI = i();
            notifyAll();
            l9.m mVar = l9.m.f9594a;
        }
        if (zI) {
            return;
        }
        this.f19625n.e(this.f19624m);
    }

    public final synchronized void k(yc.b bVar) {
        if (this.f19622k == null) {
            this.f19622k = bVar;
            notifyAll();
        }
    }

    public final void l() throws InterruptedException, InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }
}
