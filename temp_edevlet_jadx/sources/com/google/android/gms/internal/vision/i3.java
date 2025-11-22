package com.google.android.gms.internal.vision;

import java.util.Map;

/* loaded from: classes.dex */
public final class i3 implements Comparable, Map.Entry {

    /* renamed from: a, reason: collision with root package name */
    public final Comparable f3998a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3999b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ g3 f4000c;

    public i3(g3 g3Var, Comparable comparable, Object obj) {
        this.f4000c = g3Var;
        this.f3998a = comparable;
        this.f3999b = obj;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Object obj) {
        return this.f3998a.compareTo(((i3) obj).f3998a);
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
        Comparable comparable = this.f3998a;
        if (comparable == null ? key == null : comparable.equals(key)) {
            Object obj2 = this.f3999b;
            Object value = entry.getValue();
            if (obj2 == null ? value == null : obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f3998a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f3999b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f3998a;
        int r12 = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f3999b;
        return (obj != null ? obj.hashCode() : 0) ^ r12;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        int r02 = g3.f3966g;
        this.f4000c.i();
        Object obj2 = this.f3999b;
        this.f3999b = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f3998a);
        String strValueOf2 = String.valueOf(this.f3999b);
        StringBuilder sb2 = new StringBuilder(strValueOf2.length() + strValueOf.length() + 1);
        sb2.append(strValueOf);
        sb2.append("=");
        sb2.append(strValueOf2);
        return sb2.toString();
    }
}
