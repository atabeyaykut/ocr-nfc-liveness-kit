package nc;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public final class h0<T> extends kotlinx.coroutines.internal.r<T> {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f10799d = AtomicIntegerFieldUpdater.newUpdater(h0.class, "_decision");
    private volatile /* synthetic */ int _decision;

    public h0(p9.d dVar, p9.f fVar) {
        super(dVar, fVar);
        this._decision = 0;
    }

    @Override // kotlinx.coroutines.internal.r, nc.g1
    public final void F(Object obj) {
        i0(obj);
    }

    @Override // kotlinx.coroutines.internal.r, nc.a
    public final void i0(Object obj) {
        boolean z10;
        while (true) {
            int r02 = this._decision;
            z10 = true;
            if (r02 != 0) {
                if (r02 != 1) {
                    throw new IllegalStateException("Already resumed".toString());
                }
                z10 = false;
            } else if (f10799d.compareAndSet(this, 0, 2)) {
                break;
            }
        }
        if (z10) {
            return;
        }
        a2.b.m(c5.w.x(this.f9172c), x5.a.p(obj), null);
    }

    public final Object m0() throws Throwable {
        boolean z10;
        while (true) {
            int r02 = this._decision;
            z10 = false;
            if (r02 != 0) {
                if (r02 != 2) {
                    throw new IllegalStateException("Already suspended".toString());
                }
            } else if (f10799d.compareAndSet(this, 0, 1)) {
                z10 = true;
                break;
            }
        }
        if (z10) {
            return q9.a.COROUTINE_SUSPENDED;
        }
        Object objF = c5.e0.f(S());
        if (objF instanceof r) {
            throw ((r) objF).f10837a;
        }
        return objF;
    }
}
