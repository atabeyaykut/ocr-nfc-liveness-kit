package kc;

import androidx.appcompat.widget.v;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class c<E> extends AbstractList<E> implements RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public int f8832a;

    /* renamed from: b, reason: collision with root package name */
    public Object f8833b;

    public static class a<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public static final a f8834a = new a();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final T next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new IllegalStateException();
        }
    }

    public class b extends AbstractC0166c<E> {

        /* renamed from: b, reason: collision with root package name */
        public final int f8835b;

        public b() {
            this.f8835b = ((AbstractList) c.this).modCount;
        }

        @Override // kc.c.AbstractC0166c
        public final void a() {
            c cVar = c.this;
            int r12 = ((AbstractList) cVar).modCount;
            int r22 = this.f8835b;
            if (r12 == r22) {
                return;
            }
            throw new ConcurrentModificationException("ModCount: " + ((AbstractList) cVar).modCount + "; expected: " + r22);
        }

        @Override // java.util.Iterator
        public final void remove() {
            a();
            c.this.clear();
        }
    }

    /* renamed from: kc.c$c, reason: collision with other inner class name */
    public static abstract class AbstractC0166c<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public boolean f8837a;

        public abstract void a();

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return !this.f8837a;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f8837a) {
                throw new NoSuchElementException();
            }
            this.f8837a = true;
            a();
            return (T) c.this.f8833b;
        }
    }

    public static /* synthetic */ void h(int r10) {
        String str = (r10 == 2 || r10 == 3 || r10 == 5 || r10 == 6 || r10 == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(r10 == 2 || r10 == 3 || r10 == 5 || r10 == 6 || r10 == 7) ? 2 : 3];
        switch (r10) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
                break;
            case 4:
                objArr[0] = "a";
                break;
            default:
                objArr[0] = "elements";
                break;
        }
        if (r10 == 2 || r10 == 3) {
            objArr[1] = "iterator";
        } else if (r10 == 5 || r10 == 6 || r10 == 7) {
            objArr[1] = "toArray";
        } else {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/utils/SmartList";
        }
        switch (r10) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 7:
                break;
            case 4:
                objArr[2] = "toArray";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (r10 != 2 && r10 != 3 && r10 != 5 && r10 != 6 && r10 != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r6, E e10) {
        int r02;
        if (r6 < 0 || r6 > (r02 = this.f8832a)) {
            StringBuilder sbE = v.e("Index: ", r6, ", Size: ");
            sbE.append(this.f8832a);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        if (r02 == 0) {
            this.f8833b = e10;
        } else if (r02 == 1 && r6 == 0) {
            this.f8833b = new Object[]{e10, this.f8833b};
        } else {
            Object[] objArr = new Object[r02 + 1];
            if (r02 == 1) {
                objArr[0] = this.f8833b;
            } else {
                Object[] objArr2 = (Object[]) this.f8833b;
                System.arraycopy(objArr2, 0, objArr, 0, r6);
                System.arraycopy(objArr2, r6, objArr, r6 + 1, this.f8832a - r6);
            }
            objArr[r6] = e10;
            this.f8833b = objArr;
        }
        this.f8832a++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f8833b = null;
        this.f8832a = 0;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int r42) {
        int r02;
        if (r42 >= 0 && r42 < (r02 = this.f8832a)) {
            return r02 == 1 ? (E) this.f8833b : (E) ((Object[]) this.f8833b)[r42];
        }
        StringBuilder sbE = v.e("Index: ", r42, ", Size: ");
        sbE.append(this.f8832a);
        throw new IndexOutOfBoundsException(sbE.toString());
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        int r02 = this.f8832a;
        if (r02 == 0) {
            return a.f8834a;
        }
        if (r02 == 1) {
            return new b();
        }
        Iterator<E> it = super.iterator();
        if (it != null) {
            return it;
        }
        h(3);
        throw null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int r72) {
        int r02;
        E e10;
        if (r72 < 0 || r72 >= (r02 = this.f8832a)) {
            StringBuilder sbE = v.e("Index: ", r72, ", Size: ");
            sbE.append(this.f8832a);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        if (r02 == 1) {
            e10 = (E) this.f8833b;
            this.f8833b = null;
        } else {
            Object[] objArr = (Object[]) this.f8833b;
            Object obj = objArr[r72];
            if (r02 == 2) {
                this.f8833b = objArr[1 - r72];
            } else {
                int r03 = (r02 - r72) - 1;
                if (r03 > 0) {
                    System.arraycopy(objArr, r72 + 1, objArr, r72, r03);
                }
                objArr[this.f8832a - 1] = null;
            }
            e10 = (E) obj;
        }
        this.f8832a--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int r32, E e10) {
        int r02;
        if (r32 < 0 || r32 >= (r02 = this.f8832a)) {
            StringBuilder sbE = v.e("Index: ", r32, ", Size: ");
            sbE.append(this.f8832a);
            throw new IndexOutOfBoundsException(sbE.toString());
        }
        if (r02 == 1) {
            E e11 = (E) this.f8833b;
            this.f8833b = e10;
            return e11;
        }
        Object[] objArr = (Object[]) this.f8833b;
        E e12 = (E) objArr[r32];
        objArr[r32] = e10;
        return e12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f8832a;
    }

    @Override // java.util.List
    public final void sort(Comparator<? super E> comparator) {
        int r02 = this.f8832a;
        if (r02 >= 2) {
            Arrays.sort((Object[]) this.f8833b, 0, r02, comparator);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] tArr) {
        if (tArr == 0) {
            h(4);
            throw null;
        }
        int length = tArr.length;
        int r22 = this.f8832a;
        if (r22 == 1) {
            if (length == 0) {
                T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1));
                tArr2[0] = this.f8833b;
                return tArr2;
            }
            tArr[0] = this.f8833b;
        } else {
            if (length < r22) {
                T[] tArr3 = (T[]) Arrays.copyOf((Object[]) this.f8833b, r22, tArr.getClass());
                if (tArr3 != null) {
                    return tArr3;
                }
                h(6);
                throw null;
            }
            if (r22 != 0) {
                System.arraycopy(this.f8833b, 0, tArr, 0, r22);
            }
        }
        int r23 = this.f8832a;
        if (length > r23) {
            tArr[r23] = 0;
        }
        return tArr;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        int r02 = this.f8832a;
        if (r02 == 0) {
            this.f8833b = e10;
        } else if (r02 == 1) {
            this.f8833b = new Object[]{this.f8833b, e10};
        } else {
            Object[] objArr = (Object[]) this.f8833b;
            int length = objArr.length;
            if (r02 >= length) {
                int r22 = androidx.camera.camera2.internal.c.a(length, 3, 2, 1);
                int r03 = r02 + 1;
                if (r22 < r03) {
                    r22 = r03;
                }
                Object[] objArr2 = new Object[r22];
                this.f8833b = objArr2;
                System.arraycopy(objArr, 0, objArr2, 0, length);
                objArr = objArr2;
            }
            objArr[this.f8832a] = e10;
        }
        this.f8832a++;
        ((AbstractList) this).modCount++;
        return true;
    }
}
