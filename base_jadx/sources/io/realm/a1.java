package io.realm;

import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes2.dex */
public final class a1<E> implements Set<E>, RealmCollection<E> {

    /* renamed from: a, reason: collision with root package name */
    public final b f7464a = new b();

    public static abstract class a<E> implements Set<E>, RealmCollection<E> {
    }

    public static class b<E> extends a<E> {

        /* renamed from: a, reason: collision with root package name */
        public final HashSet f7465a = new HashSet();

        @Override // java.util.Set, java.util.Collection
        public final boolean add(E e10) {
            return this.f7465a.add(e10);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection<? extends E> collection) {
            return this.f7465a.addAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            this.f7465a.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return this.f7465a.contains(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection<?> collection) {
            return this.f7465a.containsAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return this.f7465a.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator<E> iterator() {
            return this.f7465a.iterator();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            return this.f7465a.remove(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection<?> collection) {
            return this.f7465a.removeAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection<?> collection) {
            return this.f7465a.retainAll(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return this.f7465a.size();
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            return this.f7465a.toArray();
        }

        @Override // java.util.Set, java.util.Collection
        public final <T> T[] toArray(T[] tArr) {
            return (T[]) this.f7465a.toArray(tArr);
        }
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean add(E e10) {
        return this.f7464a.add(e10);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        return this.f7464a.addAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final void clear() {
        this.f7464a.clear();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f7464a.contains(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean containsAll(Collection<?> collection) {
        return this.f7464a.containsAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean isEmpty() {
        return this.f7464a.isEmpty();
    }

    @Override // java.util.Set, java.util.Collection, java.lang.Iterable
    public final Iterator<E> iterator() {
        return this.f7464a.iterator();
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean remove(Object obj) {
        return this.f7464a.remove(obj);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean removeAll(Collection<?> collection) {
        return this.f7464a.removeAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final boolean retainAll(Collection<?> collection) {
        return this.f7464a.retainAll(collection);
    }

    @Override // java.util.Set, java.util.Collection
    public final int size() {
        return this.f7464a.size();
    }

    @Override // java.util.Set, java.util.Collection
    public final Object[] toArray() {
        return this.f7464a.toArray();
    }

    @Override // java.util.Set, java.util.Collection
    public final <T> T[] toArray(T[] tArr) {
        return (T[]) this.f7464a.toArray(tArr);
    }
}
