package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class t8 extends AbstractList<String> implements RandomAccess, d7 {

    /* renamed from: a, reason: collision with root package name */
    public final d7 f3778a;

    public t8(d7 d7Var) {
        this.f3778a = d7Var;
    }

    @Override // com.google.android.gms.internal.measurement.d7
    public final Object J(int r22) {
        return this.f3778a.J(r22);
    }

    @Override // com.google.android.gms.internal.measurement.d7
    public final d7 e() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int r22) {
        return ((c7) this.f3778a).get(r22);
    }

    @Override // com.google.android.gms.internal.measurement.d7
    public final List<?> i() {
        return this.f3778a.i();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new s8(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int r22) {
        return new r8(this, r22);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f3778a.size();
    }

    @Override // com.google.android.gms.internal.measurement.d7
    public final void t(v5 v5Var) {
        throw new UnsupportedOperationException();
    }
}
