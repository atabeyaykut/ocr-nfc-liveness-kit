package com.google.crypto.tink.shaded.protobuf;

import com.google.crypto.tink.shaded.protobuf.c0;
import com.google.crypto.tink.shaded.protobuf.t;
import com.google.crypto.tink.shaded.protobuf.x;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes2.dex */
public final class u0<T> implements e1<T> {

    /* renamed from: a, reason: collision with root package name */
    public final q0 f4385a;

    /* renamed from: b, reason: collision with root package name */
    public final j1<?, ?> f4386b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f4387c;

    /* renamed from: d, reason: collision with root package name */
    public final q<?> f4388d;

    public u0(j1<?, ?> j1Var, q<?> qVar, q0 q0Var) {
        this.f4386b = j1Var;
        this.f4387c = qVar.e(q0Var);
        this.f4388d = qVar;
        this.f4385a = q0Var;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final void a(T t10, T t11) {
        Class<?> cls = f1.f4259a;
        j1<?, ?> j1Var = this.f4386b;
        j1Var.o(t10, j1Var.k(j1Var.g(t10), j1Var.g(t11)));
        if (this.f4387c) {
            f1.B(this.f4388d, t10, t11);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final boolean b(T t10, T t11) {
        j1<?, ?> j1Var = this.f4386b;
        if (!j1Var.g(t10).equals(j1Var.g(t11))) {
            return false;
        }
        if (!this.f4387c) {
            return true;
        }
        q<?> qVar = this.f4388d;
        return qVar.c(t10).equals(qVar.c(t11));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final T c() {
        return (T) this.f4385a.h().j();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final int d(T t10) {
        int r02 = this.f4386b.g(t10).hashCode();
        return this.f4387c ? (r02 * 53) + this.f4388d.c(t10).hashCode() : r02;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final void e(T t10) {
        this.f4386b.j(t10);
        this.f4388d.f(t10);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final boolean f(T t10) {
        return this.f4388d.c(t10).j();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final void g(Object obj, m mVar) throws IOException {
        Iterator itL = this.f4388d.c(obj).l();
        while (itL.hasNext()) {
            Map.Entry entry = (Map.Entry) itL.next();
            t.a aVar = (t.a) entry.getKey();
            if (aVar.l() != q1.MESSAGE) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            aVar.g();
            aVar.m();
            boolean z10 = entry instanceof c0.a;
            aVar.f();
            mVar.l(0, z10 ? ((c0.a) entry).f4242a.getValue().b() : entry.getValue());
        }
        j1<?, ?> j1Var = this.f4386b;
        j1Var.r(j1Var.g(obj), mVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00ad, code lost:
    
        if (r5 == null) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00af, code lost:
    
        r10.b((r1 << 3) | 2, r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b6, code lost:
    
        r1 = r3;
        r11 = r4;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00ad A[EDGE_INSN: B:61:0x00ad->B:43:0x00ad BREAK  A[LOOP:1: B:21:0x0064->B:41:0x00a9], SYNTHETIC] */
    @Override // com.google.crypto.tink.shaded.protobuf.e1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void h(T r18, byte[] r19, int r20, int r21, com.google.crypto.tink.shaded.protobuf.e.a r22) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.crypto.tink.shaded.protobuf.u0.h(java.lang.Object, byte[], int, int, com.google.crypto.tink.shaded.protobuf.e$a):void");
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final void i(T t10, d1 d1Var, p pVar) throws IOException {
        j1 j1Var = this.f4386b;
        k1 k1VarF = j1Var.f(t10);
        q qVar = this.f4388d;
        t<ET> tVarD = qVar.d(t10);
        while (d1Var.z() != Integer.MAX_VALUE && k(d1Var, pVar, qVar, tVarD, j1Var, k1VarF)) {
            try {
            } finally {
                j1Var.n(t10, k1VarF);
            }
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.e1
    public final int j(T t10) {
        h1<T, Object> h1Var;
        j1<?, ?> j1Var = this.f4386b;
        int r12 = 0;
        int i10 = j1Var.i(j1Var.g(t10)) + 0;
        if (!this.f4387c) {
            return i10;
        }
        t<T> tVarC = this.f4388d.c(t10);
        int r22 = 0;
        while (true) {
            h1Var = tVarC.f4359a;
            if (r12 >= h1Var.d()) {
                break;
            }
            r22 += t.g(h1Var.c(r12));
            r12++;
        }
        Iterator<T> it = h1Var.e().iterator();
        while (it.hasNext()) {
            r22 += t.g((Map.Entry) it.next());
        }
        return i10 + r22;
    }

    public final <UT, UB, ET extends t.a<ET>> boolean k(d1 d1Var, p pVar, q<ET> qVar, t<ET> tVar, j1<UT, UB> j1Var, UB ub2) throws IOException {
        int tag = d1Var.getTag();
        q0 q0Var = this.f4385a;
        if (tag != 11) {
            if ((tag & 7) != 2) {
                return d1Var.F();
            }
            x.e eVarB = qVar.b(pVar, q0Var, tag >>> 3);
            if (eVarB == null) {
                return j1Var.l(ub2, d1Var);
            }
            qVar.h(eVarB);
            return true;
        }
        x.e eVarB2 = null;
        i iVarC = null;
        int r32 = 0;
        while (d1Var.z() != Integer.MAX_VALUE) {
            int tag2 = d1Var.getTag();
            if (tag2 == 16) {
                r32 = d1Var.l();
                eVarB2 = qVar.b(pVar, q0Var, r32);
            } else if (tag2 == 26) {
                if (eVarB2 != null) {
                    qVar.h(eVarB2);
                } else {
                    iVarC = d1Var.C();
                }
            } else if (!d1Var.F()) {
                break;
            }
        }
        if (d1Var.getTag() != 12) {
            throw new a0("Protocol message end-group tag did not match expected tag.");
        }
        if (iVarC != null) {
            if (eVarB2 != null) {
                qVar.i(eVarB2);
            } else {
                j1Var.d(ub2, r32, iVarC);
            }
        }
        return true;
    }
}
