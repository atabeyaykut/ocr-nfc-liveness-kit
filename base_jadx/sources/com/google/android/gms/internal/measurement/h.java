package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class h implements p {

    /* renamed from: a, reason: collision with root package name */
    public final p f3490a;

    /* renamed from: b, reason: collision with root package name */
    public final String f3491b;

    public h() {
        throw null;
    }

    public h(String str) {
        this.f3490a = p.f3668i;
        this.f3491b = str;
    }

    public h(String str, p pVar) {
        this.f3490a = pVar;
        this.f3491b = str;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p d() {
        return new h(this.f3491b, this.f3490a.d());
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof h)) {
            return false;
        }
        h hVar = (h) obj;
        return this.f3491b.equals(hVar.f3491b) && this.f3490a.equals(hVar.f3490a);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String h() {
        throw new IllegalStateException("Control is not a String");
    }

    public final int hashCode() {
        return this.f3490a.hashCode() + (this.f3491b.hashCode() * 31);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double i() {
        throw new IllegalStateException("Control is not a double");
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean l() {
        throw new IllegalStateException("Control is not a boolean");
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator<p> o() {
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p w(String str, s3 s3Var, ArrayList arrayList) {
        throw new IllegalStateException("Control does not have functions");
    }
}
