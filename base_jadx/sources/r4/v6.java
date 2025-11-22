package r4;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class v6<E> extends z6<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final int f14265a;

    /* renamed from: b, reason: collision with root package name */
    public int f14266b;

    /* renamed from: c, reason: collision with root package name */
    public final x6<E> f14267c;

    public v6(x6<E> x6Var, int r32) {
        int size = x6Var.size();
        c5.w.S(r32, size);
        this.f14265a = size;
        this.f14266b = r32;
        this.f14267c = x6Var;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        return this.f14266b < this.f14265a;
    }

    @Override // java.util.ListIterator
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final boolean hasPrevious() {
        return this.f14266b > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f14266b;
        this.f14266b = r02 + 1;
        return this.f14267c.get(r02);
    }

    @Override // java.util.ListIterator
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f14266b - 1;
        this.f14266b = r02;
        return this.f14267c.get(r02);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f14266b;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f14266b - 1;
    }
}
