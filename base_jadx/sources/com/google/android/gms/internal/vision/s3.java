package com.google.android.gms.internal.vision;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public final class s3 extends AbstractList<String> implements a2, RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final a2 f4083a;

    public s3(a2 a2Var) {
        this.f4083a = a2Var;
    }

    @Override // com.google.android.gms.internal.vision.a2
    public final List<?> d() {
        return this.f4083a.d();
    }

    @Override // com.google.android.gms.internal.vision.a2
    public final void d0(p0 p0Var) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.vision.a2
    public final a2 e() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int r22) {
        return (String) this.f4083a.get(r22);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new u3(this);
    }

    @Override // com.google.android.gms.internal.vision.a2
    public final Object j(int r22) {
        return this.f4083a.j(r22);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int r22) {
        return new r3(this, r22);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4083a.size();
    }
}
