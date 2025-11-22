package ic;

import cc.y0;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class r<T> extends c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final T f7381a;

    /* renamed from: b, reason: collision with root package name */
    public final int f7382b;

    public static final class a implements Iterator<T>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public boolean f7383a = true;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ r<T> f7384b;

        public a(r<T> rVar) {
            this.f7384b = rVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f7383a;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (!this.f7383a) {
                throw new NoSuchElementException();
            }
            this.f7383a = false;
            return this.f7384b.f7381a;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public r(int r12, y0 y0Var) {
        this.f7381a = y0Var;
        this.f7382b = r12;
    }

    @Override // ic.c
    public final T get(int r22) {
        if (r22 == this.f7382b) {
            return this.f7381a;
        }
        return null;
    }

    @Override // ic.c, java.lang.Iterable
    public final Iterator<T> iterator() {
        return new a(this);
    }

    @Override // ic.c
    public final int l() {
        return 1;
    }

    @Override // ic.c
    public final void m(int r12, T t10) {
        throw new IllegalStateException();
    }
}
