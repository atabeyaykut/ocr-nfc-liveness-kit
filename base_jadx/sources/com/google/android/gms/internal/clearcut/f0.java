package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class f0 {

    /* renamed from: a, reason: collision with root package name */
    public final e0 f3115a;

    public f0(e0 e0Var) {
        Charset charset = x0.f3344a;
        if (e0Var == null) {
            throw new NullPointerException("output");
        }
        this.f3115a = e0Var;
        e0Var.f3097a = this;
    }

    public final void a(float f, int r32) throws IOException {
        e0 e0Var = this.f3115a;
        e0Var.getClass();
        e0Var.J(r32, Float.floatToRawIntBits(f));
    }

    public final void b(int r22, double d10) throws IOException {
        e0 e0Var = this.f3115a;
        e0Var.getClass();
        e0Var.C(r22, Double.doubleToRawLongBits(d10));
    }

    public final void c(int r22, long j10) throws IOException {
        this.f3115a.j(r22, j10);
    }

    public final void d(int r22, x xVar) throws IOException {
        this.f3115a.k(r22, xVar);
    }

    public final void e(int r22, o2 o2Var, Object obj) throws IOException {
        this.f3115a.m(r22, (x1) obj, o2Var);
    }

    public final void f(int r32, Object obj) throws IOException {
        boolean z10 = obj instanceof x;
        e0 e0Var = this.f3115a;
        if (z10) {
            e0Var.t(r32, (x) obj);
        } else {
            e0Var.u(r32, (x1) obj);
        }
    }

    public final void g(int r42, long j10) throws IOException {
        this.f3115a.j(r42, (j10 >> 63) ^ (j10 << 1));
    }

    public final void h(int r32, o2 o2Var, Object obj) throws IOException {
        e0 e0Var = this.f3115a;
        e0Var.s(r32, 3);
        o2Var.h((x1) obj, e0Var.f3097a);
        e0Var.s(r32, 4);
    }

    public final void i(int r22, boolean z10) throws IOException {
        this.f3115a.v(r22, z10);
    }

    public final void j(int r22, int r32) throws IOException {
        this.f3115a.B(r22, r32);
    }

    public final void k(int r22, long j10) throws IOException {
        this.f3115a.C(r22, j10);
    }

    public final void l(int r22, int r32) throws IOException {
        this.f3115a.E(r22, r32);
    }

    public final void m(int r22, int r32) throws IOException {
        this.f3115a.E(r22, (r32 >> 31) ^ (r32 << 1));
    }

    public final void n(int r22, int r32) throws IOException {
        this.f3115a.J(r22, r32);
    }

    public final void o(int r22, long j10) throws IOException {
        this.f3115a.j(r22, j10);
    }

    public final void p(int r22, long j10) throws IOException {
        this.f3115a.C(r22, j10);
    }

    public final void q(int r22, int r32) throws IOException {
        this.f3115a.J(r22, r32);
    }

    public final void r(int r22, int r32) throws IOException {
        this.f3115a.B(r22, r32);
    }
}
