package com.google.android.gms.internal.clearcut;

import java.util.Map;

/* loaded from: classes.dex */
public final class f1<K> implements Map.Entry<K, Object> {

    /* renamed from: a, reason: collision with root package name */
    public final Map.Entry<K, e1> f3116a;

    public f1() {
        throw null;
    }

    public f1(Map.Entry entry) {
        this.f3116a = entry;
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f3116a.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f3116a.getValue() == null) {
            return null;
        }
        int r02 = e1.f3110c;
        throw new NoSuchMethodError();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (!(obj instanceof x1)) {
            throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
        }
        e1 value = this.f3116a.getValue();
        x1 x1Var = value.f3154a;
        value.f3155b = null;
        value.f3154a = (x1) obj;
        return x1Var;
    }
}
