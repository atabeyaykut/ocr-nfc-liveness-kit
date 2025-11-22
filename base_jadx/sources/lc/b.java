package lc;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class b<T> implements h<T>, c<T> {

    /* renamed from: a, reason: collision with root package name */
    public final h<T> f9705a;

    /* renamed from: b, reason: collision with root package name */
    public final int f9706b;

    public static final class a implements Iterator<T>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator<T> f9707a;

        /* renamed from: b, reason: collision with root package name */
        public int f9708b;

        public a(b<T> bVar) {
            this.f9707a = bVar.f9705a.iterator();
            this.f9708b = bVar.f9706b;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            Iterator<T> it;
            while (true) {
                int r02 = this.f9708b;
                it = this.f9707a;
                if (r02 <= 0 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.f9708b--;
            }
            return it.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            Iterator<T> it;
            while (true) {
                int r02 = this.f9708b;
                it = this.f9707a;
                if (r02 <= 0 || !it.hasNext()) {
                    break;
                }
                it.next();
                this.f9708b--;
            }
            return it.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public b(h<? extends T> sequence, int r32) {
        kotlin.jvm.internal.h.f(sequence, "sequence");
        this.f9705a = sequence;
        this.f9706b = r32;
        if (r32 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + r32 + '.').toString());
    }

    @Override // lc.c
    public final h<T> a(int r32) {
        int r02 = this.f9706b + r32;
        return r02 < 0 ? new b(this, r32) : new b(this.f9705a, r02);
    }

    @Override // lc.h
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
