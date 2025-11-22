package com.google.android.gms.internal.measurement;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class m7<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b, reason: collision with root package name */
    public static final m7 f3629b;

    /* renamed from: a, reason: collision with root package name */
    public boolean f3630a;

    static {
        m7 m7Var = new m7();
        f3629b = m7Var;
        m7Var.f3630a = false;
    }

    public m7() {
        this.f3630a = true;
    }

    public m7(Map<K, V> map) {
        super(map);
        this.f3630a = true;
    }

    public static <K, V> m7<K, V> b() {
        return f3629b;
    }

    public final m7<K, V> c() {
        return isEmpty() ? new m7<>() : new m7<>(this);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        e();
        super.clear();
    }

    public final boolean d() {
        return this.f3630a;
    }

    public final void e() {
        if (!this.f3630a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            V value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int length;
        int r22 = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            K key = entry.getKey();
            int r6 = 1;
            if (key instanceof byte[]) {
                byte[] bArr = (byte[]) key;
                Charset charset = x6.f3835a;
                length = bArr.length;
                for (int r02 : bArr) {
                    length = (length * 31) + r02;
                }
                if (length == 0) {
                    length = 1;
                }
            } else {
                length = key.hashCode();
            }
            V value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr2 = (byte[]) value;
                Charset charset2 = x6.f3835a;
                int length2 = bArr2.length;
                for (int r03 : bArr2) {
                    length2 = (length2 * 31) + r03;
                }
                if (length2 != 0) {
                    r6 = length2;
                }
            } else {
                r6 = value.hashCode();
            }
            r22 += r6 ^ length;
        }
        return r22;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        e();
        Charset charset = x6.f3835a;
        k10.getClass();
        v10.getClass();
        return (V) super.put(k10, v10);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        e();
        for (K k10 : map.keySet()) {
            Charset charset = x6.f3835a;
            k10.getClass();
            map.get(k10).getClass();
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        e();
        return (V) super.remove(obj);
    }
}
