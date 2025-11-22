package m4;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public abstract class b0 extends y implements List, RandomAccess {

    /* renamed from: b, reason: collision with root package name */
    public static final z f9989b = new z(c0.f9990e, 0);

    @Override // java.util.List
    @Deprecated
    public final void add(int r12, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int r12, Collection collection) {
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
                    if (!b8.f.C0(get(r22), list.get(r22))) {
                        return false;
                    }
                }
            } else {
                z zVarListIterator = listIterator(0);
                Iterator it = list.iterator();
                while (zVarListIterator.hasNext()) {
                    if (!it.hasNext() || !b8.f.C0(zVarListIterator.next(), it.next())) {
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

    @Override // m4.y
    public void h(Object[] objArr) {
        int size = size();
        for (int r12 = 0; r12 < size; r12++) {
            objArr[r12] = get(r12);
        }
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

    @Override // m4.y, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
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
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // m4.y
    @Deprecated
    public final b0 o() {
        return this;
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int r12) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int r12, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // m4.y
    /* renamed from: u */
    public final z iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public b0 subList(int r22, int r32) {
        b8.f.N0(r22, r32, size());
        int r33 = r32 - r22;
        return r33 == size() ? this : r33 == 0 ? c0.f9990e : new a0(this, r22, r33);
    }

    @Override // java.util.List
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public final z listIterator(int r22) {
        b8.f.K0(r22, size());
        return isEmpty() ? f9989b : new z(this, r22);
    }
}
