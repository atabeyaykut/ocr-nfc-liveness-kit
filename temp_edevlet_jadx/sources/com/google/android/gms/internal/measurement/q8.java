package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class q8 extends o8<p8, p8> {
    @Override // com.google.android.gms.internal.measurement.o8
    public final /* synthetic */ int a(p8 p8Var) {
        return p8Var.a();
    }

    @Override // com.google.android.gms.internal.measurement.o8
    public final int b(p8 p8Var) {
        p8 p8Var2 = p8Var;
        int r02 = p8Var2.f3678d;
        if (r02 != -1) {
            return r02;
        }
        int r12 = 0;
        for (int r03 = 0; r03 < p8Var2.f3675a; r03++) {
            int r22 = p8Var2.f3676b[r03];
            v5 v5Var = (v5) p8Var2.f3677c[r03];
            int r42 = z5.G(8);
            int r32 = v5Var.m();
            r12 += z5.G(r32) + r32 + z5.G(24) + z5.G(r22 >>> 3) + z5.G(16) + r42 + r42;
        }
        p8Var2.f3678d = r12;
        return r12;
    }

    @Override // com.google.android.gms.internal.measurement.o8
    public final /* synthetic */ p8 c(Object obj) {
        return ((q6) obj).zzc;
    }

    @Override // com.google.android.gms.internal.measurement.o8
    public final p8 d(p8 p8Var, p8 p8Var2) {
        p8 p8Var3 = p8Var2;
        if (p8Var3.equals(p8.f)) {
            return p8Var;
        }
        p8 p8Var4 = p8Var;
        int r02 = p8Var4.f3675a + p8Var3.f3675a;
        int[] r12 = Arrays.copyOf(p8Var4.f3676b, r02);
        System.arraycopy(p8Var3.f3676b, 0, r12, p8Var4.f3675a, p8Var3.f3675a);
        Object[] objArrCopyOf = Arrays.copyOf(p8Var4.f3677c, r02);
        System.arraycopy(p8Var3.f3677c, 0, objArrCopyOf, p8Var4.f3675a, p8Var3.f3675a);
        return new p8(r02, r12, objArrCopyOf, true);
    }

    @Override // com.google.android.gms.internal.measurement.o8
    public final /* synthetic */ p8 e() {
        return p8.b();
    }

    @Override // com.google.android.gms.internal.measurement.o8
    public final /* bridge */ /* synthetic */ void f(int r12, long j10, Object obj) {
        ((p8) obj).c(r12 << 3, Long.valueOf(j10));
    }

    @Override // com.google.android.gms.internal.measurement.o8
    public final void g(Object obj) {
        ((q6) obj).zzc.f3679e = false;
    }

    @Override // com.google.android.gms.internal.measurement.o8
    public final /* synthetic */ void h(Object obj, p8 p8Var) {
        ((q6) obj).zzc = p8Var;
    }

    @Override // com.google.android.gms.internal.measurement.o8
    public final /* synthetic */ void i(p8 p8Var, a6 a6Var) throws IOException {
        p8Var.d(a6Var);
    }
}
