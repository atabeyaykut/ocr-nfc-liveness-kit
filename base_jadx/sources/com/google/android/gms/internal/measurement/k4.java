package com.google.android.gms.internal.measurement;

import android.content.Context;

/* loaded from: classes.dex */
public final class k4 extends a5 {

    /* renamed from: a, reason: collision with root package name */
    public final Context f3595a;

    /* renamed from: b, reason: collision with root package name */
    public final g5<e5<s4>> f3596b;

    public k4(Context context, g5<e5<s4>> g5Var) {
        this.f3595a = context;
        this.f3596b = g5Var;
    }

    @Override // com.google.android.gms.internal.measurement.a5
    public final Context a() {
        return this.f3595a;
    }

    @Override // com.google.android.gms.internal.measurement.a5
    public final g5<e5<s4>> b() {
        return this.f3596b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof a5) {
            a5 a5Var = (a5) obj;
            if (this.f3595a.equals(a5Var.a())) {
                g5<e5<s4>> g5Var = this.f3596b;
                g5<e5<s4>> g5VarB = a5Var.b();
                if (g5Var != null ? g5Var.equals(g5VarB) : g5VarB == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int r02 = (this.f3595a.hashCode() ^ 1000003) * 1000003;
        g5<e5<s4>> g5Var = this.f3596b;
        return r02 ^ (g5Var == null ? 0 : g5Var.hashCode());
    }

    public final String toString() {
        String string = this.f3595a.toString();
        String strValueOf = String.valueOf(this.f3596b);
        StringBuilder sb2 = new StringBuilder(string.length() + 46 + strValueOf.length());
        sb2.append("FlagsContext{context=");
        sb2.append(string);
        sb2.append(", hermeticFileOverrides=");
        sb2.append(strValueOf);
        sb2.append("}");
        return sb2.toString();
    }
}
