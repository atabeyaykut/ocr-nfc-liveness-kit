package kotlinx.coroutines.scheduling;

import androidx.core.location.LocationRequestCompat;
import androidx.work.WorkRequest;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlinx.coroutines.internal.q;
import kotlinx.coroutines.internal.u;
import nc.c0;

/* loaded from: classes2.dex */
public final class a implements Executor, Closeable {
    private volatile /* synthetic */ int _isTerminated;

    /* renamed from: a, reason: collision with root package name */
    public final int f9194a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9195b;

    /* renamed from: c, reason: collision with root package name */
    public final long f9196c;
    volatile /* synthetic */ long controlState;

    /* renamed from: d, reason: collision with root package name */
    public final String f9197d;

    /* renamed from: e, reason: collision with root package name */
    public final d f9198e;
    public final d f;

    /* renamed from: g, reason: collision with root package name */
    public final q<C0173a> f9199g;
    private volatile /* synthetic */ long parkedWorkersStack;

    /* renamed from: l, reason: collision with root package name */
    public static final u f9193l = new u("NOT_IN_STACK");

    /* renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f9190h = AtomicLongFieldUpdater.newUpdater(a.class, "parkedWorkersStack");

    /* renamed from: j, reason: collision with root package name */
    public static final /* synthetic */ AtomicLongFieldUpdater f9191j = AtomicLongFieldUpdater.newUpdater(a.class, "controlState");

    /* renamed from: k, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f9192k = AtomicIntegerFieldUpdater.newUpdater(a.class, "_isTerminated");

    /* renamed from: kotlinx.coroutines.scheduling.a$a, reason: collision with other inner class name */
    public final class C0173a extends Thread {

        /* renamed from: h, reason: collision with root package name */
        public static final /* synthetic */ AtomicIntegerFieldUpdater f9200h = AtomicIntegerFieldUpdater.newUpdater(C0173a.class, "workerCtl");

        /* renamed from: a, reason: collision with root package name */
        public final l f9201a;

        /* renamed from: b, reason: collision with root package name */
        public int f9202b;

        /* renamed from: c, reason: collision with root package name */
        public long f9203c;

        /* renamed from: d, reason: collision with root package name */
        public long f9204d;

        /* renamed from: e, reason: collision with root package name */
        public int f9205e;
        public boolean f;
        private volatile int indexInArray;
        private volatile Object nextParkedWorker;
        volatile /* synthetic */ int workerCtl;

        public C0173a() {
            throw null;
        }

        public C0173a(int r22) {
            a.this = a.this;
            setDaemon(true);
            this.f9201a = new l();
            this.f9202b = 4;
            this.workerCtl = 0;
            this.nextParkedWorker = a.f9193l;
            this.f9205e = aa.c.f139a.a();
            f(r22);
        }

        /* JADX WARN: Removed duplicated region for block: B:44:0x008e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final kotlinx.coroutines.scheduling.g a(boolean r10) {
            /*
                r9 = this;
                int r0 = r9.f9202b
                r1 = 1
                r2 = 0
                if (r0 != r1) goto L7
                goto L2e
            L7:
                kotlinx.coroutines.scheduling.a r0 = kotlinx.coroutines.scheduling.a.this
            L9:
                long r5 = r0.controlState
                r3 = 9223367638808264704(0x7ffffc0000000000, double:NaN)
                long r3 = r3 & r5
                r7 = 42
                long r3 = r3 >> r7
                int r4 = (int) r3
                if (r4 != 0) goto L19
                r0 = 0
                goto L2a
            L19:
                r3 = 4398046511104(0x40000000000, double:2.1729236899484E-311)
                long r7 = r5 - r3
                java.util.concurrent.atomic.AtomicLongFieldUpdater r3 = kotlinx.coroutines.scheduling.a.f9191j
                r4 = r0
                boolean r3 = r3.compareAndSet(r4, r5, r7)
                if (r3 == 0) goto L9
                r0 = 1
            L2a:
                if (r0 == 0) goto L30
                r9.f9202b = r1
            L2e:
                r0 = 1
                goto L31
            L30:
                r0 = 0
            L31:
                r3 = 0
                if (r0 == 0) goto L77
                if (r10 == 0) goto L6c
                kotlinx.coroutines.scheduling.a r10 = kotlinx.coroutines.scheduling.a.this
                int r10 = r10.f9194a
                int r10 = r10 * 2
                int r10 = r9.d(r10)
                if (r10 != 0) goto L43
                goto L44
            L43:
                r1 = 0
            L44:
                if (r1 == 0) goto L4c
                kotlinx.coroutines.scheduling.g r10 = r9.e()
                if (r10 != 0) goto L76
            L4c:
                kotlinx.coroutines.scheduling.l r10 = r9.f9201a
                r10.getClass()
                java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.scheduling.l.f9222b
                java.lang.Object r0 = r0.getAndSet(r10, r3)
                kotlinx.coroutines.scheduling.g r0 = (kotlinx.coroutines.scheduling.g) r0
                if (r0 != 0) goto L60
                kotlinx.coroutines.scheduling.g r10 = r10.d()
                goto L61
            L60:
                r10 = r0
            L61:
                if (r10 != 0) goto L76
                if (r1 != 0) goto L72
                kotlinx.coroutines.scheduling.g r10 = r9.e()
                if (r10 != 0) goto L76
                goto L72
            L6c:
                kotlinx.coroutines.scheduling.g r10 = r9.e()
                if (r10 != 0) goto L76
            L72:
                kotlinx.coroutines.scheduling.g r10 = r9.i(r2)
            L76:
                return r10
            L77:
                if (r10 == 0) goto L8e
                kotlinx.coroutines.scheduling.l r10 = r9.f9201a
                r10.getClass()
                java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = kotlinx.coroutines.scheduling.l.f9222b
                java.lang.Object r0 = r0.getAndSet(r10, r3)
                kotlinx.coroutines.scheduling.g r0 = (kotlinx.coroutines.scheduling.g) r0
                if (r0 != 0) goto L8c
                kotlinx.coroutines.scheduling.g r0 = r10.d()
            L8c:
                if (r0 != 0) goto L99
            L8e:
                kotlinx.coroutines.scheduling.a r10 = kotlinx.coroutines.scheduling.a.this
                kotlinx.coroutines.scheduling.d r10 = r10.f
                java.lang.Object r10 = r10.d()
                r0 = r10
                kotlinx.coroutines.scheduling.g r0 = (kotlinx.coroutines.scheduling.g) r0
            L99:
                if (r0 != 0) goto L9f
                kotlinx.coroutines.scheduling.g r0 = r9.i(r1)
            L9f:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.a.C0173a.a(boolean):kotlinx.coroutines.scheduling.g");
        }

        public final int b() {
            return this.indexInArray;
        }

        public final Object c() {
            return this.nextParkedWorker;
        }

        public final int d(int r42) {
            int r02 = this.f9205e;
            int r03 = r02 ^ (r02 << 13);
            int r04 = r03 ^ (r03 >> 17);
            int r05 = r04 ^ (r04 << 5);
            this.f9205e = r05;
            int r12 = r42 - 1;
            return (r12 & r42) == 0 ? r05 & r12 : (r05 & Integer.MAX_VALUE) % r42;
        }

        public final g e() {
            d dVar;
            int r02 = d(2);
            a aVar = a.this;
            if (r02 == 0) {
                g gVarD = aVar.f9198e.d();
                if (gVarD != null) {
                    return gVarD;
                }
                dVar = aVar.f;
            } else {
                g gVarD2 = aVar.f.d();
                if (gVarD2 != null) {
                    return gVarD2;
                }
                dVar = aVar.f9198e;
            }
            return dVar.d();
        }

        public final void f(int r32) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(a.this.f9197d);
            sb2.append("-worker-");
            sb2.append(r32 == 0 ? "TERMINATED" : String.valueOf(r32));
            setName(sb2.toString());
            this.indexInArray = r32;
        }

        public final void g(Object obj) {
            this.nextParkedWorker = obj;
        }

        public final boolean h(int r72) {
            int r02 = this.f9202b;
            boolean z10 = r02 == 1;
            if (z10) {
                a.f9191j.addAndGet(a.this, 4398046511104L);
            }
            if (r02 != r72) {
                this.f9202b = r72;
            }
            return z10;
        }

        public final g i(boolean z10) {
            long jF;
            int r22 = (int) (a.this.controlState & 2097151);
            if (r22 < 2) {
                return null;
            }
            int r12 = d(r22);
            a aVar = a.this;
            int r82 = 0;
            long jMin = LocationRequestCompat.PASSIVE_INTERVAL;
            while (r82 < r22) {
                r82++;
                r12++;
                if (r12 > r22) {
                    r12 = 1;
                }
                C0173a c0173aB = aVar.f9199g.b(r12);
                if (c0173aB != null && c0173aB != this) {
                    l lVar = this.f9201a;
                    l lVar2 = c0173aB.f9201a;
                    if (z10) {
                        jF = lVar.e(lVar2);
                    } else {
                        lVar.getClass();
                        g gVarD = lVar2.d();
                        if (gVarD != null) {
                            lVar.a(gVarD, false);
                            jF = -1;
                        } else {
                            jF = lVar.f(lVar2, false);
                        }
                    }
                    if (jF == -1) {
                        l lVar3 = this.f9201a;
                        lVar3.getClass();
                        g gVar = (g) l.f9222b.getAndSet(lVar3, null);
                        return gVar == null ? lVar3.d() : gVar;
                    }
                    if (jF > 0) {
                        jMin = Math.min(jMin, jF);
                    }
                }
            }
            if (jMin == LocationRequestCompat.PASSIVE_INTERVAL) {
                jMin = 0;
            }
            this.f9204d = jMin;
            return null;
        }

        /* JADX WARN: Removed duplicated region for block: B:104:0x0002 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:98:0x0062 A[SYNTHETIC] */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void run() {
            /*
                Method dump skipped, instructions count: 332
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.scheduling.a.C0173a.run():void");
        }
    }

    public a(int r42, int r52, long j10, String str) {
        this.f9194a = r42;
        this.f9195b = r52;
        this.f9196c = j10;
        this.f9197d = str;
        if (!(r42 >= 1)) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Core pool size ", r42, " should be at least 1").toString());
        }
        if (!(r52 >= r42)) {
            throw new IllegalArgumentException(androidx.constraintlayout.core.a.c("Max pool size ", r52, " should be greater than or equals to core pool size ", r42).toString());
        }
        if (!(r52 <= 2097150)) {
            throw new IllegalArgumentException(androidx.appcompat.graphics.drawable.a.f("Max pool size ", r52, " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j10 > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
        }
        this.f9198e = new d();
        this.f = new d();
        this.parkedWorkersStack = 0L;
        this.f9199g = new q<>(r42 + 1);
        this.controlState = r42 << 42;
        this._isTerminated = 0;
    }

    public final int a() {
        synchronized (this.f9199g) {
            if (this._isTerminated != 0) {
                return -1;
            }
            long j10 = this.controlState;
            int r6 = (int) (j10 & 2097151);
            int r12 = r6 - ((int) ((j10 & 4398044413952L) >> 21));
            if (r12 < 0) {
                r12 = 0;
            }
            if (r12 >= this.f9194a) {
                return 0;
            }
            if (r6 >= this.f9195b) {
                return 0;
            }
            int r62 = ((int) (this.controlState & 2097151)) + 1;
            if (!(r62 > 0 && this.f9199g.b(r62) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            C0173a c0173a = new C0173a(r62);
            this.f9199g.c(r62, c0173a);
            if (!(r62 == ((int) (2097151 & f9191j.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            c0173a.start();
            return r12 + 1;
        }
    }

    public final void b(Runnable runnable, h hVar, boolean z10) {
        g iVar;
        g gVarA;
        j.f9219e.getClass();
        long jNanoTime = System.nanoTime();
        if (runnable instanceof g) {
            iVar = (g) runnable;
            iVar.f9212a = jNanoTime;
            iVar.f9213b = hVar;
        } else {
            iVar = new i(runnable, jNanoTime, hVar);
        }
        Thread threadCurrentThread = Thread.currentThread();
        C0173a c0173a = null;
        C0173a c0173a2 = threadCurrentThread instanceof C0173a ? (C0173a) threadCurrentThread : null;
        if (c0173a2 != null && kotlin.jvm.internal.h.a(a.this, this)) {
            c0173a = c0173a2;
        }
        if (c0173a == null || c0173a.f9202b == 5 || (iVar.f9213b.b() == 0 && c0173a.f9202b == 2)) {
            gVarA = iVar;
        } else {
            c0173a.f = true;
            gVarA = c0173a.f9201a.a(iVar, z10);
        }
        if (gVarA != null) {
            if (!(gVarA.f9213b.b() == 1 ? this.f : this.f9198e).a(gVarA)) {
                throw new RejectedExecutionException(kotlin.jvm.internal.h.k(" was terminated", this.f9197d));
            }
        }
        boolean z11 = z10 && c0173a != null;
        if (iVar.f9213b.b() == 0) {
            if (z11 || f() || e(this.controlState)) {
                return;
            }
            f();
            return;
        }
        long jAddAndGet = f9191j.addAndGet(this, 2097152L);
        if (z11 || f() || e(jAddAndGet)) {
            return;
        }
        f();
    }

    public final void c(C0173a c0173a) {
        long j10;
        int r02;
        if (c0173a.c() != f9193l) {
            return;
        }
        do {
            j10 = this.parkedWorkersStack;
            r02 = c0173a.b();
            c0173a.g(this.f9199g.b((int) (2097151 & j10)));
        } while (!f9190h.compareAndSet(this, j10, r02 | ((2097152 + j10) & (-2097152))));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws InterruptedException {
        int r6;
        boolean z10;
        if (f9192k.compareAndSet(this, 0, 1)) {
            Thread threadCurrentThread = Thread.currentThread();
            C0173a c0173a = threadCurrentThread instanceof C0173a ? (C0173a) threadCurrentThread : null;
            if (c0173a == null || !kotlin.jvm.internal.h.a(a.this, this)) {
                c0173a = null;
            }
            synchronized (this.f9199g) {
                r6 = (int) (this.controlState & 2097151);
            }
            if (1 <= r6) {
                int r32 = 1;
                while (true) {
                    int r52 = r32 + 1;
                    C0173a c0173aB = this.f9199g.b(r32);
                    kotlin.jvm.internal.h.c(c0173aB);
                    C0173a c0173a2 = c0173aB;
                    if (c0173a2 != c0173a) {
                        while (c0173a2.isAlive()) {
                            LockSupport.unpark(c0173a2);
                            c0173a2.join(WorkRequest.MIN_BACKOFF_MILLIS);
                        }
                        l lVar = c0173a2.f9201a;
                        d dVar = this.f;
                        lVar.getClass();
                        g gVar = (g) l.f9222b.getAndSet(lVar, null);
                        if (gVar != null) {
                            dVar.a(gVar);
                        }
                        do {
                            g gVarD = lVar.d();
                            if (gVarD == null) {
                                z10 = false;
                            } else {
                                dVar.a(gVarD);
                                z10 = true;
                            }
                        } while (z10);
                    }
                    if (r32 == r6) {
                        break;
                    } else {
                        r32 = r52;
                    }
                }
            }
            this.f.b();
            this.f9198e.b();
            while (true) {
                g gVarA = c0173a == null ? null : c0173a.a(true);
                if (gVarA == null && (gVarA = this.f9198e.d()) == null && (gVarA = this.f.d()) == null) {
                    break;
                }
                try {
                    gVarA.run();
                } finally {
                }
            }
            if (c0173a != null) {
                c0173a.h(5);
            }
            this.parkedWorkersStack = 0L;
            this.controlState = 0L;
        }
    }

    public final void d(C0173a c0173a, int r10, int r11) {
        while (true) {
            long j10 = this.parkedWorkersStack;
            int r12 = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & (-2097152);
            if (r12 == r10) {
                if (r11 == 0) {
                    C0173a c0173a2 = c0173a;
                    while (true) {
                        Object objC = c0173a2.c();
                        if (objC == f9193l) {
                            r12 = -1;
                            break;
                        } else {
                            if (objC == null) {
                                r12 = 0;
                                break;
                            }
                            c0173a2 = (C0173a) objC;
                            r12 = c0173a2.b();
                            if (r12 != 0) {
                                break;
                            }
                        }
                    }
                } else {
                    r12 = r11;
                }
            }
            if (r12 >= 0 && f9190h.compareAndSet(this, j10, j11 | r12)) {
                return;
            }
        }
    }

    public final boolean e(long j10) {
        int r12 = ((int) (2097151 & j10)) - ((int) ((j10 & 4398044413952L) >> 21));
        if (r12 < 0) {
            r12 = 0;
        }
        int r6 = this.f9194a;
        if (r12 < r6) {
            int r02 = a();
            if (r02 == 1 && r6 > 1) {
                a();
            }
            if (r02 > 0) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        b(runnable, j.f, false);
    }

    public final boolean f() {
        u uVar;
        int r52;
        while (true) {
            long j10 = this.parkedWorkersStack;
            C0173a c0173aB = this.f9199g.b((int) (2097151 & j10));
            if (c0173aB == null) {
                c0173aB = null;
            } else {
                long j11 = (2097152 + j10) & (-2097152);
                C0173a c0173a = c0173aB;
                while (true) {
                    Object objC = c0173a.c();
                    uVar = f9193l;
                    if (objC == uVar) {
                        r52 = -1;
                        break;
                    }
                    if (objC == null) {
                        r52 = 0;
                        break;
                    }
                    c0173a = (C0173a) objC;
                    r52 = c0173a.b();
                    if (r52 != 0) {
                        break;
                    }
                }
                if (r52 >= 0 && f9190h.compareAndSet(this, j10, r52 | j11)) {
                    c0173aB.g(uVar);
                }
            }
            if (c0173aB == null) {
                return false;
            }
            if (C0173a.f9200h.compareAndSet(c0173aB, -1, 0)) {
                LockSupport.unpark(c0173aB);
                return true;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
    public final boolean isTerminated() {
        return this._isTerminated;
    }

    public final String toString() {
        StringBuilder sb2;
        char c10;
        ArrayList arrayList = new ArrayList();
        int r12 = this.f9199g.a();
        int r22 = 0;
        int r42 = 0;
        int r52 = 0;
        int r6 = 0;
        int r72 = 0;
        int r82 = 1;
        while (r82 < r12) {
            int r92 = r82 + 1;
            C0173a c0173aB = this.f9199g.b(r82);
            if (c0173aB != null) {
                int r10 = c0173aB.f9201a.c();
                int r83 = g.d.c(c0173aB.f9202b);
                if (r83 == 0) {
                    r22++;
                    sb2 = new StringBuilder();
                    sb2.append(r10);
                    c10 = 'c';
                } else if (r83 == 1) {
                    r42++;
                    sb2 = new StringBuilder();
                    sb2.append(r10);
                    c10 = 'b';
                } else if (r83 == 2) {
                    r52++;
                } else if (r83 == 3) {
                    r6++;
                    if (r10 > 0) {
                        sb2 = new StringBuilder();
                        sb2.append(r10);
                        c10 = 'd';
                    }
                } else if (r83 == 4) {
                    r72++;
                }
                sb2.append(c10);
                arrayList.add(sb2.toString());
            }
            r82 = r92;
        }
        long j10 = this.controlState;
        return this.f9197d + '@' + c0.c(this) + "[Pool Size {core = " + this.f9194a + ", max = " + this.f9195b + "}, Worker States {CPU = " + r22 + ", blocking = " + r42 + ", parked = " + r52 + ", dormant = " + r6 + ", terminated = " + r72 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f9198e.c() + ", global blocking queue size = " + this.f.c() + ", Control State {created workers= " + ((int) (2097151 & j10)) + ", blocking tasks = " + ((int) ((4398044413952L & j10) >> 21)) + ", CPUs acquired = " + (this.f9194a - ((int) ((9223367638808264704L & j10) >> 42))) + "}]";
    }
}
