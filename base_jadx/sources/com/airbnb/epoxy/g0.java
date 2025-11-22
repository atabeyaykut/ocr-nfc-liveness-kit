package com.airbnb.epoxy;

import androidx.annotation.NonNull;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public class g0 extends ArrayList<u<?>> {

    /* renamed from: a, reason: collision with root package name */
    public boolean f2575a;

    /* renamed from: b, reason: collision with root package name */
    public c f2576b;

    public class a implements Iterator<u<?>> {

        /* renamed from: a, reason: collision with root package name */
        public int f2577a;

        /* renamed from: b, reason: collision with root package name */
        public int f2578b = -1;

        /* renamed from: c, reason: collision with root package name */
        public int f2579c;

        public a() {
            this.f2579c = ((ArrayList) g0.this).modCount;
        }

        public final void a() {
            if (((ArrayList) g0.this).modCount != this.f2579c) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f2577a != g0.this.size();
        }

        @Override // java.util.Iterator
        public final u<?> next() {
            a();
            int r02 = this.f2577a;
            this.f2577a = r02 + 1;
            this.f2578b = r02;
            return g0.this.get(r02);
        }

        @Override // java.util.Iterator
        public final void remove() {
            g0 g0Var = g0.this;
            if (this.f2578b < 0) {
                throw new IllegalStateException();
            }
            a();
            try {
                g0Var.remove(this.f2578b);
                this.f2577a = this.f2578b;
                this.f2578b = -1;
                this.f2579c = ((ArrayList) g0Var).modCount;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public class b extends a implements ListIterator<u<?>> {
        public b(int r22) {
            super();
            this.f2577a = r22;
        }

        @Override // java.util.ListIterator
        public final void add(u<?> uVar) {
            u<?> uVar2 = uVar;
            g0 g0Var = g0.this;
            a();
            try {
                int r12 = this.f2577a;
                g0Var.add(uVar2, r12);
                this.f2577a = r12 + 1;
                this.f2578b = -1;
                this.f2579c = ((ArrayList) g0Var).modCount;
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f2577a != 0;
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f2577a;
        }

        @Override // java.util.ListIterator
        public final u<?> previous() {
            a();
            int r02 = this.f2577a - 1;
            if (r02 < 0) {
                throw new NoSuchElementException();
            }
            this.f2577a = r02;
            this.f2578b = r02;
            return g0.this.get(r02);
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f2577a - 1;
        }

        @Override // java.util.ListIterator
        public final void set(u<?> uVar) {
            u<?> uVar2 = uVar;
            if (this.f2578b < 0) {
                throw new IllegalStateException();
            }
            a();
            try {
                g0.this.set(uVar2, this.f2578b);
            } catch (IndexOutOfBoundsException unused) {
                throw new ConcurrentModificationException();
            }
        }
    }

    public interface c {
    }

    public static class d extends AbstractList<u<?>> {

        /* renamed from: a, reason: collision with root package name */
        public final g0 f2582a;

        /* renamed from: b, reason: collision with root package name */
        public final int f2583b;

        /* renamed from: c, reason: collision with root package name */
        public int f2584c;

        public static final class a implements ListIterator<u<?>> {

            /* renamed from: a, reason: collision with root package name */
            public final d f2585a;

            /* renamed from: b, reason: collision with root package name */
            public final ListIterator<u<?>> f2586b;

            /* renamed from: c, reason: collision with root package name */
            public final int f2587c;

            /* renamed from: d, reason: collision with root package name */
            public int f2588d;

            public a(b bVar, d dVar, int r32, int r42) {
                this.f2586b = bVar;
                this.f2585a = dVar;
                this.f2587c = r32;
                this.f2588d = r32 + r42;
            }

            @Override // java.util.ListIterator
            public final void add(u<?> uVar) {
                this.f2586b.add(uVar);
                this.f2585a.h(true);
                this.f2588d++;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final boolean hasNext() {
                return this.f2586b.nextIndex() < this.f2588d;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return this.f2586b.previousIndex() >= this.f2587c;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final Object next() {
                ListIterator<u<?>> listIterator = this.f2586b;
                if (listIterator.nextIndex() < this.f2588d) {
                    return listIterator.next();
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return this.f2586b.nextIndex() - this.f2587c;
            }

            @Override // java.util.ListIterator
            public final u<?> previous() {
                ListIterator<u<?>> listIterator = this.f2586b;
                if (listIterator.previousIndex() >= this.f2587c) {
                    return listIterator.previous();
                }
                throw new NoSuchElementException();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                int r02 = this.f2586b.previousIndex();
                int r12 = this.f2587c;
                if (r02 >= r12) {
                    return r02 - r12;
                }
                return -1;
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final void remove() {
                this.f2586b.remove();
                this.f2585a.h(false);
                this.f2588d--;
            }

            @Override // java.util.ListIterator
            public final void set(u<?> uVar) {
                this.f2586b.set(uVar);
            }
        }

        public d(g0 g0Var, int r22, int r32) {
            this.f2582a = g0Var;
            ((AbstractList) this).modCount = ((ArrayList) g0Var).modCount;
            this.f2583b = r22;
            this.f2584c = r32 - r22;
        }

        @Override // java.util.AbstractList, java.util.List
        public final void add(int r42, Object obj) {
            u uVar = (u) obj;
            int r02 = ((AbstractList) this).modCount;
            g0 g0Var = this.f2582a;
            if (r02 != ((ArrayList) g0Var).modCount) {
                throw new ConcurrentModificationException();
            }
            if (r42 < 0 || r42 > this.f2584c) {
                throw new IndexOutOfBoundsException();
            }
            g0Var.add(uVar, r42 + this.f2583b);
            this.f2584c++;
            ((AbstractList) this).modCount = ((ArrayList) g0Var).modCount;
        }

        @Override // java.util.AbstractList, java.util.List
        public final boolean addAll(int r42, Collection<? extends u<?>> collection) {
            int r02 = ((AbstractList) this).modCount;
            g0 g0Var = this.f2582a;
            if (r02 != ((ArrayList) g0Var).modCount) {
                throw new ConcurrentModificationException();
            }
            if (r42 < 0 || r42 > this.f2584c) {
                throw new IndexOutOfBoundsException();
            }
            boolean zAddAll = g0Var.addAll(r42 + this.f2583b, collection);
            if (zAddAll) {
                this.f2584c = collection.size() + this.f2584c;
                ((AbstractList) this).modCount = ((ArrayList) g0Var).modCount;
            }
            return zAddAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final boolean addAll(@NonNull Collection<? extends u<?>> collection) {
            int r02 = ((AbstractList) this).modCount;
            g0 g0Var = this.f2582a;
            if (r02 != ((ArrayList) g0Var).modCount) {
                throw new ConcurrentModificationException();
            }
            boolean zAddAll = g0Var.addAll(this.f2583b + this.f2584c, collection);
            if (zAddAll) {
                this.f2584c = collection.size() + this.f2584c;
                ((AbstractList) this).modCount = ((ArrayList) g0Var).modCount;
            }
            return zAddAll;
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object get(int r42) {
            int r02 = ((AbstractList) this).modCount;
            g0 g0Var = this.f2582a;
            if (r02 != ((ArrayList) g0Var).modCount) {
                throw new ConcurrentModificationException();
            }
            if (r42 < 0 || r42 >= this.f2584c) {
                throw new IndexOutOfBoundsException();
            }
            return g0Var.get(r42 + this.f2583b);
        }

        public final void h(boolean z10) {
            this.f2584c = z10 ? this.f2584c + 1 : this.f2584c - 1;
            ((AbstractList) this).modCount = ((ArrayList) this.f2582a).modCount;
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        @NonNull
        public final Iterator<u<?>> iterator() {
            return listIterator(0);
        }

        @Override // java.util.AbstractList, java.util.List
        @NonNull
        public final ListIterator<u<?>> listIterator(int r52) {
            int r02 = ((AbstractList) this).modCount;
            g0 g0Var = this.f2582a;
            if (r02 != ((ArrayList) g0Var).modCount) {
                throw new ConcurrentModificationException();
            }
            if (r52 < 0 || r52 > this.f2584c) {
                throw new IndexOutOfBoundsException();
            }
            int r22 = this.f2583b;
            return new a(g0Var.new b(r52 + r22), this, r22, this.f2584c);
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object remove(int r42) {
            int r02 = ((AbstractList) this).modCount;
            g0 g0Var = this.f2582a;
            if (r02 != ((ArrayList) g0Var).modCount) {
                throw new ConcurrentModificationException();
            }
            if (r42 < 0 || r42 >= this.f2584c) {
                throw new IndexOutOfBoundsException();
            }
            u<?> uVarRemove = g0Var.remove(r42 + this.f2583b);
            this.f2584c--;
            ((AbstractList) this).modCount = ((ArrayList) g0Var).modCount;
            return uVarRemove;
        }

        @Override // java.util.AbstractList
        public final void removeRange(int r42, int r52) {
            if (r42 != r52) {
                int r02 = ((AbstractList) this).modCount;
                g0 g0Var = this.f2582a;
                if (r02 != ((ArrayList) g0Var).modCount) {
                    throw new ConcurrentModificationException();
                }
                int r03 = this.f2583b;
                g0Var.removeRange(r42 + r03, r03 + r52);
                this.f2584c -= r52 - r42;
                ((AbstractList) this).modCount = ((ArrayList) g0Var).modCount;
            }
        }

        @Override // java.util.AbstractList, java.util.List
        public final Object set(int r42, Object obj) {
            u uVar = (u) obj;
            int r02 = ((AbstractList) this).modCount;
            g0 g0Var = this.f2582a;
            if (r02 != ((ArrayList) g0Var).modCount) {
                throw new ConcurrentModificationException();
            }
            if (r42 < 0 || r42 >= this.f2584c) {
                throw new IndexOutOfBoundsException();
            }
            return g0Var.set(uVar, r42 + this.f2583b);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            if (((AbstractList) this).modCount == ((ArrayList) this.f2582a).modCount) {
                return this.f2584c;
            }
            throw new ConcurrentModificationException();
        }
    }

    public g0() {
    }

    public g0(int r12) {
        super(r12);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    /* renamed from: U, reason: merged with bridge method [inline-methods] */
    public final void add(u uVar, int r22) {
        X();
        super.add(r22, uVar);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* renamed from: V, reason: merged with bridge method [inline-methods] */
    public final boolean add(u<?> uVar) {
        size();
        X();
        return super.add(uVar);
    }

    public final void X() {
        if (!this.f2575a && this.f2576b != null) {
            throw new IllegalStateException("Models cannot be changed once they are added to the controller");
        }
    }

    public final void Y() {
        if (!this.f2575a && this.f2576b != null) {
            throw new IllegalStateException("Models cannot be changed once they are added to the controller");
        }
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    /* renamed from: a0, reason: merged with bridge method [inline-methods] */
    public final u<?> remove(int r12) {
        Y();
        return (u) super.remove(r12);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public final boolean addAll(int r12, Collection<? extends u<?>> collection) {
        collection.size();
        X();
        return super.addAll(r12, collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends u<?>> collection) {
        size();
        collection.size();
        X();
        return super.addAll(collection);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    /* renamed from: b0, reason: merged with bridge method [inline-methods] */
    public final u set(u uVar, int r6) {
        u uVar2 = (u) super.set(r6, uVar);
        if (uVar2.id() != uVar.id()) {
            Y();
            X();
        }
        return uVar2;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (isEmpty()) {
            return;
        }
        size();
        Y();
        super.clear();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    @NonNull
    public final Iterator<u<?>> iterator() {
        return new a();
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    @NonNull
    public final ListIterator<u<?>> listIterator() {
        return new b(0);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    @NonNull
    public final ListIterator<u<?>> listIterator(int r22) {
        return new b(r22);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int r22 = indexOf(obj);
        if (r22 == -1) {
            return false;
        }
        Y();
        super.remove(r22);
        return true;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<?> collection) {
        a aVar = new a();
        boolean z10 = false;
        while (aVar.hasNext()) {
            if (collection.contains(aVar.next())) {
                aVar.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.ArrayList, java.util.AbstractList
    public final void removeRange(int r12, int r22) {
        if (r12 == r22) {
            return;
        }
        Y();
        super.removeRange(r12, r22);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection<?> collection) {
        a aVar = new a();
        boolean z10 = false;
        while (aVar.hasNext()) {
            if (!collection.contains(aVar.next())) {
                aVar.remove();
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    @NonNull
    public final List<u<?>> subList(int r22, int r32) {
        if (r22 < 0 || r32 > size()) {
            throw new IndexOutOfBoundsException();
        }
        if (r22 <= r32) {
            return new d(this, r22, r32);
        }
        throw new IllegalArgumentException();
    }
}
