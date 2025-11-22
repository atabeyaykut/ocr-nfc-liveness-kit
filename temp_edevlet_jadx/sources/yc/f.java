package yc;

import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.concurrent.TimeUnit;
import yc.q;

/* loaded from: classes2.dex */
public final class f implements Closeable {
    public static final v E;
    public final Socket A;
    public final s B;
    public final d C;
    public final LinkedHashSet D;

    /* renamed from: a, reason: collision with root package name */
    public final boolean f19542a;

    /* renamed from: b, reason: collision with root package name */
    public final c f19543b;

    /* renamed from: c, reason: collision with root package name */
    public final LinkedHashMap f19544c;

    /* renamed from: d, reason: collision with root package name */
    public final String f19545d;

    /* renamed from: e, reason: collision with root package name */
    public int f19546e;
    public int f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f19547g;

    /* renamed from: h, reason: collision with root package name */
    public final uc.d f19548h;

    /* renamed from: j, reason: collision with root package name */
    public final uc.c f19549j;

    /* renamed from: k, reason: collision with root package name */
    public final uc.c f19550k;

    /* renamed from: l, reason: collision with root package name */
    public final uc.c f19551l;

    /* renamed from: m, reason: collision with root package name */
    public final c5.v f19552m;

    /* renamed from: n, reason: collision with root package name */
    public long f19553n;

    /* renamed from: p, reason: collision with root package name */
    public long f19554p;

    /* renamed from: q, reason: collision with root package name */
    public long f19555q;

    /* renamed from: r, reason: collision with root package name */
    public long f19556r;

    /* renamed from: s, reason: collision with root package name */
    public long f19557s;

    /* renamed from: t, reason: collision with root package name */
    public final v f19558t;

    /* renamed from: v, reason: collision with root package name */
    public v f19559v;
    public long w;

    /* renamed from: x, reason: collision with root package name */
    public long f19560x;

    /* renamed from: y, reason: collision with root package name */
    public long f19561y;

    /* renamed from: z, reason: collision with root package name */
    public long f19562z;

    public static final class a extends uc.a {

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ f f19563e;
        public final /* synthetic */ long f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(String str, f fVar, long j10) {
            super(str, true);
            this.f19563e = fVar;
            this.f = j10;
        }

        @Override // uc.a
        public final long a() {
            f fVar;
            boolean z10;
            synchronized (this.f19563e) {
                fVar = this.f19563e;
                long j10 = fVar.f19554p;
                long j11 = fVar.f19553n;
                if (j10 < j11) {
                    z10 = true;
                } else {
                    fVar.f19553n = j11 + 1;
                    z10 = false;
                }
            }
            if (z10) {
                fVar.b(null);
                return -1L;
            }
            try {
                fVar.B.f(1, 0, false);
            } catch (IOException e10) {
                fVar.b(e10);
            }
            return this.f;
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public Socket f19564a;

        /* renamed from: b, reason: collision with root package name */
        public String f19565b;

        /* renamed from: c, reason: collision with root package name */
        public ed.g f19566c;

        /* renamed from: d, reason: collision with root package name */
        public ed.f f19567d;

        /* renamed from: e, reason: collision with root package name */
        public c f19568e;
        public final c5.v f;

        /* renamed from: g, reason: collision with root package name */
        public int f19569g;

        /* renamed from: h, reason: collision with root package name */
        public final boolean f19570h;

        /* renamed from: i, reason: collision with root package name */
        public final uc.d f19571i;

        public b(uc.d taskRunner) {
            kotlin.jvm.internal.h.f(taskRunner, "taskRunner");
            this.f19570h = true;
            this.f19571i = taskRunner;
            this.f19568e = c.f19572a;
            this.f = u.f19648l0;
        }
    }

    public static abstract class c {

        /* renamed from: a, reason: collision with root package name */
        public static final a f19572a = new a();

        public static final class a extends c {
            @Override // yc.f.c
            public final void b(r stream) throws IOException {
                kotlin.jvm.internal.h.f(stream, "stream");
                stream.c(yc.b.REFUSED_STREAM, null);
            }
        }

        public void a(f connection, v settings) {
            kotlin.jvm.internal.h.f(connection, "connection");
            kotlin.jvm.internal.h.f(settings, "settings");
        }

        public abstract void b(r rVar) throws IOException;
    }

    public final class d implements q.c, x9.a<l9.m> {

        /* renamed from: a, reason: collision with root package name */
        public final q f19573a;

        public d(q qVar) {
            this.f19573a = qVar;
        }

        @Override // yc.q.c
        public final void a(int r52, List list) {
            f fVar = f.this;
            fVar.getClass();
            synchronized (fVar) {
                if (fVar.D.contains(Integer.valueOf(r52))) {
                    fVar.j(r52, yc.b.PROTOCOL_ERROR);
                    return;
                }
                fVar.D.add(Integer.valueOf(r52));
                fVar.f19550k.c(new m(fVar.f19545d + '[' + r52 + "] onRequest", fVar, r52, list), 0L);
            }
        }

        @Override // yc.q.c
        public final void b() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:48:0x00eb, code lost:
        
            throw new java.lang.NullPointerException("null cannot be cast to non-null type java.lang.Object");
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x0102, code lost:
        
            if (r21 == false) goto L78;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:0x0104, code lost:
        
            r5.j(sc.c.f15381b, true);
         */
        /* JADX WARN: Code restructure failed: missing block: B:64:0x0109, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:78:?, code lost:
        
            return;
         */
        @Override // yc.q.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void c(int r18, int r19, ed.g r20, boolean r21) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 266
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: yc.f.d.c(int, int, ed.g, boolean):void");
        }

        @Override // yc.q.c
        public final void d(v vVar) {
            f fVar = f.this;
            fVar.f19549j.c(new j(androidx.camera.camera2.internal.c.h(new StringBuilder(), fVar.f19545d, " applyAndAckSettings"), this, vVar), 0L);
        }

        @Override // yc.q.c
        public final void e(int r42, long j10) {
            Object obj;
            if (r42 == 0) {
                Object obj2 = f.this;
                synchronized (obj2) {
                    f fVar = f.this;
                    fVar.f19562z += j10;
                    fVar.notifyAll();
                    l9.m mVar = l9.m.f9594a;
                    obj = obj2;
                }
            } else {
                r rVarC = f.this.c(r42);
                if (rVarC == null) {
                    return;
                }
                synchronized (rVarC) {
                    rVarC.f19616d += j10;
                    if (j10 > 0) {
                        rVarC.notifyAll();
                    }
                    l9.m mVar2 = l9.m.f9594a;
                    obj = rVarC;
                }
            }
        }

        @Override // yc.q.c
        public final void g(int r52, int r6, boolean z10) {
            if (!z10) {
                f.this.f19549j.c(new i(androidx.camera.camera2.internal.c.h(new StringBuilder(), f.this.f19545d, " ping"), this, r52, r6), 0L);
                return;
            }
            synchronized (f.this) {
                if (r52 == 1) {
                    f.this.f19554p++;
                } else if (r52 != 2) {
                    if (r52 == 3) {
                        f fVar = f.this;
                        fVar.getClass();
                        fVar.notifyAll();
                    }
                    l9.m mVar = l9.m.f9594a;
                } else {
                    f.this.f19556r++;
                }
            }
        }

        @Override // yc.q.c
        public final void h(int r42, yc.b bVar) {
            f fVar = f.this;
            fVar.getClass();
            if (!(r42 != 0 && (r42 & 1) == 0)) {
                r rVarE = fVar.e(r42);
                if (rVarE != null) {
                    rVarE.k(bVar);
                    return;
                }
                return;
            }
            fVar.f19550k.c(new n(fVar.f19545d + '[' + r42 + "] onReset", fVar, r42, bVar), 0L);
        }

        @Override // x9.a
        public final l9.m invoke() throws Throwable {
            Throwable th2;
            yc.b bVar;
            f fVar = f.this;
            q qVar = this.f19573a;
            yc.b bVar2 = yc.b.INTERNAL_ERROR;
            IOException e10 = null;
            try {
                qVar.b(this);
                while (qVar.a(false, this)) {
                }
                bVar = yc.b.NO_ERROR;
                try {
                    try {
                        fVar.a(bVar, yc.b.CANCEL, null);
                    } catch (IOException e11) {
                        e10 = e11;
                        yc.b bVar3 = yc.b.PROTOCOL_ERROR;
                        fVar.a(bVar3, bVar3, e10);
                        sc.c.c(qVar);
                        return l9.m.f9594a;
                    }
                } catch (Throwable th3) {
                    th2 = th3;
                    fVar.a(bVar, bVar2, e10);
                    sc.c.c(qVar);
                    throw th2;
                }
            } catch (IOException e12) {
                e10 = e12;
                bVar = bVar2;
            } catch (Throwable th4) {
                th2 = th4;
                bVar = bVar2;
                fVar.a(bVar, bVar2, e10);
                sc.c.c(qVar);
                throw th2;
            }
            sc.c.c(qVar);
            return l9.m.f9594a;
        }

        @Override // yc.q.c
        public final void j(List list, boolean z10, int r15) {
            f.this.getClass();
            if (r15 != 0 && (r15 & 1) == 0) {
                f fVar = f.this;
                fVar.getClass();
                fVar.f19550k.c(new l(fVar.f19545d + '[' + r15 + "] onHeaders", fVar, r15, list, z10), 0L);
                return;
            }
            synchronized (f.this) {
                r rVarC = f.this.c(r15);
                if (rVarC != null) {
                    l9.m mVar = l9.m.f9594a;
                    rVarC.j(sc.c.t(list), z10);
                    return;
                }
                f fVar2 = f.this;
                if (fVar2.f19547g) {
                    return;
                }
                if (r15 <= fVar2.f19546e) {
                    return;
                }
                if (r15 % 2 == fVar2.f % 2) {
                    return;
                }
                r rVar = new r(r15, f.this, false, z10, sc.c.t(list));
                f fVar3 = f.this;
                fVar3.f19546e = r15;
                fVar3.f19544c.put(Integer.valueOf(r15), rVar);
                f.this.f19548h.f().c(new h(f.this.f19545d + '[' + r15 + "] onStream", rVar, this, list), 0L);
            }
        }

        @Override // yc.q.c
        public final void k(int r42, yc.b bVar, ed.h debugData) {
            int r02;
            r[] rVarArr;
            kotlin.jvm.internal.h.f(debugData, "debugData");
            debugData.r();
            synchronized (f.this) {
                Object[] array = f.this.f19544c.values().toArray(new r[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                rVarArr = (r[]) array;
                f.this.f19547g = true;
                l9.m mVar = l9.m.f9594a;
            }
            for (r rVar : rVarArr) {
                if (rVar.f19624m > r42 && rVar.h()) {
                    rVar.k(yc.b.REFUSED_STREAM);
                    f.this.e(rVar.f19624m);
                }
            }
        }

        @Override // yc.q.c
        public final void priority() {
        }
    }

    public static final class e extends uc.a {

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ f f19575e;
        public final /* synthetic */ int f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ yc.b f19576g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(String str, f fVar, int r32, yc.b bVar) {
            super(str, true);
            this.f19575e = fVar;
            this.f = r32;
            this.f19576g = bVar;
        }

        @Override // uc.a
        public final long a() {
            f fVar = this.f19575e;
            try {
                int r12 = this.f;
                yc.b statusCode = this.f19576g;
                fVar.getClass();
                kotlin.jvm.internal.h.f(statusCode, "statusCode");
                fVar.B.g(r12, statusCode);
                return -1L;
            } catch (IOException e10) {
                fVar.b(e10);
                return -1L;
            }
        }
    }

    /* renamed from: yc.f$f, reason: collision with other inner class name */
    public static final class C0305f extends uc.a {

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ f f19577e;
        public final /* synthetic */ int f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ long f19578g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C0305f(String str, f fVar, int r32, long j10) {
            super(str, true);
            this.f19577e = fVar;
            this.f = r32;
            this.f19578g = j10;
        }

        @Override // uc.a
        public final long a() {
            f fVar = this.f19577e;
            try {
                fVar.B.j(this.f, this.f19578g);
                return -1L;
            } catch (IOException e10) {
                fVar.b(e10);
                return -1L;
            }
        }
    }

    static {
        v vVar = new v();
        vVar.b(7, 65535);
        vVar.b(5, 16384);
        E = vVar;
    }

    public f(b bVar) {
        boolean z10 = bVar.f19570h;
        this.f19542a = z10;
        this.f19543b = bVar.f19568e;
        this.f19544c = new LinkedHashMap();
        String str = bVar.f19565b;
        if (str == null) {
            kotlin.jvm.internal.h.n("connectionName");
            throw null;
        }
        this.f19545d = str;
        this.f = z10 ? 3 : 2;
        uc.d dVar = bVar.f19571i;
        this.f19548h = dVar;
        uc.c cVarF = dVar.f();
        this.f19549j = cVarF;
        this.f19550k = dVar.f();
        this.f19551l = dVar.f();
        this.f19552m = bVar.f;
        v vVar = new v();
        if (z10) {
            vVar.b(7, 16777216);
        }
        l9.m mVar = l9.m.f9594a;
        this.f19558t = vVar;
        this.f19559v = E;
        this.f19562z = r3.a();
        Socket socket = bVar.f19564a;
        if (socket == null) {
            kotlin.jvm.internal.h.n("socket");
            throw null;
        }
        this.A = socket;
        ed.f fVar = bVar.f19567d;
        if (fVar == null) {
            kotlin.jvm.internal.h.n("sink");
            throw null;
        }
        this.B = new s(fVar, z10);
        ed.g gVar = bVar.f19566c;
        if (gVar == null) {
            kotlin.jvm.internal.h.n("source");
            throw null;
        }
        this.C = new d(new q(gVar, z10));
        this.D = new LinkedHashSet();
        int r82 = bVar.f19569g;
        if (r82 != 0) {
            long nanos = TimeUnit.MILLISECONDS.toNanos(r82);
            cVarF.c(new a(str.concat(" ping"), this, nanos), nanos);
        }
    }

    public final void a(yc.b bVar, yc.b bVar2, IOException iOException) throws IOException {
        int r02;
        r[] rVarArr;
        byte[] bArr = sc.c.f15380a;
        try {
            f(bVar);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (!this.f19544c.isEmpty()) {
                Object[] array = this.f19544c.values().toArray(new r[0]);
                if (array == null) {
                    throw new NullPointerException("null cannot be cast to non-null type kotlin.Array<T>");
                }
                rVarArr = (r[]) array;
                this.f19544c.clear();
            } else {
                rVarArr = null;
            }
            l9.m mVar = l9.m.f9594a;
        }
        if (rVarArr != null) {
            for (r rVar : rVarArr) {
                try {
                    rVar.c(bVar2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.B.close();
        } catch (IOException unused3) {
        }
        try {
            this.A.close();
        } catch (IOException unused4) {
        }
        this.f19549j.e();
        this.f19550k.e();
        this.f19551l.e();
    }

    public final void b(IOException iOException) {
        yc.b bVar = yc.b.PROTOCOL_ERROR;
        a(bVar, bVar, iOException);
    }

    public final synchronized r c(int r22) {
        return (r) this.f19544c.get(Integer.valueOf(r22));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        a(yc.b.NO_ERROR, yc.b.CANCEL, null);
    }

    public final synchronized boolean d(long j10) {
        if (this.f19547g) {
            return false;
        }
        if (this.f19556r < this.f19555q) {
            if (j10 >= this.f19557s) {
                return false;
            }
        }
        return true;
    }

    public final synchronized r e(int r22) {
        r rVar;
        rVar = (r) this.f19544c.remove(Integer.valueOf(r22));
        notifyAll();
        return rVar;
    }

    public final void f(yc.b bVar) throws IOException {
        synchronized (this.B) {
            synchronized (this) {
                if (this.f19547g) {
                    return;
                }
                this.f19547g = true;
                int r12 = this.f19546e;
                l9.m mVar = l9.m.f9594a;
                this.B.d(r12, bVar, sc.c.f15380a);
            }
        }
    }

    public final void flush() throws IOException {
        this.B.flush();
    }

    public final synchronized void g(long j10) {
        long j11 = this.w + j10;
        this.w = j11;
        long j12 = j11 - this.f19560x;
        if (j12 >= this.f19558t.a() / 2) {
            k(0, j12);
            this.f19560x += j12;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r5 - r3), r8.B.f19638b);
        r6 = r3;
        r8.f19561y += r6;
        r4 = l9.m.f9594a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(int r9, boolean r10, ed.e r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 != 0) goto Ld
            yc.s r12 = r8.B
            r12.b(r10, r9, r11, r0)
            return
        Ld:
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 <= 0) goto L6a
            monitor-enter(r8)
        L12:
            long r3 = r8.f19561y     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            long r5 = r8.f19562z     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 < 0) goto L32
            java.util.LinkedHashMap r3 = r8.f19544c     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            boolean r3 = r3.containsKey(r4)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            if (r3 == 0) goto L2a
            r8.wait()     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            goto L12
        L2a:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
            throw r9     // Catch: java.lang.Throwable -> L59 java.lang.InterruptedException -> L5b
        L32:
            long r5 = r5 - r3
            long r3 = java.lang.Math.min(r12, r5)     // Catch: java.lang.Throwable -> L59
            int r4 = (int) r3     // Catch: java.lang.Throwable -> L59
            yc.s r3 = r8.B     // Catch: java.lang.Throwable -> L59
            int r3 = r3.f19638b     // Catch: java.lang.Throwable -> L59
            int r3 = java.lang.Math.min(r4, r3)     // Catch: java.lang.Throwable -> L59
            long r4 = r8.f19561y     // Catch: java.lang.Throwable -> L59
            long r6 = (long) r3     // Catch: java.lang.Throwable -> L59
            long r4 = r4 + r6
            r8.f19561y = r4     // Catch: java.lang.Throwable -> L59
            l9.m r4 = l9.m.f9594a     // Catch: java.lang.Throwable -> L59
            monitor-exit(r8)
            long r12 = r12 - r6
            yc.s r4 = r8.B
            if (r10 == 0) goto L54
            int r5 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r5 != 0) goto L54
            r5 = 1
            goto L55
        L54:
            r5 = 0
        L55:
            r4.b(r5, r9, r11, r3)
            goto Ld
        L59:
            r9 = move-exception
            goto L68
        L5b:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L59
            r9.interrupt()     // Catch: java.lang.Throwable -> L59
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L59
            r9.<init>()     // Catch: java.lang.Throwable -> L59
            throw r9     // Catch: java.lang.Throwable -> L59
        L68:
            monitor-exit(r8)
            throw r9
        L6a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: yc.f.i(int, boolean, ed.e, long):void");
    }

    public final void j(int r52, yc.b bVar) {
        this.f19549j.c(new e(this.f19545d + '[' + r52 + "] writeSynReset", this, r52, bVar), 0L);
    }

    public final void k(int r92, long j10) {
        this.f19549j.c(new C0305f(this.f19545d + '[' + r92 + "] windowUpdate", this, r92, j10), 0L);
    }
}
