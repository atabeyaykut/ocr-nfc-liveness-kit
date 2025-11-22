package j6;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class b0<E> implements List<E>, RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final List<E> f8130a;

    public b0(List<E> list) {
        this.f8130a = Collections.unmodifiableList(list);
    }

    @Override // java.util.List
    public final void add(int r22, @NonNull E e10) {
        this.f8130a.add(r22, e10);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean add(@NonNull E e10) {
        return this.f8130a.add(e10);
    }

    @Override // java.util.List
    public final boolean addAll(int r22, @NonNull Collection<? extends E> collection) {
        return this.f8130a.addAll(r22, collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean addAll(@NonNull Collection<? extends E> collection) {
        return this.f8130a.addAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final void clear() {
        this.f8130a.clear();
    }

    @Override // java.util.List, java.util.Collection
    public final boolean contains(@Nullable Object obj) {
        return this.f8130a.contains(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean containsAll(@NonNull Collection<?> collection) {
        return this.f8130a.containsAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean equals(@Nullable Object obj) {
        return this.f8130a.equals(obj);
    }

    @Override // java.util.List
    @NonNull
    public final E get(int r22) {
        return this.f8130a.get(r22);
    }

    @Override // java.util.List, java.util.Collection
    public final int hashCode() {
        return this.f8130a.hashCode();
    }

    @Override // java.util.List
    public final int indexOf(@Nullable Object obj) {
        return this.f8130a.indexOf(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean isEmpty() {
        return this.f8130a.isEmpty();
    }

    @Override // java.util.List, java.util.Collection, java.lang.Iterable
    @NonNull
    public final Iterator<E> iterator() {
        return this.f8130a.iterator();
    }

    @Override // java.util.List
    public final int lastIndexOf(@Nullable Object obj) {
        return this.f8130a.lastIndexOf(obj);
    }

    @Override // java.util.List
    @NonNull
    public final ListIterator<E> listIterator() {
        return this.f8130a.listIterator();
    }

    @Override // java.util.List
    @NonNull
    public final ListIterator<E> listIterator(int r22) {
        return this.f8130a.listIterator(r22);
    }

    @Override // java.util.List
    public final E remove(int r22) {
        return this.f8130a.remove(r22);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean remove(@Nullable Object obj) {
        return this.f8130a.remove(obj);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean removeAll(@NonNull Collection<?> collection) {
        return this.f8130a.removeAll(collection);
    }

    @Override // java.util.List, java.util.Collection
    public final boolean retainAll(@NonNull Collection<?> collection) {
        return this.f8130a.retainAll(collection);
    }

    @Override // java.util.List
    @NonNull
    public final E set(int r22, @NonNull E e10) {
        return this.f8130a.set(r22, e10);
    }

    @Override // java.util.List, java.util.Collection
    public final int size() {
        return this.f8130a.size();
    }

    @Override // java.util.List
    @NonNull
    public final List<E> subList(int r22, int r32) {
        return this.f8130a.subList(r22, r32);
    }

    @Override // java.util.List, java.util.Collection
    @Nullable
    public final Object[] toArray() {
        return this.f8130a.toArray();
    }

    @Override // java.util.List, java.util.Collection
    public final <T> T[] toArray(@Nullable T[] tArr) {
        return (T[]) this.f8130a.toArray(tArr);
    }
}
