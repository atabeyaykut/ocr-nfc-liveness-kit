package m9;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import m9.c;

/* loaded from: classes2.dex */
public final class g<E> extends d<E> {

    /* renamed from: d, reason: collision with root package name */
    public static final Object[] f10162d = new Object[0];

    /* renamed from: a, reason: collision with root package name */
    public int f10163a;

    /* renamed from: b, reason: collision with root package name */
    public Object[] f10164b = f10162d;

    /* renamed from: c, reason: collision with root package name */
    public int f10165c;

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r82, E e10) {
        c.a.b(r82, this.f10165c);
        int r02 = this.f10165c;
        if (r82 == r02) {
            addLast(e10);
            return;
        }
        if (r82 == 0) {
            addFirst(e10);
            return;
        }
        u(r02 + 1);
        int length = x(this.f10163a + r82);
        int r22 = this.f10165c;
        if (r82 < ((r22 + 1) >> 1)) {
            if (length == 0) {
                Object[] objArr = this.f10164b;
                kotlin.jvm.internal.h.f(objArr, "<this>");
                length = objArr.length;
            }
            int r03 = length - 1;
            int length2 = this.f10163a;
            if (length2 == 0) {
                Object[] objArr2 = this.f10164b;
                kotlin.jvm.internal.h.f(objArr2, "<this>");
                length2 = objArr2.length;
            }
            int r23 = length2 - 1;
            int r83 = this.f10163a;
            Object[] objArr3 = this.f10164b;
            if (r03 >= r83) {
                objArr3[r23] = objArr3[r83];
                i.i0(objArr3, objArr3, r83, r83 + 1, r03 + 1);
            } else {
                i.i0(objArr3, objArr3, r83 - 1, r83, objArr3.length);
                Object[] objArr4 = this.f10164b;
                objArr4[objArr4.length - 1] = objArr4[0];
                i.i0(objArr4, objArr4, 0, 1, r03 + 1);
            }
            this.f10164b[r03] = e10;
            this.f10163a = r23;
        } else {
            int r84 = x(r22 + this.f10163a);
            Object[] objArr5 = this.f10164b;
            if (length < r84) {
                i.i0(objArr5, objArr5, length + 1, length, r84);
            } else {
                i.i0(objArr5, objArr5, 1, 0, r84);
                Object[] objArr6 = this.f10164b;
                objArr6[0] = objArr6[objArr6.length - 1];
                i.i0(objArr6, objArr6, length + 1, length, objArr6.length - 1);
            }
            this.f10164b[length] = e10;
        }
        this.f10165c++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        addLast(e10);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int r92, Collection<? extends E> elements) {
        kotlin.jvm.internal.h.f(elements, "elements");
        c.a.b(r92, this.f10165c);
        if (elements.isEmpty()) {
            return false;
        }
        int r02 = this.f10165c;
        if (r92 == r02) {
            return addAll(elements);
        }
        u(elements.size() + r02);
        int r03 = x(this.f10165c + this.f10163a);
        int length = x(this.f10163a + r92);
        int size = elements.size();
        if (r92 < ((this.f10165c + 1) >> 1)) {
            int r93 = this.f10163a;
            int length2 = r93 - size;
            if (length < r93) {
                Object[] objArr = this.f10164b;
                i.i0(objArr, objArr, length2, r93, objArr.length);
                Object[] objArr2 = this.f10164b;
                int length3 = objArr2.length - size;
                if (size >= length) {
                    i.i0(objArr2, objArr2, length3, 0, length);
                } else {
                    i.i0(objArr2, objArr2, length3, 0, size);
                    Object[] objArr3 = this.f10164b;
                    i.i0(objArr3, objArr3, 0, size, length);
                }
            } else if (length2 >= 0) {
                Object[] objArr4 = this.f10164b;
                i.i0(objArr4, objArr4, length2, r93, length);
            } else {
                Object[] objArr5 = this.f10164b;
                length2 += objArr5.length;
                int r6 = length - r93;
                int length4 = objArr5.length - length2;
                if (length4 >= r6) {
                    i.i0(objArr5, objArr5, length2, r93, length);
                } else {
                    i.i0(objArr5, objArr5, length2, r93, r93 + length4);
                    Object[] objArr6 = this.f10164b;
                    i.i0(objArr6, objArr6, 0, this.f10163a + length4, length);
                }
            }
            this.f10163a = length2;
            length -= size;
            if (length < 0) {
                length += this.f10164b.length;
            }
        } else {
            int length5 = length + size;
            if (length < r03) {
                int r32 = size + r03;
                Object[] objArr7 = this.f10164b;
                if (r32 <= objArr7.length) {
                    i.i0(objArr7, objArr7, length5, length, r03);
                } else if (length5 >= objArr7.length) {
                    length5 -= objArr7.length;
                    i.i0(objArr7, objArr7, length5, length, r03);
                } else {
                    int length6 = r03 - (r32 - objArr7.length);
                    i.i0(objArr7, objArr7, 0, length6, r03);
                    Object[] objArr8 = this.f10164b;
                    i.i0(objArr8, objArr8, length5, length, length6);
                }
            } else {
                Object[] objArr9 = this.f10164b;
                i.i0(objArr9, objArr9, size, 0, r03);
                Object[] objArr10 = this.f10164b;
                if (length5 >= objArr10.length) {
                    i.i0(objArr10, objArr10, length5 - objArr10.length, length, objArr10.length);
                } else {
                    i.i0(objArr10, objArr10, 0, objArr10.length - size, objArr10.length);
                    Object[] objArr11 = this.f10164b;
                    i.i0(objArr11, objArr11, length5, length, objArr11.length - size);
                }
            }
        }
        o(length, elements);
        return true;
    }

    public final void addFirst(E e10) {
        u(this.f10165c + 1);
        int length = this.f10163a;
        if (length == 0) {
            Object[] objArr = this.f10164b;
            kotlin.jvm.internal.h.f(objArr, "<this>");
            length = objArr.length;
        }
        int r02 = length - 1;
        this.f10163a = r02;
        this.f10164b[r02] = e10;
        this.f10165c++;
    }

    public final void addLast(E e10) {
        u(l() + 1);
        this.f10164b[x(l() + this.f10163a)] = e10;
        this.f10165c = l() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        int r02 = x(this.f10165c + this.f10163a);
        int r12 = this.f10163a;
        if (r12 < r02) {
            Object[] objArr = this.f10164b;
            kotlin.jvm.internal.h.f(objArr, "<this>");
            Arrays.fill(objArr, r12, r02, (Object) null);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f10164b;
            Arrays.fill(objArr2, this.f10163a, objArr2.length, (Object) null);
            Object[] objArr3 = this.f10164b;
            kotlin.jvm.internal.h.f(objArr3, "<this>");
            Arrays.fill(objArr3, 0, r02, (Object) null);
        }
        this.f10163a = 0;
        this.f10165c = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int r32) {
        c.a.a(r32, this.f10165c);
        return (E) this.f10164b[x(this.f10163a + r32)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int r02 = x(l() + this.f10163a);
        int length = this.f10163a;
        if (length < r02) {
            while (length < r02) {
                if (!kotlin.jvm.internal.h.a(obj, this.f10164b[length])) {
                    length++;
                }
            }
            return -1;
        }
        if (length < r02) {
            return -1;
        }
        int length2 = this.f10164b.length;
        while (true) {
            if (length >= length2) {
                for (int r12 = 0; r12 < r02; r12++) {
                    if (kotlin.jvm.internal.h.a(obj, this.f10164b[r12])) {
                        length = r12 + this.f10164b.length;
                    }
                }
                return -1;
            }
            if (kotlin.jvm.internal.h.a(obj, this.f10164b[length])) {
                break;
            }
            length++;
        }
        return length - this.f10163a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return l() == 0;
    }

    @Override // m9.d
    public final int l() {
        return this.f10165c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int r02 = x(this.f10165c + this.f10163a);
        int r12 = this.f10163a;
        if (r12 < r02) {
            length = r02 - 1;
            if (r12 <= length) {
                while (!kotlin.jvm.internal.h.a(obj, this.f10164b[length])) {
                    if (length != r12) {
                        length--;
                    }
                }
                return length - this.f10163a;
            }
            return -1;
        }
        if (r12 > r02) {
            int r03 = r02 - 1;
            while (true) {
                if (-1 >= r03) {
                    Object[] objArr = this.f10164b;
                    kotlin.jvm.internal.h.f(objArr, "<this>");
                    length = objArr.length - 1;
                    int r13 = this.f10163a;
                    if (r13 <= length) {
                        while (!kotlin.jvm.internal.h.a(obj, this.f10164b[length])) {
                            if (length != r13) {
                                length--;
                            }
                        }
                    }
                } else {
                    if (kotlin.jvm.internal.h.a(obj, this.f10164b[r03])) {
                        length = r03 + this.f10164b.length;
                        break;
                    }
                    r03--;
                }
            }
            return length - this.f10163a;
        }
        return -1;
    }

    @Override // m9.d
    public final E m(int r92) {
        c.a.a(r92, this.f10165c);
        if (r92 == b8.f.M(this)) {
            if (isEmpty()) {
                throw new NoSuchElementException("ArrayDeque is empty.");
            }
            int r93 = x(b8.f.M(this) + this.f10163a);
            Object[] objArr = this.f10164b;
            E e10 = (E) objArr[r93];
            objArr[r93] = null;
            this.f10165c--;
            return e10;
        }
        if (r92 == 0) {
            if (isEmpty()) {
                throw new NoSuchElementException("ArrayDeque is empty.");
            }
            Object[] objArr2 = this.f10164b;
            int r02 = this.f10163a;
            E e11 = (E) objArr2[r02];
            objArr2[r02] = null;
            this.f10163a = w(r02);
            this.f10165c--;
            return e11;
        }
        int r03 = x(this.f10163a + r92);
        Object[] objArr3 = this.f10164b;
        E e12 = (E) objArr3[r03];
        if (r92 < (this.f10165c >> 1)) {
            int r94 = this.f10163a;
            if (r03 >= r94) {
                i.i0(objArr3, objArr3, r94 + 1, r94, r03);
            } else {
                i.i0(objArr3, objArr3, 1, 0, r03);
                Object[] objArr4 = this.f10164b;
                objArr4[0] = objArr4[objArr4.length - 1];
                int r04 = this.f10163a;
                i.i0(objArr4, objArr4, r04 + 1, r04, objArr4.length - 1);
            }
            Object[] objArr5 = this.f10164b;
            int r05 = this.f10163a;
            objArr5[r05] = null;
            this.f10163a = w(r05);
        } else {
            int r95 = x(b8.f.M(this) + this.f10163a);
            Object[] objArr6 = this.f10164b;
            int r42 = r03 + 1;
            if (r03 <= r95) {
                i.i0(objArr6, objArr6, r03, r42, r95 + 1);
            } else {
                i.i0(objArr6, objArr6, r03, r42, objArr6.length);
                Object[] objArr7 = this.f10164b;
                objArr7[objArr7.length - 1] = objArr7[0];
                i.i0(objArr7, objArr7, 0, 1, r95 + 1);
            }
            this.f10164b[r95] = null;
        }
        this.f10165c--;
        return e12;
    }

    public final void o(int r52, Collection<? extends E> collection) {
        Iterator<? extends E> it = collection.iterator();
        int length = this.f10164b.length;
        while (r52 < length && it.hasNext()) {
            this.f10164b[r52] = it.next();
            r52++;
        }
        int r53 = this.f10163a;
        for (int r12 = 0; r12 < r53 && it.hasNext(); r12++) {
            this.f10164b[r12] = it.next();
        }
        this.f10165c = collection.size() + l();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int r22 = indexOf(obj);
        if (r22 == -1) {
            return false;
        }
        m(r22);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<? extends Object> elements) {
        int r52;
        kotlin.jvm.internal.h.f(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty()) {
            if (!(this.f10164b.length == 0)) {
                int r02 = x(this.f10165c + this.f10163a);
                int r32 = this.f10163a;
                if (r32 < r02) {
                    r52 = r32;
                    while (r32 < r02) {
                        Object obj = this.f10164b[r32];
                        if (!elements.contains(obj)) {
                            this.f10164b[r52] = obj;
                            r52++;
                        } else {
                            z10 = true;
                        }
                        r32++;
                    }
                    Object[] objArr = this.f10164b;
                    kotlin.jvm.internal.h.f(objArr, "<this>");
                    Arrays.fill(objArr, r52, r02, (Object) null);
                } else {
                    int length = this.f10164b.length;
                    int r6 = r32;
                    boolean z11 = false;
                    while (r32 < length) {
                        Object[] objArr2 = this.f10164b;
                        Object obj2 = objArr2[r32];
                        objArr2[r32] = null;
                        if (!elements.contains(obj2)) {
                            this.f10164b[r6] = obj2;
                            r6++;
                        } else {
                            z11 = true;
                        }
                        r32++;
                    }
                    r52 = x(r6);
                    for (int r12 = 0; r12 < r02; r12++) {
                        Object[] objArr3 = this.f10164b;
                        Object obj3 = objArr3[r12];
                        objArr3[r12] = null;
                        if (!elements.contains(obj3)) {
                            this.f10164b[r52] = obj3;
                            r52 = w(r52);
                        } else {
                            z11 = true;
                        }
                    }
                    z10 = z11;
                }
                if (z10) {
                    int length2 = r52 - this.f10163a;
                    if (length2 < 0) {
                        length2 += this.f10164b.length;
                    }
                    this.f10165c = length2;
                }
            }
        }
        return z10;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection<? extends Object> elements) {
        int r52;
        kotlin.jvm.internal.h.f(elements, "elements");
        boolean z10 = false;
        z10 = false;
        z10 = false;
        if (!isEmpty()) {
            if (!(this.f10164b.length == 0)) {
                int r02 = x(this.f10165c + this.f10163a);
                int r32 = this.f10163a;
                if (r32 < r02) {
                    r52 = r32;
                    while (r32 < r02) {
                        Object obj = this.f10164b[r32];
                        if (elements.contains(obj)) {
                            this.f10164b[r52] = obj;
                            r52++;
                        } else {
                            z10 = true;
                        }
                        r32++;
                    }
                    Object[] objArr = this.f10164b;
                    kotlin.jvm.internal.h.f(objArr, "<this>");
                    Arrays.fill(objArr, r52, r02, (Object) null);
                } else {
                    int length = this.f10164b.length;
                    int r6 = r32;
                    boolean z11 = false;
                    while (r32 < length) {
                        Object[] objArr2 = this.f10164b;
                        Object obj2 = objArr2[r32];
                        objArr2[r32] = null;
                        if (elements.contains(obj2)) {
                            this.f10164b[r6] = obj2;
                            r6++;
                        } else {
                            z11 = true;
                        }
                        r32++;
                    }
                    r52 = x(r6);
                    for (int r12 = 0; r12 < r02; r12++) {
                        Object[] objArr3 = this.f10164b;
                        Object obj3 = objArr3[r12];
                        objArr3[r12] = null;
                        if (elements.contains(obj3)) {
                            this.f10164b[r52] = obj3;
                            r52 = w(r52);
                        } else {
                            z11 = true;
                        }
                    }
                    z10 = z11;
                }
                if (z10) {
                    int length2 = r52 - this.f10163a;
                    if (length2 < 0) {
                        length2 += this.f10164b.length;
                    }
                    this.f10165c = length2;
                }
            }
        }
        return z10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int r32, E e10) {
        c.a.a(r32, this.f10165c);
        int r33 = x(this.f10163a + r32);
        Object[] objArr = this.f10164b;
        E e11 = (E) objArr[r33];
        objArr[r33] = e10;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[l()]);
    }

    public final void u(int r52) {
        if (r52 < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f10164b;
        if (r52 <= objArr.length) {
            return;
        }
        if (objArr == f10162d) {
            if (r52 < 10) {
                r52 = 10;
            }
            this.f10164b = new Object[r52];
            return;
        }
        int length = objArr.length;
        int r12 = length + (length >> 1);
        if (r12 - r52 < 0) {
            r12 = r52;
        }
        if (r12 - 2147483639 > 0) {
            r12 = r52 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[r12];
        i.i0(objArr, objArr2, 0, this.f10163a, objArr.length);
        Object[] objArr3 = this.f10164b;
        int length2 = objArr3.length;
        int r22 = this.f10163a;
        i.i0(objArr3, objArr2, length2 - r22, 0, r22);
        this.f10163a = 0;
        this.f10164b = objArr2;
    }

    public final int w(int r32) {
        kotlin.jvm.internal.h.f(this.f10164b, "<this>");
        if (r32 == r0.length - 1) {
            return 0;
        }
        return r32 + 1;
    }

    public final int x(int r32) {
        Object[] objArr = this.f10164b;
        return r32 >= objArr.length ? r32 - objArr.length : r32;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] array) throws NegativeArraySizeException {
        kotlin.jvm.internal.h.f(array, "array");
        int length = array.length;
        int r12 = this.f10165c;
        if (length < r12) {
            Object objNewInstance = Array.newInstance(array.getClass().getComponentType(), r12);
            kotlin.jvm.internal.h.d(objNewInstance, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>");
            array = (T[]) ((Object[]) objNewInstance);
        }
        int r42 = x(this.f10165c + this.f10163a);
        int r32 = this.f10163a;
        if (r32 < r42) {
            i.j0(this.f10164b, array, 0, r32, r42, 2);
        } else if (!isEmpty()) {
            Object[] objArr = this.f10164b;
            i.i0(objArr, array, 0, this.f10163a, objArr.length);
            Object[] objArr2 = this.f10164b;
            i.i0(objArr2, array, objArr2.length - this.f10163a, 0, r42);
        }
        int length2 = array.length;
        int r13 = this.f10165c;
        if (length2 > r13) {
            array[r13] = null;
        }
        return array;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends E> elements) {
        kotlin.jvm.internal.h.f(elements, "elements");
        if (elements.isEmpty()) {
            return false;
        }
        u(elements.size() + l());
        o(x(l() + this.f10163a), elements);
        return true;
    }
}
