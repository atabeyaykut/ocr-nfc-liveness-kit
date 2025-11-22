package com.google.android.gms.internal.clearcut;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class e3 implements ListIterator<String> {

    /* renamed from: a, reason: collision with root package name */
    public final ListIterator<String> f3111a;

    public e3(d3 d3Var, int r22) {
        this.f3111a = d3Var.f3082a.listIterator(r22);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f3111a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f3111a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f3111a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f3111a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f3111a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f3111a.previousIndex();
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
