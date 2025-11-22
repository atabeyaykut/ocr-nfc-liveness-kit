package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public abstract class q<E> extends AbstractList<E> implements a1<E> {

    /* renamed from: a, reason: collision with root package name */
    public boolean f3267a = true;

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        h();
        return super.add(e10);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int r12, Collection<? extends E> collection) {
        h();
        return super.addAll(r12, collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends E> collection) {
        h();
        return super.addAll(collection);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        h();
        super.clear();
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof List)) {
            return false;
        }
        if (!(obj instanceof RandomAccess)) {
            return super.equals(obj);
        }
        List list = (List) obj;
        int size = size();
        if (size != list.size()) {
            return false;
        }
        for (int r32 = 0; r32 < size; r32++) {
            if (!get(r32).equals(list.get(r32))) {
                return false;
            }
        }
        return true;
    }

    public final void h() {
        if (!this.f3267a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int r12 = 1;
        for (int r22 = 0; r22 < size; r22++) {
            r12 = (r12 * 31) + get(r22).hashCode();
        }
        return r12;
    }

    @Override // com.google.android.gms.internal.clearcut.a1
    public final boolean q() {
        return this.f3267a;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        h();
        return super.remove(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection<?> collection) {
        h();
        return super.removeAll(collection);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection<?> collection) {
        h();
        return super.retainAll(collection);
    }

    @Override // com.google.android.gms.internal.clearcut.a1
    public final void s() {
        this.f3267a = false;
    }
}
