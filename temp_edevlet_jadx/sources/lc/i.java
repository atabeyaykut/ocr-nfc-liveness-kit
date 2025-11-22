package lc;

import android.view.View;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class i<T> extends j<T> implements Iterator<T>, p9.d<l9.m>, y9.a {

    /* renamed from: a, reason: collision with root package name */
    public int f9728a;

    /* renamed from: b, reason: collision with root package name */
    public T f9729b;

    /* renamed from: c, reason: collision with root package name */
    public Iterator<? extends T> f9730c;

    /* renamed from: d, reason: collision with root package name */
    public p9.d<? super l9.m> f9731d;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // lc.j
    public final void a(View view, p9.d frame) {
        this.f9729b = view;
        this.f9728a = 3;
        this.f9731d = frame;
        kotlin.jvm.internal.h.f(frame, "frame");
    }

    @Override // lc.j
    public final Object b(Iterator<? extends T> it, p9.d<? super l9.m> frame) {
        if (!it.hasNext()) {
            return l9.m.f9594a;
        }
        this.f9730c = it;
        this.f9728a = 2;
        this.f9731d = frame;
        q9.a aVar = q9.a.COROUTINE_SUSPENDED;
        kotlin.jvm.internal.h.f(frame, "frame");
        return aVar;
    }

    public final RuntimeException c() {
        int r02 = this.f9728a;
        if (r02 == 4) {
            return new NoSuchElementException();
        }
        if (r02 == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f9728a);
    }

    @Override // p9.d
    public final p9.f getContext() {
        return p9.g.f12870a;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        while (true) {
            int r02 = this.f9728a;
            if (r02 != 0) {
                if (r02 != 1) {
                    if (r02 == 2 || r02 == 3) {
                        return true;
                    }
                    if (r02 == 4) {
                        return false;
                    }
                    throw c();
                }
                Iterator<? extends T> it = this.f9730c;
                kotlin.jvm.internal.h.c(it);
                if (it.hasNext()) {
                    this.f9728a = 2;
                    return true;
                }
                this.f9730c = null;
            }
            this.f9728a = 5;
            p9.d<? super l9.m> dVar = this.f9731d;
            kotlin.jvm.internal.h.c(dVar);
            this.f9731d = null;
            dVar.resumeWith(l9.m.f9594a);
        }
    }

    @Override // java.util.Iterator
    public final T next() {
        int r02 = this.f9728a;
        if (r02 == 0 || r02 == 1) {
            if (hasNext()) {
                return next();
            }
            throw new NoSuchElementException();
        }
        if (r02 == 2) {
            this.f9728a = 1;
            Iterator<? extends T> it = this.f9730c;
            kotlin.jvm.internal.h.c(it);
            return it.next();
        }
        if (r02 != 3) {
            throw c();
        }
        this.f9728a = 0;
        T t10 = this.f9729b;
        this.f9729b = null;
        return t10;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // p9.d
    public final void resumeWith(Object obj) throws Throwable {
        c5.w.F(obj);
        this.f9728a = 4;
    }
}
