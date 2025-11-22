package com.google.android.gms.internal.clearcut;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class c3 extends a3<b3, b3> {
    @Override // com.google.android.gms.internal.clearcut.a3
    public final /* synthetic */ void a(int r12, long j10, Object obj) {
        ((b3) obj).c(r12 << 3, Long.valueOf(j10));
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final /* synthetic */ void b(Object obj, f0 f0Var) throws IOException {
        ((b3) obj).b(f0Var);
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final void c(Object obj) {
        ((v0) obj).zzjp.f3054e = false;
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final void d(Object obj, f0 f0Var) throws IOException {
        b3 b3Var = (b3) obj;
        b3Var.getClass();
        f0Var.getClass();
        for (int r02 = 0; r02 < b3Var.f3050a; r02++) {
            f0Var.f(b3Var.f3051b[r02] >>> 3, b3Var.f3052c[r02]);
        }
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final b3 e() {
        return new b3();
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final void f(Object obj, b3 b3Var) {
        ((v0) obj).zzjp = b3Var;
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final b3 g(Object obj, Object obj2) {
        b3 b3Var = (b3) obj;
        b3 b3Var2 = (b3) obj2;
        if (b3Var2.equals(b3.f)) {
            return b3Var;
        }
        int r02 = b3Var.f3050a + b3Var2.f3050a;
        int[] r12 = Arrays.copyOf(b3Var.f3051b, r02);
        System.arraycopy(b3Var2.f3051b, 0, r12, b3Var.f3050a, b3Var2.f3050a);
        Object[] objArrCopyOf = Arrays.copyOf(b3Var.f3052c, r02);
        System.arraycopy(b3Var2.f3052c, 0, objArrCopyOf, b3Var.f3050a, b3Var2.f3050a);
        return new b3(r02, r12, objArrCopyOf, true);
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final /* synthetic */ int h(b3 b3Var) {
        return b3Var.a();
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final /* synthetic */ b3 i(Object obj) {
        return ((v0) obj).zzjp;
    }

    @Override // com.google.android.gms.internal.clearcut.a3
    public final int j(b3 b3Var) {
        b3 b3Var2 = b3Var;
        int r02 = b3Var2.f3053d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < b3Var2.f3050a; r03++) {
            int r22 = b3Var2.f3051b[r03] >>> 3;
            x xVar = (x) b3Var2.f3052c[r03];
            r12 += e0.z(3, xVar) + e0.N(2, r22) + (e0.W(1) << 1);
        }
        b3Var2.f3053d = r12;
        return r12;
    }
}
