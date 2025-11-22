package com.google.android.gms.internal.vision;

import java.util.Map;

/* loaded from: classes.dex */
public final class w1<K> implements Map.Entry<K, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final Map.Entry<K, u1> f4116a;

    public w1() {
        throw null;
    }

    public w1(Map.Entry entry) {
        this.f4116a = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f4116a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f4116a.getValue() == null) {
            return null;
        }
        int r02 = u1.f4103c;
        throw new NoSuchMethodError();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof n2)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        u1 value = this.f4116a.getValue();
        n2 n2Var = value.f4123a;
        value.f4124b = null;
        value.f4123a = (n2) obj;
        return n2Var;
    }
}
