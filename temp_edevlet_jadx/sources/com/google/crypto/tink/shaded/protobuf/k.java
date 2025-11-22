package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.a0;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;

/* loaded from: classes2.dex */
public final class k implements d1 {

    /* renamed from: a, reason: collision with root package name */
    public final j f4304a;

    /* renamed from: b, reason: collision with root package name */
    public int f4305b;

    /* renamed from: c, reason: collision with root package name */
    public int f4306c;

    /* renamed from: d, reason: collision with root package name */
    public int f4307d = 0;

    public k(j jVar) {
        Charset charset = z.f4405a;
        if (jVar == null) {
            throw new NullPointerException("input");
        }
        this.f4304a = jVar;
        jVar.f4297c = this;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void A(List<String> list) throws IOException {
        P(list, false);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void B(List<String> list) throws IOException {
        P(list, true);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final i C() throws IOException {
        R(2);
        return this.f4304a.i();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void D(List<Float> list) throws IOException {
        int r02;
        int r6;
        boolean z10 = list instanceof v;
        j jVar = this.f4304a;
        if (!z10) {
            int r03 = this.f4305b & 7;
            if (r03 == 2) {
                int r04 = jVar.x();
                S(r04);
                int r12 = jVar.d() + r04;
                do {
                    list.add(Float.valueOf(jVar.n()));
                } while (jVar.d() < r12);
                return;
            }
            if (r03 != 5) {
                throw a0.b();
            }
            do {
                list.add(Float.valueOf(jVar.n()));
                if (jVar.e()) {
                    return;
                } else {
                    r02 = jVar.w();
                }
            } while (r02 == this.f4305b);
            this.f4307d = r02;
            return;
        }
        v vVar = (v) list;
        int r62 = this.f4305b & 7;
        if (r62 == 2) {
            int r63 = jVar.x();
            S(r63);
            int r42 = jVar.d() + r63;
            do {
                vVar.l(jVar.n());
            } while (jVar.d() < r42);
            return;
        }
        if (r62 != 5) {
            throw a0.b();
        }
        do {
            vVar.l(jVar.n());
            if (jVar.e()) {
                return;
            } else {
                r6 = jVar.w();
            }
        } while (r6 == this.f4305b);
        this.f4307d = r6;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final int E() throws IOException {
        R(0);
        return this.f4304a.o();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final boolean F() throws IOException {
        int r12;
        j jVar = this.f4304a;
        if (jVar.e() || (r12 = this.f4305b) == this.f4306c) {
            return false;
        }
        return jVar.z(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final int G() throws IOException {
        R(5);
        return this.f4304a.q();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void H(List<i> list) throws IOException {
        int r02;
        if ((this.f4305b & 7) != 2) {
            throw a0.b();
        }
        do {
            list.add(C());
            j jVar = this.f4304a;
            if (jVar.e()) {
                return;
            } else {
                r02 = jVar.w();
            }
        } while (r02 == this.f4305b);
        this.f4307d = r02;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void I(List<Double> list) throws IOException {
        int r02;
        int r72;
        boolean z10 = list instanceof n;
        j jVar = this.f4304a;
        if (!z10) {
            int r03 = this.f4305b & 7;
            if (r03 == 1) {
                do {
                    list.add(Double.valueOf(jVar.j()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            int r04 = jVar.x();
            T(r04);
            int r12 = jVar.d() + r04;
            do {
                list.add(Double.valueOf(jVar.j()));
            } while (jVar.d() < r12);
            return;
        }
        n nVar = (n) list;
        int r73 = this.f4305b & 7;
        if (r73 == 1) {
            do {
                nVar.l(jVar.j());
                if (jVar.e()) {
                    return;
                } else {
                    r72 = jVar.w();
                }
            } while (r72 == this.f4305b);
            this.f4307d = r72;
            return;
        }
        if (r73 != 2) {
            throw a0.b();
        }
        int r74 = jVar.x();
        T(r74);
        int r13 = jVar.d() + r74;
        do {
            nVar.l(jVar.j());
        } while (jVar.d() < r13);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final <T> void J(List<T> list, e1<T> e1Var, p pVar) throws IOException {
        int r12;
        int r02 = this.f4305b;
        if ((r02 & 7) != 3) {
            int r42 = a0.f4223a;
            throw new a0.a();
        }
        do {
            list.add(N(e1Var, pVar));
            j jVar = this.f4304a;
            if (jVar.e() || this.f4307d != 0) {
                return;
            } else {
                r12 = jVar.w();
            }
        } while (r12 == r02);
        this.f4307d = r12;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final long K() throws IOException {
        R(0);
        return this.f4304a.p();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final String L() throws IOException {
        R(2);
        return this.f4304a.v();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void M(List<Long> list) throws IOException {
        int r02;
        int r72;
        boolean z10 = list instanceof h0;
        j jVar = this.f4304a;
        if (!z10) {
            int r03 = this.f4305b & 7;
            if (r03 == 1) {
                do {
                    list.add(Long.valueOf(jVar.m()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            int r04 = jVar.x();
            T(r04);
            int r12 = jVar.d() + r04;
            do {
                list.add(Long.valueOf(jVar.m()));
            } while (jVar.d() < r12);
            return;
        }
        h0 h0Var = (h0) list;
        int r73 = this.f4305b & 7;
        if (r73 == 1) {
            do {
                h0Var.l(jVar.m());
                if (jVar.e()) {
                    return;
                } else {
                    r72 = jVar.w();
                }
            } while (r72 == this.f4305b);
            this.f4307d = r72;
            return;
        }
        if (r73 != 2) {
            throw a0.b();
        }
        int r74 = jVar.x();
        T(r74);
        int r13 = jVar.d() + r74;
        do {
            h0Var.l(jVar.m());
        } while (jVar.d() < r13);
    }

    public final <T> T N(e1<T> e1Var, p pVar) throws IOException {
        int r02 = this.f4306c;
        this.f4306c = ((this.f4305b >>> 3) << 3) | 4;
        try {
            T tC = e1Var.c();
            e1Var.i(tC, this, pVar);
            e1Var.e(tC);
            if (this.f4305b == this.f4306c) {
                return tC;
            }
            throw a0.e();
        } finally {
            this.f4306c = r02;
        }
    }

    public final <T> T O(e1<T> e1Var, p pVar) throws IOException {
        j jVar = this.f4304a;
        int r12 = jVar.x();
        if (jVar.f4295a >= jVar.f4296b) {
            throw new a0("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        int r13 = jVar.g(r12);
        T tC = e1Var.c();
        jVar.f4295a++;
        e1Var.i(tC, this, pVar);
        e1Var.e(tC);
        jVar.a(0);
        jVar.f4295a--;
        jVar.f(r13);
        return tC;
    }

    public final void P(List<String> list, boolean z10) throws IOException {
        int r02;
        int r42;
        if ((this.f4305b & 7) != 2) {
            throw a0.b();
        }
        boolean z11 = list instanceof f0;
        j jVar = this.f4304a;
        if (!z11 || z10) {
            do {
                list.add(z10 ? L() : y());
                if (jVar.e()) {
                    return;
                } else {
                    r02 = jVar.w();
                }
            } while (r02 == this.f4305b);
            this.f4307d = r02;
            return;
        }
        f0 f0Var = (f0) list;
        do {
            f0Var.e0(C());
            if (jVar.e()) {
                return;
            } else {
                r42 = jVar.w();
            }
        } while (r42 == this.f4305b);
        this.f4307d = r42;
    }

    public final void Q(int r22) throws IOException {
        if (this.f4304a.d() != r22) {
            throw a0.f();
        }
    }

    public final void R(int r22) throws IOException {
        if ((this.f4305b & 7) != r22) {
            throw a0.b();
        }
    }

    public final void S(int r12) throws IOException {
        if ((r12 & 3) != 0) {
            throw a0.e();
        }
    }

    public final void T(int r12) throws IOException {
        if ((r12 & 7) != 0) {
            throw a0.e();
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void a(List<Integer> list) throws IOException {
        int r02;
        int r12;
        int r42;
        boolean z10 = list instanceof y;
        j jVar = this.f4304a;
        if (z10) {
            y yVar = (y) list;
            int r43 = this.f4305b & 7;
            if (r43 == 0) {
                do {
                    yVar.l(jVar.s());
                    if (jVar.e()) {
                        return;
                    } else {
                        r42 = jVar.w();
                    }
                } while (r42 == this.f4305b);
                this.f4307d = r42;
                return;
            }
            if (r43 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                yVar.l(jVar.s());
            } while (jVar.d() < r12);
        } else {
            int r03 = this.f4305b & 7;
            if (r03 == 0) {
                do {
                    list.add(Integer.valueOf(jVar.s()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                list.add(Integer.valueOf(jVar.s()));
            } while (jVar.d() < r12);
        }
        Q(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final long b() throws IOException {
        R(0);
        return this.f4304a.y();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final long c() throws IOException {
        R(1);
        return this.f4304a.m();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void d(List<Integer> list) throws IOException {
        int r02;
        int r6;
        boolean z10 = list instanceof y;
        j jVar = this.f4304a;
        if (!z10) {
            int r03 = this.f4305b & 7;
            if (r03 == 2) {
                int r04 = jVar.x();
                S(r04);
                int r12 = jVar.d() + r04;
                do {
                    list.add(Integer.valueOf(jVar.q()));
                } while (jVar.d() < r12);
                return;
            }
            if (r03 != 5) {
                throw a0.b();
            }
            do {
                list.add(Integer.valueOf(jVar.q()));
                if (jVar.e()) {
                    return;
                } else {
                    r02 = jVar.w();
                }
            } while (r02 == this.f4305b);
            this.f4307d = r02;
            return;
        }
        y yVar = (y) list;
        int r62 = this.f4305b & 7;
        if (r62 == 2) {
            int r63 = jVar.x();
            S(r63);
            int r42 = jVar.d() + r63;
            do {
                yVar.l(jVar.q());
            } while (jVar.d() < r42);
            return;
        }
        if (r62 != 5) {
            throw a0.b();
        }
        do {
            yVar.l(jVar.q());
            if (jVar.e()) {
                return;
            } else {
                r6 = jVar.w();
            }
        } while (r6 == this.f4305b);
        this.f4307d = r6;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void e(List<Long> list) throws IOException {
        int r02;
        int r12;
        int r6;
        boolean z10 = list instanceof h0;
        j jVar = this.f4304a;
        if (z10) {
            h0 h0Var = (h0) list;
            int r62 = this.f4305b & 7;
            if (r62 == 0) {
                do {
                    h0Var.l(jVar.t());
                    if (jVar.e()) {
                        return;
                    } else {
                        r6 = jVar.w();
                    }
                } while (r6 == this.f4305b);
                this.f4307d = r6;
                return;
            }
            if (r62 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                h0Var.l(jVar.t());
            } while (jVar.d() < r12);
        } else {
            int r03 = this.f4305b & 7;
            if (r03 == 0) {
                do {
                    list.add(Long.valueOf(jVar.t()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                list.add(Long.valueOf(jVar.t()));
            } while (jVar.d() < r12);
        }
        Q(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void f(List<Integer> list) throws IOException {
        int r02;
        int r12;
        int r42;
        boolean z10 = list instanceof y;
        j jVar = this.f4304a;
        if (z10) {
            y yVar = (y) list;
            int r43 = this.f4305b & 7;
            if (r43 == 0) {
                do {
                    yVar.l(jVar.x());
                    if (jVar.e()) {
                        return;
                    } else {
                        r42 = jVar.w();
                    }
                } while (r42 == this.f4305b);
                this.f4307d = r42;
                return;
            }
            if (r43 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                yVar.l(jVar.x());
            } while (jVar.d() < r12);
        } else {
            int r03 = this.f4305b & 7;
            if (r03 == 0) {
                do {
                    list.add(Integer.valueOf(jVar.x()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                list.add(Integer.valueOf(jVar.x()));
            } while (jVar.d() < r12);
        }
        Q(r12);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final <T> void g(List<T> list, e1<T> e1Var, p pVar) throws IOException {
        int r12;
        int r02 = this.f4305b;
        if ((r02 & 7) != 2) {
            int r42 = a0.f4223a;
            throw new a0.a();
        }
        do {
            list.add(O(e1Var, pVar));
            j jVar = this.f4304a;
            if (jVar.e() || this.f4307d != 0) {
                return;
            } else {
                r12 = jVar.w();
            }
        } while (r12 == r02);
        this.f4307d = r12;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final int getTag() {
        return this.f4305b;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final int h() throws IOException {
        R(5);
        return this.f4304a.l();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final boolean i() throws IOException {
        R(0);
        return this.f4304a.h();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final long j() throws IOException {
        R(1);
        return this.f4304a.r();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void k(List<Long> list) throws IOException {
        int r02;
        int r12;
        int r6;
        boolean z10 = list instanceof h0;
        j jVar = this.f4304a;
        if (z10) {
            h0 h0Var = (h0) list;
            int r62 = this.f4305b & 7;
            if (r62 == 0) {
                do {
                    h0Var.l(jVar.y());
                    if (jVar.e()) {
                        return;
                    } else {
                        r6 = jVar.w();
                    }
                } while (r6 == this.f4305b);
                this.f4307d = r6;
                return;
            }
            if (r62 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                h0Var.l(jVar.y());
            } while (jVar.d() < r12);
        } else {
            int r03 = this.f4305b & 7;
            if (r03 == 0) {
                do {
                    list.add(Long.valueOf(jVar.y()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                list.add(Long.valueOf(jVar.y()));
            } while (jVar.d() < r12);
        }
        Q(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final int l() throws IOException {
        R(0);
        return this.f4304a.x();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void m() throws IOException {
        R(2);
        j jVar = this.f4304a;
        jVar.g(jVar.x());
        throw null;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void n(List<Long> list) throws IOException {
        int r02;
        int r12;
        int r6;
        boolean z10 = list instanceof h0;
        j jVar = this.f4304a;
        if (z10) {
            h0 h0Var = (h0) list;
            int r62 = this.f4305b & 7;
            if (r62 == 0) {
                do {
                    h0Var.l(jVar.p());
                    if (jVar.e()) {
                        return;
                    } else {
                        r6 = jVar.w();
                    }
                } while (r6 == this.f4305b);
                this.f4307d = r6;
                return;
            }
            if (r62 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                h0Var.l(jVar.p());
            } while (jVar.d() < r12);
        } else {
            int r03 = this.f4305b & 7;
            if (r03 == 0) {
                do {
                    list.add(Long.valueOf(jVar.p()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                list.add(Long.valueOf(jVar.p()));
            } while (jVar.d() < r12);
        }
        Q(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void o(List<Long> list) throws IOException {
        int r02;
        int r72;
        boolean z10 = list instanceof h0;
        j jVar = this.f4304a;
        if (!z10) {
            int r03 = this.f4305b & 7;
            if (r03 == 1) {
                do {
                    list.add(Long.valueOf(jVar.r()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            int r04 = jVar.x();
            T(r04);
            int r12 = jVar.d() + r04;
            do {
                list.add(Long.valueOf(jVar.r()));
            } while (jVar.d() < r12);
            return;
        }
        h0 h0Var = (h0) list;
        int r73 = this.f4305b & 7;
        if (r73 == 1) {
            do {
                h0Var.l(jVar.r());
                if (jVar.e()) {
                    return;
                } else {
                    r72 = jVar.w();
                }
            } while (r72 == this.f4305b);
            this.f4307d = r72;
            return;
        }
        if (r73 != 2) {
            throw a0.b();
        }
        int r74 = jVar.x();
        T(r74);
        int r13 = jVar.d() + r74;
        do {
            h0Var.l(jVar.r());
        } while (jVar.d() < r13);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void p(List<Integer> list) throws IOException {
        int r02;
        int r12;
        int r42;
        boolean z10 = list instanceof y;
        j jVar = this.f4304a;
        if (z10) {
            y yVar = (y) list;
            int r43 = this.f4305b & 7;
            if (r43 == 0) {
                do {
                    yVar.l(jVar.o());
                    if (jVar.e()) {
                        return;
                    } else {
                        r42 = jVar.w();
                    }
                } while (r42 == this.f4305b);
                this.f4307d = r42;
                return;
            }
            if (r43 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                yVar.l(jVar.o());
            } while (jVar.d() < r12);
        } else {
            int r03 = this.f4305b & 7;
            if (r03 == 0) {
                do {
                    list.add(Integer.valueOf(jVar.o()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                list.add(Integer.valueOf(jVar.o()));
            } while (jVar.d() < r12);
        }
        Q(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void q(List<Integer> list) throws IOException {
        int r02;
        int r12;
        int r42;
        boolean z10 = list instanceof y;
        j jVar = this.f4304a;
        if (z10) {
            y yVar = (y) list;
            int r43 = this.f4305b & 7;
            if (r43 == 0) {
                do {
                    yVar.l(jVar.k());
                    if (jVar.e()) {
                        return;
                    } else {
                        r42 = jVar.w();
                    }
                } while (r42 == this.f4305b);
                this.f4307d = r42;
                return;
            }
            if (r43 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                yVar.l(jVar.k());
            } while (jVar.d() < r12);
        } else {
            int r03 = this.f4305b & 7;
            if (r03 == 0) {
                do {
                    list.add(Integer.valueOf(jVar.k()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                list.add(Integer.valueOf(jVar.k()));
            } while (jVar.d() < r12);
        }
        Q(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final <T> T r(e1<T> e1Var, p pVar) throws IOException {
        R(3);
        return (T) N(e1Var, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final double readDouble() throws IOException {
        R(1);
        return this.f4304a.j();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final float readFloat() throws IOException {
        R(5);
        return this.f4304a.n();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final int s() throws IOException {
        R(0);
        return this.f4304a.k();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final <T> T t(e1<T> e1Var, p pVar) throws IOException {
        R(2);
        return (T) O(e1Var, pVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void u(List<Integer> list) throws IOException {
        int r02;
        int r6;
        boolean z10 = list instanceof y;
        j jVar = this.f4304a;
        if (!z10) {
            int r03 = this.f4305b & 7;
            if (r03 == 2) {
                int r04 = jVar.x();
                S(r04);
                int r12 = jVar.d() + r04;
                do {
                    list.add(Integer.valueOf(jVar.l()));
                } while (jVar.d() < r12);
                return;
            }
            if (r03 != 5) {
                throw a0.b();
            }
            do {
                list.add(Integer.valueOf(jVar.l()));
                if (jVar.e()) {
                    return;
                } else {
                    r02 = jVar.w();
                }
            } while (r02 == this.f4305b);
            this.f4307d = r02;
            return;
        }
        y yVar = (y) list;
        int r62 = this.f4305b & 7;
        if (r62 == 2) {
            int r63 = jVar.x();
            S(r63);
            int r42 = jVar.d() + r63;
            do {
                yVar.l(jVar.l());
            } while (jVar.d() < r42);
            return;
        }
        if (r62 != 5) {
            throw a0.b();
        }
        do {
            yVar.l(jVar.l());
            if (jVar.e()) {
                return;
            } else {
                r6 = jVar.w();
            }
        } while (r6 == this.f4305b);
        this.f4307d = r6;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final int v() throws IOException {
        R(0);
        return this.f4304a.s();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final long w() throws IOException {
        R(0);
        return this.f4304a.t();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final void x(List<Boolean> list) throws IOException {
        int r02;
        int r12;
        int r42;
        boolean z10 = list instanceof f;
        j jVar = this.f4304a;
        if (z10) {
            f fVar = (f) list;
            int r43 = this.f4305b & 7;
            if (r43 == 0) {
                do {
                    fVar.l(jVar.h());
                    if (jVar.e()) {
                        return;
                    } else {
                        r42 = jVar.w();
                    }
                } while (r42 == this.f4305b);
                this.f4307d = r42;
                return;
            }
            if (r43 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                fVar.l(jVar.h());
            } while (jVar.d() < r12);
        } else {
            int r03 = this.f4305b & 7;
            if (r03 == 0) {
                do {
                    list.add(Boolean.valueOf(jVar.h()));
                    if (jVar.e()) {
                        return;
                    } else {
                        r02 = jVar.w();
                    }
                } while (r02 == this.f4305b);
                this.f4307d = r02;
                return;
            }
            if (r03 != 2) {
                throw a0.b();
            }
            r12 = jVar.d() + jVar.x();
            do {
                list.add(Boolean.valueOf(jVar.h()));
            } while (jVar.d() < r12);
        }
        Q(r12);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final String y() throws IOException {
        R(2);
        return this.f4304a.u();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.d1
    public final int z() throws IOException {
        int r02 = this.f4307d;
        if (r02 != 0) {
            this.f4305b = r02;
            this.f4307d = 0;
        } else {
            this.f4305b = this.f4304a.w();
        }
        int r03 = this.f4305b;
        if (r03 == 0 || r03 == this.f4306c) {
            return Integer.MAX_VALUE;
        }
        return r03 >>> 3;
    }
}
