package lc;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class f<T, R, E> implements h<E> {

    /* renamed from: a, reason: collision with root package name */
    public final h<T> f9717a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<T, R> f9718b;

    /* renamed from: c, reason: collision with root package name */
    public final x9.l<R, Iterator<E>> f9719c;

    public static final class a implements Iterator<E>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator<T> f9720a;

        /* renamed from: b, reason: collision with root package name */
        public Iterator<? extends E> f9721b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ f<T, R, E> f9722c;

        public a(f<T, R, E> fVar) {
            this.f9722c = fVar;
            this.f9720a = fVar.f9717a.iterator();
        }

        /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
        
            return true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean a() {
            /*
                r5 = this;
                java.util.Iterator<? extends E> r0 = r5.f9721b
                r1 = 1
                r2 = 0
                if (r0 == 0) goto Le
                boolean r0 = r0.hasNext()
                if (r0 != 0) goto Le
                r0 = 1
                goto Lf
            Le:
                r0 = 0
            Lf:
                if (r0 == 0) goto L14
                r0 = 0
                r5.f9721b = r0
            L14:
                java.util.Iterator<? extends E> r0 = r5.f9721b
                if (r0 != 0) goto L3d
                java.util.Iterator<T> r0 = r5.f9720a
                boolean r3 = r0.hasNext()
                if (r3 != 0) goto L21
                return r2
            L21:
                java.lang.Object r0 = r0.next()
                lc.f<T, R, E> r3 = r5.f9722c
                x9.l<R, java.util.Iterator<E>> r4 = r3.f9719c
                x9.l<T, R> r3 = r3.f9718b
                java.lang.Object r0 = r3.invoke(r0)
                java.lang.Object r0 = r4.invoke(r0)
                java.util.Iterator r0 = (java.util.Iterator) r0
                boolean r3 = r0.hasNext()
                if (r3 == 0) goto L14
                r5.f9721b = r0
            L3d:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: lc.f.a.a():boolean");
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return a();
        }

        @Override // java.util.Iterator
        public final E next() {
            if (!a()) {
                throw new NoSuchElementException();
            }
            Iterator<? extends E> it = this.f9721b;
            kotlin.jvm.internal.h.c(it);
            return it.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public f(h<? extends T> sequence, x9.l<? super T, ? extends R> transformer, x9.l<? super R, ? extends Iterator<? extends E>> iterator) {
        kotlin.jvm.internal.h.f(sequence, "sequence");
        kotlin.jvm.internal.h.f(transformer, "transformer");
        kotlin.jvm.internal.h.f(iterator, "iterator");
        this.f9717a = sequence;
        this.f9718b = transformer;
        this.f9719c = iterator;
    }

    @Override // lc.h
    public final Iterator<E> iterator() {
        return new a(this);
    }
}
