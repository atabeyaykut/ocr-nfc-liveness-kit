package mb;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes2.dex */
public class u<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int f = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f10322a;

    /* renamed from: b, reason: collision with root package name */
    public List<u<K, V>.b> f10323b = Collections.emptyList();

    /* renamed from: c, reason: collision with root package name */
    public Map<K, V> f10324c = Collections.emptyMap();

    /* renamed from: d, reason: collision with root package name */
    public boolean f10325d;

    /* renamed from: e, reason: collision with root package name */
    public volatile u<K, V>.d f10326e;

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final C0190a f10327a = new C0190a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f10328b = new b();

        /* renamed from: mb.u$a$a, reason: collision with other inner class name */
        public static class C0190a implements Iterator<Object> {
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
                throw new UnsupportedOperationException();
            }
        }

        public static class b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public final Iterator<Object> iterator() {
                return a.f10327a;
            }
        }
    }

    public class b implements Comparable<u<K, V>.b>, Map.Entry<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final K f10329a;

        /* renamed from: b, reason: collision with root package name */
        public V f10330b;

        public b() {
            throw null;
        }

        public b(K k10, V v10) {
            this.f10329a = k10;
            this.f10330b = v10;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f10329a.compareTo(((b) obj).f10329a);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            K k10 = this.f10329a;
            if (k10 == null ? key == null : k10.equals(key)) {
                V v10 = this.f10330b;
                Object value = entry.getValue();
                if (v10 == null ? value == null : v10.equals(value)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f10329a;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f10330b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k10 = this.f10329a;
            int r12 = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f10330b;
            return (v10 != null ? v10.hashCode() : 0) ^ r12;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            int r02 = u.f;
            u.this.b();
            V v11 = this.f10330b;
            this.f10330b = v10;
            return v11;
        }

        public final String toString() {
            String strValueOf = String.valueOf(this.f10329a);
            String strValueOf2 = String.valueOf(this.f10330b);
            return android.support.v4.media.a.i(new StringBuilder(strValueOf2.length() + strValueOf.length() + 1), strValueOf, "=", strValueOf2);
        }
    }

    public class c implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public int f10332a = -1;

        /* renamed from: b, reason: collision with root package name */
        public boolean f10333b;

        /* renamed from: c, reason: collision with root package name */
        public Iterator<Map.Entry<K, V>> f10334c;

        public c() {
        }

        public final Iterator<Map.Entry<K, V>> a() {
            if (this.f10334c == null) {
                this.f10334c = u.this.f10324c.entrySet().iterator();
            }
            return this.f10334c;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f10332a + 1 < u.this.f10323b.size() || a().hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.f10333b = true;
            int r12 = this.f10332a + 1;
            this.f10332a = r12;
            u uVar = u.this;
            return r12 < uVar.f10323b.size() ? uVar.f10323b.get(this.f10332a) : a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f10333b) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f10333b = false;
            int r02 = u.f;
            u uVar = u.this;
            uVar.b();
            if (this.f10332a >= uVar.f10323b.size()) {
                a().remove();
                return;
            }
            int r12 = this.f10332a;
            this.f10332a = r12 - 1;
            uVar.f(r12);
        }
    }

    public class d extends AbstractSet<Map.Entry<K, V>> {
        public d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                return false;
            }
            u.this.e((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            u.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = u.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            u.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return u.this.size();
        }
    }

    public u(int r12) {
        this.f10322a = r12;
    }

    public final int a(K k10) {
        int size = this.f10323b.size() - 1;
        if (size >= 0) {
            int r12 = k10.compareTo(this.f10323b.get(size).f10329a);
            if (r12 > 0) {
                return -(size + 2);
            }
            if (r12 == 0) {
                return size;
            }
        }
        int r13 = 0;
        while (r13 <= size) {
            int r22 = (r13 + size) / 2;
            int r32 = k10.compareTo(this.f10323b.get(r22).f10329a);
            if (r32 < 0) {
                size = r22 - 1;
            } else {
                if (r32 <= 0) {
                    return r22;
                }
                r13 = r22 + 1;
            }
        }
        return -(r13 + 1);
    }

    public final void b() {
        if (this.f10325d) {
            throw new UnsupportedOperationException();
        }
    }

    public final Iterable<Map.Entry<K, V>> c() {
        return this.f10324c.isEmpty() ? a.f10328b : this.f10324c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.f10323b.isEmpty()) {
            this.f10323b.clear();
        }
        if (this.f10324c.isEmpty()) {
            return;
        }
        this.f10324c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f10324c.containsKey(comparable);
    }

    public final SortedMap<K, V> d() {
        b();
        if (this.f10324c.isEmpty() && !(this.f10324c instanceof TreeMap)) {
            this.f10324c = new TreeMap();
        }
        return (SortedMap) this.f10324c;
    }

    public final V e(K k10, V v10) {
        b();
        int r02 = a(k10);
        if (r02 >= 0) {
            return this.f10323b.get(r02).setValue(v10);
        }
        b();
        boolean zIsEmpty = this.f10323b.isEmpty();
        int r22 = this.f10322a;
        if (zIsEmpty && !(this.f10323b instanceof ArrayList)) {
            this.f10323b = new ArrayList(r22);
        }
        int r03 = -(r02 + 1);
        if (r03 >= r22) {
            return d().put(k10, v10);
        }
        if (this.f10323b.size() == r22) {
            u<K, V>.b bVarRemove = this.f10323b.remove(r22 - 1);
            d().put(bVarRemove.f10329a, bVarRemove.f10330b);
        }
        this.f10323b.add(r03, new b(k10, v10));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f10326e == null) {
            this.f10326e = new d();
        }
        return this.f10326e;
    }

    public final V f(int r6) {
        b();
        V v10 = this.f10323b.remove(r6).f10330b;
        if (!this.f10324c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = d().entrySet().iterator();
            List<u<K, V>.b> list = this.f10323b;
            Map.Entry<K, V> next = it.next();
            list.add(new b(next.getKey(), next.getValue()));
            it.remove();
        }
        return v10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int r02 = a(comparable);
        return r02 >= 0 ? this.f10323b.get(r02).f10330b : this.f10324c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int r02 = a(comparable);
        if (r02 >= 0) {
            return f(r02);
        }
        if (this.f10324c.isEmpty()) {
            return null;
        }
        return this.f10324c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f10324c.size() + this.f10323b.size();
    }
}
