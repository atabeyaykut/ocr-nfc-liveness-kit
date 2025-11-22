package m9;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public abstract class b<T> implements Iterator<T>, y9.a {

    /* renamed from: a, reason: collision with root package name */
    public int f10151a = 2;

    /* renamed from: b, reason: collision with root package name */
    public T f10152b;

    public abstract void a();

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int r02 = this.f10151a;
        if (!(r02 != 4)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int r03 = g.d.c(r02);
        if (r03 != 0) {
            if (r03 == 2) {
                return false;
            }
            this.f10151a = 4;
            a();
            if (this.f10151a != 1) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f10151a = 2;
        return this.f10152b;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
