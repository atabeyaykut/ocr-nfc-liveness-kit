package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class p3 extends n3<q3, q3> {
    @Override // com.google.android.gms.internal.vision.n3
    public final q3 a() {
        return new q3();
    }

    @Override // com.google.android.gms.internal.vision.n3
    public final /* synthetic */ void b(int r12, long j10, Object obj) {
        ((q3) obj).a(r12 << 3, Long.valueOf(j10));
    }

    @Override // com.google.android.gms.internal.vision.n3
    public final /* synthetic */ void c(Object obj, u0 u0Var) throws IOException {
        ((q3) obj).b(u0Var);
    }

    @Override // com.google.android.gms.internal.vision.n3
    public final void d(Object obj, q3 q3Var) {
        ((i1) obj).zzb = q3Var;
    }

    @Override // com.google.android.gms.internal.vision.n3
    public final /* synthetic */ q3 e(Object obj) {
        return ((i1) obj).zzb;
    }

    @Override // com.google.android.gms.internal.vision.n3
    public final void f(Object obj, u0 u0Var) throws IOException {
        q3 q3Var = (q3) obj;
        q3Var.getClass();
        u0Var.getClass();
        for (int r02 = 0; r02 < q3Var.f4049a; r02++) {
            u0Var.g(q3Var.f4050b[r02] >>> 3, q3Var.f4051c[r02]);
        }
    }

    @Override // com.google.android.gms.internal.vision.n3
    public final q3 g(Object obj, Object obj2) {
        q3 q3Var = (q3) obj;
        q3 q3Var2 = (q3) obj2;
        if (q3Var2.equals(q3.f)) {
            return q3Var;
        }
        int r02 = q3Var.f4049a + q3Var2.f4049a;
        int[] r12 = Arrays.copyOf(q3Var.f4050b, r02);
        System.arraycopy(q3Var2.f4050b, 0, r12, q3Var.f4049a, q3Var2.f4049a);
        Object[] objArrCopyOf = Arrays.copyOf(q3Var.f4051c, r02);
        System.arraycopy(q3Var2.f4051c, 0, objArrCopyOf, q3Var.f4049a, q3Var2.f4049a);
        return new q3(r02, r12, objArrCopyOf, true);
    }

    @Override // com.google.android.gms.internal.vision.n3
    public final void h(Object obj) {
        ((i1) obj).zzb.f4053e = false;
    }

    @Override // com.google.android.gms.internal.vision.n3
    public final int i(q3 q3Var) {
        q3 q3Var2 = q3Var;
        int r02 = q3Var2.f4052d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < q3Var2.f4049a; r03++) {
            int r22 = q3Var2.f4050b[r03] >>> 3;
            p0 p0Var = (p0) q3Var2.f4051c[r03];
            r12 += t0.y(3, p0Var) + t0.N(2, r22) + (t0.O(8) << 1);
        }
        q3Var2.f4052d = r12;
        return r12;
    }

    @Override // com.google.android.gms.internal.vision.n3
    public final /* synthetic */ int j(q3 q3Var) {
        return q3Var.c();
    }
}
