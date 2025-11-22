package nc;

import java.util.concurrent.Future;
import java.util.concurrent.ScheduledFuture;

/* loaded from: classes2.dex */
public final class f extends g {

    /* renamed from: a, reason: collision with root package name */
    public final Future<?> f10791a;

    public f(ScheduledFuture scheduledFuture) {
        this.f10791a = scheduledFuture;
    }

    @Override // nc.h
    public final void a(Throwable th2) {
        if (th2 != null) {
            this.f10791a.cancel(false);
        }
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        a(th2);
        return l9.m.f9594a;
    }

    public final String toString() {
        return "CancelFutureOnCancel[" + this.f10791a + ']';
    }
}
