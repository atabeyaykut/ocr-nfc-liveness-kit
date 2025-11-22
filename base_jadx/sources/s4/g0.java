package s4;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class g0<F, T> extends AbstractList<T> implements RandomAccess, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final List<F> f14983a;

    /* renamed from: b, reason: collision with root package name */
    public final ca<? super F, ? extends T> f14984b;

    public g0(List<F> list, ca<? super F, ? extends T> caVar) {
        list.getClass();
        this.f14983a = list;
        this.f14984b = caVar;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f14983a.clear();
    }

    @Override // java.util.AbstractList, java.util.List
    public final T get(int r22) {
        return this.f14984b.c(this.f14983a.get(r22));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f14983a.isEmpty();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<T> iterator() {
        return listIterator();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int r32) {
        return new f0(this, this.f14983a.listIterator(r32));
    }

    @Override // java.util.AbstractList, java.util.List
    public final T remove(int r22) {
        return this.f14984b.c(this.f14983a.remove(r22));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f14983a.size();
    }
}
