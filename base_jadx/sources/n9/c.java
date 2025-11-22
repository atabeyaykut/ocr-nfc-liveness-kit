package n9;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import kotlin.jvm.internal.h;
import n9.b;

/* loaded from: classes2.dex */
public final class c<K, V> extends m9.e<Map.Entry<Object, Object>> {

    /* renamed from: a, reason: collision with root package name */
    public final b<K, V> f10629a;

    public c(b<K, V> backing) {
        h.f(backing, "backing");
        this.f10629a = backing;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        Map.Entry element = (Map.Entry) obj;
        h.f(element, "element");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean addAll(Collection<? extends Map.Entry<K, V>> elements) {
        h.f(elements, "elements");
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        this.f10629a.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean containsAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        return this.f10629a.c(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f10629a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator<Map.Entry<K, V>> iterator() {
        b<K, V> bVar = this.f10629a;
        bVar.getClass();
        return new b.C0200b(bVar);
    }

    @Override // m9.e
    public final int l() {
        return this.f10629a.f10619h;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public final boolean contains(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry<? extends K, ? extends V> element = (Map.Entry) obj;
        h.f(element, "element");
        return this.f10629a.d(element);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public final boolean remove(Object obj) {
        if (!(obj instanceof Map.Entry)) {
            return false;
        }
        Map.Entry element = (Map.Entry) obj;
        h.f(element, "element");
        b<K, V> bVar = this.f10629a;
        bVar.getClass();
        bVar.b();
        int r22 = bVar.f(element.getKey());
        if (r22 < 0) {
            return false;
        }
        V[] vArr = bVar.f10614b;
        h.c(vArr);
        if (!h.a(vArr[r22], element.getValue())) {
            return false;
        }
        bVar.j(r22);
        return true;
    }

    @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean removeAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        this.f10629a.b();
        return super.removeAll(elements);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final boolean retainAll(Collection<? extends Object> elements) {
        h.f(elements, "elements");
        this.f10629a.b();
        return super.retainAll(elements);
    }
}
