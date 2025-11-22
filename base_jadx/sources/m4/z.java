package m4;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class z extends d0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f10032a;

    /* renamed from: b, reason: collision with root package name */
    public int f10033b;

    /* renamed from: c, reason: collision with root package name */
    public final b0 f10034c;

    public z(b0 b0Var, int r32) {
        int size = b0Var.size();
        b8.f.K0(r32, size);
        this.f10032a = size;
        this.f10033b = r32;
        this.f10034c = b0Var;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        return this.f10033b < this.f10032a;
    }

    @Override // java.util.ListIterator
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final boolean hasPrevious() {
        return this.f10033b > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f10033b;
        this.f10033b = r02 + 1;
        return this.f10034c.get(r02);
    }

    @Override // java.util.ListIterator
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f10033b - 1;
        this.f10033b = r02;
        return this.f10034c.get(r02);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f10033b;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f10033b - 1;
    }
}
