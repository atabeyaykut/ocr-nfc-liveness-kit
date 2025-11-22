package l7;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;

/* loaded from: classes2.dex */
public final class i<K, V> extends AbstractMap<K, V> implements Serializable {

    /* renamed from: h, reason: collision with root package name */
    public static final a f9422h = new a();

    /* renamed from: a, reason: collision with root package name */
    public final Comparator<? super K> f9423a;

    /* renamed from: b, reason: collision with root package name */
    public e<K, V> f9424b;

    /* renamed from: c, reason: collision with root package name */
    public int f9425c;

    /* renamed from: d, reason: collision with root package name */
    public int f9426d;

    /* renamed from: e, reason: collision with root package name */
    public final e<K, V> f9427e;
    public i<K, V>.b f;

    /* renamed from: g, reason: collision with root package name */
    public i<K, V>.c f9428g;

    public static class a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    public class b extends AbstractSet<Map.Entry<K, V>> {

        public class a extends i<K, V>.d<Map.Entry<K, V>> {
            public a(b bVar) {
                super();
            }

            @Override // java.util.Iterator
            public final Object next() {
                return a();
            }
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            i.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return (obj instanceof Map.Entry) && i.this.b((Map.Entry) obj) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            i iVar;
            e<K, V> eVarB;
            if (!(obj instanceof Map.Entry) || (eVarB = (iVar = i.this).b((Map.Entry) obj)) == null) {
                return false;
            }
            iVar.d(eVarB, true);
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return i.this.f9425c;
        }
    }

    public final class c extends AbstractSet<K> {

        public class a extends i<K, V>.d<K> {
            public a(c cVar) {
                super();
            }

            @Override // java.util.Iterator
            public final K next() {
                return a().f;
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            i.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return i.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new a(this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            e<K, V> eVarA;
            i iVar = i.this;
            iVar.getClass();
            if (obj != null) {
                try {
                    eVarA = iVar.a(obj, false);
                } catch (ClassCastException unused) {
                }
            } else {
                eVarA = null;
            }
            if (eVarA != null) {
                iVar.d(eVarA, true);
            }
            return eVarA != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return i.this.f9425c;
        }
    }

    public abstract class d<T> implements Iterator<T> {

        /* renamed from: a, reason: collision with root package name */
        public e<K, V> f9431a;

        /* renamed from: b, reason: collision with root package name */
        public e<K, V> f9432b = null;

        /* renamed from: c, reason: collision with root package name */
        public int f9433c;

        public d() {
            this.f9431a = i.this.f9427e.f9438d;
            this.f9433c = i.this.f9426d;
        }

        public final e<K, V> a() {
            e<K, V> eVar = this.f9431a;
            i iVar = i.this;
            if (eVar == iVar.f9427e) {
                throw new NoSuchElementException();
            }
            if (iVar.f9426d != this.f9433c) {
                throw new ConcurrentModificationException();
            }
            this.f9431a = eVar.f9438d;
            this.f9432b = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.f9431a != i.this.f9427e;
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.f9432b;
            if (eVar == null) {
                throw new IllegalStateException();
            }
            i iVar = i.this;
            iVar.d(eVar, true);
            this.f9432b = null;
            this.f9433c = iVar.f9426d;
        }
    }

    public static final class e<K, V> implements Map.Entry<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public e<K, V> f9435a;

        /* renamed from: b, reason: collision with root package name */
        public e<K, V> f9436b;

        /* renamed from: c, reason: collision with root package name */
        public e<K, V> f9437c;

        /* renamed from: d, reason: collision with root package name */
        public e<K, V> f9438d;

        /* renamed from: e, reason: collision with root package name */
        public e<K, V> f9439e;
        public final K f;

        /* renamed from: g, reason: collision with root package name */
        public V f9440g;

        /* renamed from: h, reason: collision with root package name */
        public int f9441h;

        public e() {
            this.f = null;
            this.f9439e = this;
            this.f9438d = this;
        }

        public e(e<K, V> eVar, K k10, e<K, V> eVar2, e<K, V> eVar3) {
            this.f9435a = eVar;
            this.f = k10;
            this.f9441h = 1;
            this.f9438d = eVar2;
            this.f9439e = eVar3;
            eVar3.f9438d = this;
            eVar2.f9439e = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            K k10 = this.f;
            if (k10 == null) {
                if (entry.getKey() != null) {
                    return false;
                }
            } else if (!k10.equals(entry.getKey())) {
                return false;
            }
            V v10 = this.f9440g;
            Object value = entry.getValue();
            if (v10 == null) {
                if (value != null) {
                    return false;
                }
            } else if (!v10.equals(value)) {
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.f;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.f9440g;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k10 = this.f;
            int r12 = k10 == null ? 0 : k10.hashCode();
            V v10 = this.f9440g;
            return (v10 != null ? v10.hashCode() : 0) ^ r12;
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v10) {
            V v11 = this.f9440g;
            this.f9440g = v10;
            return v11;
        }

        public final String toString() {
            return this.f + "=" + this.f9440g;
        }
    }

    public i() {
        a aVar = f9422h;
        this.f9425c = 0;
        this.f9426d = 0;
        this.f9427e = new e<>();
        this.f9423a = aVar;
    }

    public final e<K, V> a(K k10, boolean z10) {
        int r52;
        e<K, V> eVar;
        e<K, V> eVar2 = this.f9424b;
        a aVar = f9422h;
        Comparator<? super K> comparator = this.f9423a;
        if (eVar2 != null) {
            Comparable comparable = comparator == aVar ? (Comparable) k10 : null;
            while (true) {
                K k11 = eVar2.f;
                r52 = comparable != null ? comparable.compareTo(k11) : comparator.compare(k10, k11);
                if (r52 == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = r52 < 0 ? eVar2.f9436b : eVar2.f9437c;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            r52 = 0;
        }
        if (!z10) {
            return null;
        }
        e<K, V> eVar4 = this.f9427e;
        if (eVar2 != null) {
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f9439e);
            if (r52 < 0) {
                eVar2.f9436b = eVar;
            } else {
                eVar2.f9437c = eVar;
            }
            c(eVar2, true);
        } else {
            if (comparator == aVar && !(k10 instanceof Comparable)) {
                throw new ClassCastException(k10.getClass().getName().concat(" is not Comparable"));
            }
            eVar = new e<>(eVar2, k10, eVar4, eVar4.f9439e);
            this.f9424b = eVar;
        }
        this.f9425c++;
        this.f9426d++;
        return eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final e<K, V> b(Map.Entry<?, ?> entry) {
        e<K, V> eVarA;
        Object key = entry.getKey();
        boolean z10 = false;
        if (key != null) {
            try {
                eVarA = a(key, false);
            } catch (ClassCastException unused) {
            }
        } else {
            eVarA = null;
        }
        if (eVarA != null) {
            V v10 = eVarA.f9440g;
            Object value = entry.getValue();
            if (v10 == value || (v10 != null && v10.equals(value))) {
                z10 = true;
            }
        }
        if (z10) {
            return eVarA;
        }
        return null;
    }

    public final void c(e<K, V> eVar, boolean z10) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.f9436b;
            e<K, V> eVar3 = eVar.f9437c;
            int r32 = eVar2 != null ? eVar2.f9441h : 0;
            int r42 = eVar3 != null ? eVar3.f9441h : 0;
            int r52 = r32 - r42;
            if (r52 == -2) {
                e<K, V> eVar4 = eVar3.f9436b;
                e<K, V> eVar5 = eVar3.f9437c;
                int r22 = (eVar4 != null ? eVar4.f9441h : 0) - (eVar5 != null ? eVar5.f9441h : 0);
                if (r22 != -1 && (r22 != 0 || z10)) {
                    g(eVar3);
                }
                f(eVar);
                if (z10) {
                    return;
                }
            } else if (r52 == 2) {
                e<K, V> eVar6 = eVar2.f9436b;
                e<K, V> eVar7 = eVar2.f9437c;
                int r23 = (eVar6 != null ? eVar6.f9441h : 0) - (eVar7 != null ? eVar7.f9441h : 0);
                if (r23 != 1 && (r23 != 0 || z10)) {
                    f(eVar2);
                }
                g(eVar);
                if (z10) {
                    return;
                }
            } else if (r52 == 0) {
                eVar.f9441h = r32 + 1;
                if (z10) {
                    return;
                }
            } else {
                eVar.f9441h = Math.max(r32, r42) + 1;
                if (!z10) {
                    return;
                }
            }
            eVar = eVar.f9435a;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.f9424b = null;
        this.f9425c = 0;
        this.f9426d++;
        e<K, V> eVar = this.f9427e;
        eVar.f9439e = eVar;
        eVar.f9438d = eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        e<K, V> eVarA;
        if (obj != 0) {
            try {
                eVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            eVarA = null;
        }
        return eVarA != null;
    }

    public final void d(e<K, V> eVar, boolean z10) {
        e<K, V> eVar2;
        e<K, V> eVar3;
        int r12;
        if (z10) {
            e<K, V> eVar4 = eVar.f9439e;
            eVar4.f9438d = eVar.f9438d;
            eVar.f9438d.f9439e = eVar4;
        }
        e<K, V> eVar5 = eVar.f9436b;
        e<K, V> eVar6 = eVar.f9437c;
        e<K, V> eVar7 = eVar.f9435a;
        int r22 = 0;
        if (eVar5 == null || eVar6 == null) {
            if (eVar5 != null) {
                e(eVar, eVar5);
                eVar.f9436b = null;
            } else if (eVar6 != null) {
                e(eVar, eVar6);
                eVar.f9437c = null;
            } else {
                e(eVar, null);
            }
            c(eVar7, false);
            this.f9425c--;
            this.f9426d++;
            return;
        }
        if (eVar5.f9441h > eVar6.f9441h) {
            do {
                eVar3 = eVar5;
                eVar5 = eVar5.f9437c;
            } while (eVar5 != null);
        } else {
            do {
                eVar2 = eVar6;
                eVar6 = eVar6.f9436b;
            } while (eVar6 != null);
            eVar3 = eVar2;
        }
        d(eVar3, false);
        e<K, V> eVar8 = eVar.f9436b;
        if (eVar8 != null) {
            r12 = eVar8.f9441h;
            eVar3.f9436b = eVar8;
            eVar8.f9435a = eVar3;
            eVar.f9436b = null;
        } else {
            r12 = 0;
        }
        e<K, V> eVar9 = eVar.f9437c;
        if (eVar9 != null) {
            r22 = eVar9.f9441h;
            eVar3.f9437c = eVar9;
            eVar9.f9435a = eVar3;
            eVar.f9437c = null;
        }
        eVar3.f9441h = Math.max(r12, r22) + 1;
        e(eVar, eVar3);
    }

    public final void e(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.f9435a;
        eVar.f9435a = null;
        if (eVar2 != null) {
            eVar2.f9435a = eVar3;
        }
        if (eVar3 == null) {
            this.f9424b = eVar2;
        } else if (eVar3.f9436b == eVar) {
            eVar3.f9436b = eVar2;
        } else {
            eVar3.f9437c = eVar2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        i<K, V>.b bVar = this.f;
        if (bVar != null) {
            return bVar;
        }
        i<K, V>.b bVar2 = new b();
        this.f = bVar2;
        return bVar2;
    }

    public final void f(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f9436b;
        e<K, V> eVar3 = eVar.f9437c;
        e<K, V> eVar4 = eVar3.f9436b;
        e<K, V> eVar5 = eVar3.f9437c;
        eVar.f9437c = eVar4;
        if (eVar4 != null) {
            eVar4.f9435a = eVar;
        }
        e(eVar, eVar3);
        eVar3.f9436b = eVar;
        eVar.f9435a = eVar3;
        int r02 = Math.max(eVar2 != null ? eVar2.f9441h : 0, eVar4 != null ? eVar4.f9441h : 0) + 1;
        eVar.f9441h = r02;
        eVar3.f9441h = Math.max(r02, eVar5 != null ? eVar5.f9441h : 0) + 1;
    }

    public final void g(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.f9436b;
        e<K, V> eVar3 = eVar.f9437c;
        e<K, V> eVar4 = eVar2.f9436b;
        e<K, V> eVar5 = eVar2.f9437c;
        eVar.f9436b = eVar5;
        if (eVar5 != null) {
            eVar5.f9435a = eVar;
        }
        e(eVar, eVar2);
        eVar2.f9437c = eVar;
        eVar.f9435a = eVar2;
        int r12 = Math.max(eVar3 != null ? eVar3.f9441h : 0, eVar5 != null ? eVar5.f9441h : 0) + 1;
        eVar.f9441h = r12;
        eVar2.f9441h = Math.max(r12, eVar4 != null ? eVar4.f9441h : 0) + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        e<K, V> eVarA;
        if (obj != 0) {
            try {
                eVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            eVarA = null;
        }
        if (eVarA != null) {
            return eVarA.f9440g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        i<K, V>.c cVar = this.f9428g;
        if (cVar != null) {
            return cVar;
        }
        i<K, V>.c cVar2 = new c();
        this.f9428g = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        if (k10 == null) {
            throw new NullPointerException("key == null");
        }
        e<K, V> eVarA = a(k10, true);
        V v11 = eVarA.f9440g;
        eVarA.f9440g = v10;
        return v11;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        e<K, V> eVarA;
        if (obj != 0) {
            try {
                eVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        } else {
            eVarA = null;
        }
        if (eVarA != null) {
            d(eVarA, true);
        }
        if (eVarA != null) {
            return eVarA.f9440g;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f9425c;
    }
}
