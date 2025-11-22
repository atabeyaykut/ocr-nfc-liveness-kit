package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class q implements p {

    /* renamed from: a, reason: collision with root package name */
    public final String f3689a;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList<p> f3690b;

    public q(String str, ArrayList arrayList) {
        this.f3689a = str;
        ArrayList<p> arrayList2 = new ArrayList<>();
        this.f3690b = arrayList2;
        arrayList2.addAll(arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p d() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof q)) {
            return false;
        }
        q qVar = (q) obj;
        String str = this.f3689a;
        if (str == null ? qVar.f3689a == null : str.equals(qVar.f3689a)) {
            return this.f3690b.equals(qVar.f3690b);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String h() {
        throw new IllegalStateException("Statement cannot be cast as String");
    }

    public final int hashCode() {
        String str = this.f3689a;
        return this.f3690b.hashCode() + ((str != null ? str.hashCode() : 0) * 31);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double i() {
        throw new IllegalStateException("Statement cannot be cast as Double");
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean l() {
        throw new IllegalStateException("Statement cannot be cast as Boolean");
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator<p> o() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p w(String str, s3 s3Var, ArrayList arrayList) {
        throw new IllegalStateException("Statement is not an evaluated entity");
    }
}
