package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public class k<E> {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9159a = AtomicReferenceFieldUpdater.newUpdater(k.class, Object.class, "_cur");
    private volatile /* synthetic */ Object _cur = new l(8, false);

    public final boolean a(E e10) {
        while (true) {
            l lVar = (l) this._cur;
            int r12 = lVar.a(e10);
            if (r12 == 0) {
                return true;
            }
            if (r12 == 1) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9159a;
                l<E> lVarE = lVar.e();
                while (!atomicReferenceFieldUpdater.compareAndSet(this, lVar, lVarE) && atomicReferenceFieldUpdater.get(this) == lVar) {
                }
            } else if (r12 == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            l lVar = (l) this._cur;
            if (lVar.b()) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9159a;
            l<E> lVarE = lVar.e();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, lVar, lVarE) && atomicReferenceFieldUpdater.get(this) == lVar) {
            }
        }
    }

    public final int c() {
        return ((l) this._cur).c();
    }

    public final E d() {
        while (true) {
            l lVar = (l) this._cur;
            E e10 = (E) lVar.f();
            if (e10 != l.f9161g) {
                return e10;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9159a;
            l<E> lVarE = lVar.e();
            while (!atomicReferenceFieldUpdater.compareAndSet(this, lVar, lVarE) && atomicReferenceFieldUpdater.get(this) == lVar) {
            }
        }
    }
}
