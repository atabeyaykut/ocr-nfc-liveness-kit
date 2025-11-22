package o4;

import java.util.NoSuchElementException;

/* loaded from: classes.dex */
public final class c<E> extends g<Object> {

    /* renamed from: a, reason: collision with root package name */
    public final int f11207a;

    /* renamed from: b, reason: collision with root package name */
    public int f11208b;

    /* renamed from: c, reason: collision with root package name */
    public final e<E> f11209c;

    public c(e<E> eVar, int r32) {
        int size = eVar.size();
        u.b(r32, size);
        this.f11207a = size;
        this.f11208b = r32;
        this.f11209c = eVar;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final boolean hasNext() {
        return this.f11208b < this.f11207a;
    }

    @Override // java.util.ListIterator
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final boolean hasPrevious() {
        return this.f11208b > 0;
    }

    @Override // java.util.ListIterator, java.util.Iterator
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f11208b;
        this.f11208b = r02 + 1;
        return this.f11209c.get(r02);
    }

    @Override // java.util.ListIterator
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int r02 = this.f11208b - 1;
        this.f11208b = r02;
        return this.f11209c.get(r02);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f11208b;
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f11208b - 1;
    }
}
