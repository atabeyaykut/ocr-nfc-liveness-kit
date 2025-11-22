package com.google.android.gms.internal.vision;

import java.util.ListIterator;

/* loaded from: classes.dex */
public final class r3 implements ListIterator<String> {

    /* renamed from: a, reason: collision with root package name */
    public final ListIterator<String> f4070a;

    public r3(s3 s3Var, int r22) {
        this.f4070a = s3Var.f4083a.listIterator(r22);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f4070a.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f4070a.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f4070a.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f4070a.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f4070a.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f4070a.previousIndex();
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
