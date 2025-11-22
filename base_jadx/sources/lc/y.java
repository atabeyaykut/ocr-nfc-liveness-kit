package lc;

import java.util.Iterator;

/* loaded from: classes2.dex */
public final class y<T, R> implements h<R> {

    /* renamed from: a, reason: collision with root package name */
    public final h<T> f9748a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<T, R> f9749b;

    public static final class a implements Iterator<R>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator<T> f9750a;

        /* renamed from: b, reason: collision with root package name */
        public final /* synthetic */ y<T, R> f9751b;

        public a(y<T, R> yVar) {
            this.f9751b = yVar;
            this.f9750a = yVar.f9748a.iterator();
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f9750a.hasNext();
        }

        @Override // java.util.Iterator
        public final R next() {
            return (R) this.f9751b.f9749b.invoke(this.f9750a.next());
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public y(h<? extends T> hVar, x9.l<? super T, ? extends R> transformer) {
        kotlin.jvm.internal.h.f(transformer, "transformer");
        this.f9748a = hVar;
        this.f9749b = transformer;
    }

    @Override // lc.h
    public final Iterator<R> iterator() {
        return new a(this);
    }
}
