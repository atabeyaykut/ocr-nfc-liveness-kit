package n9;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.h;
import n9.b;

/* loaded from: classes2.dex */
public final class f<E> extends m9.e<E> implements Serializable {

    /* renamed from: a, reason: collision with root package name */
    public final b<E, ?> f10632a = new b<>();

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(E e10) {
        return this.f10632a.a(e10) >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends E> elements) {
        h.f(elements, "elements");
        this.f10632a.b();
        return super.addAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f10632a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return this.f10632a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f10632a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<E> iterator() {
        b<E, ?> bVar = this.f10632a;
        bVar.getClass();
        return new b.e(bVar);
    }

    @Override // m9.e
    public final int l() {
        return this.f10632a.f10619h;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        b<E, ?> bVar = this.f10632a;
        bVar.b();
        int r22 = bVar.f(obj);
        if (r22 < 0) {
            r22 = -1;
        } else {
            bVar.j(r22);
        }
        return r22 >= 0;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        this.f10632a.b();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        this.f10632a.b();
        return super.retainAll(elements);
    }
}
