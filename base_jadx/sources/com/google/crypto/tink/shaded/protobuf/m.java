package com.google.crypto.tink.shaded.protobuf;

import java.io.IOException;
import java.nio.charset.Charset;

/* loaded from: classes2.dex */
public final class m {

    /* renamed from: a, reason: collision with root package name */
    public final l f4320a;

    public m(l lVar) {
        Charset charset = z.f4405a;
        if (lVar == null) {
            throw new NullPointerException("output");
        }
        this.f4320a = lVar;
        lVar.f4317a = this;
    }

    public final void a(int r22, boolean z10) throws IOException {
        this.f4320a.z(r22, z10);
    }

    public final void b(int r22, i iVar) throws IOException {
        this.f4320a.A(r22, iVar);
    }

    public final void c(int r22, double d10) throws IOException {
        l lVar = this.f4320a;
        lVar.getClass();
        lVar.D(r22, Double.doubleToRawLongBits(d10));
    }

    public final void d(int r22, int r32) throws IOException {
        this.f4320a.F(r22, r32);
    }

    public final void e(int r22, int r32) throws IOException {
        this.f4320a.B(r22, r32);
    }

    public final void f(int r22, long j10) throws IOException {
        this.f4320a.D(r22, j10);
    }

    public final void g(float f, int r32) throws IOException {
        l lVar = this.f4320a;
        lVar.getClass();
        lVar.B(r32, Float.floatToRawIntBits(f));
    }

    public final void h(int r32, e1 e1Var, Object obj) throws IOException {
        l lVar = this.f4320a;
        lVar.L(r32, 3);
        e1Var.g((q0) obj, lVar.f4317a);
        lVar.L(r32, 4);
    }

    public final void i(int r22, int r32) throws IOException {
        this.f4320a.F(r22, r32);
    }

    public final void j(int r22, long j10) throws IOException {
        this.f4320a.O(r22, j10);
    }

    public final void k(int r22, e1 e1Var, Object obj) throws IOException {
        this.f4320a.H(r22, (q0) obj, e1Var);
    }

    public final void l(int r32, Object obj) throws IOException {
        boolean z10 = obj instanceof i;
        l lVar = this.f4320a;
        if (z10) {
            lVar.J(r32, (i) obj);
        } else {
            lVar.I(r32, (q0) obj);
        }
    }

    public final void m(int r22, int r32) throws IOException {
        this.f4320a.B(r22, r32);
    }

    public final void n(int r22, long j10) throws IOException {
        this.f4320a.D(r22, j10);
    }

    public final void o(int r22, int r32) throws IOException {
        this.f4320a.M(r22, (r32 >> 31) ^ (r32 << 1));
    }

    public final void p(int r42, long j10) throws IOException {
        this.f4320a.O(r42, (j10 >> 63) ^ (j10 << 1));
    }

    public final void q(int r22, int r32) throws IOException {
        this.f4320a.M(r22, r32);
    }

    public final void r(int r22, long j10) throws IOException {
        this.f4320a.O(r22, j10);
    }
}
