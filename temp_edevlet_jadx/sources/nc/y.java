package nc;

import p9.e;
import p9.f;

/* loaded from: classes2.dex */
public abstract class y extends p9.a implements p9.e {
    public static final a Key = new a();

    public static final class a extends p9.b<p9.e, y> {

        /* renamed from: nc.y$a$a, reason: collision with other inner class name */
        public static final class C0205a extends kotlin.jvm.internal.j implements x9.l<f.b, y> {

            /* renamed from: a, reason: collision with root package name */
            public static final C0205a f10857a = new C0205a();

            public C0205a() {
                super(1);
            }

            @Override // x9.l
            public final y invoke(f.b bVar) {
                f.b bVar2 = bVar;
                if (bVar2 instanceof y) {
                    return (y) bVar2;
                }
                return null;
            }
        }

        public a() {
            super(e.a.f12868a, C0205a.f10857a);
        }
    }

    public y() {
        super(e.a.f12868a);
    }

    public abstract void dispatch(p9.f fVar, Runnable runnable);

    public void dispatchYield(p9.f fVar, Runnable runnable) {
        dispatch(fVar, runnable);
    }

    @Override // p9.a, p9.f.b, p9.f
    public <E extends f.b> E get(f.c<E> key) {
        kotlin.jvm.internal.h.f(key, "key");
        if (key instanceof p9.b) {
            p9.b bVar = (p9.b) key;
            f.c<?> key2 = getKey();
            kotlin.jvm.internal.h.f(key2, "key");
            if (key2 == bVar || bVar.f12863b == key2) {
                E e10 = (E) bVar.f12862a.invoke(this);
                if (e10 instanceof f.b) {
                    return e10;
                }
            }
        } else if (e.a.f12868a == key) {
            return this;
        }
        return null;
    }

    @Override // p9.e
    public final <T> p9.d<T> interceptContinuation(p9.d<? super T> dVar) {
        return new kotlinx.coroutines.internal.g(this, dVar);
    }

    public boolean isDispatchNeeded(p9.f fVar) {
        return true;
    }

    public y limitedParallelism(int r22) {
        com.google.android.gms.internal.clearcut.d0.g(r22);
        return new kotlinx.coroutines.internal.h(this, r22);
    }

    @Override // p9.a, p9.f
    public p9.f minusKey(f.c<?> key) {
        kotlin.jvm.internal.h.f(key, "key");
        boolean z10 = key instanceof p9.b;
        p9.g gVar = p9.g.f12870a;
        if (z10) {
            p9.b bVar = (p9.b) key;
            f.c<?> key2 = getKey();
            kotlin.jvm.internal.h.f(key2, "key");
            if ((key2 == bVar || bVar.f12863b == key2) && ((f.b) bVar.f12862a.invoke(this)) != null) {
                return gVar;
            }
        } else if (e.a.f12868a == key) {
            return gVar;
        }
        return this;
    }

    public final y plus(y yVar) {
        return yVar;
    }

    @Override // p9.e
    public final void releaseInterceptedContinuation(p9.d<?> dVar) {
        ((kotlinx.coroutines.internal.g) dVar).m();
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + c0.c(this);
    }
}
