package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class w3 extends q6<w3, v3> implements t7 {
    private static final w3 zza;
    private v6 zze;
    private v6 zzf;
    private w6<f3> zzg;
    private w6<y3> zzh;

    static {
        w3 w3Var = new w3();
        zza = w3Var;
        q6.l(w3.class, w3Var);
    }

    public w3() {
        h7 h7Var = h7.f3535d;
        this.zze = h7Var;
        this.zzf = h7Var;
        b8<Object> b8Var = b8.f3397d;
        this.zzg = b8Var;
        this.zzh = b8Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void E(w3 w3Var, List list) {
        v6 v6Var = w3Var.zze;
        if (!((m5) v6Var).f3627a) {
            w3Var.zze = q6.p(v6Var);
        }
        l5.f(list, w3Var.zze);
    }

    public static void F(w3 w3Var) {
        w3Var.zze = h7.f3535d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void G(w3 w3Var, List list) {
        v6 v6Var = w3Var.zzf;
        if (!((m5) v6Var).f3627a) {
            w3Var.zzf = q6.p(v6Var);
        }
        l5.f(list, w3Var.zzf);
    }

    public static void H(w3 w3Var) {
        w3Var.zzf = h7.f3535d;
    }

    public static void I(w3 w3Var, ArrayList arrayList) {
        w6<f3> w6Var = w3Var.zzg;
        if (!w6Var.c()) {
            w3Var.zzg = q6.j(w6Var);
        }
        l5.f(arrayList, w3Var.zzg);
    }

    public static void J(w3 w3Var, int r32) {
        w6<f3> w6Var = w3Var.zzg;
        if (!w6Var.c()) {
            w3Var.zzg = q6.j(w6Var);
        }
        w3Var.zzg.remove(r32);
    }

    public static void K(w3 w3Var, List list) {
        w6<y3> w6Var = w3Var.zzh;
        if (!w6Var.c()) {
            w3Var.zzh = q6.j(w6Var);
        }
        l5.f(list, w3Var.zzh);
    }

    public static void L(w3 w3Var, int r32) {
        w6<y3> w6Var = w3Var.zzh;
        if (!w6Var.c()) {
            w3Var.zzh = q6.j(w6Var);
        }
        w3Var.zzh.remove(r32);
    }

    public static v3 w() {
        return zza.m();
    }

    public static w3 y() {
        return zza;
    }

    public final w6 A() {
        return this.zzg;
    }

    public final List<Long> B() {
        return this.zzf;
    }

    public final w6 C() {
        return this.zzh;
    }

    public final v6 D() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r83 == 2) {
            return new c8(zza, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zze", "zzf", "zzg", f3.class, "zzh", y3.class});
        }
        if (r83 == 3) {
            return new w3();
        }
        if (r83 == 4) {
            return new v3(r12);
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzg.size();
    }

    public final int s() {
        return this.zzf.size();
    }

    public final int t() {
        return this.zzh.size();
    }

    public final int u() {
        return this.zze.size();
    }

    public final f3 v(int r22) {
        return this.zzg.get(r22);
    }

    public final y3 z(int r22) {
        return this.zzh.get(r22);
    }
}
