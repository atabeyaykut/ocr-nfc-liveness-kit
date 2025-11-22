package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class g implements p {

    /* renamed from: a, reason: collision with root package name */
    public final boolean f3479a;

    public g(Boolean bool) {
        this.f3479a = bool == null ? false : bool.booleanValue();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p d() {
        return new g(Boolean.valueOf(this.f3479a));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && this.f3479a == ((g) obj).f3479a;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String h() {
        return Boolean.toString(this.f3479a);
    }

    public final int hashCode() {
        return Boolean.valueOf(this.f3479a).hashCode();
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double i() {
        return Double.valueOf(true != this.f3479a ? 0.0d : 1.0d);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean l() {
        return Boolean.valueOf(this.f3479a);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator<p> o() {
        return null;
    }

    public final String toString() {
        return String.valueOf(this.f3479a);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p w(String str, s3 s3Var, ArrayList arrayList) {
        boolean zEquals = "toString".equals(str);
        boolean z10 = this.f3479a;
        if (zEquals) {
            return new t(Boolean.toString(z10));
        }
        throw new IllegalArgumentException(String.format("%s.%s is not a function.", Boolean.toString(z10), str));
    }
}
