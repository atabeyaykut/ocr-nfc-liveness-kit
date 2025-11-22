package p4;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class r0<E> extends g1<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final int f12632a;

    /* renamed from: b, reason: collision with root package name */
    public int f12633b;

    /* renamed from: c, reason: collision with root package name */
    public final u0<E> f12634c;

    public r0(u0<E> u0Var, int r32) {
        int size = u0Var.size();
        b8.f.J0(r32, size);
        this.f12632a = size;
        this.f12633b = r32;
        this.f12634c = u0Var;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        return this.f12633b < this.f12632a;
    }

    @Override // java.util.ListIterator
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final boolean hasPrevious() {
        return this.f12633b > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f12633b;
        this.f12633b = r02 + 1;
        return this.f12634c.get(r02);
    }

    @Override // java.util.ListIterator
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f12633b - 1;
        this.f12633b = r02;
        return this.f12634c.get(r02);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f12633b;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f12633b - 1;
    }
}
