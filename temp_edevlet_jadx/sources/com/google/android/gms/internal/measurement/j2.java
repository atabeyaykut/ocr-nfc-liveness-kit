package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class j2 extends q6<j2, i2> implements t7 {
    private static final j2 zza;
    private int zze;
    private r2 zzf;
    private m2 zzg;
    private boolean zzh;
    private String zzi = "";

    static {
        j2 j2Var = new j2();
        zza = j2Var;
        q6.l(j2.class, j2Var);
    }

    public static j2 s() {
        return zza;
    }

    public static /* synthetic */ void w(j2 j2Var, String str) {
        j2Var.zze |= 8;
        j2Var.zzi = str;
    }

    public final boolean A() {
        return (this.zze & 8) != 0;
    }

    public final boolean B() {
        return (this.zze & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r72) {
        int r73 = r72 - 1;
        if (r73 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r73 == 2) {
            return new c8(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (r73 == 3) {
            return new j2();
        }
        if (r73 == 4) {
            return new i2(r12);
        }
        if (r73 != 5) {
            return null;
        }
        return zza;
    }

    public final m2 t() {
        m2 m2Var = this.zzg;
        return m2Var == null ? m2.s() : m2Var;
    }

    public final r2 u() {
        r2 r2Var = this.zzf;
        return r2Var == null ? r2.t() : r2Var;
    }

    public final String v() {
        return this.zzi;
    }

    public final boolean x() {
        return this.zzh;
    }

    public final boolean y() {
        return (this.zze & 4) != 0;
    }

    public final boolean z() {
        return (this.zze & 2) != 0;
    }
}
