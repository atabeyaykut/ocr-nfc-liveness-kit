package nc;

import androidx.core.location.LocationRequestCompat;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import java.util.concurrent.locks.LockSupport;

/* loaded from: classes2.dex */
public abstract class o0 extends p0 implements g0 {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f10820d = AtomicReferenceFieldUpdater.newUpdater(o0.class, Object.class, "_queue");

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f10821e = AtomicReferenceFieldUpdater.newUpdater(o0.class, Object.class, "_delayed");
    private volatile /* synthetic */ Object _queue = null;
    private volatile /* synthetic */ Object _delayed = null;
    private volatile /* synthetic */ int _isCompleted = 0;

    public final class a extends b {

        /* renamed from: d, reason: collision with root package name */
        public final i<l9.m> f10822d;

        public a(long j10, j jVar) {
            super(j10);
            this.f10822d = jVar;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f10822d.j(o0.this, l9.m.f9594a);
        }

        @Override // nc.o0.b
        public final String toString() {
            return kotlin.jvm.internal.h.k(this.f10822d, super.toString());
        }
    }

    public static abstract class b implements Runnable, Comparable<b>, k0, kotlinx.coroutines.internal.y {

        /* renamed from: a, reason: collision with root package name */
        public long f10824a;

        /* renamed from: b, reason: collision with root package name */
        public Object f10825b;

        /* renamed from: c, reason: collision with root package name */
        public int f10826c = -1;

        public b(long j10) {
            this.f10824a = j10;
        }

        @Override // java.lang.Comparable
        public final int compareTo(b bVar) {
            long j10 = this.f10824a - bVar.f10824a;
            if (j10 > 0) {
                return 1;
            }
            return j10 < 0 ? -1 : 0;
        }

        @Override // nc.k0
        public final synchronized void dispose() {
            Object obj = this.f10825b;
            kotlinx.coroutines.internal.u uVar = a6.a.f118k;
            if (obj == uVar) {
                return;
            }
            c cVar = obj instanceof c ? (c) obj : null;
            if (cVar != null) {
                cVar.d(this);
            }
            this.f10825b = uVar;
        }

        @Override // kotlinx.coroutines.internal.y
        public final int getIndex() {
            return this.f10826c;
        }

        @Override // kotlinx.coroutines.internal.y
        public final void n(c cVar) {
            if (!(this.f10825b != a6.a.f118k)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this.f10825b = cVar;
        }

        @Override // kotlinx.coroutines.internal.y
        public final kotlinx.coroutines.internal.x<?> q() {
            Object obj = this.f10825b;
            if (obj instanceof kotlinx.coroutines.internal.x) {
                return (kotlinx.coroutines.internal.x) obj;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.y
        public final void setIndex(int r12) {
            this.f10826c = r12;
        }

        public String toString() {
            return "Delayed[nanos=" + this.f10824a + ']';
        }
    }

    public static final class c extends kotlinx.coroutines.internal.x<b> {

        /* renamed from: b, reason: collision with root package name */
        public long f10827b;

        public c(long j10) {
            this.f10827b = j10;
        }
    }

    public final boolean F(Runnable runnable) {
        while (true) {
            Object obj = this._queue;
            boolean z10 = false;
            if (this._isCompleted != 0) {
                return false;
            }
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10820d;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, runnable)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != null) {
                        break;
                    }
                }
                if (z10) {
                    return true;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.l) {
                kotlinx.coroutines.internal.l lVar = (kotlinx.coroutines.internal.l) obj;
                int r42 = lVar.a(runnable);
                if (r42 == 0) {
                    return true;
                }
                if (r42 == 1) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10820d;
                    kotlinx.coroutines.internal.l lVarE = lVar.e();
                    while (!atomicReferenceFieldUpdater2.compareAndSet(this, obj, lVarE) && atomicReferenceFieldUpdater2.get(this) == obj) {
                    }
                } else if (r42 == 2) {
                    return false;
                }
            } else {
                if (obj == a6.a.f119l) {
                    return false;
                }
                kotlinx.coroutines.internal.l lVar2 = new kotlinx.coroutines.internal.l(8, true);
                lVar2.a((Runnable) obj);
                lVar2.a(runnable);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater3 = f10820d;
                while (true) {
                    if (atomicReferenceFieldUpdater3.compareAndSet(this, obj, lVar2)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater3.get(this) != obj) {
                        break;
                    }
                }
                if (z10) {
                    return true;
                }
            }
        }
    }

    public final boolean J() {
        kotlinx.coroutines.internal.a<i0<?>> aVar = this.f10819c;
        if (!(aVar == null || aVar.f9131b == aVar.f9132c)) {
            return false;
        }
        c cVar = (c) this._delayed;
        if (cVar != null && !cVar.b()) {
            return false;
        }
        Object obj = this._queue;
        if (obj != null) {
            if (obj instanceof kotlinx.coroutines.internal.l) {
                return ((kotlinx.coroutines.internal.l) obj).d();
            }
            if (obj != a6.a.f119l) {
                return false;
            }
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x007f, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x00d2  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00dc  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long O() {
        /*
            Method dump skipped, instructions count: 240
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: nc.o0.O():long");
    }

    public final void P() {
        this._queue = null;
        this._delayed = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0069 A[Catch: all -> 0x00a9, TryCatch #0 {, blocks: (B:20:0x0035, B:24:0x003d, B:37:0x005e, B:38:0x0060, B:40:0x0069, B:41:0x006b, B:32:0x004d, B:35:0x0056, B:23:0x003b), top: B:69:0x0035, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void W(long r13, nc.o0.b r15) {
        /*
            r12 = this;
            int r0 = r12._isCompleted
            r1 = 0
            r2 = 2
            r3 = 0
            r4 = 1
            if (r0 == 0) goto L9
            goto L45
        L9:
            java.lang.Object r0 = r12._delayed
            nc.o0$c r0 = (nc.o0.c) r0
            if (r0 != 0) goto L2a
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r5 = nc.o0.f10821e
            nc.o0$c r6 = new nc.o0$c
            r6.<init>(r13)
        L16:
            boolean r0 = r5.compareAndSet(r12, r3, r6)
            if (r0 == 0) goto L1d
            goto L23
        L1d:
            java.lang.Object r0 = r5.get(r12)
            if (r0 == 0) goto L16
        L23:
            java.lang.Object r0 = r12._delayed
            kotlin.jvm.internal.h.c(r0)
            nc.o0$c r0 = (nc.o0.c) r0
        L2a:
            monitor-enter(r15)
            java.lang.Object r5 = r15.f10825b     // Catch: java.lang.Throwable -> Lac
            kotlinx.coroutines.internal.u r6 = a6.a.f118k     // Catch: java.lang.Throwable -> Lac
            if (r5 != r6) goto L34
            monitor-exit(r15)
            r0 = 2
            goto L71
        L34:
            monitor-enter(r0)     // Catch: java.lang.Throwable -> Lac
            T extends kotlinx.coroutines.internal.y & java.lang.Comparable<? super T>[] r5 = r0.f9185a     // Catch: java.lang.Throwable -> La9
            if (r5 != 0) goto L3b
            r5 = r3
            goto L3d
        L3b:
            r5 = r5[r1]     // Catch: java.lang.Throwable -> La9
        L3d:
            nc.o0$b r5 = (nc.o0.b) r5     // Catch: java.lang.Throwable -> La9
            int r6 = r12._isCompleted     // Catch: java.lang.Throwable -> La9
            if (r6 == 0) goto L47
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lac
            monitor-exit(r15)
        L45:
            r0 = 1
            goto L71
        L47:
            r6 = 0
            if (r5 != 0) goto L4d
            r8 = r13
            goto L5e
        L4d:
            long r8 = r5.f10824a     // Catch: java.lang.Throwable -> La9
            long r10 = r8 - r13
            int r5 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r5 < 0) goto L56
            r8 = r13
        L56:
            long r10 = r0.f10827b     // Catch: java.lang.Throwable -> La9
            long r10 = r8 - r10
            int r5 = (r10 > r6 ? 1 : (r10 == r6 ? 0 : -1))
            if (r5 <= 0) goto L60
        L5e:
            r0.f10827b = r8     // Catch: java.lang.Throwable -> La9
        L60:
            long r8 = r15.f10824a     // Catch: java.lang.Throwable -> La9
            long r10 = r0.f10827b     // Catch: java.lang.Throwable -> La9
            long r8 = r8 - r10
            int r5 = (r8 > r6 ? 1 : (r8 == r6 ? 0 : -1))
            if (r5 >= 0) goto L6b
            r15.f10824a = r10     // Catch: java.lang.Throwable -> La9
        L6b:
            r0.a(r15)     // Catch: java.lang.Throwable -> La9
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lac
            monitor-exit(r15)
            r0 = 0
        L71:
            if (r0 == 0) goto L88
            if (r0 == r4) goto L84
            if (r0 != r2) goto L78
            goto La8
        L78:
            java.lang.IllegalStateException r13 = new java.lang.IllegalStateException
            java.lang.String r14 = "unexpected result"
            java.lang.String r14 = r14.toString()
            r13.<init>(r14)
            throw r13
        L84:
            r12.q(r13, r15)
            goto La8
        L88:
            java.lang.Object r13 = r12._delayed
            nc.o0$c r13 = (nc.o0.c) r13
            if (r13 != 0) goto L8f
            goto L96
        L8f:
            kotlinx.coroutines.internal.y r13 = r13.c()
            r3 = r13
            nc.o0$b r3 = (nc.o0.b) r3
        L96:
            if (r3 != r15) goto L99
            r1 = 1
        L99:
            if (r1 == 0) goto La8
            java.lang.Thread r13 = r12.p()
            java.lang.Thread r14 = java.lang.Thread.currentThread()
            if (r14 == r13) goto La8
            java.util.concurrent.locks.LockSupport.unpark(r13)
        La8:
            return
        La9:
            r13 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lac
            throw r13     // Catch: java.lang.Throwable -> Lac
        Lac:
            r13 = move-exception
            monitor-exit(r15)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: nc.o0.W(long, nc.o0$b):void");
    }

    @Override // nc.g0
    public final void c(long j10, j jVar) {
        long j11 = j10 > 0 ? j10 >= 9223372036854L ? LocationRequestCompat.PASSIVE_INTERVAL : 1000000 * j10 : 0L;
        if (j11 < 4611686018427387903L) {
            long jNanoTime = System.nanoTime();
            a aVar = new a(j11 + jNanoTime, jVar);
            jVar.D(new l0(aVar));
            W(jNanoTime, aVar);
        }
    }

    @Override // nc.y
    public final void dispatch(p9.f fVar, Runnable runnable) {
        s(runnable);
    }

    public void s(Runnable runnable) {
        if (!F(runnable)) {
            d0.f.s(runnable);
            return;
        }
        Thread threadP = p();
        if (Thread.currentThread() != threadP) {
            LockSupport.unpark(threadP);
        }
    }

    @Override // nc.n0
    public void shutdown() {
        ThreadLocal<n0> threadLocal = w1.f10849a;
        w1.f10849a.set(null);
        this._isCompleted = 1;
        while (true) {
            Object obj = this._queue;
            kotlinx.coroutines.internal.u uVar = a6.a.f119l;
            boolean z10 = false;
            if (obj == null) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f10820d;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, null, uVar)) {
                        z10 = true;
                        break;
                    } else if (atomicReferenceFieldUpdater.get(this) != null) {
                        break;
                    }
                }
                if (z10) {
                    break;
                }
            } else {
                if (obj instanceof kotlinx.coroutines.internal.l) {
                    ((kotlinx.coroutines.internal.l) obj).b();
                    break;
                }
                if (obj == uVar) {
                    break;
                }
                kotlinx.coroutines.internal.l lVar = new kotlinx.coroutines.internal.l(8, true);
                lVar.a((Runnable) obj);
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = f10820d;
                while (true) {
                    if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, lVar)) {
                        z10 = true;
                        break;
                    } else if (atomicReferenceFieldUpdater2.get(this) != obj) {
                        break;
                    }
                }
                if (z10) {
                    break;
                }
            }
        }
        while (O() <= 0) {
        }
        long jNanoTime = System.nanoTime();
        while (true) {
            c cVar = (c) this._delayed;
            b bVarF = cVar == null ? null : cVar.f();
            if (bVarF == null) {
                return;
            } else {
                q(jNanoTime, bVarF);
            }
        }
    }
}
