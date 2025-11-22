package nc;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public final class z0 extends d1 {
    public static final /* synthetic */ AtomicIntegerFieldUpdater f = AtomicIntegerFieldUpdater.newUpdater(z0.class, "_invoked");
    private volatile /* synthetic */ int _invoked = 0;

    /* renamed from: e, reason: collision with root package name */
    public final x9.l<Throwable, l9.m> f10861e;

    /* JADX WARN: Multi-variable type inference failed */
    public z0(x9.l<? super Throwable, l9.m> lVar) {
        this.f10861e = lVar;
    }

    @Override // nc.t
    public final void J(Throwable th2) {
        if (f.compareAndSet(this, 0, 1)) {
            this.f10861e.invoke(th2);
        }
    }

    @Override // x9.l
    public final /* bridge */ /* synthetic */ l9.m invoke(Throwable th2) {
        J(th2);
        return l9.m.f9594a;
    }
}
