package m9;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public abstract class c<E> extends m9.a<E> implements List<E> {

    public static final class a {
        public static void a(int r32, int r42) {
            if (r32 < 0 || r32 >= r42) {
                throw new IndexOutOfBoundsException(androidx.constraintlayout.core.a.c("index: ", r32, ", size: ", r42));
            }
        }

        public static void b(int r32, int r42) {
            if (r32 < 0 || r32 > r42) {
                throw new IndexOutOfBoundsException(androidx.constraintlayout.core.a.c("index: ", r32, ", size: ", r42));
            }
        }

        public static void c(int r42, int r52, int r6) {
            if (r42 < 0 || r52 > r6) {
                StringBuilder sbF = androidx.constraintlayout.core.a.f("fromIndex: ", r42, ", toIndex: ", r52, ", size: ");
                sbF.append(r6);
                throw new IndexOutOfBoundsException(sbF.toString());
            }
            if (r42 > r52) {
                throw new IllegalArgumentException(androidx.constraintlayout.core.a.c("fromIndex: ", r42, " > toIndex: ", r52));
            }
        }
    }

    public class b implements Iterator<E>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public int f10153a;

        public b() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10153a < c.this.l();
        }

        @Override // java.util.Iterator
        public final E next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            int r02 = this.f10153a;
            this.f10153a = r02 + 1;
            return c.this.get(r02);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* renamed from: m9.c$c, reason: collision with other inner class name */
    public class C0186c extends c<E>.b implements ListIterator<E> {
        public C0186c(int r22) {
            super();
            a.b(r22, c.this.l());
            this.f10153a = r22;
        }

        @Override // java.util.ListIterator
        public final void add(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f10153a > 0;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f10153a;
        }

        @Override // java.util.ListIterator
        public final E previous() {
            if (!hasPrevious()) {
                throw new NoSuchElementException();
            }
            int r02 = this.f10153a - 1;
            this.f10153a = r02;
            return c.this.get(r02);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f10153a - 1;
        }

        @Override // java.util.ListIterator
        public final void set(E e10) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public static final class d<E> extends c<E> implements RandomAccess {

        /* renamed from: a, reason: collision with root package name */
        public final c<E> f10156a;

        /* renamed from: b, reason: collision with root package name */
        public final int f10157b;

        /* renamed from: c, reason: collision with root package name */
        public final int f10158c;

        /* JADX WARN: Multi-variable type inference failed */
        public d(c<? extends E> list, int r32, int r42) {
            kotlin.jvm.internal.h.f(list, "list");
            this.f10156a = list;
            this.f10157b = r32;
            a.c(r32, r42, list.l());
            this.f10158c = r42 - r32;
        }

        @Override // m9.c, java.util.List
        public final E get(int r22) {
            a.a(r22, this.f10158c);
            return this.f10156a.get(this.f10157b + r22);
        }

        @Override // m9.a
        public final int l() {
            return this.f10158c;
        }
    }

    @Override // java.util.List
    public final void add(int r12, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final boolean addAll(int r12, Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        Collection other = (Collection) obj;
        kotlin.jvm.internal.h.f(other, "other");
        if (size() == other.size()) {
            Iterator<E> it = other.iterator();
            Iterator<E> it2 = iterator();
            while (it2.hasNext()) {
                if (!kotlin.jvm.internal.h.a(it2.next(), it.next())) {
                }
            }
            return true;
        }
        return false;
    }

    public abstract E get(int r12);

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        Iterator<E> it = iterator();
        int r12 = 1;
        while (it.hasNext()) {
            E next = it.next();
            r12 = (r12 * 31) + (next != null ? next.hashCode() : 0);
        }
        return r12;
    }

    public int indexOf(E e10) {
        Iterator<E> it = iterator();
        int r12 = 0;
        while (it.hasNext()) {
            if (kotlin.jvm.internal.h.a(it.next(), e10)) {
                return r12;
            }
            r12++;
        }
        return -1;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<E> iterator() {
        return new b();
    }

    public int lastIndexOf(E e10) {
        ListIterator<E> listIterator = listIterator(size());
        while (listIterator.hasPrevious()) {
            if (kotlin.jvm.internal.h.a(listIterator.previous(), e10)) {
                return listIterator.nextIndex();
            }
        }
        return -1;
    }

    @Override // java.util.List
    public final ListIterator<E> listIterator() {
        return new C0186c(0);
    }

    @Override // java.util.List
    public final ListIterator<E> listIterator(int r22) {
        return new C0186c(r22);
    }

    @Override // java.util.List
    public final E remove(int r22) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final E set(int r12, E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.List
    public final List<E> subList(int r22, int r32) {
        return new d(this, r22, r32);
    }
}
