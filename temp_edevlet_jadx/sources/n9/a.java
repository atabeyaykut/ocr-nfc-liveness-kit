package n9;

import c5.w;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;
import kotlin.jvm.internal.h;
import m9.c;
import m9.i;

/* loaded from: classes2.dex */
public final class a<E> extends m9.d<E> implements RandomAccess, Serializable {

    /* renamed from: a, reason: collision with root package name */
    public E[] f10605a;

    /* renamed from: b, reason: collision with root package name */
    public final int f10606b;

    /* renamed from: c, reason: collision with root package name */
    public int f10607c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f10608d;

    /* renamed from: e, reason: collision with root package name */
    public final a<E> f10609e;
    public final a<E> f;

    /* renamed from: n9.a$a, reason: collision with other inner class name */
    public static final class C0199a<E> implements ListIterator<E>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public final a<E> f10610a;

        /* renamed from: b, reason: collision with root package name */
        public int f10611b;

        /* renamed from: c, reason: collision with root package name */
        public int f10612c;

        public C0199a(a<E> list, int r32) {
            h.f(list, "list");
            this.f10610a = list;
            this.f10611b = r32;
            this.f10612c = -1;
        }

        @Override // java.util.ListIterator
        public final void add(E e10) {
            int r02 = this.f10611b;
            this.f10611b = r02 + 1;
            this.f10610a.add(r02, e10);
            this.f10612c = -1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f10611b < this.f10610a.f10607c;
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f10611b > 0;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final E next() {
            int r02 = this.f10611b;
            a<E> aVar = this.f10610a;
            if (r02 >= aVar.f10607c) {
                throw new NoSuchElementException();
            }
            this.f10611b = r02 + 1;
            this.f10612c = r02;
            return aVar.f10605a[aVar.f10606b + r02];
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f10611b;
        }

        @Override // java.util.ListIterator
        public final E previous() {
            int r02 = this.f10611b;
            if (r02 <= 0) {
                throw new NoSuchElementException();
            }
            int r03 = r02 - 1;
            this.f10611b = r03;
            this.f10612c = r03;
            a<E> aVar = this.f10610a;
            return aVar.f10605a[aVar.f10606b + r03];
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f10611b - 1;
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            int r02 = this.f10612c;
            if (!(r02 != -1)) {
                throw new IllegalStateException("Call next() or previous() before removing element from the iterator.".toString());
            }
            this.f10610a.m(r02);
            this.f10611b = this.f10612c;
            this.f10612c = -1;
        }

        @Override // java.util.ListIterator
        public final void set(E e10) {
            int r02 = this.f10612c;
            if (!(r02 != -1)) {
                throw new IllegalStateException("Call next() or previous() before replacing element from the iterator.".toString());
            }
            this.f10610a.set(r02, e10);
        }
    }

    public a() {
        this(w.b(10), 0, 0, false, null, null);
    }

    public a(E[] eArr, int r22, int r32, boolean z10, a<E> aVar, a<E> aVar2) {
        this.f10605a = eArr;
        this.f10606b = r22;
        this.f10607c = r32;
        this.f10608d = z10;
        this.f10609e = aVar;
        this.f = aVar2;
    }

    public final int A(int r6, int r72, Collection<? extends E> collection, boolean z10) {
        a<E> aVar = this.f10609e;
        if (aVar != null) {
            int r62 = aVar.A(r6, r72, collection, z10);
            this.f10607c -= r62;
            return r62;
        }
        int r02 = 0;
        int r12 = 0;
        while (r02 < r72) {
            int r32 = r6 + r02;
            if (collection.contains(this.f10605a[r32]) == z10) {
                E[] eArr = this.f10605a;
                r02++;
                eArr[r12 + r6] = eArr[r32];
                r12++;
            } else {
                r02++;
            }
        }
        int r82 = r72 - r12;
        E[] eArr2 = this.f10605a;
        i.i0(eArr2, eArr2, r6 + r12, r72 + r6, this.f10607c);
        E[] eArr3 = this.f10605a;
        int r73 = this.f10607c;
        w.C(eArr3, r73 - r82, r73);
        this.f10607c -= r82;
        return r82;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r22, E e10) {
        w();
        c.a.b(r22, this.f10607c);
        u(this.f10606b + r22, e10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        w();
        u(this.f10606b + this.f10607c, e10);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int r32, Collection<? extends E> elements) {
        h.f(elements, "elements");
        w();
        c.a.b(r32, this.f10607c);
        int size = elements.size();
        o(this.f10606b + r32, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends E> elements) {
        h.f(elements, "elements");
        w();
        int size = elements.size();
        o(this.f10606b + this.f10607c, elements, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        w();
        z(this.f10606b, this.f10607c);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r8) {
        /*
            r7 = this;
            r0 = 1
            if (r8 == r7) goto L31
            boolean r1 = r8 instanceof java.util.List
            r2 = 0
            if (r1 == 0) goto L30
            java.util.List r8 = (java.util.List) r8
            E[] r1 = r7.f10605a
            int r3 = r7.f10607c
            int r4 = r8.size()
            if (r3 == r4) goto L15
            goto L27
        L15:
            r4 = 0
        L16:
            if (r4 >= r3) goto L2c
            int r5 = r7.f10606b
            int r5 = r5 + r4
            r5 = r1[r5]
            java.lang.Object r6 = r8.get(r4)
            boolean r5 = kotlin.jvm.internal.h.a(r5, r6)
            if (r5 != 0) goto L29
        L27:
            r8 = 0
            goto L2d
        L29:
            int r4 = r4 + 1
            goto L16
        L2c:
            r8 = 1
        L2d:
            if (r8 == 0) goto L30
            goto L31
        L30:
            r0 = 0
        L31:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: n9.a.equals(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int r32) {
        c.a.a(r32, this.f10607c);
        return this.f10605a[this.f10606b + r32];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        E[] eArr = this.f10605a;
        int r12 = this.f10607c;
        int r32 = 1;
        for (int r42 = 0; r42 < r12; r42++) {
            E e10 = eArr[this.f10606b + r42];
            r32 = (r32 * 31) + (e10 != null ? e10.hashCode() : 0);
        }
        return r32;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int r02 = 0; r02 < this.f10607c; r02++) {
            if (h.a(this.f10605a[this.f10606b + r02], obj)) {
                return r02;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f10607c == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return new C0199a(this, 0);
    }

    @Override // m9.d
    public final int l() {
        return this.f10607c;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int r02 = this.f10607c - 1; r02 >= 0; r02--) {
            if (h.a(this.f10605a[this.f10606b + r02], obj)) {
                return r02;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<E> listIterator() {
        return new C0199a(this, 0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<E> listIterator(int r22) {
        c.a.b(r22, this.f10607c);
        return new C0199a(this, r22);
    }

    @Override // m9.d
    public final E m(int r22) {
        w();
        c.a.a(r22, this.f10607c);
        return y(this.f10606b + r22);
    }

    public final void o(int r52, Collection<? extends E> collection, int r72) {
        a<E> aVar = this.f10609e;
        if (aVar != null) {
            aVar.o(r52, collection, r72);
            this.f10605a = aVar.f10605a;
            this.f10607c += r72;
        } else {
            x(r52, r72);
            Iterator<? extends E> it = collection.iterator();
            for (int r02 = 0; r02 < r72; r02++) {
                this.f10605a[r52 + r02] = it.next();
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        w();
        int r12 = indexOf(obj);
        if (r12 >= 0) {
            m(r12);
        }
        return r12 >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        w();
        return A(this.f10606b, this.f10607c, elements, false) > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        w();
        return A(this.f10606b, this.f10607c, elements, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int r32, E e10) {
        w();
        c.a.a(r32, this.f10607c);
        E[] eArr = this.f10605a;
        int r12 = this.f10606b + r32;
        E e11 = eArr[r12];
        eArr[r12] = e10;
        return e11;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List<E> subList(int r92, int r10) {
        c.a.c(r92, r10, this.f10607c);
        E[] eArr = this.f10605a;
        int r32 = this.f10606b + r92;
        int r42 = r10 - r92;
        boolean z10 = this.f10608d;
        a<E> aVar = this.f;
        return new a(eArr, r32, r42, z10, this, aVar == null ? this : aVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        E[] eArr = this.f10605a;
        int r12 = this.f10607c;
        int r22 = this.f10606b;
        return i.l0(eArr, r22, r12 + r22);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final <T> T[] toArray(T[] destination) {
        h.f(destination, "destination");
        int length = destination.length;
        int r12 = this.f10607c;
        int r22 = this.f10606b;
        if (length < r12) {
            T[] tArr = (T[]) Arrays.copyOfRange(this.f10605a, r22, r12 + r22, destination.getClass());
            h.e(tArr, "copyOfRange(array, offse…h, destination.javaClass)");
            return tArr;
        }
        i.i0(this.f10605a, destination, 0, r22, r12 + r22);
        int length2 = destination.length;
        int r13 = this.f10607c;
        if (length2 > r13) {
            destination[r13] = null;
        }
        return destination;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        E[] eArr = this.f10605a;
        int r12 = this.f10607c;
        StringBuilder sb2 = new StringBuilder((r12 * 3) + 2);
        sb2.append("[");
        for (int r32 = 0; r32 < r12; r32++) {
            if (r32 > 0) {
                sb2.append(", ");
            }
            sb2.append(eArr[this.f10606b + r32]);
        }
        sb2.append("]");
        String string = sb2.toString();
        h.e(string, "sb.toString()");
        return string;
    }

    public final void u(int r32, E e10) {
        a<E> aVar = this.f10609e;
        if (aVar == null) {
            x(r32, 1);
            this.f10605a[r32] = e10;
        } else {
            aVar.u(r32, e10);
            this.f10605a = aVar.f10605a;
            this.f10607c++;
        }
    }

    public final void w() {
        a<E> aVar;
        if (this.f10608d || ((aVar = this.f) != null && aVar.f10608d)) {
            throw new UnsupportedOperationException();
        }
    }

    public final void x(int r6, int r72) {
        int r02 = this.f10607c + r72;
        if (this.f10609e != null) {
            throw new IllegalStateException();
        }
        if (r02 < 0) {
            throw new OutOfMemoryError();
        }
        E[] eArr = this.f10605a;
        if (r02 > eArr.length) {
            int length = eArr.length;
            int r22 = length + (length >> 1);
            if (r22 - r02 < 0) {
                r22 = r02;
            }
            if (r22 - 2147483639 > 0) {
                r22 = r02 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            h.f(eArr, "<this>");
            E[] eArr2 = (E[]) Arrays.copyOf(eArr, r22);
            h.e(eArr2, "copyOf(this, newSize)");
            this.f10605a = eArr2;
        }
        E[] eArr3 = this.f10605a;
        i.i0(eArr3, eArr3, r6 + r72, r6, this.f10606b + this.f10607c);
        this.f10607c += r72;
    }

    public final E y(int r6) {
        a<E> aVar = this.f10609e;
        if (aVar != null) {
            this.f10607c--;
            return aVar.y(r6);
        }
        E[] eArr = this.f10605a;
        E e10 = eArr[r6];
        int r32 = this.f10607c;
        int r42 = this.f10606b;
        i.i0(eArr, eArr, r6, r6 + 1, r32 + r42);
        E[] eArr2 = this.f10605a;
        int r43 = (r42 + this.f10607c) - 1;
        h.f(eArr2, "<this>");
        eArr2[r43] = null;
        this.f10607c--;
        return e10;
    }

    public final void z(int r42, int r52) {
        a<E> aVar = this.f10609e;
        if (aVar != null) {
            aVar.z(r42, r52);
        } else {
            E[] eArr = this.f10605a;
            i.i0(eArr, eArr, r42, r42 + r52, this.f10607c);
            E[] eArr2 = this.f10605a;
            int r02 = this.f10607c;
            w.C(eArr2, r02 - r52, r02);
        }
        this.f10607c -= r52;
    }
}
