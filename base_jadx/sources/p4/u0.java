package p4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public abstract class u0<E> extends o0<E> implements List<E>, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public static final r0 f12703b = new r0(d1.f12296e, 0);

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
        if (obj != this) {
            if (!(obj instanceof List)) {
                return false;
            }
            List list = (List) obj;
            int size = size();
            if (size != list.size()) {
                return false;
            }
            if (list instanceof RandomAccess) {
                for (int r22 = 0; r22 < size; r22++) {
                    if (!m0.b(get(r22), list.get(r22))) {
                        return false;
                    }
                }
            } else {
                r0 r0VarListIterator = listIterator(0);
                Iterator<E> it = list.iterator();
                while (r0VarListIterator.hasNext()) {
                    if (!it.hasNext() || !m0.b(r0VarListIterator.next(), it.next())) {
                        return false;
                    }
                }
                if (it.hasNext()) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // p4.o0
    public int h(Object[] objArr, int r6) {
        int size = size();
        for (int r12 = 0; r12 < size; r12++) {
            objArr[r6 + r12] = get(r12);
        }
        return r6 + size;
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

    @Override // p4.o0, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
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

    @Override // p4.o0
    /* renamed from: o */
    public final r0 iterator() {
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
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public u0<E> subList(int r22, int r32) {
        b8.f.M0(r22, r32, size());
        int r33 = r32 - r22;
        return r33 == size() ? this : r33 == 0 ? d1.f12296e : new t0(this, r22, r33);
    }

    @Override // java.util.List
    /* renamed from: x, reason: merged with bridge method [inline-methods] */
    public final r0 listIterator(int r22) {
        b8.f.J0(r22, size());
        return isEmpty() ? f12703b : new r0(this, r22);
    }
}
