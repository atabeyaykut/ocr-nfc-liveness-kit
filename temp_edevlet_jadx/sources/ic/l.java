package ic;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class l extends c {

    /* renamed from: a, reason: collision with root package name */
    public static final l f7374a = new l();

    public static final class a implements Iterator, y9.a {
        @Override // java.util.Iterator
        public final boolean hasNext() {
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    @Override // ic.c
    public final /* bridge */ /* synthetic */ Object get(int r12) {
        return null;
    }

    @Override // ic.c, java.lang.Iterable
    public final Iterator iterator() {
        return new a();
    }

    @Override // ic.c
    public final int l() {
        return 0;
    }

    @Override // ic.c
    public final void m(int r12, Object obj) {
        throw new IllegalStateException();
    }
}
