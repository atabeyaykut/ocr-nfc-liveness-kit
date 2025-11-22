package n9;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import kotlin.jvm.internal.h;
import n9.b;

/* loaded from: classes2.dex */
public final class e<V> extends AbstractCollection<Object> implements Collection<Object>, y9.b {

    /* renamed from: a, reason: collision with root package name */
    public final b<?, V> f10631a;

    public e(b<?, V> backing) {
        h.f(backing, "backing");
        this.f10631a = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f10631a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        return this.f10631a.containsValue(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        return this.f10631a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator<V> iterator() {
        b<?, V> bVar = this.f10631a;
        bVar.getClass();
        return new b.f(bVar);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        int r22;
        b<?, V> bVar = this.f10631a;
        bVar.b();
        int r12 = bVar.f;
        while (true) {
            r22 = -1;
            r12--;
            if (r12 < 0) {
                break;
            }
            if (bVar.f10615c[r12] >= 0) {
                V[] vArr = bVar.f10614b;
                h.c(vArr);
                if (h.a(vArr[r12], obj)) {
                    r22 = r12;
                    break;
                }
            }
        }
        if (r22 < 0) {
            return false;
        }
        bVar.j(r22);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        this.f10631a.b();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        this.f10631a.b();
        return super.retainAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f10631a.f10619h;
    }
}
