package pc;

import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.util.concurrent.CancellationException;
import nc.c1;

/* loaded from: classes2.dex */
public class h<E> extends nc.a<l9.m> implements g<E> {

    /* renamed from: c, reason: collision with root package name */
    public final g<E> f13099c;

    public h(p9.f fVar, a aVar) {
        super(fVar, true);
        this.f13099c = aVar;
    }

    @Override // pc.y
    public final Object A(E e10) {
        return this.f13099c.A(e10);
    }

    @Override // pc.y
    public final boolean C() {
        return this.f13099c.C();
    }

    @Override // nc.g1
    public final void H(CancellationException cancellationException) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        this.f13099c.a(cancellationException);
        G(cancellationException);
    }

    @Override // nc.g1, nc.b1
    public final void a(CancellationException cancellationException) throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
        if (isCancelled()) {
            return;
        }
        if (cancellationException == null) {
            cancellationException = new c1(J(), null, this);
        }
        H(cancellationException);
    }

    @Override // pc.y
    public final void c(x9.l<? super Throwable, l9.m> lVar) {
        this.f13099c.c(lVar);
    }

    @Override // pc.u
    public final Object h(p9.d<? super j<? extends E>> dVar) {
        return this.f13099c.h(dVar);
    }

    @Override // pc.u
    public final i<E> iterator() {
        return this.f13099c.iterator();
    }

    @Override // pc.u
    public final kotlinx.coroutines.selects.b<j<E>> k() {
        return this.f13099c.k();
    }

    @Override // pc.u
    public final kotlinx.coroutines.selects.b<E> l() {
        return this.f13099c.l();
    }

    @Override // pc.y
    public final boolean m(Serializable serializable) {
        return this.f13099c.m(serializable);
    }

    @Override // pc.y
    public final Object p(E e10, p9.d<? super l9.m> dVar) {
        return this.f13099c.p(e10, dVar);
    }

    @Override // pc.y
    public final boolean s(Throwable th2) {
        return this.f13099c.s(th2);
    }
}
