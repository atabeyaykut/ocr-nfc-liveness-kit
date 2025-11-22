package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes.dex */
public final class w7<T> implements d8<T> {

    /* renamed from: a, reason: collision with root package name */
    public final s7 f3817a;

    /* renamed from: b, reason: collision with root package name */
    public final o8<?, ?> f3818b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f3819c;

    /* renamed from: d, reason: collision with root package name */
    public final e6<?> f3820d;

    public w7(o8<?, ?> o8Var, e6<?> e6Var, s7 s7Var) {
        this.f3818b = o8Var;
        this.f3819c = e6Var.c(s7Var);
        this.f3820d = e6Var;
        this.f3817a = s7Var;
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final int b(T t10) {
        int r02 = this.f3818b.c(t10).hashCode();
        if (!this.f3819c) {
            return r02;
        }
        this.f3820d.a(t10);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final int c(T t10) {
        o8<?, ?> o8Var = this.f3818b;
        int r02 = o8Var.b(o8Var.c(t10));
        if (!this.f3819c) {
            return r02;
        }
        this.f3820d.a(t10);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final void d(T t10) {
        this.f3818b.g(t10);
        this.f3820d.b(t10);
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final T e() {
        return (T) this.f3817a.e().h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.d8
    public final void f(T t10, byte[] bArr, int r32, int r42, o5 o5Var) throws IOException {
        q6 q6Var = (q6) t10;
        if (q6Var.zzc == p8.f) {
            q6Var.zzc = p8.b();
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final void g(T t10, T t11) {
        Class<?> cls = e8.f3459a;
        o8<?, ?> o8Var = this.f3818b;
        o8Var.h(t10, o8Var.d(o8Var.c(t10), o8Var.c(t11)));
        if (this.f3819c) {
            this.f3820d.a(t11);
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final boolean h(T t10, T t11) {
        o8<?, ?> o8Var = this.f3818b;
        if (!o8Var.c(t10).equals(o8Var.c(t11))) {
            return false;
        }
        if (!this.f3819c) {
            return true;
        }
        e6<?> e6Var = this.f3820d;
        e6Var.a(t10);
        e6Var.a(t11);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final void i(T t10, a6 a6Var) throws IOException {
        this.f3820d.a(t10);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.d8
    public final boolean p(T t10) {
        this.f3820d.a(t10);
        throw null;
    }
}
