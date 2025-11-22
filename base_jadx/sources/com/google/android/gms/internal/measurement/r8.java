package com.google.android.gms.internal.measurement;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class r8 implements ListIterator<String> {

    /* renamed from: a, reason: collision with root package name */
    public final ListIterator<String> f3717a;

    public r8(t8 t8Var, int r22) {
        this.f3717a = t8Var.f3778a.listIterator(r22);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f3717a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f3717a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f3717a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f3717a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f3717a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f3717a.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
