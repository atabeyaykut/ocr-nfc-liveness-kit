package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class u0 {

    /* renamed from: a, reason: collision with root package name */
    public final t0 f4102a;

    public u0(t0 t0Var) {
        Charset charset = m1.f4035a;
        if (t0Var == null) {
            throw new NullPointerException("output");
        }
        this.f4102a = t0Var;
        t0Var.f4087a = this;
    }

    public final void a(float f, int r32) throws IOException {
        t0 t0Var = this.f4102a;
        t0Var.getClass();
        t0Var.I(r32, Float.floatToRawIntBits(f));
    }

    public final void b(int r22, double d10) throws IOException {
        t0 t0Var = this.f4102a;
        t0Var.getClass();
        t0Var.B(r22, Double.doubleToRawLongBits(d10));
    }

    public final void c(int r22, int r32) throws IOException {
        this.f4102a.I(r22, r32);
    }

    public final void d(int r22, long j10) throws IOException {
        this.f4102a.j(r22, j10);
    }

    public final void e(int r22, p0 p0Var) throws IOException {
        this.f4102a.k(r22, p0Var);
    }

    public final void f(int r22, d3 d3Var, Object obj) throws IOException {
        this.f4102a.m(r22, (n2) obj, d3Var);
    }

    public final void g(int r32, Object obj) throws IOException {
        boolean z10 = obj instanceof p0;
        t0 t0Var = this.f4102a;
        if (z10) {
            t0Var.v(r32, (p0) obj);
        } else {
            t0Var.l(r32, (n2) obj);
        }
    }

    public final void h(int r22, boolean z10) throws IOException {
        this.f4102a.o(r22, z10);
    }

    public final void i(int r22, int r32) throws IOException {
        this.f4102a.u(r22, r32);
    }

    public final void j(int r22, long j10) throws IOException {
        this.f4102a.B(r22, j10);
    }

    public final void k(int r32, d3 d3Var, Object obj) throws IOException {
        t0 t0Var = this.f4102a;
        t0Var.i(r32, 3);
        d3Var.f((n2) obj, t0Var.f4087a);
        t0Var.i(r32, 4);
    }

    public final void l(int r22, int r32) throws IOException {
        this.f4102a.u(r22, r32);
    }

    public final void m(int r22, long j10) throws IOException {
        this.f4102a.j(r22, j10);
    }

    public final void n(int r22, int r32) throws IOException {
        this.f4102a.I(r22, r32);
    }

    public final void o(int r22, long j10) throws IOException {
        this.f4102a.B(r22, j10);
    }

    public final void p(int r22, int r32) throws IOException {
        this.f4102a.A(r22, r32);
    }

    public final void q(int r42, long j10) throws IOException {
        this.f4102a.j(r42, (j10 >> 63) ^ (j10 << 1));
    }

    public final void r(int r22, int r32) throws IOException {
        this.f4102a.A(r22, (r32 >> 31) ^ (r32 << 1));
    }
}
