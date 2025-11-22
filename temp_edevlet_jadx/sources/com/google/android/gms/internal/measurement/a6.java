package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes.dex */
public final class a6 {

    /* renamed from: a, reason: collision with root package name */
    public final z5 f3361a;

    public a6(x5 x5Var) {
        Charset charset = x6.f3835a;
        this.f3361a = x5Var;
        x5Var.f3859t = this;
    }

    public final void a(int r22, int r32) throws IOException {
        this.f3361a.T(r22, (r32 >> 31) ^ (r32 + r32));
    }

    public final void b(int r42, long j10) throws IOException {
        this.f3361a.V(r42, (j10 >> 63) ^ (j10 + j10));
    }

    public final void c(int r22, int r32) throws IOException {
        this.f3361a.T(r22, r32);
    }

    public final void d(int r22, long j10) throws IOException {
        this.f3361a.V(r22, j10);
    }

    public final void e(int r22, boolean z10) throws IOException {
        this.f3361a.J(r22, z10);
    }

    public final void f(int r22, v5 v5Var) throws IOException {
        this.f3361a.K(r22, v5Var);
    }

    public final void g(int r22, double d10) throws IOException {
        this.f3361a.N(r22, Double.doubleToRawLongBits(d10));
    }

    public final void h(int r22, int r32) throws IOException {
        this.f3361a.P(r22, r32);
    }

    public final void i(int r22, int r32) throws IOException {
        this.f3361a.L(r22, r32);
    }

    public final void j(int r22, long j10) throws IOException {
        this.f3361a.N(r22, j10);
    }

    public final void k(float f, int r32) throws IOException {
        this.f3361a.L(r32, Float.floatToRawIntBits(f));
    }

    public final void l(int r32, d8 d8Var, Object obj) throws IOException {
        z5 z5Var = this.f3361a;
        z5Var.S(r32, 3);
        d8Var.i((s7) obj, z5Var.f3859t);
        z5Var.S(r32, 4);
    }

    public final void m(int r22, int r32) throws IOException {
        this.f3361a.P(r22, r32);
    }

    public final void n(int r22, long j10) throws IOException {
        this.f3361a.V(r22, j10);
    }

    public final void o(int r42, d8 d8Var, Object obj) throws IOException {
        s7 s7Var = (s7) obj;
        x5 x5Var = (x5) this.f3361a;
        x5Var.U((r42 << 3) | 2);
        l5 l5Var = (l5) s7Var;
        int r12 = l5Var.a();
        if (r12 == -1) {
            r12 = d8Var.c(l5Var);
            l5Var.h(r12);
        }
        x5Var.U(r12);
        d8Var.i(s7Var, x5Var.f3859t);
    }

    public final void p(int r22, int r32) throws IOException {
        this.f3361a.L(r22, r32);
    }

    public final void q(int r22, long j10) throws IOException {
        this.f3361a.N(r22, j10);
    }
}
