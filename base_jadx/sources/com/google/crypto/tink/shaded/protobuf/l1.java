package com.google.crypto.tink.shaded.protobuf;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class l1 extends j1<k1, k1> {
    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void a(int r12, int r22, Object obj) {
        ((k1) obj).b((r12 << 3) | 5, Integer.valueOf(r22));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void b(int r12, long j10, Object obj) {
        ((k1) obj).b((r12 << 3) | 1, Long.valueOf(j10));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void c(int r12, Object obj, Object obj2) {
        ((k1) obj).b((r12 << 3) | 3, (k1) obj2);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void d(k1 k1Var, int r22, i iVar) {
        k1Var.b((r22 << 3) | 2, iVar);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void e(int r12, long j10, Object obj) {
        ((k1) obj).b((r12 << 3) | 0, Long.valueOf(j10));
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final k1 f(Object obj) {
        x xVar = (x) obj;
        k1 k1Var = xVar.unknownFields;
        if (k1Var != k1.f) {
            return k1Var;
        }
        k1 k1Var2 = new k1();
        xVar.unknownFields = k1Var2;
        return k1Var2;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final k1 g(Object obj) {
        return ((x) obj).unknownFields;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final int h(k1 k1Var) {
        return k1Var.a();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final int i(k1 k1Var) {
        k1 k1Var2 = k1Var;
        int r02 = k1Var2.f4313d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < k1Var2.f4310a; r03++) {
            int r22 = k1Var2.f4311b[r03] >>> 3;
            i iVar = (i) k1Var2.f4312c[r03];
            r12 += l.c(3, iVar) + l.u(2, r22) + (l.t(1) * 2);
        }
        k1Var2.f4313d = r12;
        return r12;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void j(Object obj) {
        ((x) obj).unknownFields.f4314e = false;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final k1 k(Object obj, Object obj2) {
        k1 k1Var = (k1) obj;
        k1 k1Var2 = (k1) obj2;
        if (k1Var2.equals(k1.f)) {
            return k1Var;
        }
        int r02 = k1Var.f4310a + k1Var2.f4310a;
        int[] r12 = Arrays.copyOf(k1Var.f4311b, r02);
        System.arraycopy(k1Var2.f4311b, 0, r12, k1Var.f4310a, k1Var2.f4310a);
        Object[] objArrCopyOf = Arrays.copyOf(k1Var.f4312c, r02);
        System.arraycopy(k1Var2.f4312c, 0, objArrCopyOf, k1Var.f4310a, k1Var2.f4310a);
        return new k1(r02, r12, objArrCopyOf, true);
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final k1 m() {
        return new k1();
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void n(Object obj, k1 k1Var) {
        ((x) obj).unknownFields = k1Var;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void o(Object obj, k1 k1Var) {
        ((x) obj).unknownFields = k1Var;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void p() {
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final k1 q(Object obj) {
        k1 k1Var = (k1) obj;
        k1Var.f4314e = false;
        return k1Var;
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void r(Object obj, m mVar) throws IOException {
        k1 k1Var = (k1) obj;
        k1Var.getClass();
        mVar.getClass();
        for (int r02 = 0; r02 < k1Var.f4310a; r02++) {
            mVar.l(k1Var.f4311b[r02] >>> 3, k1Var.f4312c[r02]);
        }
    }

    @Override // com.google.crypto.tink.shaded.protobuf.j1
    public final void s(Object obj, m mVar) throws IOException {
        ((k1) obj).c(mVar);
    }
}
