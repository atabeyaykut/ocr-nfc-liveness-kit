package com.google.android.gms.internal.measurement;

import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public class l8<K extends Comparable<K>, V> extends AbstractMap<K, V> {

    /* renamed from: g, reason: collision with root package name */
    public static final /* synthetic */ int f3611g = 0;

    /* renamed from: a, reason: collision with root package name */
    public final int f3612a;

    /* renamed from: d, reason: collision with root package name */
    public boolean f3615d;

    /* renamed from: e, reason: collision with root package name */
    public volatile k8 f3616e;

    /* renamed from: b, reason: collision with root package name */
    public List<i8> f3613b = Collections.emptyList();

    /* renamed from: c, reason: collision with root package name */
    public Map<K, V> f3614c = Collections.emptyMap();
    public Map<K, V> f = Collections.emptyMap();

    public void a() {
        if (this.f3615d) {
            return;
        }
        this.f3614c = this.f3614c.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f3614c);
        this.f = this.f.isEmpty() ? Collections.emptyMap() : Collections.unmodifiableMap(this.f);
        this.f3615d = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final V put(K k10, V v10) {
        f();
        int r02 = c(k10);
        if (r02 >= 0) {
            return (V) this.f3613b.get(r02).setValue(v10);
        }
        f();
        boolean zIsEmpty = this.f3613b.isEmpty();
        int r22 = this.f3612a;
        if (zIsEmpty && !(this.f3613b instanceof ArrayList)) {
            this.f3613b = new ArrayList(r22);
        }
        int r03 = -(r02 + 1);
        if (r03 >= r22) {
            return e().put(k10, v10);
        }
        if (this.f3613b.size() == r22) {
            i8 i8VarRemove = this.f3613b.remove(r22 - 1);
            e().put(i8VarRemove.f3552a, i8VarRemove.f3553b);
        }
        this.f3613b.add(r03, new i8(this, k10, v10));
        return null;
    }

    public final int c(K k10) {
        int size = this.f3613b.size() - 1;
        int r12 = 0;
        if (size >= 0) {
            int r22 = k10.compareTo(this.f3613b.get(size).f3552a);
            if (r22 > 0) {
                return -(size + 2);
            }
            if (r22 == 0) {
                return size;
            }
        }
        while (r12 <= size) {
            int r23 = (r12 + size) / 2;
            int r32 = k10.compareTo(this.f3613b.get(r23).f3552a);
            if (r32 < 0) {
                size = r23 - 1;
            } else {
                if (r32 <= 0) {
                    return r23;
                }
                r12 = r23 + 1;
            }
        }
        return -(r12 + 1);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        f();
        if (!this.f3613b.isEmpty()) {
            this.f3613b.clear();
        }
        if (this.f3614c.isEmpty()) {
            return;
        }
        this.f3614c.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return c(comparable) >= 0 || this.f3614c.containsKey(comparable);
    }

    public final V d(int r6) {
        f();
        V v10 = (V) this.f3613b.remove(r6).f3553b;
        if (!this.f3614c.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = e().entrySet().iterator();
            List<i8> list = this.f3613b;
            Map.Entry<K, V> next = it.next();
            list.add(new i8(this, next.getKey(), next.getValue()));
            it.remove();
        }
        return v10;
    }

    public final SortedMap<K, V> e() {
        f();
        if (this.f3614c.isEmpty() && !(this.f3614c instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f3614c = treeMap;
            this.f = treeMap.descendingMap();
        }
        return (SortedMap) this.f3614c;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f3616e == null) {
            this.f3616e = new k8(this);
        }
        return this.f3616e;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof l8)) {
            return super.equals(obj);
        }
        l8 l8Var = (l8) obj;
        int size = size();
        if (size != l8Var.size()) {
            return false;
        }
        int size2 = this.f3613b.size();
        if (size2 != l8Var.f3613b.size()) {
            return ((AbstractSet) entrySet()).equals(l8Var.entrySet());
        }
        for (int r42 = 0; r42 < size2; r42++) {
            if (!this.f3613b.get(r42).equals(l8Var.f3613b.get(r42))) {
                return false;
            }
        }
        if (size2 != size) {
            return this.f3614c.equals(l8Var.f3614c);
        }
        return true;
    }

    public final void f() {
        if (this.f3615d) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int r02 = c(comparable);
        return r02 >= 0 ? (V) this.f3613b.get(r02).f3553b : this.f3614c.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.f3613b.size();
        int r22 = 0;
        for (int r12 = 0; r12 < size; r12++) {
            r22 += this.f3613b.get(r12).hashCode();
        }
        return this.f3614c.size() > 0 ? this.f3614c.hashCode() + r22 : r22;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        f();
        Comparable comparable = (Comparable) obj;
        int r02 = c(comparable);
        if (r02 >= 0) {
            return d(r02);
        }
        if (this.f3614c.isEmpty()) {
            return null;
        }
        return this.f3614c.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f3614c.size() + this.f3613b.size();
    }
}
