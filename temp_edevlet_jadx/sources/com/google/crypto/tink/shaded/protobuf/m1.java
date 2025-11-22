package com.google.crypto.tink.shaded.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class m1 extends AbstractList<String> implements f0, RandomAccess {

    /* renamed from: a, reason: collision with root package name */
    public final f0 f4321a;

    public class a implements ListIterator<String> {

        /* renamed from: a, reason: collision with root package name */
        public final ListIterator<String> f4322a;

        public a(m1 m1Var, int r22) {
            this.f4322a = m1Var.f4321a.listIterator(r22);
        }

        @Override // java.util.ListIterator
        public final void add(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final boolean hasNext() {
            return this.f4322a.hasNext();
        }

        @Override // java.util.ListIterator
        public final boolean hasPrevious() {
            return this.f4322a.hasPrevious();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final Object next() {
            return this.f4322a.next();
        }

        @Override // java.util.ListIterator
        public final int nextIndex() {
            return this.f4322a.nextIndex();
        }

        @Override // java.util.ListIterator
        public final String previous() {
            return this.f4322a.previous();
        }

        @Override // java.util.ListIterator
        public final int previousIndex() {
            return this.f4322a.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public final void set(String str) {
            throw new UnsupportedOperationException();
        }
    }

    public class b implements Iterator<String> {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator<String> f4323a;

        public b(m1 m1Var) {
            this.f4323a = m1Var.f4321a.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f4323a.hasNext();
        }

        @Override // java.util.Iterator
        public final String next() {
            return this.f4323a.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public m1(f0 f0Var) {
        this.f4321a = f0Var;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.f0
    public final void e0(i iVar) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int r22) {
        return (String) this.f4321a.get(r22);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new b(this);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.f0
    public final List<?> k() {
        return this.f4321a.k();
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int r22) {
        return new a(this, r22);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.f0
    public final f0 p() {
        return this;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.f0
    public final Object r(int r22) {
        return this.f4321a.r(r22);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f4321a.size();
    }
}
