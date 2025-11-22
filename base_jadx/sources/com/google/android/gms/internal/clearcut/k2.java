package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class k2<E> extends q<E> {

    /* renamed from: c, reason: collision with root package name */
    public static final k2<Object> f3170c;

    /* renamed from: b, reason: collision with root package name */
    public final List<E> f3171b;

    static {
        k2<Object> k2Var = new k2<>(new ArrayList(10));
        f3170c = k2Var;
        k2Var.f3267a = false;
    }

    public k2(ArrayList arrayList) {
        this.f3171b = arrayList;
    }

    @Override // com.google.android.gms.internal.clearcut.a1
    public final /* synthetic */ a1 W(int r22) {
        if (r22 < size()) {
            throw new IllegalArgumentException();
        }
        ArrayList arrayList = new ArrayList(r22);
        arrayList.addAll(this.f3171b);
        return new k2(arrayList);
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int r22, E e10) {
        h();
        this.f3171b.add(r22, e10);
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int r22) {
        return this.f3171b.get(r22);
    }

    @Override // java.util.AbstractList, java.util.List
    public final E remove(int r22) {
        h();
        E eRemove = this.f3171b.remove(r22);
        ((AbstractList) this).modCount++;
        return eRemove;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E set(int r22, E e10) {
        h();
        E e11 = this.f3171b.set(r22, e10);
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3171b.size();
    }
}
