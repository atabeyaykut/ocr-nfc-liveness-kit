package com.google.android.gms.internal.vision;

/* loaded from: classes.dex */
public class y1 {

    /* renamed from: a, reason: collision with root package name */
    public volatile n2 f4123a;

    /* renamed from: b, reason: collision with root package name */
    public volatile p0 f4124b;

    static {
        w0.b();
    }

    public final n2 a(n2 n2Var) {
        if (this.f4123a == null) {
            synchronized (this) {
                if (this.f4123a == null) {
                    try {
                        this.f4123a = n2Var;
                        this.f4124b = p0.f4044b;
                    } catch (q1 unused) {
                        this.f4123a = n2Var;
                        this.f4124b = p0.f4044b;
                    }
                }
            }
        }
        return this.f4123a;
    }

    public final p0 b() {
        if (this.f4124b != null) {
            return this.f4124b;
        }
        synchronized (this) {
            if (this.f4124b != null) {
                return this.f4124b;
            }
            this.f4124b = this.f4123a == null ? p0.f4044b : this.f4123a.l();
            return this.f4124b;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof y1)) {
            return false;
        }
        y1 y1Var = (y1) obj;
        n2 n2Var = this.f4123a;
        n2 n2Var2 = y1Var.f4123a;
        return (n2Var == null && n2Var2 == null) ? b().equals(y1Var.b()) : (n2Var == null || n2Var2 == null) ? n2Var != null ? n2Var.equals(y1Var.a(n2Var.n())) : a(n2Var2.n()).equals(n2Var2) : n2Var.equals(n2Var2);
    }

    public int hashCode() {
        return 1;
    }
}
