package mb;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class v extends AbstractList<String> implements RandomAccess, n {

    /* renamed from: a, reason: collision with root package name */
    public final n f10337a;

    public class a implements ListIterator<String> {

        /* renamed from: a, reason: collision with root package name */
        public final ListIterator<String> f10338a;

        public a(v vVar, int r22) {
            this.f10338a = vVar.f10337a.listIterator(r22);
        }

        @Override // java.util.ListIterator
        public final void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f10338a.hasNext();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f10338a.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            return this.f10338a.next();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f10338a.nextIndex();
        }

        @Override // java.util.ListIterator
        public final String previous() {
            return this.f10338a.previous();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f10338a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public final void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    public class b implements Iterator<String> {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator<String> f10339a;

        public b(v vVar) {
            this.f10339a = vVar.f10337a.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10339a.hasNext();
        }

        @Override // java.util.Iterator
        public final String next() {
            return this.f10339a.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public v(n nVar) {
        this.f10337a = nVar;
    }

    @Override // mb.n
    public final void O(o oVar) {
        throw new UnsupportedOperationException();
    }

    @Override // mb.n
    public final c c0(int r22) {
        return this.f10337a.c0(r22);
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r22) {
        return (String) this.f10337a.get(r22);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new b(this);
    }

    @Override // mb.n
    public final List<?> k() {
        return this.f10337a.k();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int r22) {
        return new a(this, r22);
    }

    @Override // mb.n
    public final v p() {
        return this;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f10337a.size();
    }
}
