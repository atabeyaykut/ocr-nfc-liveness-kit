package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class n implements p {
    @Override // com.google.android.gms.internal.measurement.p
    public final p d() {
        return p.f3669o;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return obj instanceof n;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String h() {
        return "null";
    }

    public final int hashCode() {
        return 1;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double i() {
        return Double.valueOf(0.0d);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean l() {
        return Boolean.FALSE;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator<p> o() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p w(String str, s3 s3Var, ArrayList arrayList) {
        throw new IllegalStateException(String.format("null has no function %s", str));
    }
}
