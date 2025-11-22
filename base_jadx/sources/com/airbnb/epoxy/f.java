package com.airbnb.epoxy;

import androidx.collection.LongSparseArray;
import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class f implements Iterable<x> {

    /* renamed from: a, reason: collision with root package name */
    public final LongSparseArray<x> f2564a = new LongSparseArray<>();

    public class a implements Iterator<x> {

        /* renamed from: a, reason: collision with root package name */
        public int f2565a = 0;

        public a() {
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f2565a < f.this.f2564a.size();
        }

        @Override // java.util.Iterator
        public final x next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            LongSparseArray<x> longSparseArray = f.this.f2564a;
            int r12 = this.f2565a;
            this.f2565a = r12 + 1;
            return longSparseArray.valueAt(r12);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator<x> iterator() {
        return new a();
    }
}
