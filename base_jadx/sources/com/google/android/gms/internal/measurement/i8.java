package com.google.android.gms.internal.measurement;

import java.util.Map;

/* loaded from: classes.dex */
public final class i8 implements Map.Entry, Comparable<i8> {

    /* renamed from: a, reason: collision with root package name */
    public final Comparable f3552a;

    /* renamed from: b, reason: collision with root package name */
    public Object f3553b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l8 f3554c;

    public i8(l8 l8Var, Comparable comparable, Object obj) {
        this.f3554c = l8Var;
        this.f3552a = comparable;
        this.f3553b = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(i8 i8Var) {
        return this.f3552a.compareTo(i8Var.f3552a);
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
        Comparable comparable = this.f3552a;
        if (comparable == null ? key == null : comparable.equals(key)) {
            Object obj2 = this.f3553b;
            Object value = entry.getValue();
            if (obj2 == null ? value == null : obj2.equals(value)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final /* synthetic */ Object getKey() {
        return this.f3552a;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.f3553b;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.f3552a;
        int r12 = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.f3553b;
        return (obj != null ? obj.hashCode() : 0) ^ r12;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        int r02 = l8.f3611g;
        this.f3554c.f();
        Object obj2 = this.f3553b;
        this.f3553b = obj;
        return obj2;
    }

    public final String toString() {
        String strValueOf = String.valueOf(this.f3552a);
        String strValueOf2 = String.valueOf(this.f3553b);
        return android.support.v4.media.a.i(new StringBuilder(strValueOf.length() + 1 + strValueOf2.length()), strValueOf, "=", strValueOf2);
    }
}
