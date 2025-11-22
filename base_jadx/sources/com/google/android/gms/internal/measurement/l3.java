package com.google.android.gms.internal.measurement;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class l3 extends q6<l3, k3> implements t7 {
    private static final l3 zza;
    private int zze;
    private long zzh;
    private float zzi;
    private double zzj;
    private String zzf = "";
    private String zzg = "";
    private w6<l3> zzk = b8.f3397d;

    static {
        l3 l3Var = new l3();
        zza = l3Var;
        q6.l(l3.class, l3Var);
    }

    public static /* synthetic */ void A(l3 l3Var, String str) {
        str.getClass();
        l3Var.zze |= 1;
        l3Var.zzf = str;
    }

    public static /* synthetic */ void B(l3 l3Var, String str) {
        str.getClass();
        l3Var.zze |= 2;
        l3Var.zzg = str;
    }

    public static /* synthetic */ void C(l3 l3Var) {
        l3Var.zze &= -3;
        l3Var.zzg = zza.zzg;
    }

    public static /* synthetic */ void D(l3 l3Var, long j10) {
        l3Var.zze |= 4;
        l3Var.zzh = j10;
    }

    public static /* synthetic */ void E(l3 l3Var) {
        l3Var.zze &= -5;
        l3Var.zzh = 0L;
    }

    public static /* synthetic */ void F(l3 l3Var, double d10) {
        l3Var.zze |= 16;
        l3Var.zzj = d10;
    }

    public static /* synthetic */ void G(l3 l3Var) {
        l3Var.zze &= -17;
        l3Var.zzj = 0.0d;
    }

    public static void H(l3 l3Var, l3 l3Var2) {
        w6<l3> w6Var = l3Var.zzk;
        if (!w6Var.c()) {
            l3Var.zzk = q6.j(w6Var);
        }
        l3Var.zzk.add(l3Var2);
    }

    public static void I(l3 l3Var, ArrayList arrayList) {
        w6<l3> w6Var = l3Var.zzk;
        if (!w6Var.c()) {
            l3Var.zzk = q6.j(w6Var);
        }
        l5.f(arrayList, l3Var.zzk);
    }

    public static void J(l3 l3Var) {
        l3Var.zzk = b8.f3397d;
    }

    public static k3 v() {
        return zza.m();
    }

    public final boolean K() {
        return (this.zze & 16) != 0;
    }

    public final boolean L() {
        return (this.zze & 8) != 0;
    }

    public final boolean M() {
        return (this.zze & 4) != 0;
    }

    public final boolean N() {
        return (this.zze & 1) != 0;
    }

    public final boolean O() {
        return (this.zze & 2) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r83 == 2) {
            return new c8(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", l3.class});
        }
        if (r83 == 3) {
            return new l3();
        }
        if (r83 == 4) {
            return new k3(r12);
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final double r() {
        return this.zzj;
    }

    public final float s() {
        return this.zzi;
    }

    public final int t() {
        return this.zzk.size();
    }

    public final long u() {
        return this.zzh;
    }

    public final String x() {
        return this.zzf;
    }

    public final String y() {
        return this.zzg;
    }

    public final w6 z() {
        return this.zzk;
    }
}
