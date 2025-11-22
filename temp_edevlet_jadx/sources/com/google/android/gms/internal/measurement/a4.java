package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class a4 extends q6<a4, z3> implements t7 {
    private static final a4 zza;
    private int zze;
    private long zzf;
    private String zzg = "";
    private String zzh = "";
    private long zzi;
    private float zzj;
    private double zzk;

    static {
        a4 a4Var = new a4();
        zza = a4Var;
        q6.l(a4.class, a4Var);
    }

    public static /* synthetic */ void A(a4 a4Var, String str) {
        str.getClass();
        a4Var.zze |= 4;
        a4Var.zzh = str;
    }

    public static /* synthetic */ void B(a4 a4Var) {
        a4Var.zze &= -5;
        a4Var.zzh = zza.zzh;
    }

    public static /* synthetic */ void C(a4 a4Var, long j10) {
        a4Var.zze |= 8;
        a4Var.zzi = j10;
    }

    public static /* synthetic */ void D(a4 a4Var) {
        a4Var.zze &= -9;
        a4Var.zzi = 0L;
    }

    public static /* synthetic */ void E(a4 a4Var, double d10) {
        a4Var.zze |= 32;
        a4Var.zzk = d10;
    }

    public static /* synthetic */ void F(a4 a4Var) {
        a4Var.zze &= -33;
        a4Var.zzk = 0.0d;
    }

    public static z3 u() {
        return zza.m();
    }

    public static /* synthetic */ void y(a4 a4Var, long j10) {
        a4Var.zze |= 1;
        a4Var.zzf = j10;
    }

    public static /* synthetic */ void z(a4 a4Var, String str) {
        str.getClass();
        a4Var.zze |= 2;
        a4Var.zzg = str;
    }

    public final boolean G() {
        return (this.zze & 32) != 0;
    }

    public final boolean H() {
        return (this.zze & 8) != 0;
    }

    public final boolean I() {
        return (this.zze & 1) != 0;
    }

    public final boolean J() {
        return (this.zze & 4) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r83 == 2) {
            return new c8(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (r83 == 3) {
            return new a4();
        }
        if (r83 == 4) {
            return new z3(r12);
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final double r() {
        return this.zzk;
    }

    public final long s() {
        return this.zzi;
    }

    public final long t() {
        return this.zzf;
    }

    public final String w() {
        return this.zzg;
    }

    public final String x() {
        return this.zzh;
    }
}
