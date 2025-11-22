package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class c6 {

    /* renamed from: a, reason: collision with root package name */
    public final Object f3409a;

    /* renamed from: b, reason: collision with root package name */
    public final int f3410b;

    public c6(int r12, Object obj) {
        this.f3409a = obj;
        this.f3410b = r12;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof c6)) {
            return false;
        }
        c6 c6Var = (c6) obj;
        return this.f3409a == c6Var.f3409a && this.f3410b == c6Var.f3410b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.f3409a) * 65535) + this.f3410b;
    }
}
