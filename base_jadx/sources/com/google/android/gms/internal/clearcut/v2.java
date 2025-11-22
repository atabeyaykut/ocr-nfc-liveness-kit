package com.google.android.gms.internal.clearcut;

import java.util.Map;

/* loaded from: classes.dex */
public final class v2 implements Comparable, Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final Comparable f3327a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3328b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ r2 f3329c;

    public v2(r2 r2Var, Comparable comparable, Object obj) {
        this.f3329c = r2Var;
        this.f3327a = comparable;
        this.f3328b = obj;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.f3327a.compareTo(((v2) obj).f3327a);
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
        Comparable comparable = this.f3327a;
        if (comparable == null ? key == null : comparable.equals(key)) {
            Object obj2 = this.f3328b;
            Object value = entry.getValue();
            if (obj2 == null ? value == null : obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f3327a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f3328b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f3327a;
        int r12 = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f3328b;
        return (obj != null ? obj.hashCode() : 0) ^ r12;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        int r02 = r2.f3291g;
        this.f3329c.g();
        Object obj2 = this.f3328b;
        this.f3328b = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f3327a);
        String strValueOf2 = String.valueOf(this.f3328b);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + strValueOf.length() + 1);
        sb2.append(strValueOf);
        sb2.append("=");
        sb2.append(strValueOf2);
        return sb2.toString();
    }
}
