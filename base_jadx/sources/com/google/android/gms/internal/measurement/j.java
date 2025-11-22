package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class j implements p, l {

    /* renamed from: a, reason: collision with root package name */
    public final String f3561a;

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f3562b = new HashMap();

    public j(String str) {
        this.f3561a = str;
    }

    public abstract p a(s3 s3Var, List<p> list);

    @Override // com.google.android.gms.internal.measurement.p
    public p d() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof j)) {
            return false;
        }
        j jVar = (j) obj;
        String str = this.f3561a;
        if (str != null) {
            return str.equals(jVar.f3561a);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String h() {
        return this.f3561a;
    }

    public final int hashCode() {
        String str = this.f3561a;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Double i() {
        return Double.valueOf(Double.NaN);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Boolean l() {
        return Boolean.TRUE;
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final boolean m(String str) {
        return this.f3562b.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator<p> o() {
        return new k(this.f3562b.keySet().iterator());
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final void u(String str, p pVar) {
        HashMap map = this.f3562b;
        if (pVar == null) {
            map.remove(str);
        } else {
            map.put(str, pVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final p w(String str, s3 s3Var, ArrayList arrayList) {
        return "toString".equals(str) ? new t(this.f3561a) : x5.a.v(this, new t(str), s3Var, arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final p x(String str) {
        HashMap map = this.f3562b;
        return map.containsKey(str) ? (p) map.get(str) : p.f3668i;
    }
}
