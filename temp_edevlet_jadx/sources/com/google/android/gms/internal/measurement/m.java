package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class m implements p, l {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f3622a = new HashMap();

    @Override // com.google.android.gms.internal.measurement.p
    public final p d() {
        String str;
        p pVarD;
        m mVar = new m();
        for (Map.Entry entry : this.f3622a.entrySet()) {
            boolean z10 = entry.getValue() instanceof l;
            HashMap map = mVar.f3622a;
            if (z10) {
                str = (String) entry.getKey();
                pVarD = (p) entry.getValue();
            } else {
                str = (String) entry.getKey();
                pVarD = ((p) entry.getValue()).d();
            }
            map.put(str, pVarD);
        }
        return mVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof m) {
            return this.f3622a.equals(((m) obj).f3622a);
        }
        return false;
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final String h() {
        return "[object Object]";
    }

    public final int hashCode() {
        return this.f3622a.hashCode();
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
        return this.f3622a.containsKey(str);
    }

    @Override // com.google.android.gms.internal.measurement.p
    public final Iterator<p> o() {
        return new k(this.f3622a.keySet().iterator());
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("{");
        HashMap map = this.f3622a;
        if (!map.isEmpty()) {
            for (String str : map.keySet()) {
                sb2.append(String.format("%s: %s,", str, map.get(str)));
            }
            sb2.deleteCharAt(sb2.lastIndexOf(","));
        }
        sb2.append("}");
        return sb2.toString();
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final void u(String str, p pVar) {
        HashMap map = this.f3622a;
        if (pVar == null) {
            map.remove(str);
        } else {
            map.put(str, pVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.p
    public p w(String str, s3 s3Var, ArrayList arrayList) {
        return "toString".equals(str) ? new t(toString()) : x5.a.v(this, new t(str), s3Var, arrayList);
    }

    @Override // com.google.android.gms.internal.measurement.l
    public final p x(String str) {
        HashMap map = this.f3622a;
        return map.containsKey(str) ? (p) map.get(str) : p.f3668i;
    }
}
