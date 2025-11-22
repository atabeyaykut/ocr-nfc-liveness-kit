package db;

import cc.e0;
import cc.f0;
import cc.l0;
import cc.m0;
import cc.s1;
import cc.y;
import ya.d;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final ya.d f4742a = d.a.f19355a;

    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        public final e0 f4743a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4744b;

        public a(s1 s1Var, int r22) {
            this.f4743a = s1Var;
            this.f4744b = r22;
        }
    }

    public static final class b {

        /* renamed from: a, reason: collision with root package name */
        public final m0 f4745a;

        /* renamed from: b, reason: collision with root package name */
        public final int f4746b;

        /* renamed from: c, reason: collision with root package name */
        public final boolean f4747c;

        public b(m0 m0Var, int r22, boolean z10) {
            this.f4745a = m0Var;
            this.f4746b = r22;
            this.f4747c = z10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00df  */
    /* JADX WARN: Type inference failed for: r6v0 */
    /* JADX WARN: Type inference failed for: r6v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final db.g.b a(cc.m0 r18, db.b r19, int r20, int r21, boolean r22, boolean r23) {
        /*
            Method dump skipped, instructions count: 698
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: db.g.a(cc.m0, db.b, int, int, boolean, boolean):db.g$b");
    }

    public final a b(s1 s1Var, db.b bVar, int r14, boolean z10) {
        e0 e0VarC;
        s1 s1VarO = null;
        if (c5.v.y(s1Var)) {
            return new a(null, 1);
        }
        if (!(s1Var instanceof y)) {
            if (!(s1Var instanceof m0)) {
                throw new j7.p();
            }
            b bVarA = a((m0) s1Var, bVar, r14, 3, false, z10);
            boolean z11 = bVarA.f4747c;
            s1 s1VarO2 = bVarA.f4745a;
            if (z11) {
                s1VarO2 = c5.v.O(s1Var, s1VarO2);
            }
            return new a(s1VarO2, bVarA.f4746b);
        }
        boolean z12 = s1Var instanceof l0;
        y yVar = (y) s1Var;
        b bVarA2 = a(yVar.f2377b, bVar, r14, 1, z12, z10);
        b bVarA3 = a(yVar.f2378c, bVar, r14, 2, z12, z10);
        m0 m0Var = bVarA3.f4745a;
        m0 m0Var2 = bVarA2.f4745a;
        if (m0Var2 != null || m0Var != null) {
            if (bVarA2.f4747c || bVarA3.f4747c) {
                if (m0Var != null) {
                    if (m0Var2 == null) {
                        m0Var2 = m0Var;
                    }
                    e0VarC = f0.c(m0Var2, m0Var);
                } else {
                    kotlin.jvm.internal.h.c(m0Var2);
                    e0VarC = m0Var2;
                }
                s1VarO = c5.v.O(s1Var, e0VarC);
            } else {
                m0 m0Var3 = yVar.f2378c;
                m0 m0Var4 = yVar.f2377b;
                m0 m0Var5 = m0Var2;
                if (z12) {
                    m0 m0Var6 = m0Var2;
                    if (m0Var2 == null) {
                        m0Var6 = m0Var4;
                    }
                    if (m0Var == null) {
                        m0Var = m0Var3;
                    }
                    s1VarO = new ab.h(m0Var6, m0Var);
                } else {
                    if (m0Var2 == null) {
                        m0Var5 = m0Var4;
                    }
                    if (m0Var == null) {
                        m0Var = m0Var3;
                    }
                    s1VarO = f0.c(m0Var5, m0Var);
                }
            }
        }
        return new a(s1VarO, bVarA2.f4746b);
    }
}
