package com.google.crypto.tink.shaded.protobuf;

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
public class h1<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f4271g = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f4272a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f4275d;

    /* renamed from: e, reason: collision with root package name */
    public volatile h1<K, V>.d f4276e;

    /* renamed from: b, reason: collision with root package name */
    public List<h1<K, V>.b> f4273b = Collections.emptyList();

    /* renamed from: c, reason: collision with root package name */
    public Map<K, V> f4274c = Collections.emptyMap();
    public Map<K, V> f = Collections.emptyMap();

    public static class a {

        /* renamed from: a, reason: collision with root package name */
        public static final C0064a f4277a = new C0064a();

        /* renamed from: b, reason: collision with root package name */
        public static final b f4278b = new b();

        /* renamed from: com.google.crypto.tink.shaded.protobuf.h1$a$a, reason: collision with other inner class name */
        public class C0064a implements Iterator<Object> {
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

        public class b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public final Iterator<Object> iterator() {
                return a.f4277a;
            }
        }
    }

    public class b implements Map.Entry<K, V>, Comparable<h1<K, V>.b> {

        /* renamed from: a, reason: collision with root package name */
        public final K f4279a;

        /* renamed from: b, reason: collision with root package name */
        public V f4280b;

        public b() {
            throw null;
        }

        public b(K k10, V v10) {
            this.f4279a = k10;
            this.f4280b = v10;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.f4279a.compareTo(((b) obj).f4279a);
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
            K k10 = this.f4279a;
            if (k10 == null ? key == null : k10.equals(key)) {
                V v10 = this.f4280b;
                Object value = entry.getValue();
                if (v10 == null ? value == null : v10.equals(value)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.f4279a;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f4280b;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k10 = this.f4279a;
            int r12 = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f4280b;
            return (v10 != null ? v10.hashCode() : 0) ^ r12;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            int r02 = h1.f4271g;
            h1.this.b();
            V v11 = this.f4280b;
            this.f4280b = v10;
            return v11;
        }

        public final String toString() {
            return this.f4279a + "=" + this.f4280b;
        }
    }

    public class c implements Iterator<Map.Entry<K, V>> {

        /* renamed from: a, reason: collision with root package name */
        public int f4282a = -1;

        /* renamed from: b, reason: collision with root package name */
        public boolean f4283b;

        /* renamed from: c, reason: collision with root package name */
        public Iterator<Map.Entry<K, V>> f4284c;

        public c() {
        }

        public final Iterator<Map.Entry<K, V>> a() {
            if (this.f4284c == null) {
                this.f4284c = h1.this.f4274c.entrySet().iterator();
            }
            return this.f4284c;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int r02 = this.f4282a + 1;
            h1 h1Var = h1.this;
            if (r02 >= h1Var.f4273b.size()) {
                return !h1Var.f4274c.isEmpty() && a().hasNext();
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.f4283b = true;
            int r12 = this.f4282a + 1;
            this.f4282a = r12;
            h1 h1Var = h1.this;
            return r12 < h1Var.f4273b.size() ? h1Var.f4273b.get(this.f4282a) : a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.f4283b) {
                throw new IllegalStateException("remove() was called before next()");
            }
            this.f4283b = false;
            int r02 = h1.f4271g;
            h1 h1Var = h1.this;
            h1Var.b();
            if (this.f4282a >= h1Var.f4273b.size()) {
                a().remove();
                return;
            }
            int r12 = this.f4282a;
            this.f4282a = r12 - 1;
            h1Var.j(r12);
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
            h1.this.put((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            h1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = h1.this.get(entry.getKey());
            Object value = entry.getValue();
            return obj2 == value || (obj2 != null && obj2.equals(value));
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            h1.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return h1.this.size();
        }
    }

    public h1(int r12) {
        this.f4272a = r12;
    }

    public final int a(K k10) {
        int size = this.f4273b.size() - 1;
        if (size >= 0) {
            int r12 = k10.compareTo(this.f4273b.get(size).f4279a);
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
            int r32 = k10.compareTo(this.f4273b.get(r22).f4279a);
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
        if (this.f4275d) {
            throw new UnsupportedOperationException();
        }
    }

    public final Map.Entry<K, V> c(int r22) {
        return this.f4273b.get(r22);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.f4273b.isEmpty()) {
            this.f4273b.clear();
        }
        if (this.f4274c.isEmpty()) {
            return;
        }
        this.f4274c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f4274c.containsKey(comparable);
    }

    public final int d() {
        return this.f4273b.size();
    }

    public final Iterable<Map.Entry<K, V>> e() {
        return this.f4274c.isEmpty() ? a.f4278b : this.f4274c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f4276e == null) {
            this.f4276e = new d();
        }
        return this.f4276e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h1)) {
            return super.equals(obj);
        }
        h1 h1Var = (h1) obj;
        int size = size();
        if (size != h1Var.size()) {
            return false;
        }
        int r22 = d();
        if (r22 != h1Var.d()) {
            return entrySet().equals(h1Var.entrySet());
        }
        for (int r42 = 0; r42 < r22; r42++) {
            if (!c(r42).equals(h1Var.c(r42))) {
                return false;
            }
        }
        if (r22 != size) {
            return this.f4274c.equals(h1Var.f4274c);
        }
        return true;
    }

    public final SortedMap<K, V> f() {
        b();
        if (this.f4274c.isEmpty() && !(this.f4274c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f4274c = treeMap;
            this.f = treeMap.descendingMap();
        }
        return (SortedMap) this.f4274c;
    }

    public void g() {
        if (this.f4275d) {
            return;
        }
        this.f4274c = this.f4274c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f4274c);
        this.f = this.f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f);
        this.f4275d = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int r02 = a(comparable);
        return r02 >= 0 ? this.f4273b.get(r02).f4280b : this.f4274c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int r02 = d();
        int r22 = 0;
        for (int r12 = 0; r12 < r02; r12++) {
            r22 += this.f4273b.get(r12).hashCode();
        }
        return this.f4274c.size() > 0 ? r22 + this.f4274c.hashCode() : r22;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public final V put(K k10, V v10) {
        b();
        int r02 = a(k10);
        if (r02 >= 0) {
            return this.f4273b.get(r02).setValue(v10);
        }
        b();
        boolean zIsEmpty = this.f4273b.isEmpty();
        int r22 = this.f4272a;
        if (zIsEmpty && !(this.f4273b instanceof ArrayList)) {
            this.f4273b = new ArrayList(r22);
        }
        int r03 = -(r02 + 1);
        if (r03 >= r22) {
            return f().put(k10, v10);
        }
        if (this.f4273b.size() == r22) {
            h1<K, V>.b bVarRemove = this.f4273b.remove(r22 - 1);
            f().put(bVarRemove.f4279a, bVarRemove.f4280b);
        }
        this.f4273b.add(r03, new b(k10, v10));
        return null;
    }

    public final V j(int r6) {
        b();
        V v10 = this.f4273b.remove(r6).f4280b;
        if (!this.f4274c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = f().entrySet().iterator();
            List<h1<K, V>.b> list = this.f4273b;
            Map.Entry<K, V> next = it.next();
            list.add(new b(next.getKey(), next.getValue()));
            it.remove();
        }
        return v10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int r02 = a(comparable);
        if (r02 >= 0) {
            return j(r02);
        }
        if (this.f4274c.isEmpty()) {
            return null;
        }
        return this.f4274c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f4274c.size() + this.f4273b.size();
    }
}
