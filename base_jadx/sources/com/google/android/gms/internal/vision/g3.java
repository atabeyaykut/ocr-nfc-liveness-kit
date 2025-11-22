package com.google.android.gms.internal.vision;

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
public class g3<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f3966g = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f3967a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3970d;

    /* renamed from: e, reason: collision with root package name */
    public volatile k3 f3971e;

    /* renamed from: b, reason: collision with root package name */
    public List<i3> f3968b = Collections.emptyList();

    /* renamed from: c, reason: collision with root package name */
    public Map<K, V> f3969c = Collections.emptyMap();
    public Map<K, V> f = Collections.emptyMap();

    public g3(int r12) {
        this.f3967a = r12;
    }

    public final int a(K k10) {
        int size = this.f3968b.size() - 1;
        if (size >= 0) {
            int r12 = k10.compareTo(this.f3968b.get(size).f3998a);
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
            int r32 = k10.compareTo(this.f3968b.get(r22).f3998a);
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
        i();
        int r02 = a(k10);
        if (r02 >= 0) {
            return (V) this.f3968b.get(r02).setValue(v10);
        }
        i();
        boolean zIsEmpty = this.f3968b.isEmpty();
        int r22 = this.f3967a;
        if (zIsEmpty && !(this.f3968b instanceof ArrayList)) {
            this.f3968b = new ArrayList(r22);
        }
        int r03 = -(r02 + 1);
        if (r03 >= r22) {
            return j().put(k10, v10);
        }
        if (this.f3968b.size() == r22) {
            i3 i3VarRemove = this.f3968b.remove(r22 - 1);
            j().put(i3VarRemove.f3998a, i3VarRemove.f3999b);
        }
        this.f3968b.add(r03, new i3(this, k10, v10));
        return null;
    }

    public void c() {
        if (this.f3970d) {
            return;
        }
        this.f3969c = this.f3969c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3969c);
        this.f = this.f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f);
        this.f3970d = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        i();
        if (!this.f3968b.isEmpty()) {
            this.f3968b.clear();
        }
        if (this.f3969c.isEmpty()) {
            return;
        }
        this.f3969c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.f3969c.containsKey(comparable);
    }

    public final Map.Entry<K, V> d(int r22) {
        return this.f3968b.get(r22);
    }

    public final int e() {
        return this.f3968b.size();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f3971e == null) {
            this.f3971e = new k3(this);
        }
        return this.f3971e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g3)) {
            return super.equals(obj);
        }
        g3 g3Var = (g3) obj;
        int size = size();
        if (size != g3Var.size()) {
            return false;
        }
        int r22 = e();
        if (r22 != g3Var.e()) {
            return entrySet().equals(g3Var.entrySet());
        }
        for (int r42 = 0; r42 < r22; r42++) {
            if (!d(r42).equals(g3Var.d(r42))) {
                return false;
            }
        }
        if (r22 != size) {
            return this.f3969c.equals(g3Var.f3969c);
        }
        return true;
    }

    public final V f(int r6) {
        i();
        V v10 = (V) this.f3968b.remove(r6).f3999b;
        if (!this.f3969c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = j().entrySet().iterator();
            List<i3> list = this.f3968b;
            Map.Entry<K, V> next = it.next();
            list.add(new i3(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v10;
    }

    public final Iterable<Map.Entry<K, V>> g() {
        return this.f3969c.isEmpty() ? c5.u.f2017e : this.f3969c.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int r02 = a(comparable);
        return r02 >= 0 ? (V) this.f3968b.get(r02).f3999b : this.f3969c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int r02 = e();
        int r22 = 0;
        for (int r12 = 0; r12 < r02; r12++) {
            r22 += this.f3968b.get(r12).hashCode();
        }
        return this.f3969c.size() > 0 ? r22 + this.f3969c.hashCode() : r22;
    }

    public final void i() {
        if (this.f3970d) {
            throw new UnsupportedOperationException();
        }
    }

    public final SortedMap<K, V> j() {
        i();
        if (this.f3969c.isEmpty() && !(this.f3969c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f3969c = treeMap;
            this.f = treeMap.descendingMap();
        }
        return (SortedMap) this.f3969c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        i();
        Comparable comparable = (Comparable) obj;
        int r02 = a(comparable);
        if (r02 >= 0) {
            return f(r02);
        }
        if (this.f3969c.isEmpty()) {
            return null;
        }
        return this.f3969c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f3969c.size() + this.f3968b.size();
    }
}
