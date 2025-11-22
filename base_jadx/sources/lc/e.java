package lc;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* loaded from: classes2.dex */
public final class e<T> implements h<T> {

    /* renamed from: a, reason: collision with root package name */
    public final h<T> f9710a;

    /* renamed from: b, reason: collision with root package name */
    public final boolean f9711b;

    /* renamed from: c, reason: collision with root package name */
    public final x9.l<T, Boolean> f9712c;

    public static final class a implements Iterator<T>, y9.a {

        /* renamed from: a, reason: collision with root package name */
        public final Iterator<T> f9713a;

        /* renamed from: b, reason: collision with root package name */
        public int f9714b = -1;

        /* renamed from: c, reason: collision with root package name */
        public T f9715c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ e<T> f9716d;

        public a(e<T> eVar) {
            this.f9716d = eVar;
            this.f9713a = eVar.f9710a.iterator();
        }

        public final void a() {
            int r02;
            while (true) {
                Iterator<T> it = this.f9713a;
                if (!it.hasNext()) {
                    r02 = 0;
                    break;
                }
                T next = it.next();
                e<T> eVar = this.f9716d;
                if (eVar.f9712c.invoke(next).booleanValue() == eVar.f9711b) {
                    this.f9715c = next;
                    r02 = 1;
                    break;
                }
            }
            this.f9714b = r02;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.f9714b == -1) {
                a();
            }
            return this.f9714b == 1;
        }

        @Override // java.util.Iterator
        public final T next() {
            if (this.f9714b == -1) {
                a();
            }
            if (this.f9714b == 0) {
                throw new NoSuchElementException();
            }
            T t10 = this.f9715c;
            this.f9715c = null;
            this.f9714b = -1;
            return t10;
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(h<? extends T> hVar, boolean z10, x9.l<? super T, Boolean> predicate) {
        kotlin.jvm.internal.h.f(predicate, "predicate");
        this.f9710a = hVar;
        this.f9711b = z10;
        this.f9712c = predicate;
    }

    @Override // lc.h
    public final Iterator<T> iterator() {
        return new a(this);
    }
}
