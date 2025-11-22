package kotlinx.coroutines.internal;

import com.google.android.gms.internal.clearcut.d0;
import nc.e0;
import nc.g0;

/* loaded from: classes2.dex */
public final class h extends nc.y implements Runnable, g0 {

    /* renamed from: a, reason: collision with root package name */
    public final nc.y f9143a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9144b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g0 f9145c;

    /* renamed from: d, reason: collision with root package name */
    public final k<Runnable> f9146d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f9147e;
    private volatile int runningWorkers;

    /* JADX WARN: Multi-variable type inference failed */
    public h(nc.y yVar, int r22) {
        this.f9143a = yVar;
        this.f9144b = r22;
        g0 g0Var = yVar instanceof g0 ? (g0) yVar : null;
        this.f9145c = g0Var == null ? e0.f10789a : g0Var;
        this.f9146d = new k<>();
        this.f9147e = new Object();
    }

    @Override // nc.g0
    public final void c(long j10, nc.j jVar) {
        this.f9145c.c(j10, jVar);
    }

    @Override // nc.y
    public final void dispatch(p9.f fVar, Runnable runnable) {
        this.f9146d.a(runnable);
        boolean z10 = true;
        if (this.runningWorkers >= this.f9144b) {
            return;
        }
        synchronized (this.f9147e) {
            if (this.runningWorkers >= this.f9144b) {
                z10 = false;
            } else {
                this.runningWorkers++;
            }
        }
        if (z10) {
            this.f9143a.dispatch(this, this);
        }
    }

    @Override // nc.y
    public final void dispatchYield(p9.f fVar, Runnable runnable) {
        this.f9146d.a(runnable);
        boolean z10 = true;
        if (this.runningWorkers >= this.f9144b) {
            return;
        }
        synchronized (this.f9147e) {
            if (this.runningWorkers >= this.f9144b) {
                z10 = false;
            } else {
                this.runningWorkers++;
            }
        }
        if (z10) {
            this.f9143a.dispatchYield(this, this);
        }
    }

    @Override // nc.y
    public final nc.y limitedParallelism(int r22) {
        d0.g(r22);
        return r22 >= this.f9144b ? this : super.limitedParallelism(r22);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x002a, code lost:
    
        r1 = r4.f9147e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x002c, code lost:
    
        monitor-enter(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002d, code lost:
    
        r4.runningWorkers--;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0039, code lost:
    
        if (r4.f9146d.c() != 0) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003b, code lost:
    
        monitor-exit(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003d, code lost:
    
        r4.runningWorkers++;
        r2 = l9.m.f9594a;
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        /*
            r4 = this;
            r0 = 0
        L1:
            r1 = 0
        L2:
            kotlinx.coroutines.internal.k<java.lang.Runnable> r2 = r4.f9146d
            java.lang.Object r2 = r2.d()
            java.lang.Runnable r2 = (java.lang.Runnable) r2
            if (r2 == 0) goto L2a
            r2.run()     // Catch: java.lang.Throwable -> L10
            goto L16
        L10:
            r2 = move-exception
            p9.g r3 = p9.g.f12870a
            c5.v.u(r3, r2)
        L16:
            int r1 = r1 + 1
            r2 = 16
            if (r1 < r2) goto L2
            nc.y r2 = r4.f9143a
            boolean r2 = r2.isDispatchNeeded(r4)
            if (r2 == 0) goto L2
            nc.y r0 = r4.f9143a
            r0.dispatch(r4, r4)
            return
        L2a:
            java.lang.Object r1 = r4.f9147e
            monitor-enter(r1)
            int r2 = r4.runningWorkers     // Catch: java.lang.Throwable -> L47
            int r2 = r2 + (-1)
            r4.runningWorkers = r2     // Catch: java.lang.Throwable -> L47
            kotlinx.coroutines.internal.k<java.lang.Runnable> r2 = r4.f9146d     // Catch: java.lang.Throwable -> L47
            int r2 = r2.c()     // Catch: java.lang.Throwable -> L47
            if (r2 != 0) goto L3d
            monitor-exit(r1)
            return
        L3d:
            int r2 = r4.runningWorkers     // Catch: java.lang.Throwable -> L47
            int r2 = r2 + 1
            r4.runningWorkers = r2     // Catch: java.lang.Throwable -> L47
            l9.m r2 = l9.m.f9594a     // Catch: java.lang.Throwable -> L47
            monitor-exit(r1)
            goto L1
        L47:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.h.run():void");
    }
}
