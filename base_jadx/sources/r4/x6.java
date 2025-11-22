package r4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public abstract class x6<E> extends u6<E> implements List<E>, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public static final v6 f14277b = new v6(y6.f14281e, 0);

    @Override // java.util.List
    @Deprecated
    public final void add(int r12, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int r12, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int r32 = 0; r32 < size; r32++) {
                        E e10 = get(r32);
                        Object obj2 = list.get(r32);
                        if (e10 == obj2 || (e10 != null && e10.equals(obj2))) {
                        }
                    }
                    return true;
                }
                v6 v6VarListIterator = listIterator(0);
                Iterator<E> it = list.iterator();
                while (true) {
                    if (v6VarListIterator.hasNext()) {
                        if (!it.hasNext()) {
                            break;
                        }
                        Object next = v6VarListIterator.next();
                        E next2 = it.next();
                        if (!(next == next2 || (next != null && next.equals(next2)))) {
                            break;
                        }
                    } else if (!it.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // r4.u6
    public int h(Object[] objArr) {
        int size = size();
        for (int r12 = 0; r12 < size; r12++) {
            objArr[r12] = get(r12);
        }
        return size;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int r12 = 1;
        for (int r22 = 0; r22 < size; r22++) {
            r12 = (r12 * 31) + get(r22).hashCode();
        }
        return r12;
    }

    @Override // java.util.List
    public final int indexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int r22 = 0; r22 < size; r22++) {
            if (obj.equals(get(r22))) {
                return r22;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* bridge */ /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int r12) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int r12, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    /* renamed from: u */
    public x6<E> subList(int r22, int r32) {
        c5.w.T(r22, r32, size());
        int r33 = r32 - r22;
        return r33 == size() ? this : r33 == 0 ? y6.f14281e : new w6(this, r22, r33);
    }

    @Override // java.util.List
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public final v6 listIterator(int r22) {
        c5.w.S(r22, size());
        return isEmpty() ? f14277b : new v6(this, r22);
    }
}
