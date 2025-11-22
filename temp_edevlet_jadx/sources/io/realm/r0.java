package io.realm;

import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public abstract class r0<K, V> implements Map<K, V> {

    /* renamed from: a, reason: collision with root package name */
    public final b f7827a = new b();

    public static abstract class a<K, V> implements Map<K, V> {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Map
        public final V put(K k10, V v10) {
            if (k10 == 0) {
                throw new NullPointerException("Null keys are not allowed.");
            }
            if (k10.getClass() == String.class) {
                String str = (String) k10;
                if (str.contains(".") || str.contains("$")) {
                    throw new IllegalArgumentException("Keys containing dots ('.') or dollar signs ('$') are not allowed.");
                }
            }
            return (V) ((b) this).f7828a.put(k10, v10);
        }
    }

    public static class b<K, V> extends a<K, V> {

        /* renamed from: a, reason: collision with root package name */
        public final HashMap f7828a = new HashMap();

        @Override // java.util.Map
        public final void clear() {
            this.f7828a.clear();
        }

        @Override // java.util.Map
        public final boolean containsKey(Object obj) {
            return this.f7828a.containsKey(obj);
        }

        @Override // java.util.Map
        public final boolean containsValue(Object obj) {
            return this.f7828a.containsValue(obj);
        }

        @Override // java.util.Map
        public final Set<Map.Entry<K, V>> entrySet() {
            return this.f7828a.entrySet();
        }

        @Override // java.util.Map
        public final V get(Object obj) {
            return (V) this.f7828a.get(obj);
        }

        @Override // java.util.Map
        public final boolean isEmpty() {
            return this.f7828a.isEmpty();
        }

        @Override // java.util.Map
        public final Set<K> keySet() {
            return this.f7828a.keySet();
        }

        @Override // java.util.Map
        public final void putAll(Map<? extends K, ? extends V> map) {
            this.f7828a.putAll(map);
        }

        @Override // java.util.Map
        public final V remove(Object obj) {
            return (V) this.f7828a.remove(obj);
        }

        @Override // java.util.Map
        public final int size() {
            return this.f7828a.size();
        }

        @Override // java.util.Map
        public final Collection<V> values() {
            return this.f7828a.values();
        }
    }

    @Override // java.util.Map
    public final void clear() {
        this.f7827a.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.f7827a.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.f7827a.containsValue(obj);
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return this.f7827a.entrySet();
    }

    @Override // java.util.Map
    public final V get(Object obj) {
        return (V) this.f7827a.get(obj);
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.f7827a.isEmpty();
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        return this.f7827a.keySet();
    }

    @Override // java.util.Map
    public final V put(K k10, V v10) {
        return this.f7827a.put(k10, v10);
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        this.f7827a.putAll(map);
    }

    @Override // java.util.Map
    public final V remove(Object obj) {
        return (V) this.f7827a.remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        return this.f7827a.size();
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        return this.f7827a.values();
    }
}
