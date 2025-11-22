package pc;

import kotlinx.coroutines.internal.j;
import nc.c0;

/* loaded from: classes2.dex */
public class z<E> extends x {

    /* renamed from: d, reason: collision with root package name */
    public final E f13123d;

    /* renamed from: e, reason: collision with root package name */
    public final nc.i<l9.m> f13124e;

    /* JADX WARN: Multi-variable type inference failed */
    public z(Object obj, nc.j jVar) {
        this.f13123d = obj;
        this.f13124e = jVar;
    }

    @Override // pc.x
    public final void J() {
        this.f13124e.g();
    }

    @Override // pc.x
    public final E K() {
        return this.f13123d;
    }

    @Override // pc.x
    public final void L(k<?> kVar) {
        this.f13124e.resumeWith(c5.w.j(kVar.P()));
    }

    @Override // pc.x
    public final kotlinx.coroutines.internal.u M(j.c cVar) {
        if (this.f13124e.d(l9.m.f9594a, cVar == null ? null : cVar.f9155c) == null) {
            return null;
        }
        if (cVar != null) {
            cVar.d();
        }
        return c5.w.f2087g;
    }

    @Override // kotlinx.coroutines.internal.j
    public final String toString() {
        return getClass().getSimpleName() + '@' + c0.c(this) + '(' + this.f13123d + ')';
    }
}
