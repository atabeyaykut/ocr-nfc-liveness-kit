package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class d3 extends q6<d3, c3> implements t7 {
    private static final d3 zza;
    private int zze;
    private int zzf;
    private w3 zzg;
    private w3 zzh;
    private boolean zzi;

    static {
        d3 d3Var = new d3();
        zza = d3Var;
        q6.l(d3.class, d3Var);
    }

    public static c3 s() {
        return zza.m();
    }

    public static /* synthetic */ void w(d3 d3Var, int r22) {
        d3Var.zze |= 1;
        d3Var.zzf = r22;
    }

    public static /* synthetic */ void x(d3 d3Var, w3 w3Var) {
        d3Var.zzg = w3Var;
        d3Var.zze |= 2;
    }

    public static /* synthetic */ void y(d3 d3Var, w3 w3Var) {
        d3Var.zzh = w3Var;
        d3Var.zze |= 4;
    }

    public static /* synthetic */ void z(d3 d3Var, boolean z10) {
        d3Var.zze |= 8;
        d3Var.zzi = z10;
    }

    public final boolean A() {
        return this.zzi;
    }

    public final boolean B() {
        return (this.zze & 1) != 0;
    }

    public final boolean C() {
        return (this.zze & 8) != 0;
    }

    public final boolean D() {
        return (this.zze & 4) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r72) {
        int r73 = r72 - 1;
        if (r73 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r73 == 2) {
            return new c8(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (r73 == 3) {
            return new d3();
        }
        if (r73 == 4) {
            return new c3(r12);
        }
        if (r73 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzf;
    }

    public final w3 u() {
        w3 w3Var = this.zzg;
        return w3Var == null ? w3.y() : w3Var;
    }

    public final w3 v() {
        w3 w3Var = this.zzh;
        return w3Var == null ? w3.y() : w3Var;
    }
}
