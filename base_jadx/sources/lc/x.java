package lc;

import java.util.Iterator;
import java.util.NoSuchElementException;
import ma.x0;

/* loaded from: classes2.dex */
public final class x<T> implements h<T> {

    /* renamed from: a, reason: collision with root package name */
    public final h<T> f9742a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<T, Boolean> f9743b;

    public static final class a implements Iterator<T>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator<T> f9744a;

        /* renamed from: b, reason: collision with root package name */
        public int f9745b = -1;

        /* renamed from: c, reason: collision with root package name */
        public T f9746c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ x<T> f9747d;

        public a(x<T> xVar) {
            this.f9747d = xVar;
            this.f9744a = xVar.f9742a.iterator();
        }

        public final void a() {
            Iterator<T> it = this.f9744a;
            if (it.hasNext()) {
                T next = it.next();
                if (this.f9747d.f9743b.invoke(next).booleanValue()) {
                    this.f9745b = 1;
                    this.f9746c = next;
                    return;
                }
            }
            this.f9745b = 0;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f9745b == -1) {
                a();
            }
            return this.f9745b == 1;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f9745b == -1) {
                a();
            }
            if (this.f9745b == 0) {
                throw new NoSuchElementException();
            }
            T t10 = this.f9746c;
            this.f9746c = null;
            this.f9745b = -1;
            return t10;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    public x(h hVar, x0.a aVar) {
        this.f9742a = hVar;
        this.f9743b = aVar;
    }

    @Override // lc.h
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
