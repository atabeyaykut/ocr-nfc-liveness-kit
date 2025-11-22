package pc;

import kotlinx.coroutines.internal.j;
import nc.c0;

/* loaded from: classes2.dex */
public final class k<E> extends x implements v<E> {

    /* renamed from: d, reason: collision with root package name */
    public final Throwable f13103d;

    public k(Throwable th2) {
        this.f13103d = th2;
    }

    @Override // pc.x
    public final void J() {
    }

    @Override // pc.x
    public final Object K() {
        return this;
    }

    @Override // pc.x
    public final void L(k<?> kVar) {
    }

    @Override // pc.x
    public final kotlinx.coroutines.internal.u M(j.c cVar) {
        kotlinx.coroutines.internal.u uVar = c5.w.f2087g;
        if (cVar != null) {
            cVar.d();
        }
        return uVar;
    }

    public final Throwable O() {
        Throwable th2 = this.f13103d;
        return th2 == null ? new l() : th2;
    }

    public final Throwable P() {
        Throwable th2 = this.f13103d;
        return th2 == null ? new ma.w("Channel was closed", 1) : th2;
    }

    @Override // pc.v
    public final kotlinx.coroutines.internal.u c(Object obj) {
        return c5.w.f2087g;
    }

    @Override // pc.v
    public final Object k() {
        return this;
    }

    @Override // pc.v
    public final void s(E e10) {
    }

    @Override // kotlinx.coroutines.internal.j
    public final String toString() {
        return "Closed@" + c0.c(this) + '[' + this.f13103d + ']';
    }
}
