package p4;

import java.util.Iterator;
import java.util.ListIterator;

/* loaded from: classes.dex */
public abstract class g1<E> implements ListIterator<E>, Iterator<Object> {
    @Deprecated
    public final void a() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void add(E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ void remove() {
        a();
        throw null;
    }

    @Override // java.util.ListIterator
    @Deprecated
    public final void set(E e10) {
        throw new UnsupportedOperationException();
    }
}
