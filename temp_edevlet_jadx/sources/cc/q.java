package cc;

/* loaded from: classes2.dex */
public final class q extends s implements o, fc.e {

    /* renamed from: b, reason: collision with root package name */
    public final m0 f2346b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2347c;

    public static final class a {
        /* JADX WARN: Removed duplicated region for block: B:36:0x0063  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static cc.q a(cc.s1 r10, boolean r11) {
            /*
                java.lang.String r0 = "type"
                kotlin.jvm.internal.h.f(r10, r0)
                boolean r0 = r10 instanceof cc.q
                if (r0 == 0) goto Ld
                cc.q r10 = (cc.q) r10
                goto La7
            Ld:
                cc.c1 r0 = r10.M0()
                boolean r0 = r0 instanceof dc.n
                r1 = 1
                r2 = 0
                if (r0 != 0) goto L2e
                cc.c1 r0 = r10.M0()
                ma.g r0 = r0.n()
                boolean r0 = r0 instanceof ma.w0
                if (r0 != 0) goto L2e
                boolean r0 = r10 instanceof dc.h
                if (r0 != 0) goto L2e
                boolean r0 = r10 instanceof cc.u0
                if (r0 == 0) goto L2c
                goto L2e
            L2c:
                r0 = 0
                goto L2f
            L2e:
                r0 = 1
            L2f:
                r3 = 0
                if (r0 != 0) goto L34
                r1 = 0
                goto L7f
            L34:
                boolean r0 = r10 instanceof cc.u0
                if (r0 == 0) goto L39
                goto L63
            L39:
                cc.c1 r0 = r10.M0()
                ma.g r0 = r0.n()
                boolean r4 = r0 instanceof pa.t0
                if (r4 == 0) goto L48
                pa.t0 r0 = (pa.t0) r0
                goto L49
            L48:
                r0 = r3
            L49:
                if (r0 == 0) goto L51
                boolean r0 = r0.f12996n
                if (r0 != 0) goto L51
                r0 = 1
                goto L52
            L51:
                r0 = 0
            L52:
                if (r0 == 0) goto L55
                goto L7f
            L55:
                if (r11 == 0) goto L68
                cc.c1 r0 = r10.M0()
                ma.g r0 = r0.n()
                boolean r0 = r0 instanceof ma.w0
                if (r0 == 0) goto L68
            L63:
                boolean r1 = cc.q1.g(r10)
                goto L7f
            L68:
                dc.p r6 = dc.p.f4850a
                r4 = 0
                r5 = 1
                r7 = 0
                r8 = 0
                r9 = 24
                cc.b1 r0 = dc.a.a(r4, r5, r6, r7, r8, r9)
                cc.m0 r4 = c5.v.E(r10)
                cc.b1$b$b r5 = cc.b1.b.C0056b.f2271a
                boolean r0 = cc.c.a(r0, r4, r5)
                r1 = r1 ^ r0
            L7f:
                if (r1 == 0) goto La6
                boolean r0 = r10 instanceof cc.y
                if (r0 == 0) goto L97
                r0 = r10
                cc.y r0 = (cc.y) r0
                cc.m0 r1 = r0.f2377b
                cc.c1 r1 = r1.M0()
                cc.m0 r0 = r0.f2378c
                cc.c1 r0 = r0.M0()
                kotlin.jvm.internal.h.a(r1, r0)
            L97:
                cc.q r0 = new cc.q
                cc.m0 r10 = c5.v.E(r10)
                cc.m0 r10 = r10.Q0(r2)
                r0.<init>(r10, r11)
                r10 = r0
                goto La7
            La6:
                r10 = r3
            La7:
                return r10
            */
            throw new UnsupportedOperationException("Method not decompiled: cc.q.a.a(cc.s1, boolean):cc.q");
        }
    }

    public q(m0 m0Var, boolean z10) {
        this.f2346b = m0Var;
        this.f2347c = z10;
    }

    @Override // cc.s, cc.e0
    public final boolean N0() {
        return false;
    }

    @Override // cc.m0
    /* renamed from: T0 */
    public final m0 Q0(boolean z10) {
        return z10 ? this.f2346b.Q0(z10) : this;
    }

    @Override // cc.m0
    /* renamed from: U0 */
    public final m0 S0(a1 newAttributes) {
        kotlin.jvm.internal.h.f(newAttributes, "newAttributes");
        return new q(this.f2346b.S0(newAttributes), this.f2347c);
    }

    @Override // cc.s
    public final m0 V0() {
        return this.f2346b;
    }

    @Override // cc.s
    public final s X0(m0 m0Var) {
        return new q(m0Var, this.f2347c);
    }

    @Override // cc.o
    public final s1 e0(e0 replacement) {
        kotlin.jvm.internal.h.f(replacement, "replacement");
        return q0.a(replacement.P0(), this.f2347c);
    }

    @Override // cc.m0
    public final String toString() {
        return this.f2346b + " & Any";
    }

    @Override // cc.o
    public final boolean z0() {
        m0 m0Var = this.f2346b;
        return (m0Var.M0() instanceof dc.n) || (m0Var.M0().n() instanceof ma.w0);
    }
}
