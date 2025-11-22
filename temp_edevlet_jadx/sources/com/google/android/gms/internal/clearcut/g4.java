package com.google.android.gms.internal.clearcut;

import java.io.IOException;

/* loaded from: classes.dex */
public final class g4 extends u3<g4> implements Cloneable {

    /* renamed from: e, reason: collision with root package name */
    public static volatile g4[] f3150e;

    /* renamed from: c, reason: collision with root package name */
    public final String f3151c = "";

    /* renamed from: d, reason: collision with root package name */
    public final String f3152d = "";

    public g4() {
        this.f3322b = null;
        this.f3351a = -1;
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    public final Object clone() throws CloneNotSupportedException {
        try {
            return (g4) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    public final int d() {
        super.d();
        int r12 = 0;
        String str = this.f3151c;
        if (str != null && !str.equals("")) {
            r12 = 0 + s3.g(1, str);
        }
        String str2 = this.f3152d;
        return (str2 == null || str2.equals("")) ? r12 : r12 + s3.g(2, str2);
    }

    @Override // com.google.android.gms.internal.clearcut.u3, com.google.android.gms.internal.clearcut.y3
    /* renamed from: e */
    public final /* synthetic */ y3 clone() throws CloneNotSupportedException {
        return (g4) clone();
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g4)) {
            return false;
        }
        g4 g4Var = (g4) obj;
        String str = this.f3151c;
        if (str == null) {
            if (g4Var.f3151c != null) {
                return false;
            }
        } else if (!str.equals(g4Var.f3151c)) {
            return false;
        }
        String str2 = this.f3152d;
        if (str2 == null) {
            if (g4Var.f3152d != null) {
                return false;
            }
        } else if (!str2.equals(g4Var.f3152d)) {
            return false;
        }
        v3 v3Var = this.f3322b;
        if (v3Var != null && !v3Var.b()) {
            return this.f3322b.equals(g4Var.f3322b);
        }
        v3 v3Var2 = g4Var.f3322b;
        return v3Var2 == null || v3Var2.b();
    }

    @Override // com.google.android.gms.internal.clearcut.u3
    public final void f(s3 s3Var) throws IOException {
        String str = this.f3151c;
        if (str != null && !str.equals("")) {
            s3Var.c(1, str);
        }
        String str2 = this.f3152d;
        if (str2 != null && !str2.equals("")) {
            s3Var.c(2, str2);
        }
        super.f(s3Var);
    }

    @Override // com.google.android.gms.internal.clearcut.u3
    /* renamed from: g */
    public final /* synthetic */ u3 clone() throws CloneNotSupportedException {
        return (g4) clone();
    }

    public final int hashCode() {
        int r02 = (g4.class.getName().hashCode() + 527) * 31;
        int r12 = 0;
        String str = this.f3151c;
        int r03 = (r02 + (str == null ? 0 : str.hashCode())) * 31;
        String str2 = this.f3152d;
        int r04 = (r03 + (str2 == null ? 0 : str2.hashCode())) * 31;
        v3 v3Var = this.f3322b;
        if (v3Var != null && !v3Var.b()) {
            r12 = this.f3322b.hashCode();
        }
        return r04 + r12;
    }
}
