package s4;

import java.util.ListIterator;

/* loaded from: classes.dex */
public abstract class t0<F, T> extends s0<F, T> implements ListIterator<T> {
    public t0(ListIterator<? extends F> listIterator) {
        super(listIterator);
    }

    @Override // java.util.ListIterator
    public final void add(T t10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return ((ListIterator) this.f15167a).hasPrevious();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return ((ListIterator) this.f15167a).nextIndex();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.ListIterator
    public final T previous() {
        return (T) a(((ListIterator) this.f15167a).previous());
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return ((ListIterator) this.f15167a).previousIndex();
    }

    @Override // java.util.ListIterator
    public final void set(T t10) {
        throw new UnsupportedOperationException();
    }
}
