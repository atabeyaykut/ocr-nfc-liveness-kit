package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class f3 extends q6<f3, e3> implements t7 {
    private static final f3 zza;
    private int zze;
    private int zzf;
    private long zzg;

    static {
        f3 f3Var = new f3();
        zza = f3Var;
        q6.l(f3.class, f3Var);
    }

    public static e3 t() {
        return zza.m();
    }

    public static /* synthetic */ void v(f3 f3Var, int r22) {
        f3Var.zze |= 1;
        f3Var.zzf = r22;
    }

    public static /* synthetic */ void w(f3 f3Var, long j10) {
        f3Var.zze |= 2;
        f3Var.zzg = j10;
    }

    @Override // com.google.android.gms.internal.measurement.q6
    public final Object q(int r52) {
        int r53 = r52 - 1;
        if (r53 == 0) {
            return (byte) 1;
        }
        int r12 = 0;
        if (r53 == 2) {
            return new c8(zza, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
        }
        if (r53 == 3) {
            return new f3();
        }
        if (r53 == 4) {
            return new e3(r12);
        }
        if (r53 != 5) {
            return null;
        }
        return zza;
    }

    public final int r() {
        return this.zzf;
    }

    public final long s() {
        return this.zzg;
    }

    public final boolean x() {
        return (this.zze & 2) != 0;
    }

    public final boolean y() {
        return (this.zze & 1) != 0;
    }
}
