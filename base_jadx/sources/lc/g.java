package lc;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class g<T> implements h<T> {

    /* renamed from: a, reason: collision with root package name */
    public final x9.a<T> f9723a;

    /* renamed from: b, reason: collision with root package name */
    public final x9.l<T, T> f9724b;

    public static final class a implements Iterator<T>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public T f9725a;

        /* renamed from: b, reason: collision with root package name */
        public int f9726b = -2;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ g<T> f9727c;

        public a(g<T> gVar) {
            this.f9727c = gVar;
        }

        public final void a() {
            T tInvoke;
            int r02 = this.f9726b;
            g<T> gVar = this.f9727c;
            if (r02 == -2) {
                tInvoke = gVar.f9723a.invoke();
            } else {
                x9.l<T, T> lVar = gVar.f9724b;
                T t10 = this.f9725a;
                kotlin.jvm.internal.h.c(t10);
                tInvoke = lVar.invoke(t10);
            }
            this.f9725a = tInvoke;
            this.f9726b = tInvoke == null ? 0 : 1;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f9726b < 0) {
                a();
            }
            return this.f9726b == 1;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f9726b < 0) {
                a();
            }
            if (this.f9726b == 0) {
                throw new NoSuchElementException();
            }
            T t10 = this.f9725a;
            kotlin.jvm.internal.h.d(t10, "null cannot be cast to non-null type T of kotlin.sequences.GeneratorSequence");
            this.f9726b = -1;
            return t10;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(x9.a<? extends T> aVar, x9.l<? super T, ? extends T> getNextValue) {
        kotlin.jvm.internal.h.f(getNextValue, "getNextValue");
        this.f9723a = aVar;
        this.f9724b = getNextValue;
    }

    @Override // lc.h
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
