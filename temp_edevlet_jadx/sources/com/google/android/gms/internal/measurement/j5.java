package com.google.android.gms.internal.measurement;

import java.io.Serializable;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class j5<T> implements Serializable, g5 {

    /* renamed from: a, reason: collision with root package name */
    public final T f3576a;

    public j5(T t10) {
        this.f3576a = t10;
    }

    @Override // com.google.android.gms.internal.measurement.g5
    public final T a() {
        return this.f3576a;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof j5)) {
            return false;
        }
        Object obj2 = ((j5) obj).f3576a;
        T t10 = this.f3576a;
        return t10 == obj2 || t10.equals(obj2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f3576a});
    }

    public final String toString() {
        String string = this.f3576a.toString();
        return android.support.v4.media.a.i(new StringBuilder(string.length() + 22), "Suppliers.ofInstance(", string, ")");
    }
}
