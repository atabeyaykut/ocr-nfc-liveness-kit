package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
public class h1 {

    /* renamed from: a, reason: collision with root package name */
    public volatile x1 f3154a;

    /* renamed from: b, reason: collision with root package name */
    public volatile x f3155b;

    static {
        int r02 = i0.f3157b;
        Class<?> cls = h0.f3153a;
        if (cls != null) {
            try {
            } catch (Exception unused) {
            }
        }
    }

    public final int a() {
        if (this.f3155b != null) {
            return this.f3155b.size();
        }
        if (this.f3154a != null) {
            return this.f3154a.s();
        }
        return 0;
    }

    public final x1 b(x1 x1Var) {
        if (this.f3154a == null) {
            synchronized (this) {
                if (this.f3154a == null) {
                    try {
                        this.f3154a = x1Var;
                        this.f3155b = x.f3341b;
                    } catch (b1 unused) {
                        this.f3154a = x1Var;
                        this.f3155b = x.f3341b;
                    }
                }
            }
        }
        return this.f3154a;
    }

    public final x c() {
        if (this.f3155b != null) {
            return this.f3155b;
        }
        synchronized (this) {
            if (this.f3155b != null) {
                return this.f3155b;
            }
            this.f3155b = this.f3154a == null ? x.f3341b : this.f3154a.n();
            return this.f3155b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof h1)) {
            return false;
        }
        h1 h1Var = (h1) obj;
        x1 x1Var = this.f3154a;
        x1 x1Var2 = h1Var.f3154a;
        return (x1Var == null && x1Var2 == null) ? c().equals(h1Var.c()) : (x1Var == null || x1Var2 == null) ? x1Var != null ? x1Var.equals(h1Var.b(x1Var.c())) : b(x1Var2.c()).equals(x1Var2) : x1Var.equals(x1Var2);
    }

    public int hashCode() {
        return 1;
    }
}
