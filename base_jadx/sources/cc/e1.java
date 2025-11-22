package cc;

/* loaded from: classes2.dex */
public abstract class e1 extends l1 {

    /* renamed from: b, reason: collision with root package name */
    public static final a f2291b = new a();

    public static final class a {
        public final l1 a(e0 e0Var) {
            return b(e0Var.M0(), e0Var.K0());
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0024  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final cc.l1 b(cc.c1 r6, java.util.List<? extends cc.i1> r7) {
            /*
                r5 = this;
                java.lang.String r0 = "typeConstructor"
                kotlin.jvm.internal.h.f(r6, r0)
                java.lang.String r0 = "arguments"
                kotlin.jvm.internal.h.f(r7, r0)
                java.util.List r0 = r6.getParameters()
                java.lang.String r1 = "typeConstructor.parameters"
                kotlin.jvm.internal.h.e(r0, r1)
                java.lang.Object r2 = m9.t.j1(r0)
                ma.w0 r2 = (ma.w0) r2
                r3 = 0
                if (r2 == 0) goto L24
                boolean r2 = r2.l0()
                r4 = 1
                if (r2 != r4) goto L24
                goto L25
            L24:
                r4 = 0
            L25:
                if (r4 == 0) goto L61
                java.util.List r6 = r6.getParameters()
                kotlin.jvm.internal.h.e(r6, r1)
                java.lang.Iterable r6 = (java.lang.Iterable) r6
                java.util.ArrayList r0 = new java.util.ArrayList
                int r1 = m9.n.Q0(r6)
                r0.<init>(r1)
                java.util.Iterator r6 = r6.iterator()
            L3d:
                boolean r1 = r6.hasNext()
                if (r1 == 0) goto L51
                java.lang.Object r1 = r6.next()
                ma.w0 r1 = (ma.w0) r1
                cc.c1 r1 = r1.i()
                r0.add(r1)
                goto L3d
            L51:
                java.lang.Iterable r7 = (java.lang.Iterable) r7
                java.util.ArrayList r6 = m9.t.A1(r0, r7)
                java.util.Map r6 = m9.e0.S0(r6)
                cc.d1 r7 = new cc.d1
                r7.<init>(r6, r3)
                return r7
            L61:
                cc.b0 r6 = new cc.b0
                java.util.Collection r0 = (java.util.Collection) r0
                ma.w0[] r1 = new ma.w0[r3]
                java.lang.Object[] r0 = r0.toArray(r1)
                ma.w0[] r0 = (ma.w0[]) r0
                java.util.Collection r7 = (java.util.Collection) r7
                cc.i1[] r1 = new cc.i1[r3]
                java.lang.Object[] r7 = r7.toArray(r1)
                cc.i1[] r7 = (cc.i1[]) r7
                r6.<init>(r0, r7, r3)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: cc.e1.a.b(cc.c1, java.util.List):cc.l1");
        }
    }

    @Override // cc.l1
    public final i1 d(e0 e0Var) {
        return g(e0Var.M0());
    }

    public abstract i1 g(c1 c1Var);
}
