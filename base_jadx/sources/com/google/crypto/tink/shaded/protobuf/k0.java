package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.z;
import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* loaded from: classes2.dex */
public final class k0<K, V> extends LinkedHashMap<K, V> {

    /* renamed from: b, reason: collision with root package name */
    public static final k0 f4308b;

    /* renamed from: a, reason: collision with root package name */
    public boolean f4309a;

    static {
        k0 k0Var = new k0();
        f4308b = k0Var;
        k0Var.f4309a = false;
    }

    public k0() {
        this.f4309a = true;
    }

    public k0(Map<K, V> map) {
        super(map);
        this.f4309a = true;
    }

    public static int b(Object obj) {
        if (!(obj instanceof byte[])) {
            if (obj instanceof z.a) {
                throw new UnsupportedOperationException();
            }
            return obj.hashCode();
        }
        byte[] bArr = (byte[]) obj;
        Charset charset = z.f4405a;
        int length = bArr.length;
        int r32 = length;
        for (int r22 = 0; r22 < 0 + length; r22++) {
            r32 = (r32 * 31) + bArr[r22];
        }
        if (r32 == 0) {
            return 1;
        }
        return r32;
    }

    public final void c() {
        if (!this.f4309a) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        c();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        boolean z10;
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this != map) {
            if (size() == map.size()) {
                for (Map.Entry<K, V> entry : entrySet()) {
                    if (map.containsKey(entry.getKey())) {
                        V value = entry.getValue();
                        Object obj2 = map.get(entry.getKey());
                        if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                        }
                    }
                }
                z10 = true;
            }
            z10 = false;
            break;
        }
        z10 = true;
        return z10;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int r12 = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            r12 += b(entry.getValue()) ^ b(entry.getKey());
        }
        return r12;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        c();
        Charset charset = z.f4405a;
        k10.getClass();
        v10.getClass();
        return (V) super.put(k10, v10);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        c();
        for (K k10 : map.keySet()) {
            Charset charset = z.f4405a;
            k10.getClass();
            map.get(k10).getClass();
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        c();
        return (V) super.remove(obj);
    }
}
