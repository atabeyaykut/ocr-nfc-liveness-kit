package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public class b7 {

    /* renamed from: a, reason: collision with root package name */
    public volatile s7 f3395a;

    /* renamed from: b, reason: collision with root package name */
    public volatile v5 f3396b;

    static {
        d6.a();
    }

    public final v5 a() {
        if (this.f3396b != null) {
            return this.f3396b;
        }
        synchronized (this) {
            if (this.f3396b != null) {
                return this.f3396b;
            }
            this.f3396b = this.f3395a == null ? v5.f3791b : this.f3395a.c();
            return this.f3396b;
        }
    }

    public final void b(s7 s7Var) {
        if (this.f3395a != null) {
            return;
        }
        synchronized (this) {
            if (this.f3395a == null) {
                try {
                    this.f3395a = s7Var;
                    this.f3396b = v5.f3791b;
                } catch (z6 unused) {
                    this.f3395a = s7Var;
                    this.f3396b = v5.f3791b;
                }
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b7)) {
            return false;
        }
        b7 b7Var = (b7) obj;
        s7 s7Var = this.f3395a;
        s7 s7Var2 = b7Var.f3395a;
        if (s7Var == null && s7Var2 == null) {
            return a().equals(b7Var.a());
        }
        if (s7Var != null && s7Var2 != null) {
            return s7Var.equals(s7Var2);
        }
        if (s7Var != null) {
            b7Var.b(s7Var.d());
            return s7Var.equals(b7Var.f3395a);
        }
        b(s7Var2.d());
        return this.f3395a.equals(s7Var2);
    }

    public final int hashCode() {
        return 1;
    }
}
