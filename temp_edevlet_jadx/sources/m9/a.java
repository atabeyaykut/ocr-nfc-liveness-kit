package m9;

import java.util.Collection;
import java.util.Iterator;

/* loaded from: classes2.dex */
public abstract class a<E> implements Collection<E>, y9.a {

    /* renamed from: m9.a$a, reason: collision with other inner class name */
    public static final class C0185a extends kotlin.jvm.internal.j implements x9.l<E, CharSequence> {

        /* renamed from: a, reason: collision with root package name */
        public final /* synthetic */ a<E> f10147a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C0185a(a<? extends E> aVar) {
            super(1);
            this.f10147a = aVar;
        }

        @Override // x9.l
        public final CharSequence invoke(Object obj) {
            return obj == this.f10147a ? "(this Collection)" : String.valueOf(obj);
        }
    }

    @Override // java.util.Collection
    public final boolean add(E e10) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean addAll(Collection<? extends E> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection, java.util.List
    public boolean contains(E e10) {
        if (isEmpty()) {
            return false;
        }
        Iterator<E> it = iterator();
        while (it.hasNext()) {
            if (kotlin.jvm.internal.h.a(it.next(), e10)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Collection
    public final boolean containsAll(Collection<? extends Object> elements) {
        kotlin.jvm.internal.h.f(elements, "elements");
        Collection<? extends Object> collection = elements;
        if (collection.isEmpty()) {
            return true;
        }
        Iterator<T> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return l() == 0;
    }

    public abstract int l();

    @Override // java.util.Collection
    public final boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return l();
    }

    @Override // java.util.Collection
    public final Object[] toArray() {
        return a6.a.E(this);
    }

    @Override // java.util.Collection
    public final <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.h.f(array, "array");
        return (T[]) a6.a.F(this, array);
    }

    public final String toString() {
        return t.g1(this, ", ", "[", "]", new C0185a(this), 24);
    }
}
