package s4;

import java.util.Iterator;

/* loaded from: classes.dex */
public abstract class s0<F, T> implements Iterator<T> {

    /* renamed from: a, reason: collision with root package name */
    public final Iterator<? extends F> f15167a;

    public s0(Iterator<? extends F> it) {
        it.getClass();
        this.f15167a = it;
    }

    abstract T a(F f);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f15167a.hasNext();
    }

    @Override // java.util.Iterator
    public final T next() {
        return a(this.f15167a.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f15167a.remove();
    }
}
