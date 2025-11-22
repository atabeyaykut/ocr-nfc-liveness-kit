package com.google.android.gms.internal.clearcut;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class r2<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f3291g = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f3292a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3295d;

    /* renamed from: e, reason: collision with root package name */
    public volatile x2 f3296e;

    /* renamed from: b, reason: collision with root package name */
    public List<v2> f3293b = Collections.emptyList();

    /* renamed from: c, reason: collision with root package name */
    public Map<K, V> f3294c = Collections.emptyMap();
    public Map<K, V> f = Collections.emptyMap();

    public r2(int r12) {
        this.f3292a = r12;
    }

    public final int a(K k10) {
        int size = this.f3293b.size() - 1;
        if (size >= 0) {
            int r12 = k10.compareTo(this.f3293b.get(size).f3327a);
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
            int r32 = k10.compareTo(this.f3293b.get(r22).f3327a);
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

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final V put(K k10, V v10) {
        g();
        int r02 = a(k10);
        if (r02 >= 0) {
            return (V) this.f3293b.get(r02).setValue(v10);
        }
        g();
        boolean zIsEmpty = this.f3293b.isEmpty();
        int r22 = this.f3292a;
        if (zIsEmpty && !(this.f3293b instanceof ArrayList)) {
            this.f3293b = new ArrayList(r22);
        }
        int r03 = -(r02 + 1);
        if (r03 >= r22) {
            return i().put(k10, v10);
        }
        if (this.f3293b.size() == r22) {
            v2 v2VarRemove = this.f3293b.remove(r22 - 1);
            i().put(v2VarRemove.f3327a, v2VarRemove.f3328b);
        }
        this.f3293b.add(r03, new v2(this, k10, v10));
        return null;
    }

    public final Map.Entry<K, V> c(int r22) {
        return this.f3293b.get(r22);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        g();
        if (!this.f3293b.isEmpty()) {
            this.f3293b.clear();
        }
        if (this.f3294c.isEmpty()) {
            return;
        }
        this.f3294c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f3294c.containsKey(comparable);
    }

    public final V d(int r6) {
        g();
        V v10 = (V) this.f3293b.remove(r6).f3328b;
        if (!this.f3294c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = i().entrySet().iterator();
            List<v2> list = this.f3293b;
            Map.Entry<K, V> next = it.next();
            list.add(new v2(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v10;
    }

    public final int e() {
        return this.f3293b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f3296e == null) {
            this.f3296e = new x2(this);
        }
        return this.f3296e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof r2)) {
            return super.equals(obj);
        }
        r2 r2Var = (r2) obj;
        int size = size();
        if (size != r2Var.size()) {
            return false;
        }
        int r22 = e();
        if (r22 != r2Var.e()) {
            return entrySet().equals(r2Var.entrySet());
        }
        for (int r42 = 0; r42 < r22; r42++) {
            if (!c(r42).equals(r2Var.c(r42))) {
                return false;
            }
        }
        if (r22 != size) {
            return this.f3294c.equals(r2Var.f3294c);
        }
        return true;
    }

    public final Iterable<Map.Entry<K, V>> f() {
        return this.f3294c.isEmpty() ? a0.b.f8e : this.f3294c.entrySet();
    }

    public final void g() {
        if (this.f3295d) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int r02 = a(comparable);
        return r02 >= 0 ? (V) this.f3293b.get(r02).f3328b : this.f3294c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int r02 = e();
        int r22 = 0;
        for (int r12 = 0; r12 < r02; r12++) {
            r22 += this.f3293b.get(r12).hashCode();
        }
        return this.f3294c.size() > 0 ? r22 + this.f3294c.hashCode() : r22;
    }

    public final SortedMap<K, V> i() {
        g();
        if (this.f3294c.isEmpty() && !(this.f3294c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f3294c = treeMap;
            this.f = treeMap.descendingMap();
        }
        return (SortedMap) this.f3294c;
    }

    public void j() {
        if (this.f3295d) {
            return;
        }
        this.f3294c = this.f3294c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3294c);
        this.f = this.f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f);
        this.f3295d = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        g();
        Comparable comparable = (Comparable) obj;
        int r02 = a(comparable);
        if (r02 >= 0) {
            return d(r02);
        }
        if (this.f3294c.isEmpty()) {
            return null;
        }
        return this.f3294c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f3294c.size() + this.f3293b.size();
    }
}
