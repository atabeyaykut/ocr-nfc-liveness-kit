package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class o2 extends q6<o2, n2> implements t7 {
    private static final o2 zza;
    private int zze;
    private int zzf;
    private String zzg = "";
    private j2 zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        o2 o2Var = new o2();
        zza = o2Var;
        q6.l(o2.class, o2Var);
    }

    public static n2 t() {
        return zza.m();
    }

    public static /* synthetic */ void w(o2 o2Var, String str) {
        o2Var.zze |= 2;
        o2Var.zzg = str;
    }

    public final boolean A() {
        return (this.zze & 1) != 0;
    }

    public final boolean B() {
        return (this.zze & 32) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r82) {
        int r83 = r82 - 1;
        if (r83 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r83 == 2) {
            return new c8(zza, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (r83 == 3) {
            return new o2();
        }
        if (r83 == 4) {
            return new n2(r12);
        }
        if (r83 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzf;
    }

    public final j2 s() {
        j2 j2Var = this.zzh;
        return j2Var == null ? j2.s() : j2Var;
    }

    public final String v() {
        return this.zzg;
    }

    public final boolean x() {
        return this.zzi;
    }

    public final boolean y() {
        return this.zzj;
    }

    public final boolean z() {
        return this.zzk;
    }
}
