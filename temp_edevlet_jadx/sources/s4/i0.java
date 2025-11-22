package s4;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* loaded from: classes.dex */
public final class i0<F, T> extends AbstractSequentialList<T> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final List<F> f15029a;

    /* renamed from: b, reason: collision with root package name */
    public final ca<? super F, ? extends T> f15030b;

    public i0(List<F> list, ca<? super F, ? extends T> caVar) {
        list.getClass();
        this.f15029a = list;
        this.f15030b = caVar;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f15029a.clear();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator<T> listIterator(int r32) {
        return new h0(this, this.f15029a.listIterator(r32));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15029a.size();
    }
}
