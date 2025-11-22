package nc;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* loaded from: classes2.dex */
public final class x1 implements x9.l<Throwable, l9.m> {

    /* renamed from: d, reason: collision with root package name */
    public static final /* synthetic */ AtomicIntegerFieldUpdater f10853d = AtomicIntegerFieldUpdater.newUpdater(x1.class, "_state");

    /* renamed from: a, reason: collision with root package name */
    public final b1 f10854a;

    /* renamed from: c, reason: collision with root package name */
    public k0 f10856c;
    private volatile /* synthetic */ int _state = 0;

    /* renamed from: b, reason: collision with root package name */
    public final Thread f10855b = Thread.currentThread();

    public x1(b1 b1Var) {
        this.f10854a = b1Var;
    }

    public static void b(int r22) {
        throw new IllegalStateException(kotlin.jvm.internal.h.k(Integer.valueOf(r22), "Illegal state ").toString());
    }

    public final void a() {
        while (true) {
            int r02 = this._state;
            if (r02 != 0) {
                if (r02 != 2) {
                    if (r02 == 3) {
                        Thread.interrupted();
                        return;
                    } else {
                        b(r02);
                        throw null;
                    }
                }
            } else if (f10853d.compareAndSet(this, r02, 1)) {
                k0 k0Var = this.f10856c;
                if (k0Var == null) {
                    return;
                }
                k0Var.dispose();
                return;
            }
        }
    }

    public final void c() {
        int r02;
        this.f10856c = this.f10854a.f(true, true, this);
        do {
            r02 = this._state;
            if (r02 != 0) {
                if (r02 == 2 || r02 == 3) {
                    return;
                }
                b(r02);
                throw null;
            }
        } while (!f10853d.compareAndSet(this, r02, 0));
    }

    @Override // x9.l
    public final l9.m invoke(Throwable th2) {
        while (true) {
            int r42 = this._state;
            if (r42 != 0) {
                if (r42 != 1 && r42 != 2 && r42 != 3) {
                    b(r42);
                    throw null;
                }
            } else if (f10853d.compareAndSet(this, r42, 2)) {
                this.f10855b.interrupt();
                this._state = 3;
                break;
            }
        }
        return l9.m.f9594a;
    }
}
