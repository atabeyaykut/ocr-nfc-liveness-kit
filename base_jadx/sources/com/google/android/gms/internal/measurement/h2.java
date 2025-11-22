package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class h2 extends q6<h2, g2> implements t7 {
    private static final h2 zza;
    private int zze;
    private int zzf;
    private String zzg = "";
    private w6<j2> zzh = b8.f3397d;
    private boolean zzi;
    private m2 zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;

    static {
        h2 h2Var = new h2();
        zza = h2Var;
        q6.l(h2.class, h2Var);
    }

    public static /* synthetic */ void A(h2 h2Var, int r32, j2 j2Var) {
        w6<j2> w6Var = h2Var.zzh;
        if (!w6Var.c()) {
            h2Var.zzh = q6.j(w6Var);
        }
        h2Var.zzh.set(r32, j2Var);
    }

    public static g2 t() {
        return zza.m();
    }

    public static /* synthetic */ void z(h2 h2Var, String str) {
        h2Var.zze |= 2;
        h2Var.zzg = str;
    }

    public final boolean B() {
        return this.zzk;
    }

    public final boolean C() {
        return this.zzl;
    }

    public final boolean D() {
        return this.zzm;
    }

    public final boolean E() {
        return (this.zze & 8) != 0;
    }

    public final boolean F() {
        return (this.zze & 1) != 0;
    }

    public final boolean G() {
        return (this.zze & 64) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r83 == 2) {
            return new c8(zza, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", j2.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
        }
        if (r83 == 3) {
            return new h2();
        }
        if (r83 == 4) {
            return new g2(r12);
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzh.size();
    }

    public final int s() {
        return this.zzf;
    }

    public final j2 v(int r22) {
        return this.zzh.get(r22);
    }

    public final m2 w() {
        m2 m2Var = this.zzj;
        return m2Var == null ? m2.s() : m2Var;
    }

    public final String x() {
        return this.zzg;
    }

    public final w6 y() {
        return this.zzh;
    }
}
