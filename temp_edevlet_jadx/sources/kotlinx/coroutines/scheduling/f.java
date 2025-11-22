package kotlinx.coroutines.scheduling;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import nc.r0;

/* loaded from: classes2.dex */
public class f extends r0 {

    /* renamed from: a, reason: collision with root package name */
    public final a f9211a;

    public f(int r82, int r92, long j10) {
        this.f9211a = new a(r82, r92, j10, "DefaultDispatcher");
    }

    @Override // nc.y
    public final void dispatch(p9.f fVar, Runnable runnable) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = a.f9190h;
        this.f9211a.b(runnable, j.f, false);
    }

    @Override // nc.y
    public final void dispatchYield(p9.f fVar, Runnable runnable) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = a.f9190h;
        this.f9211a.b(runnable, j.f, true);
    }
}
