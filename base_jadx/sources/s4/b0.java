package s4;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class b0<E> extends u0<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final int f14904a;

    /* renamed from: b, reason: collision with root package name */
    public int f14905b;

    /* renamed from: c, reason: collision with root package name */
    public final d0<E> f14906c;

    public b0(d0<E> d0Var, int r32) {
        int size = d0Var.size();
        b.c(r32, size);
        this.f14904a = size;
        this.f14905b = r32;
        this.f14906c = d0Var;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        return this.f14905b < this.f14904a;
    }

    @Override // java.util.ListIterator
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final boolean hasPrevious() {
        return this.f14905b > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f14905b;
        this.f14905b = r02 + 1;
        return this.f14906c.get(r02);
    }

    @Override // java.util.ListIterator
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f14905b - 1;
        this.f14905b = r02;
        return this.f14906c.get(r02);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f14905b;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f14905b - 1;
    }
}
