package com.google.android.gms.internal.clearcut;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class d3 extends AbstractList<String> implements j1, RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final j1 f3082a;

    public d3(j1 j1Var) {
        this.f3082a = j1Var;
    }

    @Override // com.google.android.gms.internal.clearcut.j1
    public final List<?> g() {
        return this.f3082a.g();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r22) {
        return (String) this.f3082a.get(r22);
    }

    @Override // com.google.android.gms.internal.clearcut.j1
    public final j1 i0() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new f3(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int r22) {
        return new e3(this, r22);
    }

    @Override // com.google.android.gms.internal.clearcut.j1
    public final Object r(int r22) {
        return this.f3082a.r(r22);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3082a.size();
    }
}
