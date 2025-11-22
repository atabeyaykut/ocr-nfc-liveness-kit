package s4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* loaded from: classes.dex */
public abstract class d0<E> extends z<E> implements List<E>, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public static final b0 f14947b = new b0(r0.f15143e, 0);

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
    public final boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@NullableDecl Object obj) {
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
                    if (!x5.a.A(get(r22), list.get(r22))) {
                        return false;
                    }
                }
            } else {
                b0 b0VarListIterator = listIterator(0);
                Iterator<E> it = list.iterator();
                while (b0VarListIterator.hasNext()) {
                    if (!it.hasNext() || !x5.a.A(b0VarListIterator.next(), it.next())) {
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

    @Override // s4.z
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
    public final int indexOf(@NullableDecl Object obj) {
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
    public final int lastIndexOf(@NullableDecl Object obj) {
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
    public d0<E> subList(int r22, int r32) {
        b.d(r22, r32, size());
        int r33 = r32 - r22;
        return r33 == size() ? this : r33 == 0 ? r0.f15143e : new c0(this, r22, r33);
    }

    @Override // java.util.List
    /* renamed from: w, reason: merged with bridge method [inline-methods] */
    public final b0 listIterator(int r22) {
        b.c(r22, size());
        return isEmpty() ? f14947b : new b0(this, r22);
    }
}
