package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class u2 extends q6<u2, s2> implements t7 {
    private static final u2 zza;
    private int zze;
    private String zzf = "";
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    static {
        u2 u2Var = new u2();
        zza = u2Var;
        q6.l(u2.class, u2Var);
    }

    public static /* synthetic */ void u(u2 u2Var, String str) {
        str.getClass();
        u2Var.zze |= 1;
        u2Var.zzf = str;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r72) {
        int r73 = r72 - 1;
        if (r73 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r73 == 2) {
            return new c8(zza, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (r73 == 3) {
            return new u2();
        }
        if (r73 == 4) {
            return new s2(r12);
        }
        if (r73 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzi;
    }

    public final String t() {
        return this.zzf;
    }

    public final boolean v() {
        return this.zzg;
    }

    public final boolean w() {
        return this.zzh;
    }

    public final boolean x() {
        return (this.zze & 2) != 0;
    }

    public final boolean y() {
        return (this.zze & 4) != 0;
    }

    public final boolean z() {
        return (this.zze & 8) != 0;
    }
}
